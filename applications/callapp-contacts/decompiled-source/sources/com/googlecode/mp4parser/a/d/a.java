package com.googlecode.mp4parser.a.d;

import com.b.a.a.ac;
import com.b.a.a.b;
import com.b.a.a.c.c;
import com.b.a.a.c.d;
import com.b.a.a.d;
import com.b.a.a.u;
import com.b.a.a.v;
import com.googlecode.mp4parser.a.g;
import com.googlecode.mp4parser.b.b.a.e;
import com.googlecode.mp4parser.b.b.a.h;
import com.googlecode.mp4parser.c.f;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.channels.Channels;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/a/d/a.class */
public class a extends com.googlecode.mp4parser.a.a {
    private static f h = f.a(a.class);

    /* renamed from: d  reason: collision with root package name */
    g[] f33075d;
    v e;
    List<com.googlecode.mp4parser.a.f> f;
    long[] g;

    public a(g... gVarArr) throws IOException {
        super(a(gVarArr));
        this.f33075d = gVarArr;
        for (g gVar : gVarArr) {
            v vVar = this.e;
            if (vVar == null) {
                v vVar2 = new v();
                this.e = vVar2;
                vVar2.a((b) gVar.l().a(c.class).get(0));
            } else {
                this.e = a(vVar, gVar.l());
            }
        }
        this.f = new ArrayList();
        for (g gVar2 : gVarArr) {
            this.f.addAll(gVar2.j());
        }
        int i = 0;
        for (g gVar3 : gVarArr) {
            i += gVar3.k().length;
        }
        this.g = new long[i];
        int i2 = 0;
        for (g gVar4 : gVarArr) {
            long[] k = gVar4.k();
            System.arraycopy(k, 0, this.g, i2, k.length);
            i2 += k.length;
        }
    }

    private static com.b.a.a.c.b a(com.b.a.a.c.b bVar, com.b.a.a.c.b bVar2) {
        com.b.a.a.c.b bVar3 = new com.b.a.a.c.b(bVar2.getType());
        if (bVar.j == bVar2.j) {
            bVar3.j = bVar.j;
            if (bVar.i != bVar2.i) {
                return null;
            }
            bVar3.i = bVar.i;
            if (bVar.k == bVar2.k) {
                bVar3.k = bVar.k;
                if (bVar.f7096b != bVar2.f7096b) {
                    return null;
                }
                bVar3.f7096b = bVar.f7096b;
                if (bVar.g == bVar2.g) {
                    bVar3.g = bVar.g;
                    if (bVar.f != bVar2.f) {
                        return null;
                    }
                    bVar3.f = bVar.f;
                    if (bVar.f7098d != bVar2.f7098d) {
                        return null;
                    }
                    bVar3.f7098d = bVar.f7098d;
                    if (bVar.f7097c != bVar2.f7097c) {
                        return null;
                    }
                    bVar3.f7097c = bVar.f7097c;
                    if (bVar.h != bVar2.h) {
                        return null;
                    }
                    bVar3.h = bVar.h;
                    if (bVar.e != bVar2.e) {
                        return null;
                    }
                    bVar3.e = bVar.e;
                    if (!Arrays.equals(bVar.l, bVar2.l)) {
                        return null;
                    }
                    bVar3.l = bVar.l;
                    if (bVar.b().size() == bVar2.b().size()) {
                        Iterator<b> it2 = bVar2.b().iterator();
                        for (b bVar4 : bVar.b()) {
                            b next = it2.next();
                            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                            try {
                                bVar4.getBox(Channels.newChannel(byteArrayOutputStream));
                                next.getBox(Channels.newChannel(byteArrayOutputStream2));
                                if (Arrays.equals(byteArrayOutputStream.toByteArray(), byteArrayOutputStream2.toByteArray())) {
                                    bVar3.a(bVar4);
                                } else if ("esds".equals(bVar4.getType()) && "esds".equals(next.getType())) {
                                    com.googlecode.mp4parser.b.b.b bVar5 = (com.googlecode.mp4parser.b.b.b) bVar4;
                                    bVar5.a(a(bVar5.b(), ((com.googlecode.mp4parser.b.b.b) next).b()));
                                    bVar3.a(bVar4);
                                }
                            } catch (IOException e) {
                                h.b(e.getMessage());
                                return null;
                            }
                        }
                    }
                    return bVar3;
                }
                h.c("ChannelCount differ");
                return null;
            }
            h.c("BytesPerSample differ");
            return null;
        }
        h.c("BytesPerFrame differ");
        return null;
    }

    private static d a(d dVar, d dVar2) {
        d dVar3 = new d();
        if (dVar.f7104d == dVar2.f7104d) {
            dVar3.f7104d = dVar.f7104d;
            dVar3.g = dVar.g;
            if (dVar.h == dVar2.h) {
                dVar3.h = dVar.h;
                if (dVar.f == dVar2.f) {
                    dVar3.f = dVar.f;
                    if (dVar.f7103c == dVar2.f7103c) {
                        dVar3.f7103c = dVar.f7103c;
                        if (dVar.f7102b == dVar2.f7102b) {
                            dVar3.f7102b = dVar.f7102b;
                            if (dVar.e == dVar2.e) {
                                dVar3.e = dVar.e;
                                if (dVar.f7104d == dVar2.f7104d) {
                                    dVar3.f7104d = dVar.f7104d;
                                    if (dVar.b().size() == dVar2.b().size()) {
                                        Iterator<b> it2 = dVar2.b().iterator();
                                        for (b bVar : dVar.b()) {
                                            b next = it2.next();
                                            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                                            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                                            try {
                                                bVar.getBox(Channels.newChannel(byteArrayOutputStream));
                                                next.getBox(Channels.newChannel(byteArrayOutputStream2));
                                                if (Arrays.equals(byteArrayOutputStream.toByteArray(), byteArrayOutputStream2.toByteArray())) {
                                                    dVar3.a(bVar);
                                                } else if ((bVar instanceof com.googlecode.mp4parser.b.b.a) && (next instanceof com.googlecode.mp4parser.b.b.a)) {
                                                    com.googlecode.mp4parser.b.b.a aVar = (com.googlecode.mp4parser.b.b.a) bVar;
                                                    aVar.a(a(aVar.a(), ((com.googlecode.mp4parser.b.b.a) next).a()));
                                                    dVar3.a(bVar);
                                                }
                                            } catch (IOException e) {
                                                h.b(e.getMessage());
                                                return null;
                                            }
                                        }
                                    }
                                    return dVar3;
                                }
                                h.c("horizontal resolution differs");
                                return null;
                            }
                            h.c("vert resolution differs");
                            return null;
                        }
                        h.c("width differs");
                        return null;
                    }
                    h.c("height differs");
                    return null;
                }
                h.c("frame count differs");
                return null;
            }
            h.c("Depth differs");
            return null;
        }
        h.c("Horizontal Resolution differs");
        return null;
    }

    private v a(v vVar, v vVar2) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
        try {
            vVar.getBox(Channels.newChannel(byteArrayOutputStream));
            vVar2.getBox(Channels.newChannel(byteArrayOutputStream2));
            if (!Arrays.equals(byteArrayOutputStream2.toByteArray(), byteArrayOutputStream.toByteArray())) {
                c cVar = (c) vVar.a(c.class).get(0);
                c cVar2 = (c) vVar2.a(c.class).get(0);
                Object obj = null;
                if (cVar.getType().equals(cVar2.getType())) {
                    if (!(cVar instanceof d) || !(cVar2 instanceof d)) {
                        obj = null;
                        if (cVar instanceof com.b.a.a.c.b) {
                            obj = null;
                            if (cVar2 instanceof com.b.a.a.c.b) {
                                obj = a((com.b.a.a.c.b) cVar, (com.b.a.a.c.b) cVar2);
                            }
                        }
                    } else {
                        obj = a((d) cVar, (d) cVar2);
                    }
                }
                if (obj != null) {
                    vVar.a(Collections.singletonList(obj));
                } else {
                    throw new IOException("Cannot merge " + vVar.a(c.class).get(0) + " and " + vVar2.a(c.class).get(0));
                }
            }
            return vVar;
        } catch (IOException e) {
            h.c(e.getMessage());
            return null;
        }
    }

    private static h a(com.googlecode.mp4parser.b.b.a.b bVar, com.googlecode.mp4parser.b.b.a.b bVar2) {
        if (!(bVar instanceof h) || !(bVar2 instanceof h)) {
            h.c("I can only merge ESDescriptors");
            return null;
        }
        h hVar = (h) bVar;
        h hVar2 = (h) bVar2;
        if (hVar.f33123c != hVar2.f33123c || hVar.i != hVar2.i || hVar.f33121a != hVar2.f33121a || hVar.j != hVar2.j || hVar.f33124d != hVar2.f33124d || hVar.h != hVar2.h || hVar.f33122b != hVar2.f33122b) {
            return null;
        }
        if (hVar.g != null) {
            hVar.g.equals(hVar2.g);
        }
        if (hVar.k == null ? hVar2.k != null : !hVar.k.equals(hVar2.k)) {
            e eVar = hVar.k;
            e eVar2 = hVar2.k;
            if (eVar.h != null && eVar2.h != null && !eVar.h.equals(eVar2.h)) {
                return null;
            }
            if (eVar.f != eVar2.f) {
                eVar.f = (eVar.f + eVar2.f) / 2;
            }
            if (eVar.g != null) {
                if (!eVar.g.equals(eVar2.g)) {
                    return null;
                }
            } else if (eVar2.g != null) {
                return null;
            }
            if (eVar.e != eVar2.e) {
                eVar.e = Math.max(eVar.e, eVar2.e);
            }
            if (!(eVar.i.equals(eVar2.i) && eVar.f33116a == eVar2.f33116a && eVar.f33117b == eVar2.f33117b && eVar.f33118c == eVar2.f33118c)) {
                return null;
            }
        }
        if (hVar.m != null) {
            if (!hVar.m.equals(hVar2.m)) {
                return null;
            }
        } else if (hVar2.m != null) {
            return null;
        }
        if (hVar.l != null) {
            if (!hVar.l.equals(hVar2.l)) {
                return null;
            }
        } else if (hVar2.l != null) {
            return null;
        }
        return hVar;
    }

    private static String a(g... gVarArr) {
        String str = "";
        for (g gVar : gVarArr) {
            str = String.valueOf(str) + gVar.f() + " + ";
        }
        return str.substring(0, str.length() - 3);
    }

    @Override // com.googlecode.mp4parser.a.a, com.googlecode.mp4parser.a.g
    public final List<d.a> a() {
        if (this.f33075d[0].a() == null || this.f33075d[0].a().isEmpty()) {
            return null;
        }
        LinkedList<int[]> linkedList = new LinkedList();
        for (g gVar : this.f33075d) {
            linkedList.add(com.b.a.a.d.a(gVar.a()));
        }
        LinkedList linkedList2 = new LinkedList();
        for (int[] iArr : linkedList) {
            for (int i : iArr) {
                if (linkedList2.isEmpty() || ((d.a) linkedList2.getLast()).f7113b != i) {
                    linkedList2.add(new d.a(1, i));
                } else {
                    ((d.a) linkedList2.getLast()).f7112a++;
                }
            }
        }
        return linkedList2;
    }

    @Override // com.googlecode.mp4parser.a.a, com.googlecode.mp4parser.a.g
    public final long[] b() {
        g[] gVarArr;
        g[] gVarArr2;
        if (this.f33075d[0].b() == null || this.f33075d[0].b().length <= 0) {
            return null;
        }
        int i = 0;
        for (g gVar : this.f33075d) {
            i += gVar.b() != null ? gVar.b().length : 0;
        }
        long[] jArr = new long[i];
        long j = 0;
        int i2 = 0;
        for (g gVar2 : this.f33075d) {
            i2 = i2;
            if (gVar2.b() != null) {
                long[] b2 = gVar2.b();
                int length = b2.length;
                int i3 = 0;
                while (i3 < length) {
                    jArr[i2] = b2[i3] + j;
                    i3++;
                    i2++;
                }
                i2 = i2;
            }
            j += gVar2.j().size();
        }
        return jArr;
    }

    @Override // com.googlecode.mp4parser.a.a, com.googlecode.mp4parser.a.g
    public final List<u.a> c() {
        if (this.f33075d[0].c() == null || this.f33075d[0].c().isEmpty()) {
            return null;
        }
        LinkedList linkedList = new LinkedList();
        for (g gVar : this.f33075d) {
            linkedList.addAll(gVar.c());
        }
        return linkedList;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        for (g gVar : this.f33075d) {
            gVar.close();
        }
    }

    @Override // com.googlecode.mp4parser.a.a, com.googlecode.mp4parser.a.g
    public final ac d() {
        return this.f33075d[0].d();
    }

    @Override // com.googlecode.mp4parser.a.g
    public final List<com.googlecode.mp4parser.a.f> j() {
        return this.f;
    }

    @Override // com.googlecode.mp4parser.a.g
    public final long[] k() {
        long[] jArr;
        synchronized (this) {
            jArr = this.g;
        }
        return jArr;
    }

    @Override // com.googlecode.mp4parser.a.g
    public final v l() {
        return this.e;
    }

    @Override // com.googlecode.mp4parser.a.g
    public final com.googlecode.mp4parser.a.h m() {
        return this.f33075d[0].m();
    }

    @Override // com.googlecode.mp4parser.a.g
    public final String n() {
        return this.f33075d[0].n();
    }
}
