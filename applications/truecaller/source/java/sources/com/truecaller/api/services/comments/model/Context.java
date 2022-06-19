package com.truecaller.api.services.comments.model;

import com.google.protobuf.Internal;
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/comments/model/Context.class */
public enum Context implements Internal.EnumLite {
    UNKNOWN_CONTEXT(0),
    BLOCK(1),
    DETAIL_VIEW(2),
    ACS_SCREEN(3),
    UNRECOGNIZED(-1);
    
    public static final int ACS_SCREEN_VALUE = 3;
    public static final int BLOCK_VALUE = 1;
    public static final int DETAIL_VIEW_VALUE = 2;
    public static final int UNKNOWN_CONTEXT_VALUE = 0;
    private static final Internal.EnumLiteMap<Context> internalValueMap = new Internal.EnumLiteMap<Context>() { // from class: com.truecaller.api.services.comments.model.Context.a
        @Override // com.google.protobuf.Internal.EnumLiteMap
        public Context findValueByNumber(int i) {
            return Context.forNumber(i);
        }
    };
    private final int value;

    /* renamed from: com.truecaller.api.services.comments.model.Context$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/comments/model/Context$b.class */
    public static final class C2946b implements Internal.EnumVerifier {

        /* renamed from: a */
        public static final Internal.EnumVerifier f10094a = new C2946b();

        @Override // com.google.protobuf.Internal.EnumVerifier
        public boolean isInRange(int i) {
            return Context.forNumber(i) != null;
        }
    }

    Context(int i) {
        this.value = i;
    }

    public static Context forNumber(int i) {
        if (i != 0) {
            if (i == 1) {
                return BLOCK;
            }
            if (i == 2) {
                return DETAIL_VIEW;
            }
            if (i == 3) {
                return ACS_SCREEN;
            }
            return null;
        }
        return UNKNOWN_CONTEXT;
    }

    public static Internal.EnumLiteMap<Context> internalGetValueMap() {
        return internalValueMap;
    }

    public static Internal.EnumVerifier internalGetVerifier() {
        return C2946b.f10094a;
    }

    @Deprecated
    public static Context valueOf(int i) {
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
