package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzeip;
import com.google.android.gms.internal.ads.zzeja;
import com.google.android.gms.internal.ads.zzejm;
import com.google.android.gms.internal.ads.zzekb;
import com.google.android.gms.internal.ads.zzekj;
import com.google.android.gms.internal.ads.zzekm;
import com.google.android.gms.internal.ads.zzeku;
import com.google.android.gms.internal.ads.zzeno;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.io.IOException;
import java.util.List;
import java.util.Map;
/* renamed from: c.d.b.d.g.a.j70 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/j70.class */
public final class j70 implements z80 {

    /* renamed from: a */
    public final zzeja f13588a;

    /* renamed from: b */
    public int f13589b;

    /* renamed from: c */
    public int f13590c;

    /* renamed from: d */
    public int f13591d = 0;

    public j70(zzeja zzejaVar) {
        zzekb.m12370a(zzejaVar, "input");
        zzeja zzejaVar2 = zzejaVar;
        this.f13588a = zzejaVar2;
        zzejaVar2.f28057d = this;
    }

    /* renamed from: a */
    public static j70 m26793a(zzeja zzejaVar) {
        j70 j70Var = zzejaVar.f28057d;
        return j70Var != null ? j70Var : new j70(zzejaVar);
    }

    /* renamed from: c */
    public static void m26789c(int i) throws IOException {
        if ((i & 7) != 0) {
            throw zzekj.zzbhe();
        }
    }

    /* renamed from: d */
    public static void m26787d(int i) throws IOException {
        if ((i & 3) != 0) {
            throw zzekj.zzbhe();
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.z80
    /* renamed from: a */
    public final int mo26097a() {
        return this.f13589b;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.z80
    /* renamed from: a */
    public final <T> T mo26096a(f90<T> f90Var, zzejm zzejmVar) throws IOException {
        m26794a(2);
        return (T) m26788c(f90Var, zzejmVar);
    }

    /* renamed from: a */
    public final Object m26792a(zzeno zzenoVar, Class<?> cls, zzejm zzejmVar) throws IOException {
        switch (i70.f13499a[zzenoVar.ordinal()]) {
            case 1:
                return Boolean.valueOf(mo26059r());
            case 2:
                return mo26083f();
            case 3:
                return Double.valueOf(readDouble());
            case 4:
                return Integer.valueOf(mo26071l());
            case 5:
                return Integer.valueOf(mo26061q());
            case 6:
                return Long.valueOf(mo26065o());
            case 7:
                return Float.valueOf(readFloat());
            case 8:
                return Integer.valueOf(mo26069m());
            case 9:
                return Long.valueOf(mo26073k());
            case 10:
                m26794a(2);
                return m26788c(y80.m26138a().m26137a((Class) cls), zzejmVar);
            case 11:
                return Integer.valueOf(mo26088c());
            case 12:
                return Long.valueOf(mo26085e());
            case 13:
                return Integer.valueOf(mo26079h());
            case 14:
                return Long.valueOf(mo26075j());
            case 15:
                return mo26087d();
            case 16:
                return Integer.valueOf(mo26077i());
            case 17:
                return Long.valueOf(mo26081g());
            default:
                throw new RuntimeException("unsupported field type.");
        }
    }

    /* renamed from: a */
    public final void m26794a(int i) throws IOException {
        if ((this.f13589b & 7) != i) {
            throw zzekj.zzbhc();
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.z80
    /* renamed from: a */
    public final void mo26095a(List<Integer> list) throws IOException {
        int d;
        int d2;
        if (list instanceof w70) {
            w70 w70Var = (w70) list;
            int i = this.f13589b & 7;
            if (i == 0) {
                do {
                    w70Var.mo12364k(this.f13588a.mo12518g());
                    if (!this.f13588a.mo12506s()) {
                        d2 = this.f13588a.mo12523d();
                    } else {
                        return;
                    }
                } while (d2 == this.f13589b);
                this.f13591d = d2;
            } else if (i == 2) {
                int t = this.f13588a.mo12505t() + this.f13588a.mo12512m();
                do {
                    w70Var.mo12364k(this.f13588a.mo12518g());
                } while (this.f13588a.mo12505t() < t);
                m26790b(t);
            } else {
                throw zzekj.zzbhc();
            }
        } else {
            int i2 = this.f13589b & 7;
            if (i2 == 0) {
                do {
                    list.add(Integer.valueOf(this.f13588a.mo12518g()));
                    if (!this.f13588a.mo12506s()) {
                        d = this.f13588a.mo12523d();
                    } else {
                        return;
                    }
                } while (d == this.f13589b);
                this.f13591d = d;
            } else if (i2 == 2) {
                int t2 = this.f13588a.mo12505t() + this.f13588a.mo12512m();
                do {
                    list.add(Integer.valueOf(this.f13588a.mo12518g()));
                } while (this.f13588a.mo12505t() < t2);
                m26790b(t2);
            } else {
                throw zzekj.zzbhc();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p131c.p161d.p170b.p224d.p252g.p253a.z80
    /* renamed from: a */
    public final <T> void mo26094a(List<T> list, f90<T> f90Var, zzejm zzejmVar) throws IOException {
        int d;
        int i = this.f13589b;
        if ((i & 7) == 3) {
            do {
                list.add(m26786d(f90Var, zzejmVar));
                if (!this.f13588a.mo12506s() && this.f13591d == 0) {
                    d = this.f13588a.mo12523d();
                } else {
                    return;
                }
            } while (d == i);
            this.f13591d = d;
            return;
        }
        throw zzekj.zzbhc();
    }

    /* renamed from: a */
    public final void m26791a(List<String> list, boolean z) throws IOException {
        int d;
        int d2;
        if ((this.f13589b & 7) != 2) {
            throw zzekj.zzbhc();
        } else if (!(list instanceof zzeku) || z) {
            do {
                list.add(z ? mo26087d() : mo26092b());
                if (!this.f13588a.mo12506s()) {
                    d = this.f13588a.mo12523d();
                } else {
                    return;
                }
            } while (d == this.f13589b);
            this.f13591d = d;
        } else {
            zzeku zzekuVar = (zzeku) list;
            do {
                zzekuVar.mo12328a(mo26083f());
                if (!this.f13588a.mo12506s()) {
                    d2 = this.f13588a.mo12523d();
                } else {
                    return;
                }
            } while (d2 == this.f13589b);
            this.f13591d = d2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p131c.p161d.p170b.p224d.p252g.p253a.z80
    /* renamed from: a */
    public final <K, V> void mo26093a(Map<K, V> map, j80<K, V> j80Var, zzejm zzejmVar) throws IOException {
        m26794a(2);
        int c = this.f13588a.mo12524c(this.f13588a.mo12512m());
        Object obj = j80Var.f13595b;
        Object obj2 = j80Var.f13597d;
        while (true) {
            try {
                int p = mo26063p();
                if (p == Integer.MAX_VALUE || this.f13588a.mo12506s()) {
                    break;
                } else if (p == 1) {
                    obj = m26792a(j80Var.f13594a, (Class<?>) null, (zzejm) null);
                } else if (p != 2) {
                    try {
                        if (!mo26067n()) {
                            throw new zzekj("Unable to parse map entry.");
                            break;
                        }
                    } catch (zzekm e) {
                        if (!mo26067n()) {
                            throw new zzekj("Unable to parse map entry.");
                        }
                    }
                } else {
                    obj2 = m26792a(j80Var.f13596c, j80Var.f13597d.getClass(), zzejmVar);
                }
            } catch (Throwable th) {
                this.f13588a.mo12522d(c);
                throw th;
            }
        }
        map.put(obj, obj2);
        this.f13588a.mo12522d(c);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.z80
    /* renamed from: b */
    public final <T> T mo26091b(f90<T> f90Var, zzejm zzejmVar) throws IOException {
        m26794a(3);
        return (T) m26786d(f90Var, zzejmVar);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.z80
    /* renamed from: b */
    public final String mo26092b() throws IOException {
        m26794a(2);
        return this.f13588a.mo12525c();
    }

    /* renamed from: b */
    public final void m26790b(int i) throws IOException {
        if (this.f13588a.mo12505t() != i) {
            throw zzekj.zzbgx();
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.z80
    /* renamed from: b */
    public final void mo26090b(List<Long> list) throws IOException {
        int d;
        int d2;
        if (list instanceof d80) {
            d80 d80Var = (d80) list;
            int i = this.f13589b & 7;
            if (i == 0) {
                do {
                    d80Var.m27074a(this.f13588a.mo12519f());
                    if (!this.f13588a.mo12506s()) {
                        d2 = this.f13588a.mo12523d();
                    } else {
                        return;
                    }
                } while (d2 == this.f13589b);
                this.f13591d = d2;
            } else if (i == 2) {
                int t = this.f13588a.mo12505t() + this.f13588a.mo12512m();
                do {
                    d80Var.m27074a(this.f13588a.mo12519f());
                } while (this.f13588a.mo12505t() < t);
                m26790b(t);
            } else {
                throw zzekj.zzbhc();
            }
        } else {
            int i2 = this.f13589b & 7;
            if (i2 == 0) {
                do {
                    list.add(Long.valueOf(this.f13588a.mo12519f()));
                    if (!this.f13588a.mo12506s()) {
                        d = this.f13588a.mo12523d();
                    } else {
                        return;
                    }
                } while (d == this.f13589b);
                this.f13591d = d;
            } else if (i2 == 2) {
                int t2 = this.f13588a.mo12505t() + this.f13588a.mo12512m();
                do {
                    list.add(Long.valueOf(this.f13588a.mo12519f()));
                } while (this.f13588a.mo12505t() < t2);
                m26790b(t2);
            } else {
                throw zzekj.zzbhc();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p131c.p161d.p170b.p224d.p252g.p253a.z80
    /* renamed from: b */
    public final <T> void mo26089b(List<T> list, f90<T> f90Var, zzejm zzejmVar) throws IOException {
        int d;
        int i = this.f13589b;
        if ((i & 7) == 2) {
            do {
                list.add(m26788c(f90Var, zzejmVar));
                if (!this.f13588a.mo12506s() && this.f13591d == 0) {
                    d = this.f13588a.mo12523d();
                } else {
                    return;
                }
            } while (d == i);
            this.f13591d = d;
            return;
        }
        throw zzekj.zzbhc();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.z80
    /* renamed from: c */
    public final int mo26088c() throws IOException {
        m26794a(5);
        return this.f13588a.mo12510o();
    }

    /* renamed from: c */
    public final <T> T m26788c(f90<T> f90Var, zzejm zzejmVar) throws IOException {
        int m = this.f13588a.mo12512m();
        zzeja zzejaVar = this.f13588a;
        if (zzejaVar.f28054a < zzejaVar.f28055b) {
            int c = zzejaVar.mo12524c(m);
            T a = f90Var.mo26425a();
            this.f13588a.f28054a++;
            f90Var.mo26422a(a, this, zzejmVar);
            f90Var.mo26417c(a);
            this.f13588a.mo12530a(0);
            zzeja zzejaVar2 = this.f13588a;
            zzejaVar2.f28054a--;
            zzejaVar2.mo12522d(c);
            return a;
        }
        throw new zzekj("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
    }

    /* renamed from: d */
    public final <T> T m26786d(f90<T> f90Var, zzejm zzejmVar) throws IOException {
        int i = this.f13590c;
        this.f13590c = ((this.f13589b >>> 3) << 3) | 4;
        try {
            T a = f90Var.mo26425a();
            f90Var.mo26422a(a, this, zzejmVar);
            f90Var.mo26417c(a);
            if (this.f13589b == this.f13590c) {
                return a;
            }
            throw zzekj.zzbhe();
        } finally {
            this.f13590c = i;
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.z80
    /* renamed from: d */
    public final String mo26087d() throws IOException {
        m26794a(2);
        return this.f13588a.mo12514k();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.z80
    /* renamed from: d */
    public final void mo26086d(List<Long> list) throws IOException {
        int d;
        int d2;
        if (list instanceof d80) {
            d80 d80Var = (d80) list;
            int i = this.f13589b & 7;
            if (i == 1) {
                do {
                    d80Var.m27074a(this.f13588a.mo12517h());
                    if (!this.f13588a.mo12506s()) {
                        d2 = this.f13588a.mo12523d();
                    } else {
                        return;
                    }
                } while (d2 == this.f13589b);
                this.f13591d = d2;
            } else if (i == 2) {
                int m = this.f13588a.mo12512m();
                m26789c(m);
                int t = this.f13588a.mo12505t();
                do {
                    d80Var.m27074a(this.f13588a.mo12517h());
                } while (this.f13588a.mo12505t() < t + m);
            } else {
                throw zzekj.zzbhc();
            }
        } else {
            int i2 = this.f13589b & 7;
            if (i2 == 1) {
                do {
                    list.add(Long.valueOf(this.f13588a.mo12517h()));
                    if (!this.f13588a.mo12506s()) {
                        d = this.f13588a.mo12523d();
                    } else {
                        return;
                    }
                } while (d == this.f13589b);
                this.f13591d = d;
            } else if (i2 == 2) {
                int m2 = this.f13588a.mo12512m();
                m26789c(m2);
                int t2 = this.f13588a.mo12505t();
                do {
                    list.add(Long.valueOf(this.f13588a.mo12517h()));
                } while (this.f13588a.mo12505t() < t2 + m2);
            } else {
                throw zzekj.zzbhc();
            }
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.z80
    /* renamed from: e */
    public final long mo26085e() throws IOException {
        m26794a(1);
        return this.f13588a.mo12509p();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.z80
    /* renamed from: e */
    public final void mo26084e(List<Double> list) throws IOException {
        int d;
        int d2;
        if (list instanceof l70) {
            l70 l70Var = (l70) list;
            int i = this.f13589b & 7;
            if (i == 1) {
                do {
                    l70Var.m26704a(this.f13588a.mo12531a());
                    if (!this.f13588a.mo12506s()) {
                        d2 = this.f13588a.mo12523d();
                    } else {
                        return;
                    }
                } while (d2 == this.f13589b);
                this.f13591d = d2;
            } else if (i == 2) {
                int m = this.f13588a.mo12512m();
                m26789c(m);
                int t = this.f13588a.mo12505t();
                do {
                    l70Var.m26704a(this.f13588a.mo12531a());
                } while (this.f13588a.mo12505t() < t + m);
            } else {
                throw zzekj.zzbhc();
            }
        } else {
            int i2 = this.f13589b & 7;
            if (i2 == 1) {
                do {
                    list.add(Double.valueOf(this.f13588a.mo12531a()));
                    if (!this.f13588a.mo12506s()) {
                        d = this.f13588a.mo12523d();
                    } else {
                        return;
                    }
                } while (d == this.f13589b);
                this.f13591d = d;
            } else if (i2 == 2) {
                int m2 = this.f13588a.mo12512m();
                m26789c(m2);
                int t2 = this.f13588a.mo12505t();
                do {
                    list.add(Double.valueOf(this.f13588a.mo12531a()));
                } while (this.f13588a.mo12505t() < t2 + m2);
            } else {
                throw zzekj.zzbhc();
            }
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.z80
    /* renamed from: f */
    public final zzeip mo26083f() throws IOException {
        m26794a(2);
        return this.f13588a.mo12513l();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.z80
    /* renamed from: f */
    public final void mo26082f(List<String> list) throws IOException {
        m26791a(list, false);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.z80
    /* renamed from: g */
    public final long mo26081g() throws IOException {
        m26794a(0);
        return this.f13588a.mo12521e();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.z80
    /* renamed from: g */
    public final void mo26080g(List<Long> list) throws IOException {
        int d;
        int d2;
        if (list instanceof d80) {
            d80 d80Var = (d80) list;
            int i = this.f13589b & 7;
            if (i == 0) {
                do {
                    d80Var.m27074a(this.f13588a.mo12521e());
                    if (!this.f13588a.mo12506s()) {
                        d2 = this.f13588a.mo12523d();
                    } else {
                        return;
                    }
                } while (d2 == this.f13589b);
                this.f13591d = d2;
            } else if (i == 2) {
                int t = this.f13588a.mo12505t() + this.f13588a.mo12512m();
                do {
                    d80Var.m27074a(this.f13588a.mo12521e());
                } while (this.f13588a.mo12505t() < t);
                m26790b(t);
            } else {
                throw zzekj.zzbhc();
            }
        } else {
            int i2 = this.f13589b & 7;
            if (i2 == 0) {
                do {
                    list.add(Long.valueOf(this.f13588a.mo12521e()));
                    if (!this.f13588a.mo12506s()) {
                        d = this.f13588a.mo12523d();
                    } else {
                        return;
                    }
                } while (d == this.f13589b);
                this.f13591d = d;
            } else if (i2 == 2) {
                int t2 = this.f13588a.mo12505t() + this.f13588a.mo12512m();
                do {
                    list.add(Long.valueOf(this.f13588a.mo12521e()));
                } while (this.f13588a.mo12505t() < t2);
                m26790b(t2);
            } else {
                throw zzekj.zzbhc();
            }
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.z80
    /* renamed from: h */
    public final int mo26079h() throws IOException {
        m26794a(0);
        return this.f13588a.mo12508q();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.z80
    /* renamed from: h */
    public final void mo26078h(List<Float> list) throws IOException {
        int d;
        int d2;
        if (list instanceof u70) {
            u70 u70Var = (u70) list;
            int i = this.f13589b & 7;
            if (i == 2) {
                int m = this.f13588a.mo12512m();
                m26787d(m);
                int t = this.f13588a.mo12505t();
                do {
                    u70Var.m26307a(this.f13588a.mo12527b());
                } while (this.f13588a.mo12505t() < t + m);
            } else if (i == 5) {
                do {
                    u70Var.m26307a(this.f13588a.mo12527b());
                    if (!this.f13588a.mo12506s()) {
                        d2 = this.f13588a.mo12523d();
                    } else {
                        return;
                    }
                } while (d2 == this.f13589b);
                this.f13591d = d2;
            } else {
                throw zzekj.zzbhc();
            }
        } else {
            int i2 = this.f13589b & 7;
            if (i2 == 2) {
                int m2 = this.f13588a.mo12512m();
                m26787d(m2);
                int t2 = this.f13588a.mo12505t();
                do {
                    list.add(Float.valueOf(this.f13588a.mo12527b()));
                } while (this.f13588a.mo12505t() < t2 + m2);
            } else if (i2 == 5) {
                do {
                    list.add(Float.valueOf(this.f13588a.mo12527b()));
                    if (!this.f13588a.mo12506s()) {
                        d = this.f13588a.mo12523d();
                    } else {
                        return;
                    }
                } while (d == this.f13589b);
                this.f13591d = d;
            } else {
                throw zzekj.zzbhc();
            }
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.z80
    /* renamed from: i */
    public final int mo26077i() throws IOException {
        m26794a(0);
        return this.f13588a.mo12512m();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.z80
    /* renamed from: i */
    public final void mo26076i(List<Long> list) throws IOException {
        int d;
        int d2;
        if (list instanceof d80) {
            d80 d80Var = (d80) list;
            int i = this.f13589b & 7;
            if (i == 1) {
                do {
                    d80Var.m27074a(this.f13588a.mo12509p());
                    if (!this.f13588a.mo12506s()) {
                        d2 = this.f13588a.mo12523d();
                    } else {
                        return;
                    }
                } while (d2 == this.f13589b);
                this.f13591d = d2;
            } else if (i == 2) {
                int m = this.f13588a.mo12512m();
                m26789c(m);
                int t = this.f13588a.mo12505t();
                do {
                    d80Var.m27074a(this.f13588a.mo12509p());
                } while (this.f13588a.mo12505t() < t + m);
            } else {
                throw zzekj.zzbhc();
            }
        } else {
            int i2 = this.f13589b & 7;
            if (i2 == 1) {
                do {
                    list.add(Long.valueOf(this.f13588a.mo12509p()));
                    if (!this.f13588a.mo12506s()) {
                        d = this.f13588a.mo12523d();
                    } else {
                        return;
                    }
                } while (d == this.f13589b);
                this.f13591d = d;
            } else if (i2 == 2) {
                int m2 = this.f13588a.mo12512m();
                m26789c(m2);
                int t2 = this.f13588a.mo12505t();
                do {
                    list.add(Long.valueOf(this.f13588a.mo12509p()));
                } while (this.f13588a.mo12505t() < t2 + m2);
            } else {
                throw zzekj.zzbhc();
            }
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.z80
    /* renamed from: j */
    public final long mo26075j() throws IOException {
        m26794a(0);
        return this.f13588a.mo12507r();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.z80
    /* renamed from: j */
    public final void mo26074j(List<Integer> list) throws IOException {
        int d;
        int d2;
        if (list instanceof w70) {
            w70 w70Var = (w70) list;
            int i = this.f13589b & 7;
            if (i == 2) {
                int m = this.f13588a.mo12512m();
                m26787d(m);
                int t = this.f13588a.mo12505t();
                do {
                    w70Var.mo12364k(this.f13588a.mo12510o());
                } while (this.f13588a.mo12505t() < t + m);
            } else if (i == 5) {
                do {
                    w70Var.mo12364k(this.f13588a.mo12510o());
                    if (!this.f13588a.mo12506s()) {
                        d2 = this.f13588a.mo12523d();
                    } else {
                        return;
                    }
                } while (d2 == this.f13589b);
                this.f13591d = d2;
            } else {
                throw zzekj.zzbhc();
            }
        } else {
            int i2 = this.f13589b & 7;
            if (i2 == 2) {
                int m2 = this.f13588a.mo12512m();
                m26787d(m2);
                int t2 = this.f13588a.mo12505t();
                do {
                    list.add(Integer.valueOf(this.f13588a.mo12510o()));
                } while (this.f13588a.mo12505t() < t2 + m2);
            } else if (i2 == 5) {
                do {
                    list.add(Integer.valueOf(this.f13588a.mo12510o()));
                    if (!this.f13588a.mo12506s()) {
                        d = this.f13588a.mo12523d();
                    } else {
                        return;
                    }
                } while (d == this.f13589b);
                this.f13591d = d;
            } else {
                throw zzekj.zzbhc();
            }
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.z80
    /* renamed from: k */
    public final long mo26073k() throws IOException {
        m26794a(0);
        return this.f13588a.mo12519f();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.z80
    /* renamed from: k */
    public final void mo26072k(List<Integer> list) throws IOException {
        int d;
        int d2;
        if (list instanceof w70) {
            w70 w70Var = (w70) list;
            int i = this.f13589b & 7;
            if (i == 0) {
                do {
                    w70Var.mo12364k(this.f13588a.mo12511n());
                    if (!this.f13588a.mo12506s()) {
                        d2 = this.f13588a.mo12523d();
                    } else {
                        return;
                    }
                } while (d2 == this.f13589b);
                this.f13591d = d2;
            } else if (i == 2) {
                int t = this.f13588a.mo12505t() + this.f13588a.mo12512m();
                do {
                    w70Var.mo12364k(this.f13588a.mo12511n());
                } while (this.f13588a.mo12505t() < t);
                m26790b(t);
            } else {
                throw zzekj.zzbhc();
            }
        } else {
            int i2 = this.f13589b & 7;
            if (i2 == 0) {
                do {
                    list.add(Integer.valueOf(this.f13588a.mo12511n()));
                    if (!this.f13588a.mo12506s()) {
                        d = this.f13588a.mo12523d();
                    } else {
                        return;
                    }
                } while (d == this.f13589b);
                this.f13591d = d;
            } else if (i2 == 2) {
                int t2 = this.f13588a.mo12505t() + this.f13588a.mo12512m();
                do {
                    list.add(Integer.valueOf(this.f13588a.mo12511n()));
                } while (this.f13588a.mo12505t() < t2);
                m26790b(t2);
            } else {
                throw zzekj.zzbhc();
            }
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.z80
    /* renamed from: l */
    public final int mo26071l() throws IOException {
        m26794a(0);
        return this.f13588a.mo12511n();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.z80
    /* renamed from: l */
    public final void mo26070l(List<Long> list) throws IOException {
        int d;
        int d2;
        if (list instanceof d80) {
            d80 d80Var = (d80) list;
            int i = this.f13589b & 7;
            if (i == 0) {
                do {
                    d80Var.m27074a(this.f13588a.mo12507r());
                    if (!this.f13588a.mo12506s()) {
                        d2 = this.f13588a.mo12523d();
                    } else {
                        return;
                    }
                } while (d2 == this.f13589b);
                this.f13591d = d2;
            } else if (i == 2) {
                int t = this.f13588a.mo12505t() + this.f13588a.mo12512m();
                do {
                    d80Var.m27074a(this.f13588a.mo12507r());
                } while (this.f13588a.mo12505t() < t);
                m26790b(t);
            } else {
                throw zzekj.zzbhc();
            }
        } else {
            int i2 = this.f13589b & 7;
            if (i2 == 0) {
                do {
                    list.add(Long.valueOf(this.f13588a.mo12507r()));
                    if (!this.f13588a.mo12506s()) {
                        d = this.f13588a.mo12523d();
                    } else {
                        return;
                    }
                } while (d == this.f13589b);
                this.f13591d = d;
            } else if (i2 == 2) {
                int t2 = this.f13588a.mo12505t() + this.f13588a.mo12512m();
                do {
                    list.add(Long.valueOf(this.f13588a.mo12507r()));
                } while (this.f13588a.mo12505t() < t2);
                m26790b(t2);
            } else {
                throw zzekj.zzbhc();
            }
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.z80
    /* renamed from: m */
    public final int mo26069m() throws IOException {
        m26794a(0);
        return this.f13588a.mo12518g();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.z80
    /* renamed from: m */
    public final void mo26068m(List<Integer> list) throws IOException {
        int d;
        int d2;
        if (list instanceof w70) {
            w70 w70Var = (w70) list;
            int i = this.f13589b & 7;
            if (i == 2) {
                int m = this.f13588a.mo12512m();
                m26787d(m);
                int t = this.f13588a.mo12505t();
                do {
                    w70Var.mo12364k(this.f13588a.mo12516i());
                } while (this.f13588a.mo12505t() < t + m);
            } else if (i == 5) {
                do {
                    w70Var.mo12364k(this.f13588a.mo12516i());
                    if (!this.f13588a.mo12506s()) {
                        d2 = this.f13588a.mo12523d();
                    } else {
                        return;
                    }
                } while (d2 == this.f13589b);
                this.f13591d = d2;
            } else {
                throw zzekj.zzbhc();
            }
        } else {
            int i2 = this.f13589b & 7;
            if (i2 == 2) {
                int m2 = this.f13588a.mo12512m();
                m26787d(m2);
                int t2 = this.f13588a.mo12505t();
                do {
                    list.add(Integer.valueOf(this.f13588a.mo12516i()));
                } while (this.f13588a.mo12505t() < t2 + m2);
            } else if (i2 == 5) {
                do {
                    list.add(Integer.valueOf(this.f13588a.mo12516i()));
                    if (!this.f13588a.mo12506s()) {
                        d = this.f13588a.mo12523d();
                    } else {
                        return;
                    }
                } while (d == this.f13589b);
                this.f13591d = d;
            } else {
                throw zzekj.zzbhc();
            }
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.z80
    /* renamed from: n */
    public final void mo26066n(List<Integer> list) throws IOException {
        int d;
        int d2;
        if (list instanceof w70) {
            w70 w70Var = (w70) list;
            int i = this.f13589b & 7;
            if (i == 0) {
                do {
                    w70Var.mo12364k(this.f13588a.mo12508q());
                    if (!this.f13588a.mo12506s()) {
                        d2 = this.f13588a.mo12523d();
                    } else {
                        return;
                    }
                } while (d2 == this.f13589b);
                this.f13591d = d2;
            } else if (i == 2) {
                int t = this.f13588a.mo12505t() + this.f13588a.mo12512m();
                do {
                    w70Var.mo12364k(this.f13588a.mo12508q());
                } while (this.f13588a.mo12505t() < t);
                m26790b(t);
            } else {
                throw zzekj.zzbhc();
            }
        } else {
            int i2 = this.f13589b & 7;
            if (i2 == 0) {
                do {
                    list.add(Integer.valueOf(this.f13588a.mo12508q()));
                    if (!this.f13588a.mo12506s()) {
                        d = this.f13588a.mo12523d();
                    } else {
                        return;
                    }
                } while (d == this.f13589b);
                this.f13591d = d;
            } else if (i2 == 2) {
                int t2 = this.f13588a.mo12505t() + this.f13588a.mo12512m();
                do {
                    list.add(Integer.valueOf(this.f13588a.mo12508q()));
                } while (this.f13588a.mo12505t() < t2);
                m26790b(t2);
            } else {
                throw zzekj.zzbhc();
            }
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.z80
    /* renamed from: n */
    public final boolean mo26067n() throws IOException {
        int i;
        if (this.f13588a.mo12506s() || (i = this.f13589b) == this.f13590c) {
            return false;
        }
        return this.f13588a.mo12526b(i);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.z80
    /* renamed from: o */
    public final long mo26065o() throws IOException {
        m26794a(1);
        return this.f13588a.mo12517h();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.z80
    /* renamed from: o */
    public final void mo26064o(List<String> list) throws IOException {
        m26791a(list, true);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.z80
    /* renamed from: p */
    public final int mo26063p() throws IOException {
        int i = this.f13591d;
        if (i != 0) {
            this.f13589b = i;
            this.f13591d = 0;
        } else {
            this.f13589b = this.f13588a.mo12523d();
        }
        int i2 = this.f13589b;
        return (i2 == 0 || i2 == this.f13590c) ? MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT : i2 >>> 3;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.z80
    /* renamed from: p */
    public final void mo26062p(List<Boolean> list) throws IOException {
        int d;
        int d2;
        if (list instanceof w60) {
            w60 w60Var = (w60) list;
            int i = this.f13589b & 7;
            if (i == 0) {
                do {
                    w60Var.m26181a(this.f13588a.mo12515j());
                    if (!this.f13588a.mo12506s()) {
                        d2 = this.f13588a.mo12523d();
                    } else {
                        return;
                    }
                } while (d2 == this.f13589b);
                this.f13591d = d2;
            } else if (i == 2) {
                int t = this.f13588a.mo12505t() + this.f13588a.mo12512m();
                do {
                    w60Var.m26181a(this.f13588a.mo12515j());
                } while (this.f13588a.mo12505t() < t);
                m26790b(t);
            } else {
                throw zzekj.zzbhc();
            }
        } else {
            int i2 = this.f13589b & 7;
            if (i2 == 0) {
                do {
                    list.add(Boolean.valueOf(this.f13588a.mo12515j()));
                    if (!this.f13588a.mo12506s()) {
                        d = this.f13588a.mo12523d();
                    } else {
                        return;
                    }
                } while (d == this.f13589b);
                this.f13591d = d;
            } else if (i2 == 2) {
                int t2 = this.f13588a.mo12505t() + this.f13588a.mo12512m();
                do {
                    list.add(Boolean.valueOf(this.f13588a.mo12515j()));
                } while (this.f13588a.mo12505t() < t2);
                m26790b(t2);
            } else {
                throw zzekj.zzbhc();
            }
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.z80
    /* renamed from: q */
    public final int mo26061q() throws IOException {
        m26794a(5);
        return this.f13588a.mo12516i();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.z80
    /* renamed from: q */
    public final void mo26060q(List<Integer> list) throws IOException {
        int d;
        int d2;
        if (list instanceof w70) {
            w70 w70Var = (w70) list;
            int i = this.f13589b & 7;
            if (i == 0) {
                do {
                    w70Var.mo12364k(this.f13588a.mo12512m());
                    if (!this.f13588a.mo12506s()) {
                        d2 = this.f13588a.mo12523d();
                    } else {
                        return;
                    }
                } while (d2 == this.f13589b);
                this.f13591d = d2;
            } else if (i == 2) {
                int t = this.f13588a.mo12505t() + this.f13588a.mo12512m();
                do {
                    w70Var.mo12364k(this.f13588a.mo12512m());
                } while (this.f13588a.mo12505t() < t);
                m26790b(t);
            } else {
                throw zzekj.zzbhc();
            }
        } else {
            int i2 = this.f13589b & 7;
            if (i2 == 0) {
                do {
                    list.add(Integer.valueOf(this.f13588a.mo12512m()));
                    if (!this.f13588a.mo12506s()) {
                        d = this.f13588a.mo12523d();
                    } else {
                        return;
                    }
                } while (d == this.f13589b);
                this.f13591d = d;
            } else if (i2 == 2) {
                int t2 = this.f13588a.mo12505t() + this.f13588a.mo12512m();
                do {
                    list.add(Integer.valueOf(this.f13588a.mo12512m()));
                } while (this.f13588a.mo12505t() < t2);
                m26790b(t2);
            } else {
                throw zzekj.zzbhc();
            }
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.z80
    /* renamed from: r */
    public final void mo26058r(List<zzeip> list) throws IOException {
        int d;
        if ((this.f13589b & 7) == 2) {
            do {
                list.add(mo26083f());
                if (!this.f13588a.mo12506s()) {
                    d = this.f13588a.mo12523d();
                } else {
                    return;
                }
            } while (d == this.f13589b);
            this.f13591d = d;
            return;
        }
        throw zzekj.zzbhc();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.z80
    /* renamed from: r */
    public final boolean mo26059r() throws IOException {
        m26794a(0);
        return this.f13588a.mo12515j();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.z80
    public final double readDouble() throws IOException {
        m26794a(1);
        return this.f13588a.mo12531a();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.z80
    public final float readFloat() throws IOException {
        m26794a(5);
        return this.f13588a.mo12527b();
    }
}
