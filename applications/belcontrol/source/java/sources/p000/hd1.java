package p000;

import java.util.ArrayList;
/* renamed from: hd1 */
/* loaded from: classes3-dex2jar.jar:hd1.class */
public class hd1 {

    /* renamed from: a */
    public ArrayList<wc1> f6723a = new ArrayList<>();

    /* renamed from: b */
    public long f6724b;

    /* renamed from: c */
    public long f6725c;

    /* renamed from: d */
    public float f6726d;

    /* renamed from: e */
    public final float f6727e;

    public hd1(long j, float f) {
        this.f6727e = f;
        this.f6725c = j;
        this.f6724b = j;
    }

    /* renamed from: a */
    public void m1630a(float f, float f2, long j) {
        this.f6725c = j;
        float f3 = this.f6727e;
        wc1 wc1Var = new wc1(f / f3, f2 / f3, j - this.f6724b);
        if (!this.f6723a.isEmpty()) {
            float f4 = this.f6726d;
            ArrayList<wc1> arrayList = this.f6723a;
            this.f6726d = f4 + arrayList.get(arrayList.size() - 1).m260b(wc1Var);
        }
        this.f6723a.add(wc1Var);
    }

    /* renamed from: b */
    public int m1629b() {
        return this.f6723a.size();
    }

    /* renamed from: c */
    public long m1628c() {
        return this.f6725c - this.f6724b;
    }

    /* renamed from: d */
    public float m1627d() {
        return ((float) m1628c()) / 1.0E9f;
    }

    /* renamed from: e */
    public float m1626e() {
        wc1 wc1Var = this.f6723a.get(0);
        ArrayList<wc1> arrayList = this.f6723a;
        return wc1Var.m260b(arrayList.get(arrayList.size() - 1));
    }

    /* renamed from: f */
    public ArrayList<wc1> m1625f() {
        return this.f6723a;
    }

    /* renamed from: g */
    public float m1624g() {
        return this.f6726d;
    }
}
