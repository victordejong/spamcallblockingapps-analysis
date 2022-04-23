package androidx.recyclerview.widget;
/* JADX INFO: Access modifiers changed from: private */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/c$i.class */
public class c$i {

    /* renamed from: a */
    public RecyclerView$a0 f2366a;

    /* renamed from: b */
    public RecyclerView$a0 f2367b;

    /* renamed from: c */
    public int f2368c;

    /* renamed from: d */
    public int f2369d;

    /* renamed from: e */
    public int f2370e;

    /* renamed from: f */
    public int f2371f;

    private c$i(RecyclerView$a0 recyclerView$a0, RecyclerView$a0 recyclerView$a02) {
        this.f2366a = recyclerView$a0;
        this.f2367b = recyclerView$a02;
    }

    c$i(RecyclerView$a0 recyclerView$a0, RecyclerView$a0 recyclerView$a02, int i, int i2, int i3, int i4) {
        this(recyclerView$a0, recyclerView$a02);
        this.f2368c = i;
        this.f2369d = i2;
        this.f2370e = i3;
        this.f2371f = i4;
    }

    public String toString() {
        return "ChangeInfo{oldHolder=" + this.f2366a + ", newHolder=" + this.f2367b + ", fromX=" + this.f2368c + ", fromY=" + this.f2369d + ", toX=" + this.f2370e + ", toY=" + this.f2371f + '}';
    }
}
