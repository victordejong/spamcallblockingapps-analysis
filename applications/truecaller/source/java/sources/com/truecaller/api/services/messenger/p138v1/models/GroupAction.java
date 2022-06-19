package com.truecaller.api.services.messenger.p138v1.models;

import com.google.protobuf.Internal;
/* renamed from: com.truecaller.api.services.messenger.v1.models.GroupAction */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/GroupAction.class */
public enum GroupAction implements Internal.EnumLite {
    NO_ACTION(0),
    UPDATE_SETTINGS(1),
    UPDATE_INFO(2),
    INVITE(4),
    KICK_OUT(8),
    SEND_MESSAGE(16),
    UNRECOGNIZED(-1);
    
    public static final int INVITE_VALUE = 4;
    public static final int KICK_OUT_VALUE = 8;
    public static final int NO_ACTION_VALUE = 0;
    public static final int SEND_MESSAGE_VALUE = 16;
    public static final int UPDATE_INFO_VALUE = 2;
    public static final int UPDATE_SETTINGS_VALUE = 1;
    private static final Internal.EnumLiteMap<GroupAction> internalValueMap = new Internal.EnumLiteMap<GroupAction>() { // from class: com.truecaller.api.services.messenger.v1.models.GroupAction.a
        @Override // com.google.protobuf.Internal.EnumLiteMap
        public GroupAction findValueByNumber(int i) {
            return GroupAction.forNumber(i);
        }
    };
    private final int value;

    /* renamed from: com.truecaller.api.services.messenger.v1.models.GroupAction$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/GroupAction$b.class */
    public static final class C3167b implements Internal.EnumVerifier {

        /* renamed from: a */
        public static final Internal.EnumVerifier f10110a = new C3167b();

        @Override // com.google.protobuf.Internal.EnumVerifier
        public boolean isInRange(int i) {
            return GroupAction.forNumber(i) != null;
        }
    }

    GroupAction(int i) {
        this.value = i;
    }

    public static GroupAction forNumber(int i) {
        if (i != 0) {
            if (i == 1) {
                return UPDATE_SETTINGS;
            }
            if (i == 2) {
                return UPDATE_INFO;
            }
            if (i == 4) {
                return INVITE;
            }
            if (i == 8) {
                return KICK_OUT;
            }
            if (i == 16) {
                return SEND_MESSAGE;
            }
            return null;
        }
        return NO_ACTION;
    }

    public static Internal.EnumLiteMap<GroupAction> internalGetValueMap() {
        return internalValueMap;
    }

    public static Internal.EnumVerifier internalGetVerifier() {
        return C3167b.f10110a;
    }

    @Deprecated
    public static GroupAction valueOf(int i) {
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
