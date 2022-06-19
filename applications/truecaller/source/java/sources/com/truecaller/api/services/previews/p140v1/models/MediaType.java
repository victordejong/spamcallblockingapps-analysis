package com.truecaller.api.services.previews.p140v1.models;

import com.google.protobuf.Internal;
/* renamed from: com.truecaller.api.services.previews.v1.models.MediaType */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/previews/v1/models/MediaType.class */
public enum MediaType implements Internal.EnumLite {
    UNKNOWN(0),
    GENERAL(1),
    AUDIO(2),
    VIDEO(3),
    UNRECOGNIZED(-1);
    
    public static final int AUDIO_VALUE = 2;
    public static final int GENERAL_VALUE = 1;
    public static final int UNKNOWN_VALUE = 0;
    public static final int VIDEO_VALUE = 3;
    private static final Internal.EnumLiteMap<MediaType> internalValueMap = new Internal.EnumLiteMap<MediaType>() { // from class: com.truecaller.api.services.previews.v1.models.MediaType.a
        @Override // com.google.protobuf.Internal.EnumLiteMap
        public MediaType findValueByNumber(int i) {
            return MediaType.forNumber(i);
        }
    };
    private final int value;

    /* renamed from: com.truecaller.api.services.previews.v1.models.MediaType$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/previews/v1/models/MediaType$b.class */
    public static final class C3368b implements Internal.EnumVerifier {

        /* renamed from: a */
        public static final Internal.EnumVerifier f10132a = new C3368b();

        @Override // com.google.protobuf.Internal.EnumVerifier
        public boolean isInRange(int i) {
            return MediaType.forNumber(i) != null;
        }
    }

    MediaType(int i) {
        this.value = i;
    }

    public static MediaType forNumber(int i) {
        if (i != 0) {
            if (i == 1) {
                return GENERAL;
            }
            if (i == 2) {
                return AUDIO;
            }
            if (i == 3) {
                return VIDEO;
            }
            return null;
        }
        return UNKNOWN;
    }

    public static Internal.EnumLiteMap<MediaType> internalGetValueMap() {
        return internalValueMap;
    }

    public static Internal.EnumVerifier internalGetVerifier() {
        return C3368b.f10132a;
    }

    @Deprecated
    public static MediaType valueOf(int i) {
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
