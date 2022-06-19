package com.truecaller.api.services.messenger.business;

import com.google.protobuf.Internal;
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/business/BusinessMessageCategory.class */
public enum BusinessMessageCategory implements Internal.EnumLite {
    OTHER(0),
    TRANSACTIONAL(1),
    PROMO(2),
    OTP(3),
    UNRECOGNIZED(-1);
    
    public static final int OTHER_VALUE = 0;
    public static final int OTP_VALUE = 3;
    public static final int PROMO_VALUE = 2;
    public static final int TRANSACTIONAL_VALUE = 1;
    private static final Internal.EnumLiteMap<BusinessMessageCategory> internalValueMap = new Internal.EnumLiteMap<BusinessMessageCategory>() { // from class: com.truecaller.api.services.messenger.business.BusinessMessageCategory.a
        @Override // com.google.protobuf.Internal.EnumLiteMap
        public BusinessMessageCategory findValueByNumber(int i) {
            return BusinessMessageCategory.forNumber(i);
        }
    };
    private final int value;

    /* renamed from: com.truecaller.api.services.messenger.business.BusinessMessageCategory$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/business/BusinessMessageCategory$b.class */
    public static final class C2998b implements Internal.EnumVerifier {

        /* renamed from: a */
        public static final Internal.EnumVerifier f10098a = new C2998b();

        @Override // com.google.protobuf.Internal.EnumVerifier
        public boolean isInRange(int i) {
            return BusinessMessageCategory.forNumber(i) != null;
        }
    }

    BusinessMessageCategory(int i) {
        this.value = i;
    }

    public static BusinessMessageCategory forNumber(int i) {
        if (i != 0) {
            if (i == 1) {
                return TRANSACTIONAL;
            }
            if (i == 2) {
                return PROMO;
            }
            if (i == 3) {
                return OTP;
            }
            return null;
        }
        return OTHER;
    }

    public static Internal.EnumLiteMap<BusinessMessageCategory> internalGetValueMap() {
        return internalValueMap;
    }

    public static Internal.EnumVerifier internalGetVerifier() {
        return C2998b.f10098a;
    }

    @Deprecated
    public static BusinessMessageCategory valueOf(int i) {
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
