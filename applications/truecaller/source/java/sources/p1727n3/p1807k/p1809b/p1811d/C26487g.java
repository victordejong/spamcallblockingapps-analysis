package p1727n3.p1807k.p1809b.p1811d;

import java.util.List;
/* renamed from: n3.k.b.d.g */
/* loaded from: classes-dex2jar.jar:n3/k/b/d/g.class */
public final class C26487g {

    /* renamed from: a */
    public final int[] f74263a;

    /* renamed from: b */
    public final float[] f74264b;

    public C26487g(int i, int i2) {
        this.f74263a = new int[]{i, i2};
        this.f74264b = new float[]{0.0f, 1.0f};
    }

    public C26487g(int i, int i2, int i3) {
        this.f74263a = new int[]{i, i2, i3};
        this.f74264b = new float[]{0.0f, 0.5f, 1.0f};
    }

    public C26487g(List<Integer> list, List<Float> list2) {
        int size = list.size();
        this.f74263a = new int[size];
        this.f74264b = new float[size];
        for (int i = 0; i < size; i++) {
            this.f74263a[i] = list.get(i).intValue();
            this.f74264b[i] = list2.get(i).floatValue();
        }
    }
}
