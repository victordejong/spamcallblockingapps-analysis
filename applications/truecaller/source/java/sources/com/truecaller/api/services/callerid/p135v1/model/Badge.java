package com.truecaller.api.services.callerid.p135v1.model;

import com.google.protobuf.Internal;
/* renamed from: com.truecaller.api.services.callerid.v1.model.Badge */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/callerid/v1/model/Badge.class */
public enum Badge implements Internal.EnumLite {
    UNKNOWN(0),
    AMBASSADOR(1),
    VERIFIED(2),
    PREMIUM(3),
    GOLD(4),
    USER(5),
    PRIORITY(6),
    VERIFIED_BUSINESS(7),
    CRED(8),
    UNRECOGNIZED(-1);
    
    public static final int AMBASSADOR_VALUE = 1;
    public static final int CRED_VALUE = 8;
    public static final int GOLD_VALUE = 4;
    public static final int PREMIUM_VALUE = 3;
    public static final int PRIORITY_VALUE = 6;
    public static final int UNKNOWN_VALUE = 0;
    public static final int USER_VALUE = 5;
    public static final int VERIFIED_BUSINESS_VALUE = 7;
    public static final int VERIFIED_VALUE = 2;
    private static final Internal.EnumLiteMap<Badge> internalValueMap = new Internal.EnumLiteMap<Badge>() { // from class: com.truecaller.api.services.callerid.v1.model.Badge.a
        @Override // com.google.protobuf.Internal.EnumLiteMap
        public Badge findValueByNumber(int i) {
            return Badge.forNumber(i);
        }
    };
    private final int value;

    /* renamed from: com.truecaller.api.services.callerid.v1.model.Badge$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/callerid/v1/model/Badge$b.class */
    public static final class C2919b implements Internal.EnumVerifier {

        /* renamed from: a */
        public static final Internal.EnumVerifier f10093a = new C2919b();

        @Override // com.google.protobuf.Internal.EnumVerifier
        public boolean isInRange(int i) {
            return Badge.forNumber(i) != null;
        }
    }

    Badge(int i) {
        this.value = i;
    }

    public static Badge forNumber(int i) {
        switch (i) {
            case 0:
                return UNKNOWN;
            case 1:
                return AMBASSADOR;
            case 2:
                return VERIFIED;
            case 3:
                return PREMIUM;
            case 4:
                return GOLD;
            case 5:
                return USER;
            case 6:
                return PRIORITY;
            case 7:
                return VERIFIED_BUSINESS;
            case 8:
                return CRED;
            default:
                return null;
        }
    }

    public static Internal.EnumLiteMap<Badge> internalGetValueMap() {
        return internalValueMap;
    }

    public static Internal.EnumVerifier internalGetVerifier() {
        return C2919b.f10093a;
    }

    @Deprecated
    public static Badge valueOf(int i) {
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
