package com.amazon.device.ads;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/MraidStateType.class */
public enum MraidStateType {
    LOADING,
    DEFAULT,
    EXPANDED,
    RESIZED,
    HIDDEN;

    /* renamed from: com.amazon.device.ads.MraidStateType$1 */
    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/MraidStateType$1.class */
    public static /* synthetic */ class C04571 {
        public static final /* synthetic */ int[] $SwitchMap$com$amazon$device$ads$MraidStateType;

        static {
            MraidStateType.values();
            int[] iArr = new int[5];
            $SwitchMap$com$amazon$device$ads$MraidStateType = iArr;
            try {
                MraidStateType mraidStateType = MraidStateType.LOADING;
                iArr[0] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                int[] iArr2 = $SwitchMap$com$amazon$device$ads$MraidStateType;
                MraidStateType mraidStateType2 = MraidStateType.HIDDEN;
                iArr2[4] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                int[] iArr3 = $SwitchMap$com$amazon$device$ads$MraidStateType;
                MraidStateType mraidStateType3 = MraidStateType.DEFAULT;
                iArr3[1] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                int[] iArr4 = $SwitchMap$com$amazon$device$ads$MraidStateType;
                MraidStateType mraidStateType4 = MraidStateType.RESIZED;
                iArr4[3] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                int[] iArr5 = $SwitchMap$com$amazon$device$ads$MraidStateType;
                MraidStateType mraidStateType5 = MraidStateType.EXPANDED;
                iArr5[2] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    @Override // java.lang.Enum
    public String toString() {
        int ordinal = ordinal();
        return ordinal != 0 ? ordinal != 1 ? ordinal != 2 ? ordinal != 3 ? ordinal != 4 ? "" : "hidden" : "resized" : DTBAdActivity.EXPANDED : "default" : "loading";
    }
}
