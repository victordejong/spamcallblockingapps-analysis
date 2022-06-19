package com.truecaller.api.services.messenger.p138v1.models.input;

import com.google.protobuf.Internal;
/* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputRole */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputRole.class */
public enum InputRole implements Internal.EnumLite {
    NO_ROLE(0),
    INVITEE(2),
    USER(8),
    ADMIN(536870912),
    SUPER_ADMIN(1073741824),
    UNRECOGNIZED(-1);
    
    public static final int ADMIN_VALUE = 536870912;
    public static final int INVITEE_VALUE = 2;
    public static final int NO_ROLE_VALUE = 0;
    public static final int SUPER_ADMIN_VALUE = 1073741824;
    public static final int USER_VALUE = 8;
    private static final Internal.EnumLiteMap<InputRole> internalValueMap = new Internal.EnumLiteMap<InputRole>() { // from class: com.truecaller.api.services.messenger.v1.models.input.InputRole.a
        @Override // com.google.protobuf.Internal.EnumLiteMap
        public InputRole findValueByNumber(int i) {
            return InputRole.forNumber(i);
        }
    };
    private final int value;

    /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputRole$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputRole$b.class */
    public static final class C3298b implements Internal.EnumVerifier {

        /* renamed from: a */
        public static final Internal.EnumVerifier f10122a = new C3298b();

        @Override // com.google.protobuf.Internal.EnumVerifier
        public boolean isInRange(int i) {
            return InputRole.forNumber(i) != null;
        }
    }

    InputRole(int i) {
        this.value = i;
    }

    public static InputRole forNumber(int i) {
        if (i != 0) {
            if (i == 2) {
                return INVITEE;
            }
            if (i == 8) {
                return USER;
            }
            if (i == 536870912) {
                return ADMIN;
            }
            if (i == 1073741824) {
                return SUPER_ADMIN;
            }
            return null;
        }
        return NO_ROLE;
    }

    public static Internal.EnumLiteMap<InputRole> internalGetValueMap() {
        return internalValueMap;
    }

    public static Internal.EnumVerifier internalGetVerifier() {
        return C3298b.f10122a;
    }

    @Deprecated
    public static InputRole valueOf(int i) {
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
