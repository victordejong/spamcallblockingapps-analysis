package com.truecaller.api.services.comments.model;

import com.google.protobuf.Internal;
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/comments/model/NumberType.class */
public enum NumberType implements Internal.EnumLite {
    UNKNOWN_NUMBER_TYPE(0),
    PHONE_NUMBER(1),
    SENDER_ID(2),
    IM_ID(3),
    UNRECOGNIZED(-1);
    
    public static final int IM_ID_VALUE = 3;
    public static final int PHONE_NUMBER_VALUE = 1;
    public static final int SENDER_ID_VALUE = 2;
    public static final int UNKNOWN_NUMBER_TYPE_VALUE = 0;
    private static final Internal.EnumLiteMap<NumberType> internalValueMap = new Internal.EnumLiteMap<NumberType>() { // from class: com.truecaller.api.services.comments.model.NumberType.a
        @Override // com.google.protobuf.Internal.EnumLiteMap
        public NumberType findValueByNumber(int i) {
            return NumberType.forNumber(i);
        }
    };
    private final int value;

    /* renamed from: com.truecaller.api.services.comments.model.NumberType$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/comments/model/NumberType$b.class */
    public static final class C2962b implements Internal.EnumVerifier {

        /* renamed from: a */
        public static final Internal.EnumVerifier f10095a = new C2962b();

        @Override // com.google.protobuf.Internal.EnumVerifier
        public boolean isInRange(int i) {
            return NumberType.forNumber(i) != null;
        }
    }

    NumberType(int i) {
        this.value = i;
    }

    public static NumberType forNumber(int i) {
        if (i != 0) {
            if (i == 1) {
                return PHONE_NUMBER;
            }
            if (i == 2) {
                return SENDER_ID;
            }
            if (i == 3) {
                return IM_ID;
            }
            return null;
        }
        return UNKNOWN_NUMBER_TYPE;
    }

    public static Internal.EnumLiteMap<NumberType> internalGetValueMap() {
        return internalValueMap;
    }

    public static Internal.EnumVerifier internalGetVerifier() {
        return C2962b.f10095a;
    }

    @Deprecated
    public static NumberType valueOf(int i) {
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
