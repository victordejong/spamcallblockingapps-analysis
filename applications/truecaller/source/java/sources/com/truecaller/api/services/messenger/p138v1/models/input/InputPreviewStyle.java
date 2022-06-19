package com.truecaller.api.services.messenger.p138v1.models.input;

import com.google.protobuf.Internal;
/* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputPreviewStyle */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputPreviewStyle.class */
public enum InputPreviewStyle implements Internal.EnumLite {
    DAY(0),
    NIGHT(1),
    UNRECOGNIZED(-1);
    
    public static final int DAY_VALUE = 0;
    public static final int NIGHT_VALUE = 1;
    private static final Internal.EnumLiteMap<InputPreviewStyle> internalValueMap = new Internal.EnumLiteMap<InputPreviewStyle>() { // from class: com.truecaller.api.services.messenger.v1.models.input.InputPreviewStyle.a
        @Override // com.google.protobuf.Internal.EnumLiteMap
        public InputPreviewStyle findValueByNumber(int i) {
            return InputPreviewStyle.forNumber(i);
        }
    };
    private final int value;

    /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputPreviewStyle$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputPreviewStyle$b.class */
    public static final class C3291b implements Internal.EnumVerifier {

        /* renamed from: a */
        public static final Internal.EnumVerifier f10120a = new C3291b();

        @Override // com.google.protobuf.Internal.EnumVerifier
        public boolean isInRange(int i) {
            return InputPreviewStyle.forNumber(i) != null;
        }
    }

    InputPreviewStyle(int i) {
        this.value = i;
    }

    public static InputPreviewStyle forNumber(int i) {
        if (i != 0) {
            if (i == 1) {
                return NIGHT;
            }
            return null;
        }
        return DAY;
    }

    public static Internal.EnumLiteMap<InputPreviewStyle> internalGetValueMap() {
        return internalValueMap;
    }

    public static Internal.EnumVerifier internalGetVerifier() {
        return C3291b.f10120a;
    }

    @Deprecated
    public static InputPreviewStyle valueOf(int i) {
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
