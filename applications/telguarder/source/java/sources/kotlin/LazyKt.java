package kotlin;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"kotlin/LazyKt__LazyJVMKt", "kotlin/LazyKt__LazyKt"}, m399k = 4, m398mv = {1, 4, 0}, m396xi = 1)
/* loaded from: classes2-dex2jar.jar:kotlin/LazyKt.class */
public final class LazyKt extends LazyKt__LazyKt {

    @Metadata(m402bv = {1, 0, 3}, m399k = 3, m398mv = {1, 4, 0})
    /* loaded from: classes2-dex2jar.jar:kotlin/LazyKt$WhenMappings.class */
    public final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LazyThreadSafetyMode.values().length];
            $EnumSwitchMapping$0 = iArr;
            iArr[LazyThreadSafetyMode.SYNCHRONIZED.ordinal()] = 1;
            iArr[LazyThreadSafetyMode.PUBLICATION.ordinal()] = 2;
            iArr[LazyThreadSafetyMode.NONE.ordinal()] = 3;
        }
    }

    private LazyKt() {
    }
}
