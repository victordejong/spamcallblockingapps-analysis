package com.truecaller.api.services.searchwarnings.p141v1.models;

import com.google.protobuf.Internal;
/* renamed from: com.truecaller.api.services.searchwarnings.v1.models.SupernovaStatus */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/searchwarnings/v1/models/SupernovaStatus.class */
public enum SupernovaStatus implements Internal.EnumLite {
    UNKNOWN_STATUS(0),
    OPTED_OUT(1),
    OPTED_IN(2),
    UNRECOGNIZED(-1);
    
    public static final int OPTED_IN_VALUE = 2;
    public static final int OPTED_OUT_VALUE = 1;
    public static final int UNKNOWN_STATUS_VALUE = 0;
    private static final Internal.EnumLiteMap<SupernovaStatus> internalValueMap = new Internal.EnumLiteMap<SupernovaStatus>() { // from class: com.truecaller.api.services.searchwarnings.v1.models.SupernovaStatus.a
        @Override // com.google.protobuf.Internal.EnumLiteMap
        public SupernovaStatus findValueByNumber(int i) {
            return SupernovaStatus.forNumber(i);
        }
    };
    private final int value;

    /* renamed from: com.truecaller.api.services.searchwarnings.v1.models.SupernovaStatus$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/searchwarnings/v1/models/SupernovaStatus$b.class */
    public static final class C3392b implements Internal.EnumVerifier {

        /* renamed from: a */
        public static final Internal.EnumVerifier f10133a = new C3392b();

        @Override // com.google.protobuf.Internal.EnumVerifier
        public boolean isInRange(int i) {
            return SupernovaStatus.forNumber(i) != null;
        }
    }

    SupernovaStatus(int i) {
        this.value = i;
    }

    public static SupernovaStatus forNumber(int i) {
        if (i != 0) {
            if (i == 1) {
                return OPTED_OUT;
            }
            if (i == 2) {
                return OPTED_IN;
            }
            return null;
        }
        return UNKNOWN_STATUS;
    }

    public static Internal.EnumLiteMap<SupernovaStatus> internalGetValueMap() {
        return internalValueMap;
    }

    public static Internal.EnumVerifier internalGetVerifier() {
        return C3392b.f10133a;
    }

    @Deprecated
    public static SupernovaStatus valueOf(int i) {
        return forNumber(i);
    }

    @Override // com.google.protobuf.Internal.EnumLite
    public final int getNumber() {
        if (this != UNRECOGNIZED) {
            return this.value;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
