package com.truecaller.api.services.messenger.p138v1.models;

import com.google.protobuf.Internal;
/* renamed from: com.truecaller.api.services.messenger.v1.models.Feature */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/Feature.class */
public enum Feature implements Internal.EnumLite {
    DEFAULT(0),
    READ_REPORT(2),
    MESSAGE(4),
    ATTACHMENT_IMAGE(8),
    ATTACHMENT_VIDEO(16),
    ATTACHMENT_FILE(32),
    ATTACHMENT_VCARD(64),
    ATTACHMENT_LOCATION(128),
    UNRECOGNIZED(-1);
    
    public static final int ATTACHMENT_FILE_VALUE = 32;
    public static final int ATTACHMENT_IMAGE_VALUE = 8;
    public static final int ATTACHMENT_LOCATION_VALUE = 128;
    public static final int ATTACHMENT_VCARD_VALUE = 64;
    public static final int ATTACHMENT_VIDEO_VALUE = 16;
    public static final int DEFAULT_VALUE = 0;
    public static final int MESSAGE_VALUE = 4;
    public static final int READ_REPORT_VALUE = 2;
    private static final Internal.EnumLiteMap<Feature> internalValueMap = new Internal.EnumLiteMap<Feature>() { // from class: com.truecaller.api.services.messenger.v1.models.Feature.a
        @Override // com.google.protobuf.Internal.EnumLiteMap
        public Feature findValueByNumber(int i) {
            return Feature.forNumber(i);
        }
    };
    private final int value;

    /* renamed from: com.truecaller.api.services.messenger.v1.models.Feature$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/Feature$b.class */
    public static final class C3163b implements Internal.EnumVerifier {

        /* renamed from: a */
        public static final Internal.EnumVerifier f10109a = new C3163b();

        @Override // com.google.protobuf.Internal.EnumVerifier
        public boolean isInRange(int i) {
            return Feature.forNumber(i) != null;
        }
    }

    Feature(int i) {
        this.value = i;
    }

    public static Feature forNumber(int i) {
        if (i != 0) {
            if (i == 2) {
                return READ_REPORT;
            }
            if (i == 4) {
                return MESSAGE;
            }
            if (i == 8) {
                return ATTACHMENT_IMAGE;
            }
            if (i == 16) {
                return ATTACHMENT_VIDEO;
            }
            if (i == 32) {
                return ATTACHMENT_FILE;
            }
            if (i == 64) {
                return ATTACHMENT_VCARD;
            }
            if (i == 128) {
                return ATTACHMENT_LOCATION;
            }
            return null;
        }
        return DEFAULT;
    }

    public static Internal.EnumLiteMap<Feature> internalGetValueMap() {
        return internalValueMap;
    }

    public static Internal.EnumVerifier internalGetVerifier() {
        return C3163b.f10109a;
    }

    @Deprecated
    public static Feature valueOf(int i) {
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
