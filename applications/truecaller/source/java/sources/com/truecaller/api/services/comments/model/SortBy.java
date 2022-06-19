package com.truecaller.api.services.comments.model;

import com.google.protobuf.Internal;
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/comments/model/SortBy.class */
public enum SortBy implements Internal.EnumLite {
    POST_TIME(0),
    SCORE(1),
    UNRECOGNIZED(-1);
    
    public static final int POST_TIME_VALUE = 0;
    public static final int SCORE_VALUE = 1;
    private static final Internal.EnumLiteMap<SortBy> internalValueMap = new Internal.EnumLiteMap<SortBy>() { // from class: com.truecaller.api.services.comments.model.SortBy.a
        @Override // com.google.protobuf.Internal.EnumLiteMap
        public SortBy findValueByNumber(int i) {
            return SortBy.forNumber(i);
        }
    };
    private final int value;

    /* renamed from: com.truecaller.api.services.comments.model.SortBy$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/comments/model/SortBy$b.class */
    public static final class C2972b implements Internal.EnumVerifier {

        /* renamed from: a */
        public static final Internal.EnumVerifier f10096a = new C2972b();

        @Override // com.google.protobuf.Internal.EnumVerifier
        public boolean isInRange(int i) {
            return SortBy.forNumber(i) != null;
        }
    }

    SortBy(int i) {
        this.value = i;
    }

    public static SortBy forNumber(int i) {
        if (i != 0) {
            if (i == 1) {
                return SCORE;
            }
            return null;
        }
        return POST_TIME;
    }

    public static Internal.EnumLiteMap<SortBy> internalGetValueMap() {
        return internalValueMap;
    }

    public static Internal.EnumVerifier internalGetVerifier() {
        return C2972b.f10096a;
    }

    @Deprecated
    public static SortBy valueOf(int i) {
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
