package p1727n3.p1909z;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.huawei.hms.push.constant.RemoteMessageConst;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import p1727n3.p1909z.AbstractC27557c1;
import p1727n3.p1909z.AbstractC27573i3;
import p1727n3.p1909z.AbstractC27583k2;
import p1727n3.p1909z.AbstractC27597r0;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.b3.c;
import q3.a.b3.g;
import q3.a.w2.i;
import q3.a.w2.j;
import s1.a.a.a.v0.f.d;
import s1.z.b.l;
import s1.z.c.f;
/* renamed from: n3.z.k1 */
/* loaded from: classes-dex2jar.jar:n3/z/k1.class */
public final class C27581k1<Key, Value> {

    /* renamed from: a */
    public final List<AbstractC27583k2.AbstractC27585b.b<Key, Value>> f77726a;

    /* renamed from: b */
    public final List<AbstractC27583k2.AbstractC27585b.b<Key, Value>> f77727b;

    /* renamed from: c */
    public int f77728c;

    /* renamed from: d */
    public int f77729d;

    /* renamed from: e */
    public int f77730e;

    /* renamed from: f */
    public int f77731f;

    /* renamed from: g */
    public int f77732g;

    /* renamed from: h */
    public final j<Integer> f77733h = d.f(-1, (i) null, (l) null, 6);

    /* renamed from: i */
    public final j<Integer> f77734i = d.f(-1, (i) null, (l) null, 6);

    /* renamed from: j */
    public final Map<EnumC27601t0, AbstractC27573i3> f77735j = new LinkedHashMap();

    /* renamed from: k */
    public C27600s0 f77736k = C27600s0.f77789d;

    /* renamed from: l */
    public final C27549a2 f77737l;

    /* renamed from: n3.z.k1$a */
    /* loaded from: classes-dex2jar.jar:n3/z/k1$a.class */
    public static final class C27582a<Key, Value> {

        /* renamed from: a */
        public final c f77738a = g.a(false, 1);

        /* renamed from: b */
        public final C27581k1<Key, Value> f77739b;

        /* renamed from: c */
        public final C27549a2 f77740c;

        public C27582a(C27549a2 c27549a2) {
            s1.z.c.l.e(c27549a2, DTBMetricsConfiguration.CONFIG_DIR);
            this.f77740c = c27549a2;
            this.f77739b = new C27581k1<>(c27549a2, null);
        }
    }

    public C27581k1(C27549a2 c27549a2, f fVar) {
        this.f77737l = c27549a2;
        ArrayList arrayList = new ArrayList();
        this.f77726a = arrayList;
        this.f77727b = arrayList;
        C27600s0 c27600s0 = C27600s0.f77790e;
    }

    /* renamed from: a */
    public final C27589l2<Key, Value> m78a(AbstractC27573i3.a aVar) {
        Integer num;
        List S0 = s1.u.i.S0(this.f77727b);
        if (aVar != null) {
            int m74e = m74e();
            int i = -this.f77728c;
            int F = s1.u.i.F(this.f77727b);
            int i2 = this.f77728c;
            int i3 = aVar.e;
            int i4 = i;
            while (i4 < i3) {
                m74e += i4 > F - i2 ? this.f77737l.f77597a : this.f77727b.get(this.f77728c + i4).a.size();
                i4++;
            }
            int i5 = m74e + aVar.f;
            int i6 = i5;
            if (aVar.e < i) {
                i6 = i5 - this.f77737l.f77597a;
            }
            num = Integer.valueOf(i6);
        } else {
            num = null;
        }
        return new C27589l2<>(S0, num, this.f77737l, m74e());
    }

    /* renamed from: b */
    public final void m77b(AbstractC27557c1.a<Value> aVar) {
        s1.z.c.l.e(aVar, "event");
        if (!(aVar.c() <= this.f77727b.size())) {
            StringBuilder m8728C = C22128a.m8728C("invalid drop count. have ");
            m8728C.append(this.f77727b.size());
            m8728C.append(" but wanted to drop ");
            m8728C.append(aVar.c());
            throw new IllegalStateException(m8728C.toString().toString());
        }
        this.f77735j.remove(aVar.a);
        this.f77736k = this.f77736k.m28c(aVar.a, AbstractC27597r0.c.c);
        int ordinal = aVar.a.ordinal();
        if (ordinal == 1) {
            int c = aVar.c();
            for (int i = 0; i < c; i++) {
                this.f77726a.remove(0);
            }
            this.f77728c -= aVar.c();
            m70i(aVar.d);
            int i2 = this.f77731f + 1;
            this.f77731f = i2;
            this.f77733h.offer(Integer.valueOf(i2));
        } else if (ordinal != 2) {
            StringBuilder m8728C2 = C22128a.m8728C("cannot drop ");
            m8728C2.append(aVar.a);
            throw new IllegalArgumentException(m8728C2.toString());
        } else {
            int c2 = aVar.c();
            for (int i3 = 0; i3 < c2; i3++) {
                this.f77726a.remove(this.f77727b.size() - 1);
            }
            m71h(aVar.d);
            int i4 = this.f77732g + 1;
            this.f77732g = i4;
            this.f77734i.offer(Integer.valueOf(i4));
        }
    }

    /* renamed from: c */
    public final AbstractC27557c1.a<Value> m76c(EnumC27601t0 enumC27601t0, AbstractC27573i3 abstractC27573i3) {
        int i;
        int i2;
        int i3;
        int i4;
        s1.z.c.l.e(enumC27601t0, "loadType");
        s1.z.c.l.e(abstractC27573i3, "hint");
        if (this.f77737l.f77601e != Integer.MAX_VALUE && this.f77727b.size() > 2 && m73f() > this.f77737l.f77601e) {
            if (!(enumC27601t0 != EnumC27601t0.REFRESH)) {
                throw new IllegalArgumentException(("Drop LoadType must be PREPEND or APPEND, but got " + enumC27601t0).toString());
            }
            int i5 = 0;
            int i6 = 0;
            while (i5 < this.f77727b.size() && m73f() - i6 > this.f77737l.f77601e) {
                if (enumC27601t0.ordinal() != 1) {
                    List<AbstractC27583k2.AbstractC27585b.b<Key, Value>> list = this.f77727b;
                    i4 = list.get(s1.u.i.F(list) - i5).a.size();
                } else {
                    i4 = this.f77727b.get(i5).a.size();
                }
                if (((enumC27601t0.ordinal() != 1 ? abstractC27573i3.f77698b : abstractC27573i3.f77697a) - i6) - i4 < this.f77737l.f77598b) {
                    break;
                }
                i6 += i4;
                i5++;
            }
            AbstractC27557c1.a<Value> aVar = null;
            if (i5 != 0) {
                int F = enumC27601t0.ordinal() != 1 ? (s1.u.i.F(this.f77727b) - this.f77728c) - (i5 - 1) : -this.f77728c;
                if (enumC27601t0.ordinal() != 1) {
                    i = s1.u.i.F(this.f77727b);
                    i2 = this.f77728c;
                } else {
                    i = i5 - 1;
                    i2 = this.f77728c;
                }
                if (!this.f77737l.f77599c) {
                    i3 = 0;
                } else {
                    i3 = (enumC27601t0 == EnumC27601t0.PREPEND ? m74e() : m75d()) + i6;
                }
                aVar = new AbstractC27557c1.a<>(enumC27601t0, F, i - i2, i3);
            }
            return aVar;
        }
        return null;
    }

    /* renamed from: d */
    public final int m75d() {
        return this.f77737l.f77599c ? this.f77730e : 0;
    }

    /* renamed from: e */
    public final int m74e() {
        return this.f77737l.f77599c ? this.f77729d : 0;
    }

    /* renamed from: f */
    public final int m73f() {
        Iterator<T> it = this.f77727b.iterator();
        int i = 0;
        while (true) {
            int i2 = i;
            if (it.hasNext()) {
                i = i2 + ((AbstractC27583k2.AbstractC27585b.b) it.next()).a.size();
            } else {
                return i2;
            }
        }
    }

    /* renamed from: g */
    public final boolean m72g(int i, EnumC27601t0 enumC27601t0, AbstractC27583k2.AbstractC27585b.b<Key, Value> bVar) {
        s1.z.c.l.e(enumC27601t0, "loadType");
        s1.z.c.l.e(bVar, "page");
        int ordinal = enumC27601t0.ordinal();
        if (ordinal == 0) {
            if (!this.f77727b.isEmpty()) {
                throw new IllegalStateException("cannot receive multiple init calls".toString());
            }
            if (!(i == 0)) {
                throw new IllegalStateException("init loadId must be the initial value, 0".toString());
            }
            this.f77726a.add(bVar);
            this.f77728c = 0;
            m71h(bVar.e);
            m70i(bVar.d);
            return true;
        } else if (ordinal == 1) {
            if (!(!this.f77727b.isEmpty())) {
                throw new IllegalStateException("should've received an init before prepend".toString());
            }
            if (i != this.f77731f) {
                return false;
            }
            this.f77726a.add(0, bVar);
            this.f77728c++;
            int i2 = bVar.d;
            int i3 = i2;
            if (i2 == Integer.MIN_VALUE) {
                i3 = m74e() - bVar.a.size();
                if (i3 < 0) {
                    i3 = 0;
                }
            }
            m70i(i3);
            this.f77735j.remove(EnumC27601t0.PREPEND);
            return true;
        } else if (ordinal != 2) {
            return true;
        } else {
            if (!(!this.f77727b.isEmpty())) {
                throw new IllegalStateException("should've received an init before append".toString());
            }
            if (i != this.f77732g) {
                return false;
            }
            this.f77726a.add(bVar);
            int i4 = bVar.e;
            int i5 = i4;
            if (i4 == Integer.MIN_VALUE) {
                i5 = m75d() - bVar.a.size();
                if (i5 < 0) {
                    i5 = 0;
                }
            }
            m71h(i5);
            this.f77735j.remove(EnumC27601t0.APPEND);
            return true;
        }
    }

    /* renamed from: h */
    public final void m71h(int i) {
        if (i == Integer.MIN_VALUE) {
            i = 0;
        }
        this.f77730e = i;
    }

    /* renamed from: i */
    public final void m70i(int i) {
        if (i == Integer.MIN_VALUE) {
            i = 0;
        }
        this.f77729d = i;
    }

    /* renamed from: j */
    public final boolean m69j(EnumC27601t0 enumC27601t0, AbstractC27597r0 abstractC27597r0) {
        s1.z.c.l.e(enumC27601t0, "type");
        s1.z.c.l.e(abstractC27597r0, "newState");
        if (s1.z.c.l.a(this.f77736k.m29b(enumC27601t0), abstractC27597r0)) {
            return false;
        }
        this.f77736k = this.f77736k.m28c(enumC27601t0, abstractC27597r0);
        return true;
    }

    /* renamed from: k */
    public final AbstractC27557c1<Value> m68k(AbstractC27583k2.AbstractC27585b.b<Key, Value> bVar, EnumC27601t0 enumC27601t0) {
        int i;
        AbstractC27557c1.b bVar2;
        s1.z.c.l.e(bVar, "$this$toPageEvent");
        s1.z.c.l.e(enumC27601t0, "loadType");
        int ordinal = enumC27601t0.ordinal();
        if (ordinal == 0) {
            i = 0;
        } else if (ordinal == 1) {
            i = 0 - this.f77728c;
        } else if (ordinal != 2) {
            throw new s1.i();
        } else {
            i = (this.f77727b.size() - this.f77728c) - 1;
        }
        List list = bVar.a;
        s1.z.c.l.e(list, RemoteMessageConst.DATA);
        List m3962T1 = C25225a.m3962T1(new C27569g3(new int[]{i}, list, i, null));
        int ordinal2 = enumC27601t0.ordinal();
        if (ordinal2 == 0) {
            c1$b$a c1_b_a = AbstractC27557c1.b.g;
            int m74e = m74e();
            int m75d = m75d();
            C27600s0 c27600s0 = this.f77736k;
            bVar2 = c1_b_a.m103c(m3962T1, m74e, m75d, new C27591q(c27600s0.f77791a, c27600s0.f77792b, c27600s0.f77793c, c27600s0, null));
        } else if (ordinal2 == 1) {
            c1$b$a c1_b_a2 = AbstractC27557c1.b.g;
            int m74e2 = m74e();
            C27600s0 c27600s02 = this.f77736k;
            bVar2 = c1_b_a2.m104b(m3962T1, m74e2, new C27591q(c27600s02.f77791a, c27600s02.f77792b, c27600s02.f77793c, c27600s02, null));
        } else if (ordinal2 != 2) {
            throw new s1.i();
        } else {
            c1$b$a c1_b_a3 = AbstractC27557c1.b.g;
            int m75d2 = m75d();
            C27600s0 c27600s03 = this.f77736k;
            bVar2 = c1_b_a3.m105a(m3962T1, m75d2, new C27591q(c27600s03.f77791a, c27600s03.f77792b, c27600s03.f77793c, c27600s03, null));
        }
        return bVar2;
    }
}
