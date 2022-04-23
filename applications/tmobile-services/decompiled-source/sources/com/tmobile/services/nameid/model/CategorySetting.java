package com.tmobile.services.nameid.model;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.tmobile.services.C1517R;
import io.realm.AbstractC2159x525a155d;
import io.realm.RealmObject;
import io.realm.annotations.PrimaryKey;
import io.realm.internal.RealmObjectProxy;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/CategorySetting.class */
public class CategorySetting extends RealmObject implements AbstractC2159x525a155d {
    @SerializedName("categoryStatus")
    @Expose
    private boolean blocked;
    @SerializedName("bucketId")
    @PrimaryKey
    @Expose
    private int bucketId;
    @SerializedName("preferenceDisposition")
    @Expose
    private int disposition;
    @SerializedName("commEventType")
    @Expose
    private int eventType;
    private boolean pending;

    /* renamed from: com.tmobile.services.nameid.model.CategorySetting$1 */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/CategorySetting$1.class */
    static /* synthetic */ class C18251 {

        /* renamed from: $SwitchMap$com$tmobile$services$nameid$model$CategorySetting$BucketId */
        static final /* synthetic */ int[] f13607x99c6b85b;

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
            int[] iArr = new int[BucketId.values().length];
            f13607x99c6b85b = iArr;
            try {
                iArr[BucketId.NUISANCE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f13607x99c6b85b[BucketId.CALL_BLOCKING.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f13607x99c6b85b[BucketId.TELEMARKETING.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f13607x99c6b85b[BucketId.COLLECTION.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f13607x99c6b85b[BucketId.POLITICAL.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f13607x99c6b85b[BucketId.SURVEY.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f13607x99c6b85b[BucketId.CHARITY.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f13607x99c6b85b[BucketId.HEALTHCARE.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f13607x99c6b85b[BucketId.PUBLIC_SERVICE.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f13607x99c6b85b[BucketId.INFORMATIONAL.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f13607x99c6b85b[BucketId.PRISON.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f13607x99c6b85b[BucketId.SCAM.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/CategorySetting$BucketId.class */
    public enum BucketId {
        NONE(-1),
        CALL_BLOCKING(0),
        NUISANCE(1),
        TELEMARKETING(2),
        COLLECTION(3),
        POLITICAL(4),
        SURVEY(5),
        CHARITY(6),
        HEALTHCARE(7),
        PUBLIC_SERVICE(8),
        INFORMATIONAL(9),
        PRISON(10),
        SCAM(15);
        
        private final int value;

        BucketId(int i) {
            this.value = i;
        }

        public static BucketId fromValue(int i) {
            BucketId[] values;
            for (BucketId bucketId : values()) {
                if (bucketId.getValue() == i) {
                    return bucketId;
                }
            }
            return NONE;
        }

        public int getValue() {
            return this.value;
        }

        public int toStringRes() {
            switch (C18251.f13607x99c6b85b[ordinal()]) {
                case 1:
                    return C1517R.string.category_name_nuisance_likely;
                case 2:
                    return C1517R.string.category_name_scam_likely;
                case 3:
                    return C1517R.string.category_name_telemarketing;
                case 4:
                    return C1517R.string.category_name_collection_call;
                case 5:
                    return C1517R.string.category_name_political_call;
                case 6:
                    return C1517R.string.category_name_survey_call;
                case 7:
                    return C1517R.string.category_name_charity_call;
                case 8:
                    return C1517R.string.category_name_healthcare_call;
                case 9:
                    return C1517R.string.category_name_public_service;
                case 10:
                    return C1517R.string.category_name_informational;
                case 11:
                    return C1517R.string.category_name_prison_jail;
                case 12:
                    return C1517R.string.category_name_scam_likely;
                default:
                    return C1517R.string.general_empty_string;
            }
        }
    }

    public CategorySetting() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$eventType(1);
        realmSet$disposition(0);
        realmSet$pending(false);
    }

    public CategorySetting copy() {
        CategorySetting categorySetting = new CategorySetting();
        categorySetting.setBlocked(realmGet$blocked());
        categorySetting.setDisposition(realmGet$disposition());
        categorySetting.setBucketId(realmGet$bucketId());
        categorySetting.setPending(realmGet$pending());
        return categorySetting;
    }

    public boolean getBlocked() {
        return realmGet$blocked();
    }

    public int getBucketId() {
        return realmGet$bucketId();
    }

    public int getDisposition() {
        return realmGet$disposition();
    }

    public boolean isPending() {
        return realmGet$pending();
    }

    @Override // io.realm.AbstractC2159x525a155d
    public boolean realmGet$blocked() {
        return this.blocked;
    }

    @Override // io.realm.AbstractC2159x525a155d
    public int realmGet$bucketId() {
        return this.bucketId;
    }

    @Override // io.realm.AbstractC2159x525a155d
    public int realmGet$disposition() {
        return this.disposition;
    }

    @Override // io.realm.AbstractC2159x525a155d
    public int realmGet$eventType() {
        return this.eventType;
    }

    @Override // io.realm.AbstractC2159x525a155d
    public boolean realmGet$pending() {
        return this.pending;
    }

    @Override // io.realm.AbstractC2159x525a155d
    public void realmSet$blocked(boolean z) {
        this.blocked = z;
    }

    @Override // io.realm.AbstractC2159x525a155d
    public void realmSet$bucketId(int i) {
        this.bucketId = i;
    }

    @Override // io.realm.AbstractC2159x525a155d
    public void realmSet$disposition(int i) {
        this.disposition = i;
    }

    @Override // io.realm.AbstractC2159x525a155d
    public void realmSet$eventType(int i) {
        this.eventType = i;
    }

    @Override // io.realm.AbstractC2159x525a155d
    public void realmSet$pending(boolean z) {
        this.pending = z;
    }

    public void setBlocked(boolean z) {
        realmSet$blocked(z);
    }

    public void setBucketId(int i) {
        realmSet$bucketId(i);
    }

    public void setDisposition(int i) {
        realmSet$disposition(i);
    }

    public void setPending(boolean z) {
        realmSet$pending(z);
    }
}
