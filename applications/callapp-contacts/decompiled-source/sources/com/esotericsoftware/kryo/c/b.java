package com.esotericsoftware.kryo.c;

import com.esotericsoftware.kryo.KryoException;
import com.esotericsoftware.kryo.a;
import com.esotericsoftware.kryo.c;
import com.esotericsoftware.kryo.g;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/c/b.class */
public final class b implements a {

    /* renamed from: a  reason: collision with root package name */
    protected c f18978a;

    /* renamed from: d  reason: collision with root package name */
    protected h<Class> f18981d;
    protected j<Class> e;
    protected m<String, Class> f;
    protected int g;
    private g i;
    private Class j;
    private g k;

    /* renamed from: b  reason: collision with root package name */
    protected final j<g> f18979b = new j<>();

    /* renamed from: c  reason: collision with root package name */
    protected final a<Class, g> f18980c = new a<>();
    private int h = -1;

    private g b(com.esotericsoftware.kryo.a.a aVar) {
        Class<?> cls;
        int b2 = aVar.b(true);
        if (this.e == null) {
            this.e = new j<>();
        }
        Class<?> b3 = this.e.b(b2);
        if (b3 == null) {
            String m = aVar.m();
            m<String, Class> mVar = this.f;
            Class<?> c2 = mVar != null ? mVar.c(m) : null;
            cls = c2;
            if (c2 == null) {
                try {
                    cls = Class.forName(m, false, this.f18978a.getClassLoader());
                } catch (ClassNotFoundException e) {
                    try {
                        cls = Class.forName(m, false, c.class.getClassLoader());
                    } catch (ClassNotFoundException e2) {
                        throw new KryoException("Unable to find class: ".concat(String.valueOf(m)), e);
                    }
                }
                if (this.f == null) {
                    this.f = new m<>();
                }
                this.f.a((m<String, Class>) m, (String) cls);
            }
            this.e.a(b2, cls);
            if (com.esotericsoftware.b.a.e) {
                com.esotericsoftware.b.a.b("kryo", "Read class name: " + m + n.a(aVar.b()));
            }
        } else {
            cls = b3;
            if (com.esotericsoftware.b.a.e) {
                com.esotericsoftware.b.a.b("kryo", "Read class name reference " + b2 + ": " + n.d(b3) + n.a(aVar.b()));
                cls = b3;
            }
        }
        return this.f18978a.c(cls);
    }

    @Override // com.esotericsoftware.kryo.a
    public final g a(int i) {
        return this.f18979b.b(i);
    }

    @Override // com.esotericsoftware.kryo.a
    public final g a(com.esotericsoftware.kryo.a.a aVar) {
        int b2 = aVar.b(true);
        if (b2 != 0) {
            if (b2 == 1) {
                return b(aVar);
            }
            if (b2 == this.h) {
                if (com.esotericsoftware.b.a.e) {
                    com.esotericsoftware.b.a.b("kryo", "Read class " + (b2 - 2) + ": " + n.d(this.i.f19039a) + n.a(aVar.b()));
                }
                return this.i;
            }
            int i = b2 - 2;
            g b3 = this.f18979b.b(i);
            if (b3 != null) {
                if (com.esotericsoftware.b.a.e) {
                    com.esotericsoftware.b.a.b("kryo", "Read class " + i + ": " + n.d(b3.f19039a) + n.a(aVar.b()));
                }
                this.h = b2;
                this.i = b3;
                return b3;
            }
            throw new KryoException("Encountered unregistered class ID: " + i);
        } else if (!com.esotericsoftware.b.a.e && (!com.esotericsoftware.b.a.f18945d || this.f18978a.getDepth() != 1)) {
            return null;
        } else {
            n.a("Read", null, aVar.b());
            return null;
        }
    }

    @Override // com.esotericsoftware.kryo.a
    public final g a(com.esotericsoftware.kryo.a.c cVar, Class cls) {
        int b2;
        if (cls == null) {
            if (com.esotericsoftware.b.a.e || (com.esotericsoftware.b.a.f18945d && this.f18978a.getDepth() == 1)) {
                n.a("Write", null, cVar.b());
            }
            cVar.a((byte) 0);
            return null;
        }
        g c2 = this.f18978a.c(cls);
        if (c2.f19041c == -1) {
            cVar.a(1);
            h<Class> hVar = this.f18981d;
            if (hVar == null || (b2 = hVar.b(cls, -1)) == -1) {
                if (com.esotericsoftware.b.a.e) {
                    com.esotericsoftware.b.a.b("kryo", "Write class name: " + n.d(cls) + n.a(cVar.b()));
                }
                int i = this.g;
                this.g = i + 1;
                if (this.f18981d == null) {
                    this.f18981d = new h<>();
                }
                this.f18981d.a(cls, i);
                cVar.b(i, true);
                if (c2.f19040b) {
                    cVar.b(cls.getName());
                } else {
                    cVar.a(cls.getName());
                }
            } else {
                if (com.esotericsoftware.b.a.e) {
                    com.esotericsoftware.b.a.b("kryo", "Write class name reference " + b2 + ": " + n.d(cls) + n.a(cVar.b()));
                }
                cVar.b(b2, true);
            }
        } else {
            if (com.esotericsoftware.b.a.e) {
                com.esotericsoftware.b.a.b("kryo", "Write class " + c2.f19041c + ": " + n.d(cls) + n.a(cVar.b()));
            }
            cVar.b(c2.f19041c + 2, true);
        }
        return c2;
    }

    @Override // com.esotericsoftware.kryo.a
    public final g a(g gVar) {
        this.h = -1;
        this.j = null;
        if (gVar.f19041c != -1) {
            if (com.esotericsoftware.b.a.e) {
                com.esotericsoftware.b.a.b("kryo", "Register class ID " + gVar.f19041c + ": " + n.d(gVar.f19039a) + " (" + gVar.f19042d.getClass().getName() + ")");
            }
            this.f18979b.a(gVar.f19041c, gVar);
        } else if (com.esotericsoftware.b.a.e) {
            com.esotericsoftware.b.a.b("kryo", "Register class name: " + n.d(gVar.f19039a) + " (" + gVar.f19042d.getClass().getName() + ")");
        }
        this.f18980c.a(gVar.f19039a, gVar);
        Class a2 = n.a(gVar.f19039a);
        if (a2 != gVar.f19039a) {
            this.f18980c.a(a2, gVar);
        }
        return gVar;
    }

    @Override // com.esotericsoftware.kryo.a
    public final g a(Class cls) {
        return a(new g(cls, this.f18978a.b(cls), -1));
    }

    @Override // com.esotericsoftware.kryo.a
    public final void a() {
        if (!this.f18978a.isRegistrationRequired()) {
            h<Class> hVar = this.f18981d;
            if (hVar != null) {
                hVar.a(2048);
            }
            j<Class> jVar = this.e;
            if (!(jVar == null || jVar.f19002a == 0)) {
                jVar.f19002a = 0;
                Arrays.fill(jVar.f19003b, 0);
                Arrays.fill(jVar.f19004c, (Object) null);
                jVar.f19005d = null;
                jVar.e = false;
            }
            this.g = 0;
        }
    }

    @Override // com.esotericsoftware.kryo.a
    public final void a(c cVar) {
        this.f18978a = cVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x00a6  */
    @Override // com.esotericsoftware.kryo.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.esotericsoftware.kryo.g b(java.lang.Class r5) {
        /*
            r4 = this;
            r0 = r5
            r1 = r4
            java.lang.Class r1 = r1.j
            if (r0 != r1) goto L_0x000d
            r0 = r4
            com.esotericsoftware.kryo.g r0 = r0.k
            return r0
        L_0x000d:
            r0 = r4
            com.esotericsoftware.kryo.c.a<java.lang.Class, com.esotericsoftware.kryo.g> r0 = r0.f18980c
            r6 = r0
            r0 = r5
            int r0 = r0.hashCode()
            r7 = r0
            r0 = r6
            int r0 = r0.g
            r1 = r7
            r0 = r0 & r1
            r8 = r0
            r0 = r8
            r9 = r0
            r0 = r5
            r1 = r6
            K[] r1 = r1.f18976c
            r2 = r8
            r1 = r1[r2]
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L_0x0095
            r0 = r6
            r1 = r7
            int r0 = r0.a(r1)
            r8 = r0
            r0 = r8
            r9 = r0
            r0 = r5
            r1 = r6
            K[] r1 = r1.f18976c
            r2 = r8
            r1 = r1[r2]
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L_0x0095
            r0 = r6
            r1 = r7
            int r0 = r0.b(r1)
            r8 = r0
            r0 = r8
            r9 = r0
            r0 = r5
            r1 = r6
            K[] r1 = r1.f18976c
            r2 = r8
            r1 = r1[r2]
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L_0x0095
            r0 = r6
            boolean r0 = r0.h
            if (r0 == 0) goto L_0x008c
            r0 = r6
            r1 = r7
            int r0 = r0.c(r1)
            r8 = r0
            r0 = r8
            r9 = r0
            r0 = r5
            r1 = r6
            K[] r1 = r1.f18976c
            r2 = r8
            r1 = r1[r2]
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L_0x0095
            r0 = r6
            r1 = r5
            java.lang.Object r0 = r0.a(r1)
            r6 = r0
            goto L_0x009d
        L_0x008c:
            r0 = r6
            r1 = r5
            java.lang.Object r0 = r0.a(r1)
            r6 = r0
            goto L_0x009d
        L_0x0095:
            r0 = r6
            V[] r0 = r0.f18977d
            r1 = r9
            r0 = r0[r1]
            r6 = r0
        L_0x009d:
            r0 = r6
            com.esotericsoftware.kryo.g r0 = (com.esotericsoftware.kryo.g) r0
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x00b0
            r0 = r4
            r1 = r5
            r0.j = r1
            r0 = r4
            r1 = r6
            r0.k = r1
        L_0x00b0:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.kryo.c.b.b(java.lang.Class):com.esotericsoftware.kryo.g");
    }
}
