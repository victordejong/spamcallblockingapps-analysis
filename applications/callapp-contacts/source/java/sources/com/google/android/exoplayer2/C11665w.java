package com.google.android.exoplayer2;

import android.os.Handler;
import android.util.Pair;
import com.google.android.exoplayer2.AbstractC10864al;
import com.google.android.exoplayer2.p323a.C10835a;
import com.google.android.exoplayer2.source.AbstractC11312p;
import com.google.android.exoplayer2.source.AbstractC11315r;
import com.google.android.exoplayer2.util.C11593a;
import com.google.common.collect.AbstractC15549v;
import java.util.Collection;
/* renamed from: com.google.android.exoplayer2.w */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/w.class */
public final class C11665w {

    /* renamed from: a */
    int f38912a;

    /* renamed from: b */
    boolean f38913b;

    /* renamed from: c */
    C11447u f38914c;

    /* renamed from: d */
    C11447u f38915d;

    /* renamed from: e */
    C11447u f38916e;

    /* renamed from: f */
    int f38917f;

    /* renamed from: g */
    Object f38918g;

    /* renamed from: h */
    private final AbstractC10864al.C10866a f38919h = new AbstractC10864al.C10866a();

    /* renamed from: i */
    private final AbstractC10864al.C10867b f38920i = new AbstractC10864al.C10867b();

    /* renamed from: j */
    private final C10835a f38921j;

    /* renamed from: k */
    private final Handler f38922k;

    /* renamed from: l */
    private long f38923l;

    /* renamed from: m */
    private long f38924m;

    public C11665w(C10835a c10835a, Handler handler) {
        this.f38921j = c10835a;
        this.f38922k = handler;
    }

    /* renamed from: a */
    private long m19632a(AbstractC10864al abstractC10864al, Object obj) {
        int mo20945c;
        int i = abstractC10864al.mo22180a(obj, this.f38919h).f35000c;
        Object obj2 = this.f38918g;
        if (obj2 == null || (mo20945c = abstractC10864al.mo20945c(obj2)) == -1 || abstractC10864al.mo20947a(mo20945c, this.f38919h, false).f35000c != i) {
            C11447u c11447u = this.f38914c;
            while (true) {
                C11447u c11447u2 = c11447u;
                if (c11447u2 == null) {
                    C11447u c11447u3 = this.f38914c;
                    while (true) {
                        C11447u c11447u4 = c11447u3;
                        if (c11447u4 == null) {
                            long j = this.f38923l;
                            this.f38923l = 1 + j;
                            if (this.f38914c == null) {
                                this.f38918g = obj;
                                this.f38924m = j;
                            }
                            return j;
                        }
                        int mo20945c2 = abstractC10864al.mo20945c(c11447u4.f37838b);
                        if (mo20945c2 != -1 && abstractC10864al.mo20947a(mo20945c2, this.f38919h, false).f35000c == i) {
                            return c11447u4.f37842f.f38758a.f37151d;
                        }
                        c11447u3 = c11447u4.f37844h;
                    }
                } else if (c11447u2.f37838b.equals(obj)) {
                    return c11447u2.f37842f.f38758a.f37151d;
                } else {
                    c11447u = c11447u2.f37844h;
                }
            }
        } else {
            return this.f38924m;
        }
    }

    /* renamed from: a */
    private static AbstractC11315r.C11316a m19628a(AbstractC10864al abstractC10864al, Object obj, long j, long j2, AbstractC10864al.C10866a c10866a) {
        abstractC10864al.mo22180a(obj, c10866a);
        int m22175a = c10866a.m22175a(j);
        return m22175a == -1 ? new AbstractC11315r.C11316a(obj, j2, c10866a.m22170b(j)) : new AbstractC11315r.C11316a(obj, m22175a, c10866a.m22172b(m22175a), j2);
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* renamed from: a */
    private C11636v m19631a(AbstractC10864al abstractC10864al, Object obj, int i, int i2, long j, long j2) {
        AbstractC11315r.C11316a c11316a = new AbstractC11315r.C11316a(obj, i, i2, j2);
        long m22171b = abstractC10864al.mo22180a(c11316a.f37148a, this.f38919h).m22171b(c11316a.f37149b, c11316a.f37150c);
        char c = i2 == this.f38919h.m22172b(i) ? this.f38919h.f35003f.f37029f : (char) 0;
        if (m22171b != -9223372036854775807L && c >= m22171b) {
            c = Math.max(0L, m22171b - 1);
        }
        return new C11636v(c11316a, c, j, -9223372036854775807L, m22171b, false, false, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    /* renamed from: a */
    private C11636v m19629a(AbstractC10864al abstractC10864al, Object obj, long j, long j2, long j3) {
        abstractC10864al.mo22180a(obj, this.f38919h);
        int m22170b = this.f38919h.m22170b(j);
        AbstractC11315r.C11316a c11316a = new AbstractC11315r.C11316a(obj, j3, m22170b);
        boolean m19626a = m19626a(c11316a);
        boolean m19637a = m19637a(abstractC10864al, c11316a);
        boolean m19635a = m19635a(abstractC10864al, c11316a, m19626a);
        char m22177a = m22170b != -1 ? this.f38919h.m22177a(m22170b) : (char) 1;
        char c = (m22177a == -9223372036854775807L || m22177a == Long.MIN_VALUE) ? this.f38919h.f35001d : m22177a;
        char c2 = j;
        if (c != -9223372036854775807L) {
            c2 = j;
            if (j >= c) {
                c2 = Math.max(0L, c - 1);
            }
        }
        return new C11636v(c11316a, c2, j2, m22177a, c, m19626a, m19637a, m19635a);
    }

    /* renamed from: a */
    public /* synthetic */ void m19624a(AbstractC15549v.C15550a c15550a, AbstractC11315r.C11316a c11316a) {
        C10835a c10835a = this.f38921j;
        AbstractC15549v m8717a = c15550a.m8717a();
        C10835a.C10836a c10836a = c10835a.f34866a;
        AbstractC10842ac abstractC10842ac = (AbstractC10842ac) C11593a.m20020b(c10835a.f34867b);
        c10836a.f34875b = AbstractC15549v.m8725a((Collection) m8717a);
        if (!m8717a.isEmpty()) {
            c10836a.f34877d = (AbstractC11315r.C11316a) m8717a.get(0);
            c10836a.f34878e = (AbstractC11315r.C11316a) C11593a.m20020b(c11316a);
        }
        if (c10836a.f34876c == null) {
            c10836a.f34876c = C10835a.C10836a.m22243a(abstractC10842ac, c10836a.f34875b, c10836a.f34877d, c10836a.f34874a);
        }
        c10836a.m22242a(abstractC10842ac.mo21176K());
    }

    /* renamed from: a */
    private boolean m19637a(AbstractC10864al abstractC10864al, AbstractC11315r.C11316a c11316a) {
        if (!m19626a(c11316a)) {
            return false;
        }
        return abstractC10864al.mo20853a(abstractC10864al.mo22180a(c11316a.f37148a, this.f38919h).f35000c, this.f38920i, 0L).f35019o == abstractC10864al.mo20945c(c11316a.f37148a);
    }

    /* renamed from: a */
    private boolean m19635a(AbstractC10864al abstractC10864al, AbstractC11315r.C11316a c11316a, boolean z) {
        int mo20945c = abstractC10864al.mo20945c(c11316a.f37148a);
        return !abstractC10864al.mo20853a(abstractC10864al.mo20947a(mo20945c, this.f38919h, false).f35000c, this.f38920i, 0L).f35014j && abstractC10864al.m22179b(mo20945c, this.f38919h, this.f38920i, this.f38912a, this.f38913b) && z;
    }

    /* renamed from: a */
    private static boolean m19626a(AbstractC11315r.C11316a c11316a) {
        return !c11316a.m20944a() && c11316a.f37152e == -1;
    }

    /* renamed from: a */
    public final AbstractC11315r.C11316a m19630a(AbstractC10864al abstractC10864al, Object obj, long j) {
        return m19628a(abstractC10864al, obj, j, m19632a(abstractC10864al, obj), this.f38919h);
    }

    /* renamed from: a */
    public final C11447u m19640a() {
        C11447u c11447u = this.f38914c;
        if (c11447u == null) {
            return null;
        }
        if (c11447u == this.f38915d) {
            this.f38915d = c11447u.f37844h;
        }
        this.f38914c.m20537e();
        int i = this.f38917f - 1;
        this.f38917f = i;
        if (i == 0) {
            this.f38916e = null;
            this.f38918g = this.f38914c.f37838b;
            this.f38924m = this.f38914c.f37842f.f38758a.f37151d;
        }
        this.f38914c = this.f38914c.f37844h;
        m19622c();
        return this.f38914c;
    }

    /* renamed from: a */
    public final C11636v m19636a(AbstractC10864al abstractC10864al, AbstractC11315r.C11316a c11316a, long j, long j2) {
        abstractC10864al.mo22180a(c11316a.f37148a, this.f38919h);
        return c11316a.m20944a() ? m19631a(abstractC10864al, c11316a.f37148a, c11316a.f37149b, c11316a.f37150c, j, c11316a.f37151d) : m19629a(abstractC10864al, c11316a.f37148a, j2, j, c11316a.f37151d);
    }

    /* JADX WARN: Type inference failed for: r0v102, types: [long] */
    /* JADX WARN: Type inference failed for: r0v110, types: [long] */
    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    /* JADX WARN: Type inference failed for: r0v52, types: [long] */
    /* JADX WARN: Type inference failed for: r0v79, types: [long] */
    /* JADX WARN: Type inference failed for: r0v95, types: [long] */
    /* renamed from: a */
    public final C11636v m19634a(AbstractC10864al abstractC10864al, C11447u c11447u, long j) {
        boolean z;
        Object obj;
        char c;
        C11636v c11636v = c11447u.f37842f;
        long j2 = (c11447u.f37847k + c11636v.f38762e) - j;
        if (!c11636v.f38763f) {
            AbstractC11315r.C11316a c11316a = c11636v.f38758a;
            abstractC10864al.mo22180a(c11316a.f37148a, this.f38919h);
            if (!c11316a.m20944a()) {
                int m22175a = this.f38919h.m22175a(c11636v.f38761d);
                if (m22175a == -1) {
                    return m19629a(abstractC10864al, c11316a.f37148a, c11636v.f38762e, c11636v.f38762e, c11316a.f37151d);
                }
                return m19631a(abstractC10864al, c11316a.f37148a, m22175a, this.f38919h.m22172b(m22175a), c11636v.f38762e, c11316a.f37151d);
            }
            int i = c11316a.f37149b;
            int m22168d = this.f38919h.m22168d(i);
            if (m22168d == -1) {
                return null;
            }
            int m22176a = this.f38919h.m22176a(i, c11316a.f37150c);
            if (m22176a < m22168d) {
                return m19631a(abstractC10864al, c11316a.f37148a, i, m22176a, c11636v.f38760c, c11316a.f37151d);
            }
            ?? r0 = c11636v.f38760c;
            char c2 = r0;
            if (r0 == -9223372036854775807L) {
                AbstractC10864al.C10867b c10867b = this.f38920i;
                AbstractC10864al.C10866a c10866a = this.f38919h;
                Pair<Object, Long> m22181a = abstractC10864al.m22181a(c10867b, c10866a, c10866a.f35000c, -9223372036854775807L, Math.max(0L, j2));
                if (m22181a == null) {
                    return null;
                }
                c2 = ((Long) m22181a.second).longValue();
            }
            return m19629a(abstractC10864al, c11316a.f37148a, c2, c11636v.f38760c, c11316a.f37151d);
        }
        char c3 = 0;
        int m22183a = abstractC10864al.m22183a(abstractC10864al.mo20945c(c11636v.f38758a.f37148a), this.f38919h, this.f38920i, this.f38912a, this.f38913b);
        if (m22183a == -1) {
            return null;
        }
        int i2 = abstractC10864al.mo20947a(m22183a, this.f38919h, true).f35000c;
        Object obj2 = this.f38919h.f34999b;
        char c4 = c11636v.f38758a.f37151d;
        if (abstractC10864al.mo20853a(i2, this.f38920i, 0L).f35018n == m22183a) {
            Pair<Object, Long> m22181a2 = abstractC10864al.m22181a(this.f38920i, this.f38919h, i2, -9223372036854775807L, Math.max(0L, j2));
            if (m22181a2 == null) {
                return null;
            }
            Object obj3 = m22181a2.first;
            c3 = ((Long) m22181a2.second).longValue();
            C11447u c11447u2 = c11447u.f37844h;
            if (c11447u2 == null || !c11447u2.f37838b.equals(obj3)) {
                char c5 = this.f38923l;
                this.f38923l = 1 + c5;
                c = c5;
            } else {
                c = c11447u2.f37842f.f38758a.f37151d;
            }
            z = true;
            obj = obj3;
            c4 = c;
        } else {
            z = false;
            obj = obj2;
        }
        return m19636a(abstractC10864al, m19628a(abstractC10864al, obj, c3, c4, this.f38919h), z ? 1L : 0L, c3);
    }

    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* renamed from: a */
    public final C11636v m19633a(AbstractC10864al abstractC10864al, C11636v c11636v) {
        AbstractC11315r.C11316a c11316a = c11636v.f38758a;
        boolean m19626a = m19626a(c11316a);
        boolean m19637a = m19637a(abstractC10864al, c11316a);
        boolean m19635a = m19635a(abstractC10864al, c11316a, m19626a);
        abstractC10864al.mo22180a(c11636v.f38758a.f37148a, this.f38919h);
        return new C11636v(c11316a, c11636v.f38759b, c11636v.f38760c, c11636v.f38761d, c11316a.m20944a() ? this.f38919h.m22171b(c11316a.f37149b, c11316a.f37150c) : (c11636v.f38761d == -9223372036854775807L || c11636v.f38761d == Long.MIN_VALUE) ? this.f38919h.f35001d : c11636v.f38761d, m19626a, m19637a, m19635a);
    }

    /* renamed from: a */
    public final void m19639a(long j) {
        C11447u c11447u = this.f38916e;
        if (c11447u != null) {
            c11447u.m20547a(j);
        }
    }

    /* renamed from: a */
    public final boolean m19638a(AbstractC10864al abstractC10864al) {
        C11447u c11447u = this.f38914c;
        if (c11447u == null) {
            return true;
        }
        int mo20945c = abstractC10864al.mo20945c(c11447u.f37838b);
        while (true) {
            mo20945c = abstractC10864al.m22183a(mo20945c, this.f38919h, this.f38920i, this.f38912a, this.f38913b);
            while (c11447u.f37844h != null && !c11447u.f37842f.f38763f) {
                c11447u = c11447u.f37844h;
            }
            C11447u c11447u2 = c11447u.f37844h;
            if (mo20945c == -1 || c11447u2 == null || abstractC10864al.mo20945c(c11447u2.f37838b) != mo20945c) {
                break;
            }
            c11447u = c11447u2;
        }
        boolean m19625a = m19625a(c11447u);
        c11447u.f37842f = m19633a(abstractC10864al, c11447u.f37842f);
        return !m19625a;
    }

    /* renamed from: a */
    public final boolean m19627a(AbstractC11312p abstractC11312p) {
        C11447u c11447u = this.f38916e;
        return c11447u != null && c11447u.f37837a == abstractC11312p;
    }

    /* renamed from: a */
    public final boolean m19625a(C11447u c11447u) {
        C11593a.m20019b(c11447u != null);
        if (c11447u.equals(this.f38916e)) {
            return false;
        }
        this.f38916e = c11447u;
        boolean z = false;
        while (c11447u.f37844h != null) {
            c11447u = c11447u.f37844h;
            if (c11447u == this.f38915d) {
                this.f38915d = this.f38914c;
                z = true;
            }
            c11447u.m20537e();
            this.f38917f--;
        }
        this.f38916e.m20544a((C11447u) null);
        m19622c();
        return z;
    }

    /* renamed from: b */
    public final void m19623b() {
        if (this.f38917f == 0) {
            return;
        }
        C11447u c11447u = (C11447u) C11593a.m20024a(this.f38914c);
        this.f38918g = c11447u.f37838b;
        this.f38924m = c11447u.f37842f.f38758a.f37151d;
        while (c11447u != null) {
            c11447u.m20537e();
            c11447u = c11447u.f37844h;
        }
        this.f38914c = null;
        this.f38916e = null;
        this.f38915d = null;
        this.f38917f = 0;
        m19622c();
    }

    /* renamed from: c */
    public final void m19622c() {
        if (this.f38921j != null) {
            final AbstractC15549v.C15550a m8718i = AbstractC15549v.m8718i();
            C11447u c11447u = this.f38914c;
            while (true) {
                C11447u c11447u2 = c11447u;
                if (c11447u2 == null) {
                    break;
                }
                m8718i.m8715b(c11447u2.f37842f.f38758a);
                c11447u = c11447u2.f37844h;
            }
            C11447u c11447u3 = this.f38915d;
            final AbstractC11315r.C11316a c11316a = c11447u3 == null ? null : c11447u3.f37842f.f38758a;
            this.f38922k.post(new Runnable() { // from class: com.google.android.exoplayer2._$$Lambda$w$VPEmLSD6CVHb_HerMpsUb0yzRig
                @Override // java.lang.Runnable
                public final void run() {
                    C11665w.this.m19624a(m8718i, c11316a);
                }
            });
        }
    }
}
