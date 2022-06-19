package com.truecaller.api.services.messenger.p138v1.models;

import com.google.protobuf.Internal;
/* renamed from: com.truecaller.api.services.messenger.v1.models.MessageCategory */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/MessageCategory.class */
public enum MessageCategory implements Internal.EnumLite {
    PRIVATE(0),
    SERVICE(1),
    TRANSACTIONAL(2),
    PROMO(3),
    OTHER_BUSINESS(4),
    OTP(5),
    UNRECOGNIZED(-1);
    
    public static final int OTHER_BUSINESS_VALUE = 4;
    public static final int OTP_VALUE = 5;
    public static final int PRIVATE_VALUE = 0;
    public static final int PROMO_VALUE = 3;
    public static final int SERVICE_VALUE = 1;
    public static final int TRANSACTIONAL_VALUE = 2;
    private static final Internal.EnumLiteMap<MessageCategory> internalValueMap = new Internal.EnumLiteMap<MessageCategory>() { // from class: com.truecaller.api.services.messenger.v1.models.MessageCategory.a
        @Override // com.google.protobuf.Internal.EnumLiteMap
        public MessageCategory findValueByNumber(int i) {
            return MessageCategory.forNumber(i);
        }
    };
    private final int value;

    /* renamed from: com.truecaller.api.services.messenger.v1.models.MessageCategory$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/MessageCategory$b.class */
    public static final class C3178b implements Internal.EnumVerifier {

        /* renamed from: a */
        public static final Internal.EnumVerifier f10111a = new C3178b();

        @Override // com.google.protobuf.Internal.EnumVerifier
        public boolean isInRange(int i) {
            return MessageCategory.forNumber(i) != null;
        }
    }

    MessageCategory(int i) {
        this.value = i;
    }

    public static MessageCategory forNumber(int i) {
        if (i != 0) {
            if (i == 1) {
                return SERVICE;
            }
            if (i == 2) {
                return TRANSACTIONAL;
            }
            if (i == 3) {
                return PROMO;
            }
            if (i == 4) {
                return OTHER_BUSINESS;
            }
            if (i == 5) {
                return OTP;
            }
            return null;
        }
        return PRIVATE;
    }

    public static Internal.EnumLiteMap<MessageCategory> internalGetValueMap() {
        return internalValueMap;
    }

    public static Internal.EnumVerifier internalGetVerifier() {
        return C3178b.f10111a;
    }

    @Deprecated
    public static MessageCategory valueOf(int i) {
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
