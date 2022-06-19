package p1727n3.p1744b0.p1745a;

import androidx.recyclerview.widget.RecyclerView;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.b0.a.g$i */
/* loaded from: classes-dex2jar.jar:n3/b0/a/g$i.class */
public class g$i {

    /* renamed from: a */
    public RecyclerView.AbstractC0313c0 f71639a;

    /* renamed from: b */
    public RecyclerView.AbstractC0313c0 f71640b;

    /* renamed from: c */
    public int f71641c;

    /* renamed from: d */
    public int f71642d;

    /* renamed from: e */
    public int f71643e;

    /* renamed from: f */
    public int f71644f;

    public g$i(RecyclerView.AbstractC0313c0 abstractC0313c0, RecyclerView.AbstractC0313c0 abstractC0313c02, int i, int i2, int i3, int i4) {
        this.f71639a = abstractC0313c0;
        this.f71640b = abstractC0313c02;
        this.f71641c = i;
        this.f71642d = i2;
        this.f71643e = i3;
        this.f71644f = i4;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ChangeInfo{oldHolder=");
        m8728C.append(this.f71639a);
        m8728C.append(", newHolder=");
        m8728C.append(this.f71640b);
        m8728C.append(", fromX=");
        m8728C.append(this.f71641c);
        m8728C.append(", fromY=");
        m8728C.append(this.f71642d);
        m8728C.append(", toX=");
        m8728C.append(this.f71643e);
        m8728C.append(", toY=");
        return C22128a.m8701I2(m8728C, this.f71644f, '}');
    }
}
