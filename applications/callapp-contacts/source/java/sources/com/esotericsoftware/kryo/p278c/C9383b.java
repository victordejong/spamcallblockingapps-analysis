package com.esotericsoftware.kryo.p278c;

import com.esotericsoftware.kryo.AbstractC9373a;
import com.esotericsoftware.kryo.C9380c;
import com.esotericsoftware.kryo.C9412g;
import com.esotericsoftware.kryo.KryoException;
import com.esotericsoftware.kryo.p276a.C9374a;
import com.esotericsoftware.kryo.p276a.C9376c;
import com.esotericsoftware.p274b.C9366a;
import java.util.Arrays;
/* renamed from: com.esotericsoftware.kryo.c.b */
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/c/b.class */
public final class C9383b implements AbstractC9373a {

    /* renamed from: a */
    protected C9380c f32272a;

    /* renamed from: d */
    protected C9393h<Class> f32275d;

    /* renamed from: e */
    protected C9395j<Class> f32276e;

    /* renamed from: f */
    protected C9404m<String, Class> f32277f;

    /* renamed from: g */
    protected int f32278g;

    /* renamed from: i */
    private C9412g f32280i;

    /* renamed from: j */
    private Class f32281j;

    /* renamed from: k */
    private C9412g f32282k;

    /* renamed from: b */
    protected final C9395j<C9412g> f32273b = new C9395j<>();

    /* renamed from: c */
    protected final C9382a<Class, C9412g> f32274c = new C9382a<>();

    /* renamed from: h */
    private int f32279h = -1;

    /* renamed from: b */
    private C9412g m24350b(C9374a c9374a) {
        Class<?> cls;
        int m24456b = c9374a.m24456b(true);
        if (this.f32276e == null) {
            this.f32276e = new C9395j<>();
        }
        Class<?> m24333b = this.f32276e.m24333b(m24456b);
        if (m24333b == null) {
            String m24433m = c9374a.m24433m();
            C9404m<String, Class> c9404m = this.f32277f;
            Class<?> m24308c = c9404m != null ? c9404m.m24308c(m24433m) : null;
            cls = m24308c;
            if (m24308c == null) {
                try {
                    cls = Class.forName(m24433m, false, this.f32272a.getClassLoader());
                } catch (ClassNotFoundException e) {
                    try {
                        cls = Class.forName(m24433m, false, C9380c.class.getClassLoader());
                    } catch (ClassNotFoundException e2) {
                        throw new KryoException("Unable to find class: ".concat(String.valueOf(m24433m)), e);
                    }
                }
                if (this.f32277f == null) {
                    this.f32277f = new C9404m<>();
                }
                this.f32277f.m24313a((C9404m<String, Class>) m24433m, (String) cls);
            }
            this.f32276e.m24334a(m24456b, cls);
            if (C9366a.f32190e) {
                C9366a.m24494b("kryo", "Read class name: " + m24433m + C9408n.m24304a(c9374a.m24458b()));
            }
        } else {
            cls = m24333b;
            if (C9366a.f32190e) {
                C9366a.m24494b("kryo", "Read class name reference " + m24456b + ": " + C9408n.m24292d(m24333b) + C9408n.m24304a(c9374a.m24458b()));
                cls = m24333b;
            }
        }
        return this.f32272a.m24372c(cls);
    }

    @Override // com.esotericsoftware.kryo.AbstractC9373a
    /* renamed from: a */
    public final C9412g mo24356a(int i) {
        return this.f32273b.m24333b(i);
    }

    @Override // com.esotericsoftware.kryo.AbstractC9373a
    /* renamed from: a */
    public final C9412g mo24355a(C9374a c9374a) {
        int m24456b = c9374a.m24456b(true);
        if (m24456b == 0) {
            if (!C9366a.f32190e && (!C9366a.f32189d || this.f32272a.getDepth() != 1)) {
                return null;
            }
            C9408n.m24298a("Read", null, c9374a.m24458b());
            return null;
        } else if (m24456b == 1) {
            return m24350b(c9374a);
        } else {
            if (m24456b == this.f32279h) {
                if (C9366a.f32190e) {
                    C9366a.m24494b("kryo", "Read class " + (m24456b - 2) + ": " + C9408n.m24292d(this.f32280i.f32360a) + C9408n.m24304a(c9374a.m24458b()));
                }
                return this.f32280i;
            }
            int i = m24456b - 2;
            C9412g m24333b = this.f32273b.m24333b(i);
            if (m24333b == null) {
                throw new KryoException("Encountered unregistered class ID: " + i);
            }
            if (C9366a.f32190e) {
                C9366a.m24494b("kryo", "Read class " + i + ": " + C9408n.m24292d(m24333b.f32360a) + C9408n.m24304a(c9374a.m24458b()));
            }
            this.f32279h = m24456b;
            this.f32280i = m24333b;
            return m24333b;
        }
    }

    @Override // com.esotericsoftware.kryo.AbstractC9373a
    /* renamed from: a */
    public final C9412g mo24354a(C9376c c9376c, Class cls) {
        int b;
        if (cls == null) {
            if (C9366a.f32190e || (C9366a.f32189d && this.f32272a.getDepth() == 1)) {
                C9408n.m24298a("Write", null, c9376c.m24404b());
            }
            c9376c.m24424a((byte) 0);
            return null;
        }
        C9412g m24372c = this.f32272a.m24372c(cls);
        if (m24372c.f32362c == -1) {
            c9376c.m24420a(1);
            C9393h<Class> c9393h = this.f32275d;
            if (c9393h == null || (b = c9393h.m24321b(cls, -1)) == -1) {
                if (C9366a.f32190e) {
                    C9366a.m24494b("kryo", "Write class name: " + C9408n.m24292d(cls) + C9408n.m24304a(c9376c.m24404b()));
                }
                int i = this.f32278g;
                this.f32278g = i + 1;
                if (this.f32275d == null) {
                    this.f32275d = new C9393h<>();
                }
                this.f32275d.m24324a(cls, i);
                c9376c.m24402b(i, true);
                if (m24372c.f32361b) {
                    c9376c.m24401b(cls.getName());
                } else {
                    c9376c.m24416a(cls.getName());
                }
            } else {
                if (C9366a.f32190e) {
                    C9366a.m24494b("kryo", "Write class name reference " + b + ": " + C9408n.m24292d(cls) + C9408n.m24304a(c9376c.m24404b()));
                }
                c9376c.m24402b(b, true);
            }
        } else {
            if (C9366a.f32190e) {
                C9366a.m24494b("kryo", "Write class " + m24372c.f32362c + ": " + C9408n.m24292d(cls) + C9408n.m24304a(c9376c.m24404b()));
            }
            c9376c.m24402b(m24372c.f32362c + 2, true);
        }
        return m24372c;
    }

    @Override // com.esotericsoftware.kryo.AbstractC9373a
    /* renamed from: a */
    public final C9412g mo24352a(C9412g c9412g) {
        this.f32279h = -1;
        this.f32281j = null;
        if (c9412g.f32362c != -1) {
            if (C9366a.f32190e) {
                C9366a.m24494b("kryo", "Register class ID " + c9412g.f32362c + ": " + C9408n.m24292d(c9412g.f32360a) + " (" + c9412g.f32363d.getClass().getName() + ")");
            }
            this.f32273b.m24334a(c9412g.f32362c, c9412g);
        } else if (C9366a.f32190e) {
            C9366a.m24494b("kryo", "Register class name: " + C9408n.m24292d(c9412g.f32360a) + " (" + c9412g.f32363d.getClass().getName() + ")");
        }
        this.f32274c.m24365a(c9412g.f32360a, c9412g);
        Class m24303a = C9408n.m24303a(c9412g.f32360a);
        if (m24303a != c9412g.f32360a) {
            this.f32274c.m24365a(m24303a, c9412g);
        }
        return c9412g;
    }

    @Override // com.esotericsoftware.kryo.AbstractC9373a
    /* renamed from: a */
    public final C9412g mo24351a(Class cls) {
        return mo24352a(new C9412g(cls, this.f32272a.m24375b(cls), -1));
    }

    @Override // com.esotericsoftware.kryo.AbstractC9373a
    /* renamed from: a */
    public final void mo24357a() {
        if (!this.f32272a.isRegistrationRequired()) {
            C9393h<Class> c9393h = this.f32275d;
            if (c9393h != null) {
                c9393h.m24326a(2048);
            }
            C9395j<Class> c9395j = this.f32276e;
            if (c9395j != null && c9395j.f32305a != 0) {
                c9395j.f32305a = 0;
                Arrays.fill(c9395j.f32306b, 0);
                Arrays.fill(c9395j.f32307c, (Object) null);
                c9395j.f32308d = null;
                c9395j.f32309e = false;
            }
            this.f32278g = 0;
        }
    }

    @Override // com.esotericsoftware.kryo.AbstractC9373a
    /* renamed from: a */
    public final void mo24353a(C9380c c9380c) {
        this.f32272a = c9380c;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x00a6  */
    @Override // com.esotericsoftware.kryo.AbstractC9373a
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.esotericsoftware.kryo.C9412g mo24349b(java.lang.Class r5) {
        /*
            r4 = this;
            r0 = r5
            r1 = r4
            java.lang.Class r1 = r1.f32281j
            if (r0 != r1) goto Ld
            r0 = r4
            com.esotericsoftware.kryo.g r0 = r0.f32282k
            return r0
        Ld:
            r0 = r4
            com.esotericsoftware.kryo.c.a<java.lang.Class, com.esotericsoftware.kryo.g> r0 = r0.f32274c
            r6 = r0
            r0 = r5
            int r0 = r0.hashCode()
            r7 = r0
            r0 = r6
            int r0 = r0.f32265g
            r1 = r7
            r0 = r0 & r1
            r8 = r0
            r0 = r8
            r9 = r0
            r0 = r5
            r1 = r6
            K[] r1 = r1.f32261c
            r2 = r8
            r1 = r1[r2]
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L95
            r0 = r6
            r1 = r7
            int r0 = r0.m24367a(r1)
            r8 = r0
            r0 = r8
            r9 = r0
            r0 = r5
            r1 = r6
            K[] r1 = r1.f32261c
            r2 = r8
            r1 = r1[r2]
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L95
            r0 = r6
            r1 = r7
            int r0 = r0.m24363b(r1)
            r8 = r0
            r0 = r8
            r9 = r0
            r0 = r5
            r1 = r6
            K[] r1 = r1.f32261c
            r2 = r8
            r1 = r1[r2]
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L95
            r0 = r6
            boolean r0 = r0.f32266h
            if (r0 == 0) goto L8c
            r0 = r6
            r1 = r7
            int r0 = r0.m24361c(r1)
            r8 = r0
            r0 = r8
            r9 = r0
            r0 = r5
            r1 = r6
            K[] r1 = r1.f32261c
            r2 = r8
            r1 = r1[r2]
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L95
            r0 = r6
            r1 = r5
            java.lang.Object r0 = r0.m24366a(r1)
            r6 = r0
            goto L9d
        L8c:
            r0 = r6
            r1 = r5
            java.lang.Object r0 = r0.m24366a(r1)
            r6 = r0
            goto L9d
        L95:
            r0 = r6
            V[] r0 = r0.f32262d
            r1 = r9
            r0 = r0[r1]
            r6 = r0
        L9d:
            r0 = r6
            com.esotericsoftware.kryo.g r0 = (com.esotericsoftware.kryo.C9412g) r0
            r6 = r0
            r0 = r6
            if (r0 == 0) goto Lb0
            r0 = r4
            r1 = r5
            r0.f32281j = r1
            r0 = r4
            r1 = r6
            r0.f32282k = r1
        Lb0:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.kryo.p278c.C9383b.mo24349b(java.lang.Class):com.esotericsoftware.kryo.g");
    }
}
