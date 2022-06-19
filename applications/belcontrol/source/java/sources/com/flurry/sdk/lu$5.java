package com.flurry.sdk;
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/lu$5.class */
public final /* synthetic */ class lu$5 {

    /* renamed from: a */
    public static final /* synthetic */ int[] f3574a;

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
    static {
        int[] iArr = new int[kj$a.values().length];
        f3574a = iArr;
        try {
            iArr[kj$a.kStarted.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            f3574a[kj$a.kStopped.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            f3574a[kj$a.kDestroyed.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
    }
}
