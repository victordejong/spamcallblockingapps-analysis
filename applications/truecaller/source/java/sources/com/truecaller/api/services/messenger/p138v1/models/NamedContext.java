package com.truecaller.api.services.messenger.p138v1.models;

import com.google.protobuf.Internal;
/* renamed from: com.truecaller.api.services.messenger.v1.models.NamedContext */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/NamedContext.class */
public enum NamedContext implements Internal.EnumLite {
    GLOBAL(0),
    UNRECOGNIZED(-1);
    
    public static final int GLOBAL_VALUE = 0;
    private static final Internal.EnumLiteMap<NamedContext> internalValueMap = new Internal.EnumLiteMap<NamedContext>() { // from class: com.truecaller.api.services.messenger.v1.models.NamedContext.a
        @Override // com.google.protobuf.Internal.EnumLiteMap
        public NamedContext findValueByNumber(int i) {
            return NamedContext.forNumber(i);
        }
    };
    private final int value;

    /* renamed from: com.truecaller.api.services.messenger.v1.models.NamedContext$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/NamedContext$b.class */
    public static final class C3209b implements Internal.EnumVerifier {

        /* renamed from: a */
        public static final Internal.EnumVerifier f10113a = new C3209b();

        @Override // com.google.protobuf.Internal.EnumVerifier
        public boolean isInRange(int i) {
            return NamedContext.forNumber(i) != null;
        }
    }

    NamedContext(int i) {
        this.value = i;
    }

    public static NamedContext forNumber(int i) {
        if (i != 0) {
            return null;
        }
        return GLOBAL;
    }

    public static Internal.EnumLiteMap<NamedContext> internalGetValueMap() {
        return internalValueMap;
    }

    public static Internal.EnumVerifier internalGetVerifier() {
        return C3209b.f10113a;
    }

    @Deprecated
    public static NamedContext valueOf(int i) {
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
