package com.tmobile.services.nameid.model;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.StringRes;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.api.ApiUtils;
import com.tmobile.services.nameid.model.CategorySetting;
import com.tmobile.services.nameid.utility.ContactLookup;
import com.tmobile.services.nameid.utility.Feature;
import com.tmobile.services.nameid.utility.LogUtil;
import com.tmobile.services.nameid.utility.PhoneNumberHelper;
import io.realm.ImportFlag;
import io.realm.Realm;
import io.realm.RealmObject;
import io.realm.RealmQuery;
import io.realm.Sort;
import io.realm.annotations.Ignore;
import io.realm.annotations.PrimaryKey;
import io.realm.com_tmobile_services_nameid_model_CallerRealmProxyInterface;
import io.realm.internal.RealmObjectProxy;
import java.util.Date;
import java.util.Iterator;
import java.util.UUID;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/Caller.class */
public class Caller extends RealmObject implements CallerDetailsData, com_tmobile_services_nameid_model_CallerRealmProxyInterface {
    private static final String LOG_TAG = "Caller#";
    private int bucketId;
    private boolean categorySuppressed;
    @Ignore
    private Contact contact;
    private Date date;
    private String e164Number;
    @PrimaryKey

    /* renamed from: id */
    private String f13605id;
    private boolean isEmail;
    private String name;
    private boolean nameSuppressed;
    private String numberAsInput;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.tmobile.services.nameid.model.Caller$1 */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/Caller$1.class */
    public static /* synthetic */ class C18241 {

        /* renamed from: $SwitchMap$com$tmobile$services$nameid$model$CategorySetting$BucketId */
        static final /* synthetic */ int[] f13606x99c6b85b;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0095 -> B:49:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0099 -> B:43:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x009d -> B:61:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x00a1 -> B:53:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00a5 -> B:47:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00a9 -> B:41:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00ad -> B:59:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00b1 -> B:51:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00b5 -> B:45:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00b9 -> B:39:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00bd -> B:57:0x0088). Please submit an issue!!! */
        static {
            int[] iArr = new int[CategorySetting.BucketId.values().length];
            f13606x99c6b85b = iArr;
            try {
                iArr[CategorySetting.BucketId.CALL_BLOCKING.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f13606x99c6b85b[CategorySetting.BucketId.SCAM.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f13606x99c6b85b[CategorySetting.BucketId.NUISANCE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f13606x99c6b85b[CategorySetting.BucketId.TELEMARKETING.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f13606x99c6b85b[CategorySetting.BucketId.COLLECTION.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f13606x99c6b85b[CategorySetting.BucketId.POLITICAL.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f13606x99c6b85b[CategorySetting.BucketId.SURVEY.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f13606x99c6b85b[CategorySetting.BucketId.CHARITY.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f13606x99c6b85b[CategorySetting.BucketId.HEALTHCARE.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f13606x99c6b85b[CategorySetting.BucketId.PUBLIC_SERVICE.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f13606x99c6b85b[CategorySetting.BucketId.INFORMATIONAL.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f13606x99c6b85b[CategorySetting.BucketId.PRISON.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
        }
    }

    public Caller() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$id(UUID.randomUUID().toString());
        realmSet$isEmail(false);
        realmSet$bucketId(-1);
        this.contact = null;
    }

    @StringRes
    public static int bucketIdToStringRes(int i) {
        switch (C18241.f13606x99c6b85b[CategorySetting.BucketId.fromValue(i).ordinal()]) {
            case 1:
            case 2:
                return C1517R.string.category_name_scam_likely;
            case 3:
                return C1517R.string.category_name_nuisance_likely;
            case 4:
                return C1517R.string.category_name_telemarketing;
            case 5:
                return C1517R.string.category_name_collection_call;
            case 6:
                return C1517R.string.category_name_political_call;
            case 7:
                return C1517R.string.category_name_survey_call;
            case 8:
                return C1517R.string.category_name_charity_call;
            case 9:
                return C1517R.string.category_name_healthcare_call;
            case 10:
                return C1517R.string.category_name_public_service;
            case 11:
                return C1517R.string.category_name_informational;
            case 12:
                return C1517R.string.category_name_prison_jail;
            default:
                return C1517R.string.general_empty_string;
        }
    }

    private static Caller findMostRecentLookup(String str) {
        Caller caller;
        String d = PhoneNumberHelper.m5415d(str);
        try {
            Realm G0 = Realm.m3064G0();
            RealmQuery Q0 = G0.m3053Q0(Caller.class);
            Q0.m2882t("e164Number", d);
            Iterator it = Q0.m2918E().m3089s("date", Sort.DESCENDING).iterator();
            do {
                if (it.hasNext()) {
                    caller = (Caller) it.next();
                } else if (G0 == null) {
                    return null;
                } else {
                    G0.close();
                    return null;
                }
            } while (caller == null);
            if (G0 != null) {
                G0.close();
            }
            return caller;
        } catch (Throwable th) {
            LogUtil.m5641f(LOG_TAG, "Error finding Caller in Realm.", th);
            return null;
        }
    }

    public static String findMostRecentLookupName(String str) {
        Caller findMostRecentLookup = findMostRecentLookup(str);
        return (findMostRecentLookup == null || findMostRecentLookup.getName().equals("")) ? "" : findMostRecentLookup.getDisplayName();
    }

    private boolean hasCategory() {
        return realmGet$bucketId() != CategorySetting.BucketId.NONE.getValue();
    }

    private boolean hasContact() {
        return getContact() != null;
    }

    private boolean hasName() {
        return realmGet$name() != null && !realmGet$name().isEmpty() && !realmGet$name().toLowerCase().contains("not found");
    }

    public static boolean shouldSuppressCategory() {
        return !Feature.CATEGORY_BLOCK.isOwned();
    }

    public static boolean shouldSuppressName() {
        return !Feature.NUMBER_LOOKUP.isOwned();
    }

    public static boolean shouldSuppressScam() {
        Realm G0 = Realm.m3064G0();
        try {
            TmoUserStatus tmoUserStatus = (TmoUserStatus) G0.m3053Q0(TmoUserStatus.class).m2916G();
            boolean z = true;
            if (tmoUserStatus != null) {
                z = true;
                try {
                    if (tmoUserStatus.getScamId() != null) {
                        z = true;
                        if (tmoUserStatus.getScamId().booleanValue()) {
                            z = false;
                        }
                    }
                } catch (NullPointerException e) {
                    LogUtil.m5641f("Caller#shouldSuppressScam", "ScamId field was null in TmoUserStatus", e);
                    z = true;
                }
            }
            if (G0 != null) {
                G0.close();
            }
            return z;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (G0 != null) {
                    try {
                        G0.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    public static void storeInRealm(@Nullable Caller caller, Realm realm) {
        if (caller != null) {
            Caller findMostRecentLookup = findMostRecentLookup(caller.realmGet$e164Number());
            if (findMostRecentLookup != null) {
                findMostRecentLookup.update(caller);
            } else {
                realm.m3045v0(caller, new ImportFlag[0]);
            }
        }
    }

    @Override // com.tmobile.services.nameid.model.CallerDetailsData
    @NonNull
    public Caller buildCaller() {
        return this;
    }

    @Override // com.tmobile.services.nameid.model.CallerDetailsData
    public Caller copy() {
        Caller caller = new Caller();
        caller.realmSet$e164Number(realmGet$e164Number());
        caller.realmSet$name(realmGet$name());
        caller.realmSet$numberAsInput(realmGet$numberAsInput());
        caller.realmSet$categorySuppressed(realmGet$categorySuppressed());
        caller.realmSet$nameSuppressed(realmGet$nameSuppressed());
        caller.realmSet$bucketId(realmGet$bucketId());
        caller.setIsEmail(realmGet$isEmail());
        caller.realmSet$id(realmGet$id());
        caller.realmSet$date(realmGet$date());
        return caller;
    }

    public int getBucketId() {
        return realmGet$bucketId();
    }

    @Override // com.tmobile.services.nameid.model.CallerDetailsData
    @Nullable
    public Caller getCaller() {
        return this;
    }

    @Override // com.tmobile.services.nameid.model.CallerDetailsData
    @Nullable
    public CallerSetting getCallerSetting() {
        return ApiUtils.m6844o(realmGet$e164Number());
    }

    @Override // com.tmobile.services.nameid.model.CallerDetailsData
    public int getCategory() {
        return realmGet$bucketId();
    }

    @Override // com.tmobile.services.nameid.model.CallerDetailsData
    @StringRes
    public int getCategoryRes() {
        return bucketIdToStringRes(realmGet$bucketId());
    }

    @Override // com.tmobile.services.nameid.model.CallerDetailsData
    public Contact getContact() {
        return ContactLookup.m5824d().m5823e(realmGet$e164Number());
    }

    @Override // com.tmobile.services.nameid.model.CallerDetailsData
    public Date getDate() {
        return realmGet$date();
    }

    public int getDisplayCategory() {
        return (!isScammer() || shouldSuppressScam()) ? (!realmGet$categorySuppressed() || !shouldSuppressCategory()) ? getCategoryRes() : C1517R.string.general_empty_string : getCategoryRes();
    }

    @Override // com.tmobile.services.nameid.model.CallerDetailsData
    public String getDisplayCategory(Context context) {
        return context.getString(bucketIdToStringRes(realmGet$bucketId()));
    }

    @Override // com.tmobile.services.nameid.model.CallerDetailsData
    @Nonnull
    public String getDisplayName() {
        if (realmGet$nameSuppressed() && shouldSuppressName()) {
            return "";
        }
        String str = "";
        if (realmGet$name() != null) {
            str = realmGet$name().equalsIgnoreCase("not found") ? "" : realmGet$name();
        }
        return str;
    }

    @Override // com.tmobile.services.nameid.model.CallerDetailsData
    @NonNull
    public String getDisplayNumber(@Nullable String str) {
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        return PhoneNumberHelper.m5412g(realmGet$numberAsInput(), str2);
    }

    @Override // com.tmobile.services.nameid.model.CallerDetailsData
    public String getE164Number() {
        return realmGet$e164Number();
    }

    public String getId() {
        return realmGet$id();
    }

    @Override // com.tmobile.services.nameid.model.CallerDetailsData
    public String getLocation() {
        return PhoneNumberHelper.m5411h(realmGet$e164Number());
    }

    @Override // com.tmobile.services.nameid.model.CallerDetailsData
    public MessageUserPreference getMessageUserPreference() {
        return ApiUtils.m6830v(realmGet$e164Number());
    }

    public String getName() {
        Contact contact = getContact();
        return contact != null ? contact.getName() : (realmGet$name() == null || realmGet$name().equalsIgnoreCase("not found")) ? "" : realmGet$name();
    }

    public String getNameNoContact() {
        return (realmGet$name() == null || realmGet$name().equalsIgnoreCase("not found")) ? "" : realmGet$name();
    }

    public String getNumberAsInput() {
        return realmGet$numberAsInput() == null ? "" : realmGet$numberAsInput();
    }

    @Override // com.tmobile.services.nameid.model.CallerDetailsData
    public String getPrimaryDisplayInfo(Context context) {
        String string = isPrivate() ? context.getString(C1517R.string.private_caller_name) : isScammer() ? hasContact() ? getName() : context.getString(C1517R.string.category_name_scam_likely) : (!hasCategory() || hasContact()) ? getName() : getDisplayCategory(context);
        String str = string;
        if (string.isEmpty()) {
            str = getDisplayNumber("");
        }
        return str;
    }

    @Override // com.tmobile.services.nameid.model.CallerDetailsData
    public String getSecondaryDisplayInfo(Context context) {
        String str = "";
        if (!isPrivate()) {
            if (isScammer()) {
                if (hasContact()) {
                    str = context.getString(C1517R.string.category_name_scam_likely);
                }
            } else if (hasCategory() || hasName() || hasContact()) {
                str = getDisplayNumber("");
            }
        }
        return str;
    }

    @Override // com.tmobile.services.nameid.model.CallerDetailsData
    public boolean hasCallerName() {
        return hasName();
    }

    public boolean hasDisplayCategory() {
        return getDisplayCategory() != 2131689880;
    }

    public boolean isCategorySuppressed() {
        return realmGet$categorySuppressed();
    }

    @Override // com.tmobile.services.nameid.model.CallerDetailsData
    public boolean isEmail() {
        return realmGet$isEmail();
    }

    public boolean isFromLookup() {
        return true;
    }

    public boolean isFromSearch() {
        return true;
    }

    public boolean isNameSuppressed() {
        return realmGet$nameSuppressed();
    }

    @Override // com.tmobile.services.nameid.model.CallerDetailsData
    public boolean isPrivate() {
        return realmGet$numberAsInput().contains("0000000000") && realmGet$bucketId() == CategorySetting.BucketId.NONE.getValue();
    }

    @Override // com.tmobile.services.nameid.model.CallerDetailsData
    public boolean isScammer() {
        if (!realmGet$categorySuppressed() || !shouldSuppressCategory()) {
            boolean z = true;
            if (realmGet$bucketId() != CategorySetting.BucketId.CALL_BLOCKING.getValue()) {
                z = realmGet$bucketId() == CategorySetting.BucketId.SCAM.getValue();
            }
            return z;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("suppresed category.  number: ");
        sb.append(realmGet$e164Number());
        sb.append(" Scam?");
        boolean z2 = true;
        if (realmGet$bucketId() != CategorySetting.BucketId.CALL_BLOCKING.getValue()) {
            z2 = realmGet$bucketId() == CategorySetting.BucketId.SCAM.getValue();
        }
        sb.append(z2);
        LogUtil.m5643d("Caller#isScammer", sb.toString());
        return false;
    }

    @Override // io.realm.com_tmobile_services_nameid_model_CallerRealmProxyInterface
    public int realmGet$bucketId() {
        return this.bucketId;
    }

    @Override // io.realm.com_tmobile_services_nameid_model_CallerRealmProxyInterface
    public boolean realmGet$categorySuppressed() {
        return this.categorySuppressed;
    }

    @Override // io.realm.com_tmobile_services_nameid_model_CallerRealmProxyInterface
    public Date realmGet$date() {
        return this.date;
    }

    @Override // io.realm.com_tmobile_services_nameid_model_CallerRealmProxyInterface
    public String realmGet$e164Number() {
        return this.e164Number;
    }

    @Override // io.realm.com_tmobile_services_nameid_model_CallerRealmProxyInterface
    public String realmGet$id() {
        return this.f13605id;
    }

    @Override // io.realm.com_tmobile_services_nameid_model_CallerRealmProxyInterface
    public boolean realmGet$isEmail() {
        return this.isEmail;
    }

    @Override // io.realm.com_tmobile_services_nameid_model_CallerRealmProxyInterface
    public String realmGet$name() {
        return this.name;
    }

    @Override // io.realm.com_tmobile_services_nameid_model_CallerRealmProxyInterface
    public boolean realmGet$nameSuppressed() {
        return this.nameSuppressed;
    }

    @Override // io.realm.com_tmobile_services_nameid_model_CallerRealmProxyInterface
    public String realmGet$numberAsInput() {
        return this.numberAsInput;
    }

    @Override // io.realm.com_tmobile_services_nameid_model_CallerRealmProxyInterface
    public void realmSet$bucketId(int i) {
        this.bucketId = i;
    }

    @Override // io.realm.com_tmobile_services_nameid_model_CallerRealmProxyInterface
    public void realmSet$categorySuppressed(boolean z) {
        this.categorySuppressed = z;
    }

    @Override // io.realm.com_tmobile_services_nameid_model_CallerRealmProxyInterface
    public void realmSet$date(Date date) {
        this.date = date;
    }

    @Override // io.realm.com_tmobile_services_nameid_model_CallerRealmProxyInterface
    public void realmSet$e164Number(String str) {
        this.e164Number = str;
    }

    @Override // io.realm.com_tmobile_services_nameid_model_CallerRealmProxyInterface
    public void realmSet$id(String str) {
        this.f13605id = str;
    }

    @Override // io.realm.com_tmobile_services_nameid_model_CallerRealmProxyInterface
    public void realmSet$isEmail(boolean z) {
        this.isEmail = z;
    }

    @Override // io.realm.com_tmobile_services_nameid_model_CallerRealmProxyInterface
    public void realmSet$name(String str) {
        this.name = str;
    }

    @Override // io.realm.com_tmobile_services_nameid_model_CallerRealmProxyInterface
    public void realmSet$nameSuppressed(boolean z) {
        this.nameSuppressed = z;
    }

    @Override // io.realm.com_tmobile_services_nameid_model_CallerRealmProxyInterface
    public void realmSet$numberAsInput(String str) {
        this.numberAsInput = str;
    }

    public void setBucketId(int i) {
        realmSet$bucketId(i);
    }

    public void setCategorySuppressed(boolean z) {
        realmSet$categorySuppressed(z);
    }

    public void setDate(Date date) {
        realmSet$date(date);
    }

    public void setE164Number(String str) {
        realmSet$e164Number(str);
    }

    public void setIsEmail(boolean z) {
        realmSet$isEmail(z);
    }

    public void setName(String str) {
        realmSet$name(str);
    }

    public void setNameSuppressed(boolean z) {
        realmSet$nameSuppressed(z);
    }

    public void setNumberAsInput(String str) {
        realmSet$numberAsInput(str);
    }

    public boolean shouldDisplayCategory() {
        return getBucketId() != CategorySetting.BucketId.NONE.getValue() && !isCategorySuppressed();
    }

    @Override // com.tmobile.services.nameid.model.CallerDetailsData
    public boolean shouldHighlight() {
        return hasCategory() && !hasContact();
    }

    public String toString() {
        return "Caller{id='" + realmGet$id() + "', e164Number='" + realmGet$e164Number() + "', name='" + realmGet$name() + "', numberAsInput='" + realmGet$numberAsInput() + "', isEmail=" + realmGet$isEmail() + ", categorySuppressed=" + realmGet$categorySuppressed() + ", nameSuppressed=" + realmGet$nameSuppressed() + ", bucketId=" + realmGet$bucketId() + ", date=" + realmGet$date() + '}';
    }

    public void update(Caller caller) {
        realmSet$e164Number(caller.realmGet$e164Number());
        realmSet$name(caller.realmGet$name());
        realmSet$numberAsInput(caller.realmGet$numberAsInput());
        realmSet$categorySuppressed(caller.realmGet$categorySuppressed());
        realmSet$nameSuppressed(caller.realmGet$nameSuppressed());
        realmSet$bucketId(caller.realmGet$bucketId());
        setIsEmail(caller.realmGet$isEmail());
        realmSet$date(caller.realmGet$date());
    }
}
