package com.privacystar.core.data.model.helper;

import com.privacystar.core.data.blocking.BlockFlags;
import com.privacystar.core.data.model.BlockList;
import com.privacystar.core.data.model.Operation;
import com.privacystar.core.data.model.OperationFields;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.util.BlockingManager;
import com.privacystar.core.util.NumbersUtil;
import com.privacystar.core.util.Text;
import io.realm.ImportFlag;
import io.realm.Realm;
import io.realm.RealmResults;
import java.util.Iterator;
import java.util.List;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/helper/EventControlRealm.class */
public class EventControlRealm {
    private static final String BLOCK_LIST_LABEL = "BL";
    private static final int BLOCK_LIST_PRIORITY = 1;
    private static final Object eventControlTableLock = new Object();
    private static boolean eventControlTableUpdatePending = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.privacystar.core.data.model.helper.EventControlRealm$1 */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/helper/EventControlRealm$1.class */
    public static /* synthetic */ class C15891 {

        /* renamed from: $SwitchMap$com$privacystar$core$data$blocking$BlockFlags$ActionCode */
        static final /* synthetic */ int[] f261xbe055a60;

        /* renamed from: $SwitchMap$com$privacystar$core$data$blocking$BlockFlags$EventCode */
        static final /* synthetic */ int[] f262x5f405aea = new int[BlockFlags.EventCode.values().length];

        /* renamed from: $SwitchMap$com$privacystar$core$data$blocking$BlockFlags$MatchValue */
        static final /* synthetic */ int[] f263xbe51dfc9;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0095 -> B:48:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0099 -> B:42:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x009d -> B:8:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x00a1 -> B:52:0x003e). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00a5 -> B:46:0x0049). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00a9 -> B:40:0x0054). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00ad -> B:17:0x005f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00b1 -> B:50:0x0073). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00b5 -> B:44:0x007e). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00b9 -> B:38:0x0089). Please submit an issue!!! */
        static {
            try {
                f262x5f405aea[BlockFlags.EventCode.CALL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f262x5f405aea[BlockFlags.EventCode.SMS.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f262x5f405aea[BlockFlags.EventCode.BOTH.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            f263xbe51dfc9 = new int[BlockFlags.MatchValue.values().length];
            try {
                f263xbe51dfc9[BlockFlags.MatchValue.DND.ordinal()] = 1;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f263xbe51dfc9[BlockFlags.MatchValue.EMPTY.ordinal()] = 2;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f263xbe51dfc9[BlockFlags.MatchValue.UNKNOWN.ordinal()] = 3;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f263xbe51dfc9[BlockFlags.MatchValue.ROBOCALL.ordinal()] = 4;
            } catch (NoSuchFieldError e7) {
            }
            f261xbe055a60 = new int[BlockFlags.ActionCode.values().length];
            try {
                f261xbe055a60[BlockFlags.ActionCode.BLOCK.ordinal()] = 1;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f261xbe055a60[BlockFlags.ActionCode.VOICEMAIL.ordinal()] = 2;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f261xbe055a60[BlockFlags.ActionCode.ALLOW.ordinal()] = 3;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f261xbe055a60[BlockFlags.ActionCode.NO_OPERATION.ordinal()] = 4;
            } catch (NoSuchFieldError e11) {
            }
        }
    }

    public static void addEventControlDataToHashMaps(Realm realm) {
        RealmResults sort = realm.where(Operation.class).findAll().sort(OperationFields.MATCH_VALUE);
        Timber.m37d("Processing %d events.", Integer.valueOf(sort.size()));
        Iterator it = sort.iterator();
        while (it.hasNext()) {
            Operation operation = (Operation) it.next();
            switch (C15891.f261xbe055a60[operation.getActionCode().ordinal()]) {
                case 1:
                case 2:
                    addEventToBlockHashMaps(operation);
                    break;
                case 3:
                    addEventToAllowHashMaps(operation);
                    break;
                case 4:
                    Timber.m37d("Matched no-op actionCode.", new Object[0]);
                    break;
                default:
                    Timber.m25w("Call rule found with unknown actionCode --> matchValue: %s, action code: %s", operation.getMatchValue(), operation.getActionCode());
                    break;
            }
        }
    }

    public static void addEventControlList(Realm realm, final List<Operation> list) {
        realm.executeTransactionAsync(new Realm.Transaction(list) { // from class: com.privacystar.core.data.model.helper.EventControlRealm$$Lambda$0
            private final List arg$1;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = list;
            }

            @Override // io.realm.Realm.Transaction
            public void execute(Realm realm2) {
                realm2.copyToRealm(this.arg$1, new ImportFlag[0]);
            }
        });
    }

    private static void addEventToAllowHashMaps(Operation operation) {
        if (operation.getMatchValue().length() < 2 || !Text.endsWithIgnoreCase(operation.getMatchValue(), "*")) {
            addEventToDefaultWhiteMap(operation);
        } else {
            addEventToGroupWhiteMap(operation);
        }
    }

    private static void addEventToBlockHashMaps(Operation operation) {
        if (operation.getFilterMatchValue() != null) {
            switch (C15891.f263xbe51dfc9[operation.getFilterMatchValue().ordinal()]) {
                case 1:
                case 2:
                case 3:
                case 4:
                    addEventToSpecialCasesBlockMap(operation);
                    return;
                default:
                    return;
            }
        } else if (operation.getMatchValue().length() < 2 || !Text.endsWithIgnoreCase(operation.getMatchValue(), "*")) {
            addEventToDefaultBlockMap(operation);
        } else {
            addEventToGroupBlockMap(operation);
        }
    }

    public static void addEventToDefaultBlockMap(Operation operation) {
        String str;
        NumberFormatException e;
        try {
            try {
                BlockingManager instance = BlockingManager.getInstance();
                str = NumbersUtil.getLast10Digits(Text.stripNonNumericCharacters(operation.getMatchValue()), PreferenceUtil.getMatchTrimLength());
                try {
                    long parseLong = Long.parseLong(str);
                    switch (C15891.f262x5f405aea[operation.getEventCode().ordinal()]) {
                        case 1:
                            instance.getCallsBlocklistMap().put(Long.valueOf(parseLong), Integer.valueOf(operation.getActionCode().getValue()));
                            break;
                        case 2:
                            instance.getSmsBlocklistMap().put(Long.valueOf(parseLong), Integer.valueOf(operation.getActionCode().getValue()));
                            break;
                        case 3:
                            instance.getCallsBlocklistMap().put(Long.valueOf(parseLong), Integer.valueOf(operation.getActionCode().getValue()));
                            instance.getSmsBlocklistMap().put(Long.valueOf(parseLong), Integer.valueOf(operation.getActionCode().getValue()));
                            break;
                    }
                } catch (NumberFormatException e2) {
                    e = e2;
                    Timber.m29i(e, "Could not parse integer out of [%s]", str);
                }
            } catch (NumberFormatException e3) {
                e = e3;
                str = "";
            }
        } catch (ExceptionInInitializerError e4) {
            Timber.m29i(e4, "Error initializing intermediate variables while trimming phone number.", new Object[0]);
        }
    }

    private static void addEventToDefaultWhiteMap(Operation operation) {
        BlockingManager instance = BlockingManager.getInstance();
        String last10Digits = NumbersUtil.getLast10Digits(Text.stripNonNumericCharacters(operation.getMatchValue()), PreferenceUtil.getMatchTrimLength());
        try {
            long parseLong = Long.parseLong(last10Digits);
            switch (C15891.f262x5f405aea[operation.getEventCode().ordinal()]) {
                case 1:
                    instance.getCallsWhitelistMap().put(Long.valueOf(parseLong), Integer.valueOf(operation.getActionCode().getValue()));
                    break;
                case 2:
                    instance.getSmsWhitelistMap().put(Long.valueOf(parseLong), Integer.valueOf(operation.getActionCode().getValue()));
                    break;
                case 3:
                    instance.getCallsWhitelistMap().put(Long.valueOf(parseLong), Integer.valueOf(operation.getActionCode().getValue()));
                    instance.getSmsWhitelistMap().put(Long.valueOf(parseLong), Integer.valueOf(operation.getActionCode().getValue()));
                    break;
            }
        } catch (NumberFormatException e) {
            Timber.m29i(e, "Could not parse integer out of [%s]", last10Digits);
        }
    }

    private static void addEventToGroupBlockMap(Operation operation) {
        BlockingManager instance = BlockingManager.getInstance();
        switch (C15891.f262x5f405aea[operation.getEventCode().ordinal()]) {
            case 1:
                instance.getGroupBlockMap().put(operation.getMatchValue(), Integer.valueOf(operation.getActionCode().getValue()));
                return;
            case 2:
                instance.getGroupSmsBlockMap().put(operation.getMatchValue(), Integer.valueOf(operation.getActionCode().getValue()));
                return;
            case 3:
                instance.getGroupSmsBlockMap().put(operation.getMatchValue(), Integer.valueOf(operation.getActionCode().getValue()));
                instance.getGroupBlockMap().put(operation.getMatchValue(), Integer.valueOf(operation.getActionCode().getValue()));
                return;
            default:
                return;
        }
    }

    private static void addEventToGroupWhiteMap(Operation operation) {
        BlockingManager instance = BlockingManager.getInstance();
        switch (C15891.f262x5f405aea[operation.getEventCode().ordinal()]) {
            case 1:
                instance.getGroupWhitelistMap().put(operation.getMatchValue(), Integer.valueOf(operation.getActionCode().getValue()));
                return;
            case 2:
                instance.getGroupSmsWhitelistMap().put(operation.getMatchValue(), Integer.valueOf(operation.getActionCode().getValue()));
                return;
            case 3:
                instance.getGroupWhitelistMap().put(operation.getMatchValue(), Integer.valueOf(operation.getActionCode().getValue()));
                instance.getGroupSmsWhitelistMap().put(operation.getMatchValue(), Integer.valueOf(operation.getActionCode().getValue()));
                return;
            default:
                return;
        }
    }

    private static void addEventToSpecialCasesBlockMap(Operation operation) {
        BlockingManager instance = BlockingManager.getInstance();
        switch (C15891.f262x5f405aea[operation.getEventCode().ordinal()]) {
            case 1:
                instance.getSpecialCasesCallBlocksMap().put(operation.getMatchValue(), Integer.valueOf(operation.getActionCode().getValue()));
                return;
            case 2:
                instance.getSpecialCasesSmsBlocksMap().put(operation.getMatchValue(), Integer.valueOf(operation.getActionCode().getValue()));
                return;
            case 3:
                instance.getSpecialCasesCallBlocksMap().put(operation.getMatchValue(), Integer.valueOf(operation.getActionCode().getValue()));
                instance.getSpecialCasesSmsBlocksMap().put(operation.getMatchValue(), Integer.valueOf(operation.getActionCode().getValue()));
                return;
            default:
                return;
        }
    }

    public static void clearEventControl(Realm realm) {
        realm.executeTransaction(EventControlRealm$$Lambda$1.$instance);
    }

    public static Operation eventControlFromBlockListEntry(Realm realm, BlockList blockList) {
        realm.beginTransaction();
        Operation operation = (Operation) realm.createObject(Operation.class);
        operation.setActionCode(BlockFlags.ActionCode.BLOCK);
        operation.setEventCode(BlockFlags.EventCode.BOTH);
        operation.setMatchValue(blockList.getNumber());
        operation.setLabel("BL");
        operation.setPriority(1);
        realm.commitTransaction();
        return operation;
    }

    public static Operation getEventControlFromNumber(Realm realm, String str) {
        return (Operation) realm.where(Operation.class).equalTo(OperationFields.MATCH_VALUE, str).findFirst();
    }

    public static boolean isEventControlTableUpdatePending() {
        return eventControlTableUpdatePending;
    }

    public static void manageEventControlTable() {
        Timber.m37d("Managing event control table", new Object[0]);
        Realm defaultInstance = Realm.getDefaultInstance();
        try {
            if (!isEventControlTableUpdatePending()) {
                setEventControlTableUpdatePending(true);
                synchronized (eventControlTableLock) {
                    setEventControlTableUpdatePending(false);
                    Timber.m37d("Adding data to hash maps", new Object[0]);
                    addEventControlDataToHashMaps(defaultInstance);
                    if (BlockingOptionRealm.isBlockingOptionTurnedOn(defaultInstance, "scammer")) {
                        Timber.m37d("Scammers were%s loaded into hash map.", manageScamHashMaps() ? "" : " not");
                        BlockingManager.getInstance().getSpecialCasesCallBlocksMap().put(BlockingManager.MATCHVALUE_INVALID, 1);
                    } else {
                        BlockingManager.setShouldBlockScammers(false);
                    }
                }
                if (defaultInstance != null) {
                    defaultInstance.close();
                }
            } else if (defaultInstance != null) {
                defaultInstance.close();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (defaultInstance != null) {
                    if (th != null) {
                        try {
                            defaultInstance.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    } else {
                        defaultInstance.close();
                    }
                }
                throw th2;
            }
        }
    }

    private static boolean manageScamHashMaps() {
        if (!PreferenceUtil.getUseCompactBinaryOffenderList()) {
            return false;
        }
        BlockingManager.setShouldBlockScammers(true);
        return false;
    }

    public static void setEventControlTableUpdatePending(boolean z) {
        eventControlTableUpdatePending = z;
    }
}
