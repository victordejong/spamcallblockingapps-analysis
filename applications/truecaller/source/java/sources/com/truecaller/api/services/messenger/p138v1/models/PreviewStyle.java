package com.truecaller.api.services.messenger.p138v1.models;

import com.google.protobuf.Internal;
/* renamed from: com.truecaller.api.services.messenger.v1.models.PreviewStyle */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/PreviewStyle.class */
public enum PreviewStyle implements Internal.EnumLite {
    DAY(0),
    NIGHT(1),
    UNRECOGNIZED(-1);
    
    public static final int DAY_VALUE = 0;
    public static final int NIGHT_VALUE = 1;
    private static final Internal.EnumLiteMap<PreviewStyle> internalValueMap = new Internal.EnumLiteMap<PreviewStyle>() { // from class: com.truecaller.api.services.messenger.v1.models.PreviewStyle.a
        @Override // com.google.protobuf.Internal.EnumLiteMap
        public PreviewStyle findValueByNumber(int i) {
            return PreviewStyle.forNumber(i);
        }
    };
    private final int value;

    /* renamed from: com.truecaller.api.services.messenger.v1.models.PreviewStyle$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/PreviewStyle$b.class */
    public static final class C3228b implements Internal.EnumVerifier {

        /* renamed from: a */
        public static final Internal.EnumVerifier f10114a = new C3228b();

        @Override // com.google.protobuf.Internal.EnumVerifier
        public boolean isInRange(int i) {
            return PreviewStyle.forNumber(i) != null;
        }
    }

    PreviewStyle(int i) {
        this.value = i;
    }

    public static PreviewStyle forNumber(int i) {
        if (i != 0) {
            if (i == 1) {
                return NIGHT;
            }
            return null;
        }
        return DAY;
    }

    public static Internal.EnumLiteMap<PreviewStyle> internalGetValueMap() {
        return internalValueMap;
    }

    public static Internal.EnumVerifier internalGetVerifier() {
        return C3228b.f10114a;
    }

    @Deprecated
    public static PreviewStyle valueOf(int i) {
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
