package p076e0;

import java.util.List;
/* renamed from: e0.e */
/* loaded from: classes-dex2jar.jar:e0/e.class */
public final class C2510e {

    /* renamed from: a */
    public final int[] f8773a;

    /* renamed from: b */
    public final float[] f8774b;

    public C2510e(int i, int i2) {
        this.f8773a = new int[]{i, i2};
        this.f8774b = new float[]{0.0f, 1.0f};
    }

    public C2510e(int i, int i2, int i3) {
        this.f8773a = new int[]{i, i2, i3};
        this.f8774b = new float[]{0.0f, 0.5f, 1.0f};
    }

    public C2510e(List<Integer> list, List<Float> list2) {
        int size = list.size();
        this.f8773a = new int[size];
        this.f8774b = new float[size];
        for (int i = 0; i < size; i++) {
            this.f8773a[i] = list.get(i).intValue();
            this.f8774b[i] = list2.get(i).floatValue();
        }
    }
}
