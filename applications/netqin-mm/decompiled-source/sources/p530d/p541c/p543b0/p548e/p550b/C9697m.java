package p530d.p541c.p543b0.p548e.p550b;

import io.reactivex.BackpressureOverflowStrategy;
/* renamed from: d.c.b0.e.b.m */
/* loaded from: classes2-dex2jar.jar:d/c/b0/e/b/m.class */
public /* synthetic */ class C9697m {

    /* renamed from: a */
    public static final /* synthetic */ int[] f36786a;

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
    static {
        int[] iArr = new int[BackpressureOverflowStrategy.values().length];
        f36786a = iArr;
        try {
            iArr[BackpressureOverflowStrategy.DROP_LATEST.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            f36786a[BackpressureOverflowStrategy.DROP_OLDEST.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
    }
}
