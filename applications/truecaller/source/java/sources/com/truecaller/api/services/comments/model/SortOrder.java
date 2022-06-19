package com.truecaller.api.services.comments.model;

import com.google.protobuf.Internal;
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/comments/model/SortOrder.class */
public enum SortOrder implements Internal.EnumLite {
    DESC(0),
    ASC(1),
    UNRECOGNIZED(-1);
    
    public static final int ASC_VALUE = 1;
    public static final int DESC_VALUE = 0;
    private static final Internal.EnumLiteMap<SortOrder> internalValueMap = new Internal.EnumLiteMap<SortOrder>() { // from class: com.truecaller.api.services.comments.model.SortOrder.a
        @Override // com.google.protobuf.Internal.EnumLiteMap
        public SortOrder findValueByNumber(int i) {
            return SortOrder.forNumber(i);
        }
    };
    private final int value;

    /* renamed from: com.truecaller.api.services.comments.model.SortOrder$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/comments/model/SortOrder$b.class */
    public static final class C2974b implements Internal.EnumVerifier {

        /* renamed from: a */
        public static final Internal.EnumVerifier f10097a = new C2974b();

        @Override // com.google.protobuf.Internal.EnumVerifier
        public boolean isInRange(int i) {
            return SortOrder.forNumber(i) != null;
        }
    }

    SortOrder(int i) {
        this.value = i;
    }

    public static SortOrder forNumber(int i) {
        if (i != 0) {
            if (i == 1) {
                return ASC;
            }
            return null;
        }
        return DESC;
    }

    public static Internal.EnumLiteMap<SortOrder> internalGetValueMap() {
        return internalValueMap;
    }

    public static Internal.EnumVerifier internalGetVerifier() {
        return C2974b.f10097a;
    }

    @Deprecated
    public static SortOrder valueOf(int i) {
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
