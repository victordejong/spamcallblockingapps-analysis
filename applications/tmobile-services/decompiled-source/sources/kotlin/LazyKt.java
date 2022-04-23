package kotlin;
@Metadata(bv = {1, 0, 3}, d1 = {"kotlin/LazyKt__LazyJVMKt", "kotlin/LazyKt__LazyKt"}, d2 = {}, k = 4, mv = {1, 4, 0}, pn = "", xi = 1, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/LazyKt.class */
public final class LazyKt extends LazyKt__LazyKt {

    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlin/LazyKt$WhenMappings.class */
    public final /* synthetic */ class WhenMappings {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20415a;

        static {
            int[] iArr = new int[LazyThreadSafetyMode.values().length];
            f20415a = iArr;
            iArr[LazyThreadSafetyMode.SYNCHRONIZED.ordinal()] = 1;
            f20415a[LazyThreadSafetyMode.PUBLICATION.ordinal()] = 2;
            f20415a[LazyThreadSafetyMode.NONE.ordinal()] = 3;
        }
    }

    private LazyKt() {
    }
}
