package com.truecaller.api.services.messenger.p138v1.models;

import com.google.protobuf.Internal;
/* renamed from: com.truecaller.api.services.messenger.v1.models.Urgency */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/Urgency.class */
public enum Urgency implements Internal.EnumLite {
    NORMAL(0),
    URGENT(1),
    UNRECOGNIZED(-1);
    
    public static final int NORMAL_VALUE = 0;
    public static final int URGENT_VALUE = 1;
    private static final Internal.EnumLiteMap<Urgency> internalValueMap = new Internal.EnumLiteMap<Urgency>() { // from class: com.truecaller.api.services.messenger.v1.models.Urgency.a
        @Override // com.google.protobuf.Internal.EnumLiteMap
        public Urgency findValueByNumber(int i) {
            return Urgency.forNumber(i);
        }
    };
    private final int value;

    /* renamed from: com.truecaller.api.services.messenger.v1.models.Urgency$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/Urgency$b.class */
    public static final class C3237b implements Internal.EnumVerifier {

        /* renamed from: a */
        public static final Internal.EnumVerifier f10117a = new C3237b();

        @Override // com.google.protobuf.Internal.EnumVerifier
        public boolean isInRange(int i) {
            return Urgency.forNumber(i) != null;
        }
    }

    Urgency(int i) {
        this.value = i;
    }

    public static Urgency forNumber(int i) {
        if (i != 0) {
            if (i == 1) {
                return URGENT;
            }
            return null;
        }
        return NORMAL;
    }

    public static Internal.EnumLiteMap<Urgency> internalGetValueMap() {
        return internalValueMap;
    }

    public static Internal.EnumVerifier internalGetVerifier() {
        return C3237b.f10117a;
    }

    @Deprecated
    public static Urgency valueOf(int i) {
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
