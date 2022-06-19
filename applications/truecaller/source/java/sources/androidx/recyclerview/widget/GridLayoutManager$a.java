package androidx.recyclerview.widget;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/GridLayoutManager$a.class */
public final class GridLayoutManager$a extends GridLayoutManager$c {
    @Override // androidx.recyclerview.widget.GridLayoutManager$c
    public int getSpanIndex(int i, int i2) {
        return i % i2;
    }

    @Override // androidx.recyclerview.widget.GridLayoutManager$c
    public int getSpanSize(int i) {
        return 1;
    }
}
