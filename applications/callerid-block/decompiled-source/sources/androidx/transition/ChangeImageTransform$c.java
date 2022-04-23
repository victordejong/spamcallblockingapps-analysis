package androidx.transition;

import android.widget.ImageView;
/* loaded from: classes-dex2jar.jar:androidx/transition/ChangeImageTransform$c.class */
/* synthetic */ class ChangeImageTransform$c {

    /* renamed from: a */
    static final /* synthetic */ int[] f2643a;

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
    static {
        int[] iArr = new int[ImageView.ScaleType.values().length];
        f2643a = iArr;
        try {
            iArr[ImageView.ScaleType.FIT_XY.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            f2643a[ImageView.ScaleType.CENTER_CROP.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
    }
}
