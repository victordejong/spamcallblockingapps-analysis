package com.privacystar.core.data.blocking.protection;

import com.privacystar.core.util.OffenderUtil;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/blocking/protection/ProtectionLevel.class */
public enum ProtectionLevel {
    BASIC(0),
    ENHANCED(1),
    MAXIMUM(2),
    CUSTOM(3),
    INVALID(-1);
    
    private List<OffenderUtil.OffenderTypeUi> memberCategories;
    private int value;

    /* renamed from: com.privacystar.core.data.blocking.protection.ProtectionLevel$1 */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/blocking/protection/ProtectionLevel$1.class */
    static /* synthetic */ class C15771 {

        /* renamed from: $SwitchMap$com$privacystar$core$data$blocking$protection$ProtectionLevel */
        static final /* synthetic */ int[] f244x79a62bed = new int[ProtectionLevel.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            try {
                f244x79a62bed[ProtectionLevel.MAXIMUM.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f244x79a62bed[ProtectionLevel.ENHANCED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f244x79a62bed[ProtectionLevel.BASIC.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f244x79a62bed[ProtectionLevel.CUSTOM.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f244x79a62bed[ProtectionLevel.INVALID.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    ProtectionLevel(int i) {
        this.value = i;
    }

    public static ProtectionLevel byIndex(int i) {
        ProtectionLevel[] values;
        for (ProtectionLevel protectionLevel : values()) {
            if (protectionLevel.value == i) {
                return protectionLevel;
            }
        }
        return INVALID;
    }

    public List<OffenderUtil.OffenderTypeUi> getMemberCategories() {
        List<OffenderUtil.OffenderTypeUi> list;
        synchronized (this) {
            if (this.memberCategories == null) {
                this.memberCategories = new ArrayList();
                switch (C15771.f244x79a62bed[ordinal()]) {
                    case 1:
                        this.memberCategories.add(OffenderUtil.OffenderTypeUi.POLITICAL);
                        this.memberCategories.add(OffenderUtil.OffenderTypeUi.SURVEY);
                        this.memberCategories.add(OffenderUtil.OffenderTypeUi.CHARITY);
                        this.memberCategories.add(OffenderUtil.OffenderTypeUi.PRISON);
                    case 2:
                        this.memberCategories.add(OffenderUtil.OffenderTypeUi.NUISANCE);
                        this.memberCategories.add(OffenderUtil.OffenderTypeUi.TELEMARKETING);
                        this.memberCategories.add(OffenderUtil.OffenderTypeUi.ACCOUNT_SERVICES);
                    case 3:
                        this.memberCategories.add(OffenderUtil.OffenderTypeUi.SCAM);
                        break;
                }
            }
            list = this.memberCategories;
        }
        return list;
    }

    public int getValue() {
        return this.value;
    }
}
