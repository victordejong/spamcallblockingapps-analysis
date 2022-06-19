package com.truecaller.api.services.messenger.p138v1.models;

import com.google.protobuf.Internal;
/* renamed from: com.truecaller.api.services.messenger.v1.models.UserTypingKind */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/UserTypingKind.class */
public enum UserTypingKind implements Internal.EnumLite {
    TYPING(0),
    VIDEO(1),
    VIDEO_UPLOADING(8),
    IMAGE(2),
    IMAGE_UPLOADING(9),
    VOICE_RECORDING(3),
    VOICE_SENDING(4),
    ANIMATION(5),
    ANIMATION_UPLOADING(10),
    FILE(6),
    FILE_UPLOADING(11),
    VCARD(7),
    VCARD_UPLOADING(12),
    UNRECOGNIZED(-1);
    
    public static final int ANIMATION_UPLOADING_VALUE = 10;
    public static final int ANIMATION_VALUE = 5;
    public static final int FILE_UPLOADING_VALUE = 11;
    public static final int FILE_VALUE = 6;
    public static final int IMAGE_UPLOADING_VALUE = 9;
    public static final int IMAGE_VALUE = 2;
    public static final int TYPING_VALUE = 0;
    public static final int VCARD_UPLOADING_VALUE = 12;
    public static final int VCARD_VALUE = 7;
    public static final int VIDEO_UPLOADING_VALUE = 8;
    public static final int VIDEO_VALUE = 1;
    public static final int VOICE_RECORDING_VALUE = 3;
    public static final int VOICE_SENDING_VALUE = 4;
    private static final Internal.EnumLiteMap<UserTypingKind> internalValueMap = new Internal.EnumLiteMap<UserTypingKind>() { // from class: com.truecaller.api.services.messenger.v1.models.UserTypingKind.a
        @Override // com.google.protobuf.Internal.EnumLiteMap
        public UserTypingKind findValueByNumber(int i) {
            return UserTypingKind.forNumber(i);
        }
    };
    private final int value;

    /* renamed from: com.truecaller.api.services.messenger.v1.models.UserTypingKind$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/UserTypingKind$b.class */
    public static final class C3243b implements Internal.EnumVerifier {

        /* renamed from: a */
        public static final Internal.EnumVerifier f10118a = new C3243b();

        @Override // com.google.protobuf.Internal.EnumVerifier
        public boolean isInRange(int i) {
            return UserTypingKind.forNumber(i) != null;
        }
    }

    UserTypingKind(int i) {
        this.value = i;
    }

    public static UserTypingKind forNumber(int i) {
        switch (i) {
            case 0:
                return TYPING;
            case 1:
                return VIDEO;
            case 2:
                return IMAGE;
            case 3:
                return VOICE_RECORDING;
            case 4:
                return VOICE_SENDING;
            case 5:
                return ANIMATION;
            case 6:
                return FILE;
            case 7:
                return VCARD;
            case 8:
                return VIDEO_UPLOADING;
            case 9:
                return IMAGE_UPLOADING;
            case 10:
                return ANIMATION_UPLOADING;
            case 11:
                return FILE_UPLOADING;
            case 12:
                return VCARD_UPLOADING;
            default:
                return null;
        }
    }

    public static Internal.EnumLiteMap<UserTypingKind> internalGetValueMap() {
        return internalValueMap;
    }

    public static Internal.EnumVerifier internalGetVerifier() {
        return C3243b.f10118a;
    }

    @Deprecated
    public static UserTypingKind valueOf(int i) {
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
