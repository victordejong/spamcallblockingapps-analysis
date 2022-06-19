package com.amazon.device.ads;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/MraidPlacementType.class */
public enum MraidPlacementType {
    UNKNOWN,
    INLINE,
    INTERSTITIAL;

    /* renamed from: com.amazon.device.ads.MraidPlacementType$1 */
    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/MraidPlacementType$1.class */
    public static /* synthetic */ class C04561 {
        public static final /* synthetic */ int[] $SwitchMap$com$amazon$device$ads$MraidPlacementType;

        static {
            MraidPlacementType.values();
            int[] iArr = new int[3];
            $SwitchMap$com$amazon$device$ads$MraidPlacementType = iArr;
            try {
                MraidPlacementType mraidPlacementType = MraidPlacementType.UNKNOWN;
                iArr[0] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                int[] iArr2 = $SwitchMap$com$amazon$device$ads$MraidPlacementType;
                MraidPlacementType mraidPlacementType2 = MraidPlacementType.INLINE;
                iArr2[1] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                int[] iArr3 = $SwitchMap$com$amazon$device$ads$MraidPlacementType;
                MraidPlacementType mraidPlacementType3 = MraidPlacementType.INTERSTITIAL;
                iArr3[2] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    @Override // java.lang.Enum
    public String toString() {
        int ordinal = ordinal();
        return ordinal != 0 ? ordinal != 1 ? ordinal != 2 ? "" : "interstitial" : "inline" : "unknown";
    }
}
