package androidx.recyclerview.widget;

import androidx.recyclerview.widget.RecyclerView$Adapter;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$f.class */
/* synthetic */ class RecyclerView$f {

    /* renamed from: a */
    static final /* synthetic */ int[] f2214a;

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
    static {
        int[] iArr = new int[RecyclerView$Adapter.StateRestorationPolicy.values().length];
        f2214a = iArr;
        try {
            iArr[RecyclerView$Adapter.StateRestorationPolicy.PREVENT.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            f2214a[RecyclerView$Adapter.StateRestorationPolicy.PREVENT_WHEN_EMPTY.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
    }
}
