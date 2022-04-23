package androidx.constraintlayout.motion.widget;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/MotionLayout$b.class */
/* synthetic */ class MotionLayout$b {

    /* renamed from: a */
    static final /* synthetic */ int[] f807a;

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
    static {
        int[] iArr = new int[MotionLayout$TransitionState.values().length];
        f807a = iArr;
        try {
            iArr[MotionLayout$TransitionState.UNDEFINED.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            f807a[MotionLayout$TransitionState.SETUP.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            f807a[MotionLayout$TransitionState.MOVING.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        try {
            f807a[MotionLayout$TransitionState.FINISHED.ordinal()] = 4;
        } catch (NoSuchFieldError e4) {
        }
    }
}
