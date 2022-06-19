package com.google.android.exoplayer2;

import android.util.Pair;
import com.google.android.exoplayer2.AbstractC10864al;
import com.google.android.exoplayer2.source.AbstractC11272ac;
import com.google.android.exoplayer2.util.C11593a;
/* renamed from: com.google.android.exoplayer2.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/a.class */
public abstract class AbstractC10834a extends AbstractC10864al {

    /* renamed from: a */
    private final int f34863a;

    /* renamed from: c */
    private final AbstractC11272ac f34864c;

    /* renamed from: d */
    private final boolean f34865d;

    public AbstractC10834a(boolean z, AbstractC11272ac abstractC11272ac) {
        this.f34865d = z;
        this.f34864c = abstractC11272ac;
        this.f34863a = abstractC11272ac.mo21008a();
    }

    /* renamed from: a */
    private int m22316a(int i, boolean z) {
        if (z) {
            return this.f34864c.mo21007a(i);
        }
        if (i >= this.f34863a - 1) {
            return -1;
        }
        return i + 1;
    }

    /* renamed from: a */
    public static Object m22315a(Object obj) {
        return ((Pair) obj).first;
    }

    /* renamed from: a */
    public static Object m22314a(Object obj, Object obj2) {
        return Pair.create(obj, obj2);
    }

    /* renamed from: b */
    private int m22313b(int i, boolean z) {
        if (z) {
            return this.f34864c.mo21003b(i);
        }
        if (i <= 0) {
            return -1;
        }
        return i - 1;
    }

    /* renamed from: b */
    public static Object m22312b(Object obj) {
        return ((Pair) obj).second;
    }

    @Override // com.google.android.exoplayer2.AbstractC10864al
    /* renamed from: a */
    public final int mo20969a(int i, int i2, boolean z) {
        int i3;
        int i4 = i2;
        if (this.f34865d) {
            i4 = i2;
            if (i2 == 1) {
                i4 = 2;
            }
            z = false;
        }
        int mo22230c = mo22230c(i);
        int mo22226f = mo22226f(mo22230c);
        int mo20969a = mo22229d(mo22230c).mo20969a(i - mo22226f, i4 == 2 ? 0 : i4, z);
        if (mo20969a != -1) {
            return mo22226f + mo20969a;
        }
        int m22316a = m22316a(mo22230c, z);
        while (true) {
            i3 = m22316a;
            if (i3 == -1 || !mo22229d(i3).m22178c()) {
                break;
            }
            m22316a = m22316a(i3, z);
        }
        if (i3 != -1) {
            return mo22226f(i3) + mo22229d(i3).mo20966b(z);
        }
        if (i4 != 2) {
            return -1;
        }
        return mo20966b(z);
    }

    @Override // com.google.android.exoplayer2.AbstractC10864al
    /* renamed from: a */
    public final int mo20968a(boolean z) {
        int i = this.f34863a;
        if (i == 0) {
            return -1;
        }
        if (this.f34865d) {
            z = false;
        }
        int mo21004b = z ? this.f34864c.mo21004b() : i - 1;
        while (mo22229d(mo21004b).m22178c()) {
            int m22313b = m22313b(mo21004b, z);
            mo21004b = m22313b;
            if (m22313b == -1) {
                return -1;
            }
        }
        return mo22226f(mo21004b) + mo22229d(mo21004b).mo20968a(z);
    }

    @Override // com.google.android.exoplayer2.AbstractC10864al
    /* renamed from: a */
    public final AbstractC10864al.C10866a mo20947a(int i, AbstractC10864al.C10866a c10866a, boolean z) {
        int mo22231b = mo22231b(i);
        int mo22226f = mo22226f(mo22231b);
        mo22229d(mo22231b).mo20947a(i - mo22227e(mo22231b), c10866a, z);
        c10866a.f35000c += mo22226f;
        if (z) {
            c10866a.f34999b = Pair.create(mo22225g(mo22231b), C11593a.m20020b(c10866a.f34999b));
        }
        return c10866a;
    }

    @Override // com.google.android.exoplayer2.AbstractC10864al
    /* renamed from: a */
    public final AbstractC10864al.C10866a mo22180a(Object obj, AbstractC10864al.C10866a c10866a) {
        Pair pair = (Pair) obj;
        Object obj2 = pair.first;
        Object obj3 = pair.second;
        int mo22228d = mo22228d(obj2);
        int mo22226f = mo22226f(mo22228d);
        mo22229d(mo22228d).mo22180a(obj3, c10866a);
        c10866a.f35000c += mo22226f;
        c10866a.f34999b = obj;
        return c10866a;
    }

    @Override // com.google.android.exoplayer2.AbstractC10864al
    /* renamed from: a */
    public final AbstractC10864al.C10867b mo20853a(int i, AbstractC10864al.C10867b c10867b, long j) {
        int mo22230c = mo22230c(i);
        int mo22226f = mo22226f(mo22230c);
        int mo22227e = mo22227e(mo22230c);
        mo22229d(mo22230c).mo20853a(i - mo22226f, c10867b, j);
        Pair mo22225g = mo22225g(mo22230c);
        if (!AbstractC10864al.C10867b.f35004a.equals(c10867b.f35006b)) {
            mo22225g = Pair.create(mo22225g, c10867b.f35006b);
        }
        c10867b.f35006b = mo22225g;
        c10867b.f35018n += mo22227e;
        c10867b.f35019o += mo22227e;
        return c10867b;
    }

    @Override // com.google.android.exoplayer2.AbstractC10864al
    /* renamed from: a */
    public final Object mo20948a(int i) {
        int mo22231b = mo22231b(i);
        return Pair.create(mo22225g(mo22231b), mo22229d(mo22231b).mo20948a(i - mo22227e(mo22231b)));
    }

    /* renamed from: b */
    protected abstract int mo22231b(int i);

    @Override // com.google.android.exoplayer2.AbstractC10864al
    /* renamed from: b */
    public final int mo20967b(int i, int i2, boolean z) {
        int i3;
        int i4 = i2;
        if (this.f34865d) {
            i4 = i2;
            if (i2 == 1) {
                i4 = 2;
            }
            z = false;
        }
        int mo22230c = mo22230c(i);
        int mo22226f = mo22226f(mo22230c);
        int mo20967b = mo22229d(mo22230c).mo20967b(i - mo22226f, i4 == 2 ? 0 : i4, z);
        if (mo20967b != -1) {
            return mo22226f + mo20967b;
        }
        int m22313b = m22313b(mo22230c, z);
        while (true) {
            i3 = m22313b;
            if (i3 == -1 || !mo22229d(i3).m22178c()) {
                break;
            }
            m22313b = m22313b(i3, z);
        }
        if (i3 != -1) {
            return mo22226f(i3) + mo22229d(i3).mo20968a(z);
        }
        if (i4 != 2) {
            return -1;
        }
        return mo20968a(z);
    }

    @Override // com.google.android.exoplayer2.AbstractC10864al
    /* renamed from: b */
    public final int mo20966b(boolean z) {
        if (this.f34863a == 0) {
            return -1;
        }
        int i = 0;
        if (this.f34865d) {
            z = false;
        }
        if (z) {
            i = this.f34864c.mo21001c();
        }
        while (mo22229d(i).m22178c()) {
            int m22316a = m22316a(i, z);
            i = m22316a;
            if (m22316a == -1) {
                return -1;
            }
        }
        return mo22226f(i) + mo22229d(i).mo20966b(z);
    }

    /* renamed from: c */
    protected abstract int mo22230c(int i);

    @Override // com.google.android.exoplayer2.AbstractC10864al
    /* renamed from: c */
    public final int mo20945c(Object obj) {
        int mo20945c;
        if (!(obj instanceof Pair)) {
            return -1;
        }
        Pair pair = (Pair) obj;
        Object obj2 = pair.first;
        Object obj3 = pair.second;
        int mo22228d = mo22228d(obj2);
        if (mo22228d != -1 && (mo20945c = mo22229d(mo22228d).mo20945c(obj3)) != -1) {
            return mo22227e(mo22228d) + mo20945c;
        }
        return -1;
    }

    /* renamed from: d */
    protected abstract int mo22228d(Object obj);

    /* renamed from: d */
    protected abstract AbstractC10864al mo22229d(int i);

    /* renamed from: e */
    protected abstract int mo22227e(int i);

    /* renamed from: f */
    protected abstract int mo22226f(int i);

    /* renamed from: g */
    protected abstract Object mo22225g(int i);
}
