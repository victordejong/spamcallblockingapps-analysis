package com.privacystar.core.util;

import android.content.Context;
import com.google.i18n.phonenumbers.NumberParseException;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.privacystar.core.data.blocking.protection.ProtectionLevel;
import com.privacystar.core.data.model.Offender;
import com.privacystar.core.data.model.helper.LicenseFeatureRealm;
import com.privacystar.core.data.model.helper.OffenderRealm;
import com.privacystar.core.data.model.types.Feature;
import com.privacystar.core.service.PreferenceUtil;
import io.realm.Realm;
import io.realm.RealmQuery;
import io.realm.RealmResults;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/BlockingManager.class */
public class BlockingManager {
    public static final int ACTIONCODE_ALLOW = 2;
    public static final int ACTIONCODE_BLOCK = 1;
    public static final int ACTIONCODE_NO_OP = 0;
    public static final int ACTIONCODE_VOICEMAIL = 3;
    public static final String ACTION_CONSTANT = "action";
    public static final int EVENTCODE_BOTH = 0;
    public static final int EVENTCODE_CALL = 1;
    public static final int EVENTCODE_SMS = 2;
    public static final String MATCHVALUE_DND = "*";
    public static final String MATCHVALUE_EMPTY_STRING = "";
    public static final String MATCHVALUE_INVALID = "INVALID";
    public static final String MATCHVALUE_ROBOCALL = "ROBO";
    public static final String MATCHVALUE_SIMILAR = "SIMILAR";
    public static final String MATCHVALUE_UNKNOWN = "UNKNOWN";
    public static final String REASON_CONSTANT = "reason";
    public static final String SHOULD_BLOCK_CONSTANT = "shouldBlock";
    private static BlockingManager instance;
    private static boolean shouldBlockScammers = false;
    private HashMap<Long, Integer> callsBlocklistMap = new HashMap<>();
    private HashMap<Long, Integer> callsWhitelistMap = new HashMap<>();
    private HashMap<Long, Integer> smsBlocklistMap = new HashMap<>();
    private HashMap<Long, Integer> smsWhitelistMap = new HashMap<>();
    private HashMap<Long, Integer> scammersCallBlocksMap = new HashMap<>();
    private HashMap<String, Integer> groupCallWhitelistMap = new HashMap<>();
    private HashMap<String, Integer> groupCallBlocksMap = new HashMap<>();
    private HashMap<String, Integer> groupSmsWhitelistMap = new HashMap<>();
    private HashMap<String, Integer> groupSmsBlocksMap = new HashMap<>();
    private HashMap<String, Integer> specialCasesCallBlocksMap = new HashMap<>();
    private HashMap<String, Integer> specialCasesSmsBlocksMap = new HashMap<>();

    /* renamed from: com.privacystar.core.util.BlockingManager$1 */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/BlockingManager$1.class */
    static /* synthetic */ class C16741 {

        /* renamed from: $SwitchMap$com$privacystar$core$util$BlockingManager$OffenderActions */
        static final /* synthetic */ int[] f296x53bc2e0e = new int[OffenderActions.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            try {
                f296x53bc2e0e[OffenderActions.BLOCK.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f296x53bc2e0e[OffenderActions.GO_TO_VOICEMAIL.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/BlockingManager$OffenderActions.class */
    public enum OffenderActions {
        DO_NOTHING,
        BLOCK,
        GO_TO_VOICEMAIL
    }

    protected BlockingManager() {
    }

    private int appearsInMap(String str, int i, HashMap<Long, Integer> hashMap, HashMap<String, Integer> hashMap2, ParsedPhoneNumber parsedPhoneNumber) {
        String next;
        String removeAllOccurrences;
        if (Text.isBlank(str) || !Text.isNumeric(str)) {
            Timber.m37d("is blank or non-numeric", new Object[0]);
            return -1;
        }
        try {
            String number = parsedPhoneNumber.getNumber();
            Long valueOf = Long.valueOf(Long.parseLong(number));
            Timber.m37d("Incoming number to match: " + valueOf, new Object[0]);
            Integer num = hashMap.get(valueOf);
            Timber.m37d("pulled integer: " + num, new Object[0]);
            for (Long l : hashMap.keySet()) {
                Timber.m37d("BlockList: " + hashMap.get(l), new Object[0]);
            }
            if (num != null) {
                return num.intValue();
            }
            if (parsedPhoneNumber.isContact()) {
                return -1;
            }
            Set<String> keySet = hashMap2.keySet();
            Timber.m37d("ruleSet size = (" + keySet.size() + ")", new Object[0]);
            Iterator<String> it = keySet.iterator();
            do {
                if (!it.hasNext()) {
                    return -1;
                }
                next = it.next();
                removeAllOccurrences = Text.removeAllOccurrences(next, "*");
                Timber.m37d("checking if '" + number + "' begins with '" + removeAllOccurrences + "'", new Object[0]);
            } while (!Text.startsWithIgnoreCase(number, removeAllOccurrences));
            return hashMap2.get(next).intValue();
        } catch (Exception e) {
            Timber.m29i(e, "Error parsing number.", new Object[0]);
            return -1;
        }
    }

    private boolean areAllMapsEmpty() {
        return getCallsBlocklistMap().isEmpty() && getCallsWhitelistMap().isEmpty() && getSmsBlocklistMap().isEmpty() && getSmsWhitelistMap().isEmpty() && getGroupBlockMap().isEmpty() && getGroupWhitelistMap().isEmpty() && getGroupSmsBlockMap().isEmpty() && getGroupSmsWhitelistMap().isEmpty() && getSpecialCasesCallBlocksMap().isEmpty() && getSpecialCasesSmsBlocksMap().isEmpty() && getScammersCallBlocklistMap().isEmpty();
    }

    private static boolean checkGoogleLibrary(String str) {
        PhoneNumberUtil instance2 = PhoneNumberUtil.getInstance();
        try {
            return !instance2.isValidNumber(instance2.parse(str, "US"));
        } catch (NumberParseException e) {
            Timber.m23w(e, "", new Object[0]);
            return false;
        }
    }

    private boolean checkOffenderList(ParsedPhoneNumber parsedPhoneNumber, int i, Map<String, String> map) {
        boolean z;
        Timber.m28v("checkOffenderList start", new Object[0]);
        String number = parsedPhoneNumber.getNumber();
        if (Text.isBlank(number) || !Text.isNumeric(number)) {
            return false;
        }
        String str = "";
        try {
            switch (C16741.f296x53bc2e0e[queryForOffenderAction(Long.valueOf(Long.parseLong(NumbersUtil.getLast10Digits(number, i))).longValue()).ordinal()]) {
                case 1:
                    str = Integer.toString(1);
                    z = true;
                    break;
                case 2:
                    str = Integer.toString(3);
                    z = true;
                    break;
                default:
                    z = false;
                    break;
            }
            Timber.m28v("checkOffenderList done", new Object[0]);
            if (!z || parsedPhoneNumber.isContact()) {
                return false;
            }
            map.put(SHOULD_BLOCK_CONSTANT, "true");
            map.put(REASON_CONSTANT, "scammer");
            map.put(ACTION_CONSTANT, str);
            return true;
        } catch (NumberFormatException e) {
            Timber.m29i(e, "Couldn't parse [%s] as Long.", number);
            return false;
        }
    }

    private boolean checkRobocall(ParsedPhoneNumber parsedPhoneNumber, Map<String, String> map, boolean z, Context context) {
        HashMap<String, Integer> specialCasesCallBlocksMap = z ? getSpecialCasesCallBlocksMap() : getSpecialCasesSmsBlocksMap();
        if (!PreferenceUtil.getUseCompactBinaryOffenderList() || parsedPhoneNumber.isContact() || (parsedPhoneNumber.getOffenderType() & 8) == 0 || !specialCasesCallBlocksMap.containsKey(MATCHVALUE_ROBOCALL)) {
            return false;
        }
        map.put(SHOULD_BLOCK_CONSTANT, "true");
        map.put(REASON_CONSTANT, "robo");
        map.put(ACTION_CONSTANT, specialCasesCallBlocksMap.get(MATCHVALUE_ROBOCALL).toString());
        return true;
    }

    private boolean checkSpecialCases(ParsedPhoneNumber parsedPhoneNumber, int i, Map<String, String> map, boolean z, Context context) {
        String number = parsedPhoneNumber.getNumber();
        String str = number;
        if (!Text.isBlank(number)) {
            str = number;
            if (Text.isNumeric(number)) {
                str = NumbersUtil.getLast10Digits(number, i);
            }
        }
        HashMap<String, Integer> specialCasesCallBlocksMap = z ? getSpecialCasesCallBlocksMap() : getSpecialCasesSmsBlocksMap();
        if (LicenseFeatureRealm.isFeatureAvailable(Feature.UNKNOWN_BLOCKING) && isUnknownCaller(str)) {
            if (PreferenceUtil.getIsUnknownBlockingEnabled()) {
                map.put(SHOULD_BLOCK_CONSTANT, "true");
                map.put(REASON_CONSTANT, "unknown");
                map.put(ACTION_CONSTANT, Integer.toString(1));
                return true;
            } else if (specialCasesCallBlocksMap.containsKey("")) {
                map.put(SHOULD_BLOCK_CONSTANT, "true");
                map.put(REASON_CONSTANT, "restricted");
                map.put(ACTION_CONSTANT, specialCasesCallBlocksMap.get("").toString());
                return true;
            }
        }
        if (specialCasesCallBlocksMap.containsKey(MATCHVALUE_INVALID) && isInvalidNumber(parsedPhoneNumber, specialCasesCallBlocksMap, context)) {
            map.put(SHOULD_BLOCK_CONSTANT, "true");
            map.put(REASON_CONSTANT, "invalid");
            map.put(ACTION_CONSTANT, specialCasesCallBlocksMap.get(MATCHVALUE_INVALID).toString());
            return true;
        } else if (!specialCasesCallBlocksMap.containsKey("*")) {
            return false;
        } else {
            map.put(SHOULD_BLOCK_CONSTANT, "true");
            map.put(REASON_CONSTANT, "dnd");
            map.put(ACTION_CONSTANT, specialCasesCallBlocksMap.get("*").toString());
            return true;
        }
    }

    public static BlockingManager getInstance() {
        BlockingManager blockingManager;
        synchronized (BlockingManager.class) {
            try {
                if (instance == null) {
                    instance = new BlockingManager();
                }
                blockingManager = instance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return blockingManager;
    }

    public static boolean isInvalidNumber(ParsedPhoneNumber parsedPhoneNumber, HashMap<String, Integer> hashMap, Context context) {
        if (parsedPhoneNumber.isContact()) {
            return false;
        }
        int length = parsedPhoneNumber.getUnparsedNumber() != null ? parsedPhoneNumber.getUnparsedNumber().length() : 0;
        if (length < 10 || length > 12) {
            return false;
        }
        if (length == 11 && !parsedPhoneNumber.getUnparsedNumber().startsWith("1")) {
            return false;
        }
        if (length == 12 && !parsedPhoneNumber.getUnparsedNumber().startsWith("+1")) {
            return false;
        }
        if (checkGoogleLibrary(parsedPhoneNumber.getNumber()) && !parsedPhoneNumber.isContact()) {
            return true;
        }
        if (hashMap.containsKey(MATCHVALUE_SIMILAR)) {
            return isSimilarNumber(parsedPhoneNumber, hashMap.get(MATCHVALUE_SIMILAR).intValue(), context);
        }
        return false;
    }

    public static boolean isSimilarNumber(ParsedPhoneNumber parsedPhoneNumber, int i, Context context) {
        if (i <= 0) {
            return false;
        }
        int i2 = i;
        if (i > 10) {
            i2 = 10;
        }
        try {
            ParsedPhoneNumber parsedPhoneNumber2 = new ParsedPhoneNumber(InformationUtil.getLineOneMDN(context));
            if (parsedPhoneNumber2.getNumber().length() < i2) {
                return false;
            }
            if (!parsedPhoneNumber.getNumber().startsWith(parsedPhoneNumber2.getNumber().substring(0, i2))) {
                return false;
            }
            if (i2 != 10 && !Text.equals(parsedPhoneNumber2.getNumber(), parsedPhoneNumber.getNumber())) {
                return !parsedPhoneNumber.isContact();
            }
            return true;
        } catch (Exception e) {
            Timber.m23w(e, "", new Object[0]);
            return false;
        }
    }

    public static boolean isUnknownCaller(String str) {
        return Text.equalsIgnoreCase(str, MATCHVALUE_UNKNOWN) || Text.isBlank(str) || str.length() < 4;
    }

    private static OffenderActions queryForOffenderAction(long j) {
        Realm defaultInstance;
        Throwable th;
        RealmQuery equalTo;
        OffenderActions offenderActions = OffenderActions.DO_NOTHING;
        OffenderActions offenderActions2 = offenderActions;
        try {
            defaultInstance = Realm.getDefaultInstance();
            try {
                equalTo = defaultInstance.where(Offender.class).equalTo("number", Long.valueOf(j));
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e) {
            Timber.m32e(e, "checkOffenderList realm exception while getting offender list", new Object[0]);
        }
        if (!OffenderRealm.appendTypeFilterToQuery(equalTo, ProtectionLevel.byIndex(PreferenceUtil.getProtectionLevel()), FeatureUtil.getBlockingLevel(defaultInstance))) {
            Timber.m31i("checkOffenderList no offenders to check!", new Object[0]);
            if (defaultInstance != null) {
                defaultInstance.close();
            }
            return offenderActions;
        }
        RealmResults findAll = equalTo.findAll();
        if (!findAll.isEmpty()) {
            try {
                if (OffenderRealm.goesToVoicemail(((Offender) findAll.get(0)).getCategoryId().intValue())) {
                    offenderActions = OffenderActions.GO_TO_VOICEMAIL;
                    offenderActions = offenderActions;
                    Timber.m28v("checkOffenderList offenders contains %s, goes to voicemail", Long.toString(j));
                } else {
                    offenderActions = OffenderActions.BLOCK;
                    offenderActions = offenderActions;
                    Timber.m28v("checkOffenderList offenders contains %s, will attempt to block", Long.toString(j));
                }
            } catch (Throwable th3) {
                th = th3;
                throw th;
            }
        } else {
            Timber.m37d("Realm lookup for [%d] did not match any category block settings.", Long.valueOf(j));
        }
        offenderActions2 = offenderActions;
        if (defaultInstance != null) {
            defaultInstance.close();
            offenderActions2 = offenderActions;
        }
        return offenderActions2;
    }

    public static void setShouldBlockScammers(boolean z) {
        shouldBlockScammers = z;
    }

    public static boolean shouldBlockScammers() {
        return shouldBlockScammers;
    }

    public void clearEventControlManagers() {
        Timber.m37d("clearing event control maps", new Object[0]);
        getCallsBlocklistMap().clear();
        getCallsWhitelistMap().clear();
        getSmsBlocklistMap().clear();
        getSmsWhitelistMap().clear();
        getGroupBlockMap().clear();
        getGroupWhitelistMap().clear();
        getGroupSmsBlockMap().clear();
        getGroupSmsWhitelistMap().clear();
        getSpecialCasesCallBlocksMap().clear();
        getSpecialCasesSmsBlocksMap().clear();
        getScammersCallBlocklistMap().clear();
    }

    public HashMap<Long, Integer> getCallsBlocklistMap() {
        return this.callsBlocklistMap;
    }

    public HashMap<Long, Integer> getCallsWhitelistMap() {
        return this.callsWhitelistMap;
    }

    public HashMap<String, Integer> getGroupBlockMap() {
        return this.groupCallBlocksMap;
    }

    public HashMap<String, Integer> getGroupSmsBlockMap() {
        return this.groupSmsBlocksMap;
    }

    public HashMap<String, Integer> getGroupSmsWhitelistMap() {
        return this.groupSmsWhitelistMap;
    }

    public HashMap<String, Integer> getGroupWhitelistMap() {
        return this.groupCallWhitelistMap;
    }

    public HashMap<Long, Integer> getScammersCallBlocklistMap() {
        return this.scammersCallBlocksMap;
    }

    public HashMap<Long, Integer> getSmsBlocklistMap() {
        return this.smsBlocklistMap;
    }

    public HashMap<Long, Integer> getSmsWhitelistMap() {
        return this.smsWhitelistMap;
    }

    public HashMap<String, Integer> getSpecialCasesCallBlocksMap() {
        return this.specialCasesCallBlocksMap;
    }

    public HashMap<String, Integer> getSpecialCasesSmsBlocksMap() {
        return this.specialCasesSmsBlocksMap;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Unreachable block: B:14:0x0042
        	at jadx.core.dex.visitors.blocks.BlockProcessor.checkForUnreachableBlocks(BlockProcessor.java:90)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:52)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:44)
        */
    public java.util.Map<java.lang.String, java.lang.String> shouldBlock(com.privacystar.core.util.ParsedPhoneNumber r8, boolean r9, android.content.Context r10) {
        /*
            Method dump skipped, instructions count: 946
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.util.BlockingManager.shouldBlock(com.privacystar.core.util.ParsedPhoneNumber, boolean, android.content.Context):java.util.Map");
    }
}
