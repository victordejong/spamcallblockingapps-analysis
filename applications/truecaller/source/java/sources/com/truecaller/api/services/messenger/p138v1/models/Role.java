package com.truecaller.api.services.messenger.p138v1.models;

import com.google.protobuf.Internal;
/* renamed from: com.truecaller.api.services.messenger.v1.models.Role */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/Role.class */
public enum Role implements Internal.EnumLite {
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
    private static final Internal.EnumLiteMap<Role> internalValueMap = new Internal.EnumLiteMap<Role>() { // from class: com.truecaller.api.services.messenger.v1.models.Role.a
        @Override // com.google.protobuf.Internal.EnumLiteMap
        public Role findValueByNumber(int i) {
            return Role.forNumber(i);
        }
    };
    private final int value;

    /* renamed from: com.truecaller.api.services.messenger.v1.models.Role$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/Role$b.class */
    public static final class C3235b implements Internal.EnumVerifier {

        /* renamed from: a */
        public static final Internal.EnumVerifier f10116a = new C3235b();

        @Override // com.google.protobuf.Internal.EnumVerifier
        public boolean isInRange(int i) {
            return Role.forNumber(i) != null;
        }
    }

    Role(int i) {
        this.value = i;
    }

    public static Role forNumber(int i) {
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

    public static Internal.EnumLiteMap<Role> internalGetValueMap() {
        return internalValueMap;
    }

    public static Internal.EnumVerifier internalGetVerifier() {
        return C3235b.f10116a;
    }

    @Deprecated
    public static Role valueOf(int i) {
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
