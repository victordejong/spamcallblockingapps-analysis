package p000;

import androidx.recyclerview.widget.RecyclerView$b0;
/* renamed from: b00$i */
/* loaded from: classes-dex2jar.jar:b00$i.class */
public class b00$i {

    /* renamed from: a */
    public RecyclerView$b0 f1730a;

    /* renamed from: b */
    public RecyclerView$b0 f1731b;

    /* renamed from: c */
    public int f1732c;

    /* renamed from: d */
    public int f1733d;

    /* renamed from: e */
    public int f1734e;

    /* renamed from: f */
    public int f1735f;

    public b00$i(RecyclerView$b0 recyclerView$b0, RecyclerView$b0 recyclerView$b02) {
        this.f1730a = recyclerView$b0;
        this.f1731b = recyclerView$b02;
    }

    public b00$i(RecyclerView$b0 recyclerView$b0, RecyclerView$b0 recyclerView$b02, int i, int i2, int i3, int i4) {
        this(recyclerView$b0, recyclerView$b02);
        this.f1732c = i;
        this.f1733d = i2;
        this.f1734e = i3;
        this.f1735f = i4;
    }

    public String toString() {
        return "ChangeInfo{oldHolder=" + this.f1730a + ", newHolder=" + this.f1731b + ", fromX=" + this.f1732c + ", fromY=" + this.f1733d + ", toX=" + this.f1734e + ", toY=" + this.f1735f + '}';
    }
}
