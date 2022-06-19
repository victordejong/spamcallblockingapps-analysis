package p287x6;

import com.google.protobuf.AbstractC1916u;
/* renamed from: x6.v */
/* loaded from: classes-dex2jar.jar:x6/v.class */
public final class C4924v implements AbstractC4916n {

    /* renamed from: a */
    public final AbstractC1916u f15035a;

    /* renamed from: b */
    public final String f15036b;

    /* renamed from: c */
    public final Object[] f15037c;

    /* renamed from: d */
    public final int f15038d;

    public C4924v(AbstractC1916u abstractC1916u, String str, Object[] objArr) {
        this.f15035a = abstractC1916u;
        this.f15036b = str;
        this.f15037c = objArr;
        int charAt = str.charAt(0);
        if (charAt < 55296) {
            this.f15038d = charAt;
            return;
        }
        int i = charAt & 8191;
        int i2 = 13;
        int i3 = 1;
        while (true) {
            int charAt2 = str.charAt(i3);
            if (charAt2 < 55296) {
                this.f15038d = i | (charAt2 << i2);
                return;
            }
            i |= (charAt2 & 8191) << i2;
            i3++;
            i2 += 13;
        }
    }

    @Override // p287x6.AbstractC4916n
    /* renamed from: a */
    public int mo253a() {
        int i = 1;
        if ((this.f15038d & 1) != 1) {
            i = 2;
        }
        return i;
    }

    @Override // p287x6.AbstractC4916n
    /* renamed from: b */
    public boolean mo252b() {
        return (this.f15038d & 2) == 2;
    }

    @Override // p287x6.AbstractC4916n
    /* renamed from: c */
    public AbstractC1916u mo251c() {
        return this.f15035a;
    }
}
