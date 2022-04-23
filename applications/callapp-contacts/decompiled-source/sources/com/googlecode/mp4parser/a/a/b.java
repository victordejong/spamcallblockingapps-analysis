package com.googlecode.mp4parser.a.a;

import com.b.a.a.aa;
import com.b.a.a.ab;
import com.b.a.a.ad;
import com.b.a.a.ae;
import com.b.a.a.af;
import com.b.a.a.ag;
import com.b.a.a.ah;
import com.b.a.a.ai;
import com.b.a.a.d;
import com.b.a.a.e;
import com.b.a.a.i;
import com.b.a.a.j;
import com.b.a.a.k;
import com.b.a.a.m;
import com.b.a.a.n;
import com.b.a.a.o;
import com.b.a.a.p;
import com.b.a.a.q;
import com.b.a.a.r;
import com.b.a.a.t;
import com.b.a.a.u;
import com.b.a.a.w;
import com.b.a.a.x;
import com.googlecode.mp4parser.a.d;
import com.googlecode.mp4parser.a.g;
import com.googlecode.mp4parser.b.b.b.f;
import com.googlecode.mp4parser.c.c;
import com.googlecode.mp4parser.c.f;
import com.googlecode.mp4parser.h;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/a/a/b.class */
public class b {
    static final /* synthetic */ boolean e = true;
    private static f f = f.a(b.class);

    /* renamed from: a  reason: collision with root package name */
    Map<g, ab> f33040a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    Set<com.mp4parser.iso14496.a.a> f33041b = new HashSet();

    /* renamed from: c  reason: collision with root package name */
    HashMap<g, List<com.googlecode.mp4parser.a.f>> f33042c = new HashMap<>();

    /* renamed from: d  reason: collision with root package name */
    HashMap<g, long[]> f33043d = new HashMap<>();
    private c g;

    /* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/a/a/b$a.class */
    final class a implements com.b.a.a.b {

        /* renamed from: a  reason: collision with root package name */
        List<g> f33045a;

        /* renamed from: b  reason: collision with root package name */
        List<List<com.googlecode.mp4parser.a.f>> f33046b;

        /* renamed from: c  reason: collision with root package name */
        e f33047c;

        /* renamed from: d  reason: collision with root package name */
        long f33048d;

        private a(d dVar, Map<g, int[]> map, long j) {
            int i;
            this.f33046b = new ArrayList();
            this.f33048d = j;
            this.f33045a = dVar.f33074b;
            ArrayList<g> arrayList = new ArrayList(map.keySet());
            Collections.sort(arrayList, new Comparator<g>() { // from class: com.googlecode.mp4parser.a.a.b.a.1
                @Override // java.util.Comparator
                public final /* synthetic */ int compare(g gVar, g gVar2) {
                    return com.googlecode.mp4parser.c.b.a(gVar.m().i - gVar2.m().i);
                }
            });
            HashMap hashMap = new HashMap();
            HashMap hashMap2 = new HashMap();
            HashMap hashMap3 = new HashMap();
            for (g gVar : arrayList) {
                hashMap.put(gVar, 0);
                hashMap2.put(gVar, 0);
                hashMap3.put(gVar, Double.valueOf(0.0d));
            }
            while (true) {
                g gVar2 = null;
                for (g gVar3 : arrayList) {
                    if (gVar2 == null || ((Double) hashMap3.get(gVar3)).doubleValue() < ((Double) hashMap3.get(gVar2)).doubleValue()) {
                        if (((Integer) hashMap.get(gVar3)).intValue() < map.get(gVar3).length) {
                            gVar2 = gVar3;
                        }
                    }
                }
                if (gVar2 != null) {
                    int intValue = ((Integer) hashMap.get(gVar2)).intValue();
                    int i2 = map.get(gVar2)[intValue];
                    int intValue2 = ((Integer) hashMap2.get(gVar2)).intValue();
                    double doubleValue = ((Double) hashMap3.get(gVar2)).doubleValue();
                    int i3 = intValue2;
                    while (true) {
                        i = intValue2 + i2;
                        if (i3 >= i) {
                            break;
                        }
                        doubleValue += gVar2.k()[i3] / gVar2.m().f33081b;
                        i3++;
                    }
                    this.f33046b.add(gVar2.j().subList(intValue2, i));
                    hashMap.put(gVar2, Integer.valueOf(intValue + 1));
                    hashMap2.put(gVar2, Integer.valueOf(i));
                    hashMap3.put(gVar2, Double.valueOf(doubleValue));
                } else {
                    return;
                }
            }
        }

        /* synthetic */ a(b bVar, d dVar, Map map, long j, a aVar) {
            this(dVar, map, j);
        }

        private static boolean a(long j) {
            return j + 8 < 4294967296L;
        }

        public final long a() {
            com.b.a.a.b next;
            long j = 16;
            Object obj = this;
            while (obj instanceof com.b.a.a.b) {
                com.b.a.a.b bVar = (com.b.a.a.b) obj;
                Iterator<com.b.a.a.b> it2 = bVar.getParent().b().iterator();
                while (it2.hasNext() && obj != (next = it2.next())) {
                    j += next.getSize();
                }
                obj = bVar.getParent();
            }
            return j;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v37, types: [long] */
        /* JADX WARN: Type inference failed for: r8v4 */
        /* JADX WARN: Type inference failed for: r8v6, types: [long] */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // com.b.a.a.b
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void getBox(java.nio.channels.WritableByteChannel r6) throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 266
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.googlecode.mp4parser.a.a.b.a.getBox(java.nio.channels.WritableByteChannel):void");
        }

        @Override // com.b.a.a.b
        public final e getParent() {
            return this.f33047c;
        }

        @Override // com.b.a.a.b
        public final long getSize() {
            return this.f33048d + 16;
        }

        @Override // com.b.a.a.b
        public final String getType() {
            return "mdat";
        }

        @Override // com.b.a.a.b
        public final void parse(com.googlecode.mp4parser.e eVar, ByteBuffer byteBuffer, long j, com.b.a.b bVar) throws IOException {
        }

        @Override // com.b.a.a.b
        public final void setParent(e eVar) {
            this.f33047c = eVar;
        }
    }

    private static long a(long[] jArr) {
        long j = 0;
        for (long j2 : jArr) {
            j += j2;
        }
        return j;
    }

    private ag a(g gVar, d dVar, Map<g, int[]> map) {
        ag agVar = new ag();
        ah ahVar = new ah();
        org.mp4parser.aspectj.lang.a a2 = org.mp4parser.aspectj.a.b.b.a(ah.t, ahVar, ahVar, true);
        h.a();
        h.a(a2);
        ahVar.c(ahVar.i() | 1);
        org.mp4parser.aspectj.lang.a a3 = org.mp4parser.aspectj.a.b.b.a(ah.u, ahVar, ahVar, true);
        h.a();
        h.a(a3);
        ahVar.c(ahVar.i() | 2);
        com.googlecode.mp4parser.c.h hVar = gVar.m().e;
        org.mp4parser.aspectj.lang.a a4 = org.mp4parser.aspectj.a.b.b.a(ah.q, ahVar, ahVar, hVar);
        h.a();
        h.a(a4);
        ahVar.g = hVar;
        int i = gVar.m().j;
        org.mp4parser.aspectj.lang.a a5 = org.mp4parser.aspectj.a.b.b.a(ah.o, ahVar, ahVar, Integer.valueOf(i));
        h.a();
        h.a(a5);
        ahVar.e = i;
        Date date = gVar.m().f33083d;
        org.mp4parser.aspectj.lang.a a6 = org.mp4parser.aspectj.a.b.b.a(ah.k, ahVar, ahVar, date);
        h.a();
        h.a(a6);
        ahVar.f7085a = date;
        if (c.a(date) >= 4294967296L) {
            ahVar.b(1);
        }
        if (gVar.g() == null || gVar.g().isEmpty()) {
            ahVar.a((gVar.e() * b(dVar)) / gVar.m().f33081b);
        } else {
            long j = 0;
            for (com.googlecode.mp4parser.a.c cVar : gVar.g()) {
                j += (long) cVar.f33056b;
            }
            ahVar.a(j * gVar.m().f33081b);
        }
        double d2 = gVar.m().g;
        org.mp4parser.aspectj.lang.a a7 = org.mp4parser.aspectj.a.b.b.a(ah.s, ahVar, ahVar, Double.valueOf(d2));
        h.a();
        h.a(a7);
        ahVar.i = d2;
        double d3 = gVar.m().f;
        org.mp4parser.aspectj.lang.a a8 = org.mp4parser.aspectj.a.b.b.a(ah.r, ahVar, ahVar, Double.valueOf(d3));
        h.a();
        h.a(a8);
        ahVar.h = d3;
        int i2 = gVar.m().k;
        org.mp4parser.aspectj.lang.a a9 = org.mp4parser.aspectj.a.b.b.a(ah.n, ahVar, ahVar, Integer.valueOf(i2));
        h.a();
        h.a(a9);
        ahVar.f7088d = i2;
        Date date2 = new Date();
        org.mp4parser.aspectj.lang.a a10 = org.mp4parser.aspectj.a.b.b.a(ah.l, ahVar, ahVar, date2);
        h.a();
        h.a(a10);
        ahVar.f7086b = date2;
        if (c.a(date2) >= 4294967296L) {
            ahVar.b(1);
        }
        long j2 = gVar.m().i;
        org.mp4parser.aspectj.lang.a a11 = org.mp4parser.aspectj.a.b.b.a(ah.m, ahVar, ahVar, org.mp4parser.aspectj.a.a.a.a(j2));
        h.a();
        h.a(a11);
        ahVar.f7087c = j2;
        float f2 = gVar.m().h;
        org.mp4parser.aspectj.lang.a a12 = org.mp4parser.aspectj.a.b.b.a(ah.p, ahVar, ahVar, Float.valueOf(f2));
        h.a();
        h.a(a12);
        ahVar.f = f2;
        agVar.a(ahVar);
        agVar.a(a(gVar, dVar));
        o oVar = new o();
        agVar.a(oVar);
        p pVar = new p();
        Date date3 = gVar.m().f33083d;
        org.mp4parser.aspectj.lang.a a13 = org.mp4parser.aspectj.a.b.b.a(p.e, pVar, pVar, date3);
        h.a();
        h.a(a13);
        pVar.f7137a = date3;
        long e2 = gVar.e();
        org.mp4parser.aspectj.lang.a a14 = org.mp4parser.aspectj.a.b.b.a(p.g, pVar, pVar, org.mp4parser.aspectj.a.a.a.a(e2));
        h.a();
        h.a(a14);
        pVar.f7139c = e2;
        long j3 = gVar.m().f33081b;
        org.mp4parser.aspectj.lang.a a15 = org.mp4parser.aspectj.a.b.b.a(p.f, pVar, pVar, org.mp4parser.aspectj.a.a.a.a(j3));
        h.a();
        h.a(a15);
        pVar.f7138b = j3;
        String str = gVar.m().f33080a;
        org.mp4parser.aspectj.lang.a a16 = org.mp4parser.aspectj.a.b.b.a(p.h, pVar, pVar, str);
        h.a();
        h.a(a16);
        pVar.f7140d = str;
        oVar.a(pVar);
        m mVar = new m();
        oVar.a(mVar);
        String n = gVar.n();
        org.mp4parser.aspectj.lang.a a17 = org.mp4parser.aspectj.a.b.b.a(m.f7130c, mVar, mVar, n);
        h.a();
        h.a(a17);
        mVar.f7131b = n;
        q qVar = new q();
        if (gVar.n().equals("vide")) {
            qVar.a(new ai());
        } else if (gVar.n().equals("soun")) {
            qVar.a(new aa());
        } else if (gVar.n().equals("text")) {
            qVar.a(new t());
        } else if (gVar.n().equals("subt")) {
            qVar.a(new ad());
        } else if (gVar.n().equals("hint")) {
            qVar.a(new n());
        } else if (gVar.n().equals("sbtl")) {
            qVar.a(new t());
        }
        com.b.a.a.g gVar2 = new com.b.a.a.g();
        com.b.a.a.h hVar2 = new com.b.a.a.h();
        gVar2.a(hVar2);
        com.b.a.a.f fVar = new com.b.a.a.f();
        fVar.c(1);
        hVar2.a(fVar);
        qVar.a(gVar2);
        qVar.a(a(gVar, map));
        oVar.a(qVar);
        f fVar2 = f;
        fVar2.a("done with trak for track_" + gVar.m().i);
        return agVar;
    }

    private static com.b.a.a.b a(g gVar, d dVar) {
        if (gVar.g() == null || gVar.g().size() <= 0) {
            return null;
        }
        j jVar = new j();
        jVar.b(0);
        ArrayList arrayList = new ArrayList();
        for (com.googlecode.mp4parser.a.c cVar : gVar.g()) {
            arrayList.add(new j.a(jVar, Math.round(cVar.f33056b * dVar.a()), (cVar.f33057c * gVar.m().f33081b) / cVar.f33055a, cVar.f33058d));
        }
        org.mp4parser.aspectj.lang.a a2 = org.mp4parser.aspectj.a.b.b.a(j.f7118c, jVar, jVar, arrayList);
        h.a();
        h.a(a2);
        jVar.f7120a = arrayList;
        i iVar = new i();
        iVar.a(jVar);
        return iVar;
    }

    private com.b.a.a.b a(g gVar, Map<g, int[]> map) {
        long[] k;
        long j;
        x xVar = new x();
        xVar.a(gVar.l());
        ArrayList arrayList = new ArrayList();
        af.a aVar = null;
        for (long j2 : gVar.k()) {
            if (aVar == null || aVar.f7083b != j2) {
                aVar = new af.a(1L, j2);
                arrayList.add(aVar);
            } else {
                aVar.f7082a++;
            }
        }
        af afVar = new af();
        org.mp4parser.aspectj.lang.a a2 = org.mp4parser.aspectj.a.b.b.a(af.e, afVar, afVar, arrayList);
        h.a();
        h.a(a2);
        afVar.f7081a = arrayList;
        xVar.a(afVar);
        List<d.a> a3 = gVar.a();
        if (a3 != null && !a3.isEmpty()) {
            com.b.a.a.d dVar = new com.b.a.a.d();
            org.mp4parser.aspectj.lang.a a4 = org.mp4parser.aspectj.a.b.b.a(com.b.a.a.d.f7110d, dVar, dVar, a3);
            h.a();
            h.a(a4);
            dVar.f7111a = a3;
            xVar.a(dVar);
        }
        long[] b2 = gVar.b();
        if (b2 != null && b2.length > 0) {
            ae aeVar = new ae();
            org.mp4parser.aspectj.lang.a a5 = org.mp4parser.aspectj.a.b.b.a(ae.f7075c, aeVar, aeVar, b2);
            h.a();
            h.a(a5);
            aeVar.f7077a = b2;
            xVar.a(aeVar);
        }
        if (gVar.c() != null && !gVar.c().isEmpty()) {
            u uVar = new u();
            List<u.a> c2 = gVar.c();
            org.mp4parser.aspectj.lang.a a6 = org.mp4parser.aspectj.a.b.b.a(u.f7146c, uVar, uVar, c2);
            h.a();
            h.a(a6);
            uVar.f7148a = c2;
            xVar.a(uVar);
        }
        b(gVar, map, xVar);
        w wVar = new w();
        long[] jArr = this.f33043d.get(gVar);
        org.mp4parser.aspectj.lang.a a7 = org.mp4parser.aspectj.a.b.b.a(w.f7153d, wVar, wVar, jArr);
        h.a();
        h.a(a7);
        wVar.f7154a = jArr;
        xVar.a(wVar);
        a(gVar, map, xVar);
        HashMap hashMap = new HashMap();
        Iterator<Map.Entry<com.googlecode.mp4parser.b.b.b.b, long[]>> it2 = gVar.h().entrySet().iterator();
        while (true) {
            j = 1;
            if (!it2.hasNext()) {
                break;
            }
            Map.Entry<com.googlecode.mp4parser.b.b.b.b, long[]> next = it2.next();
            String a8 = next.getKey().a();
            List list = (List) hashMap.get(a8);
            List list2 = list;
            if (list == null) {
                list2 = new ArrayList();
                hashMap.put(a8, list2);
            }
            list2.add(next.getKey());
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            com.googlecode.mp4parser.b.b.b.e eVar = new com.googlecode.mp4parser.b.b.b.e();
            String str = (String) entry.getKey();
            org.mp4parser.aspectj.lang.a a9 = org.mp4parser.aspectj.a.b.b.a(com.googlecode.mp4parser.b.b.b.e.f33146c, eVar, eVar, str);
            h.a();
            h.a(a9);
            eVar.f33148a = str;
            List<com.googlecode.mp4parser.b.b.b.b> list3 = (List) entry.getValue();
            org.mp4parser.aspectj.lang.a a10 = org.mp4parser.aspectj.a.b.b.a(com.googlecode.mp4parser.b.b.b.e.f33147d, eVar, eVar, list3);
            h.a();
            h.a(a10);
            eVar.f33149b = list3;
            com.googlecode.mp4parser.b.b.b.f fVar = new com.googlecode.mp4parser.b.b.b.f();
            org.mp4parser.aspectj.lang.a a11 = org.mp4parser.aspectj.a.b.b.a(com.googlecode.mp4parser.b.b.b.f.f33150c, fVar, fVar, str);
            h.a();
            h.a(a11);
            fVar.f33151a = str;
            f.a aVar2 = null;
            for (int i = 0; i < gVar.j().size(); i++) {
                int i2 = 0;
                int i3 = 0;
                while (i2 < ((List) entry.getValue()).size()) {
                    if (Arrays.binarySearch(gVar.h().get((com.googlecode.mp4parser.b.b.b.b) ((List) entry.getValue()).get(i2)), i) >= 0) {
                        i3 = i2 + 1;
                    }
                    i2++;
                    j = 1;
                }
                if (aVar2 == null || aVar2.f33155b != i3) {
                    aVar2 = new f.a(j, i3);
                    fVar.b().add(aVar2);
                } else {
                    aVar2.f33154a += j;
                }
            }
            xVar.a(eVar);
            xVar.a(fVar);
        }
        if (gVar instanceof com.googlecode.mp4parser.a.d.b) {
            a((com.googlecode.mp4parser.a.d.b) gVar, xVar, map.get(gVar));
        }
        if (gVar.d() != null) {
            xVar.a(gVar.d());
        }
        f.a("done with stbl for track_" + gVar.m().i);
        return xVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v105 */
    /* JADX WARN: Type inference failed for: r0v33 */
    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    /* JADX WARN: Type inference failed for: r19v5, types: [long] */
    /* JADX WARN: Type inference failed for: r19v8 */
    /* JADX WARN: Type inference failed for: r19v9 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.b.a.a.r a(com.googlecode.mp4parser.a.d r7, java.util.Map<com.googlecode.mp4parser.a.g, int[]> r8) {
        /*
            Method dump skipped, instructions count: 588
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.googlecode.mp4parser.a.a.b.a(com.googlecode.mp4parser.a.d, java.util.Map):com.b.a.a.r");
    }

    private void a(com.googlecode.mp4parser.a.d.b bVar, x xVar, int[] iArr) {
        com.mp4parser.iso14496.a.b bVar2 = new com.mp4parser.iso14496.a.b();
        org.mp4parser.aspectj.lang.a a2 = org.mp4parser.aspectj.a.b.b.a(com.mp4parser.iso14496.a.b.f, bVar2, bVar2, "cenc");
        h.a();
        h.a(a2);
        bVar2.f34927d = "cenc";
        bVar2.c(1);
        List<com.mp4parser.a.a.a> i = bVar.i();
        org.mp4parser.aspectj.lang.a a3 = org.mp4parser.aspectj.a.b.b.a(com.mp4parser.iso14496.a.b.g, bVar2, bVar2, 8);
        h.a();
        h.a(a3);
        bVar2.f34924a = (short) 8;
        int size = bVar.j().size();
        org.mp4parser.aspectj.lang.a a4 = org.mp4parser.aspectj.a.b.b.a(com.mp4parser.iso14496.a.b.i, bVar2, bVar2, Integer.valueOf(size));
        h.a();
        h.a(a4);
        bVar2.f34926c = size;
        com.mp4parser.iso14496.a.a aVar = new com.mp4parser.iso14496.a.a();
        com.googlecode.mp4parser.b.a.a aVar2 = new com.googlecode.mp4parser.b.a.a();
        aVar2.c(aVar2.i() & 16777213);
        org.mp4parser.aspectj.lang.a a5 = org.mp4parser.aspectj.a.b.b.a(com.googlecode.mp4parser.b.a.e, aVar2, aVar2, i);
        h.a();
        h.a(a5);
        aVar2.f33088d = i;
        long a6 = aVar2.a();
        long[] jArr = new long[iArr.length];
        int i2 = 0;
        for (int i3 = 0; i3 < iArr.length; i3++) {
            jArr[i3] = a6;
            int i4 = 0;
            while (i4 < iArr[i3]) {
                a6 += i.get(i2).a();
                i4++;
                i2++;
            }
        }
        aVar.a(jArr);
        xVar.a(bVar2);
        xVar.a(aVar);
        xVar.a(aVar2);
        this.f33041b.add(aVar);
    }

    private void a(g gVar, Map<g, int[]> map, x xVar) {
        int i;
        if (this.f33040a.get(gVar) == null) {
            com.googlecode.mp4parser.c.f fVar = f;
            fVar.a("Calculating chunk offsets for track_" + gVar.m().i);
            ArrayList<g> arrayList = new ArrayList(map.keySet());
            Collections.sort(arrayList, new Comparator<g>() { // from class: com.googlecode.mp4parser.a.a.b.1
                @Override // java.util.Comparator
                public final /* synthetic */ int compare(g gVar2, g gVar3) {
                    return com.googlecode.mp4parser.c.b.a(gVar2.m().i - gVar3.m().i);
                }
            });
            HashMap hashMap = new HashMap();
            HashMap hashMap2 = new HashMap();
            HashMap hashMap3 = new HashMap();
            for (g gVar2 : arrayList) {
                hashMap.put(gVar2, 0);
                hashMap2.put(gVar2, 0);
                hashMap3.put(gVar2, Double.valueOf(0.0d));
                this.f33040a.put(gVar2, new ab());
            }
            long j = 0;
            while (true) {
                g gVar3 = null;
                for (g gVar4 : arrayList) {
                    if (gVar3 != null) {
                        gVar3 = gVar3;
                        if (((Double) hashMap3.get(gVar4)).doubleValue() >= ((Double) hashMap3.get(gVar3)).doubleValue()) {
                        }
                    }
                    gVar3 = gVar3;
                    if (((Integer) hashMap.get(gVar4)).intValue() < map.get(gVar4).length) {
                        gVar3 = gVar4;
                    }
                }
                if (gVar3 == null) {
                    break;
                }
                ab abVar = this.f33040a.get(gVar3);
                abVar.a(com.googlecode.mp4parser.c.i.a(abVar.a(), j));
                int intValue = ((Integer) hashMap.get(gVar3)).intValue();
                int i2 = map.get(gVar3)[intValue];
                int intValue2 = ((Integer) hashMap2.get(gVar3)).intValue();
                double doubleValue = ((Double) hashMap3.get(gVar3)).doubleValue();
                long[] k = gVar3.k();
                int i3 = intValue2;
                while (true) {
                    i = intValue2 + i2;
                    if (i3 >= i) {
                        break;
                    }
                    j += this.f33043d.get(gVar3)[i3];
                    doubleValue += k[i3] / gVar3.m().f33081b;
                    i3++;
                }
                hashMap.put(gVar3, Integer.valueOf(intValue + 1));
                hashMap2.put(gVar3, Integer.valueOf(i));
                hashMap3.put(gVar3, Double.valueOf(doubleValue));
            }
        }
        xVar.a(this.f33040a.get(gVar));
    }

    private int[] a(g gVar) {
        long[] a2 = this.g.a(gVar);
        int length = a2.length;
        int[] iArr = new int[length];
        int i = 0;
        while (i < a2.length) {
            long j = a2[i];
            int length2 = a2.length;
            int i2 = i + 1;
            iArr[i] = com.googlecode.mp4parser.c.b.a((length2 == i2 ? gVar.j().size() : a2[i2] - 1) - (j - 1));
            i = i2;
        }
        if (!e) {
            long size = this.f33042c.get(gVar).size();
            long j2 = 0;
            for (int i3 = 0; i3 < length; i3++) {
                j2 += iArr[i3];
            }
            if (size != j2) {
                throw new AssertionError("The number of samples and the sum of all chunk lengths must be equal");
            }
        }
        return iArr;
    }

    private static long b(com.googlecode.mp4parser.a.d dVar) {
        long j = dVar.f33074b.iterator().next().m().f33081b;
        for (g gVar : dVar.f33074b) {
            j = com.googlecode.mp4parser.c.g.a(j, gVar.m().f33081b);
        }
        return j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0, types: [com.b.a.a.x] */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1, types: [long] */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r18v0 */
    /* JADX WARN: Type inference failed for: r18v2, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void b(com.googlecode.mp4parser.a.g r10, java.util.Map<com.googlecode.mp4parser.a.g, int[]> r11, com.b.a.a.x r12) {
        /*
            r0 = r11
            r1 = r10
            java.lang.Object r0 = r0.get(r1)
            int[] r0 = (int[]) r0
            r11 = r0
            com.b.a.a.y r0 = new com.b.a.a.y
            r1 = r0
            r1.<init>()
            r13 = r0
            java.util.LinkedList r0 = new java.util.LinkedList
            r1 = r0
            r1.<init>()
            r14 = r0
            org.mp4parser.aspectj.lang.a$a r0 = com.b.a.a.y.f7157b
            r1 = r13
            r2 = r13
            r3 = r14
            org.mp4parser.aspectj.lang.a r0 = org.mp4parser.aspectj.a.b.b.a(r0, r1, r2, r3)
            r10 = r0
            com.googlecode.mp4parser.h r0 = com.googlecode.mp4parser.h.a()
            r0 = r10
            com.googlecode.mp4parser.h.a(r0)
            r0 = r13
            r1 = r14
            r0.f7160a = r1
            r0 = -2147483648(0xffffffff80000000, double:NaN)
            r15 = r0
            r0 = 0
            r17 = r0
        L_0x003d:
            r0 = r17
            r1 = r11
            int r1 = r1.length
            if (r0 < r1) goto L_0x004a
            r0 = r12
            r1 = r13
            r0.a(r1)
            return
        L_0x004a:
            r0 = r15
            r18 = r0
            r0 = r15
            r1 = r11
            r2 = r17
            r1 = r1[r2]
            long r1 = (long) r1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x007c
            r0 = r13
            java.util.List r0 = r0.a()
            com.b.a.a.y$a r1 = new com.b.a.a.y$a
            r2 = r1
            r3 = r17
            r4 = 1
            int r3 = r3 + r4
            long r3 = (long) r3
            r4 = r11
            r5 = r17
            r4 = r4[r5]
            long r4 = (long) r4
            r5 = 1
            r2.<init>(r3, r4, r5)
            boolean r0 = r0.add(r1)
            r0 = r11
            r1 = r17
            r0 = r0[r1]
            long r0 = (long) r0
            r18 = r0
        L_0x007c:
            int r17 = r17 + 1
            r0 = r18
            r15 = r0
            goto L_0x003d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.googlecode.mp4parser.a.a.b.b(com.googlecode.mp4parser.a.g, java.util.Map, com.b.a.a.x):void");
    }

    public final e a(com.googlecode.mp4parser.a.d dVar) {
        com.b.a.a.b next;
        if (this.g == null) {
            this.g = new com.googlecode.mp4parser.a.a.a(2.0d);
        }
        f.a("Creating movie ".concat(String.valueOf(dVar)));
        Iterator<g> it2 = dVar.f33074b.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            g next2 = it2.next();
            List<com.googlecode.mp4parser.a.f> j = next2.j();
            this.f33042c.put(next2, j);
            int size = j.size();
            long[] jArr = new long[size];
            for (int i = 0; i < size; i++) {
                jArr[i] = j.get(i).a();
            }
            this.f33043d.put(next2, jArr);
        }
        com.googlecode.mp4parser.d dVar2 = new com.googlecode.mp4parser.d();
        LinkedList linkedList = new LinkedList();
        linkedList.add("mp42");
        linkedList.add("iso6");
        linkedList.add("avc1");
        linkedList.add("isom");
        dVar2.a(new k("iso6", 1L, linkedList));
        HashMap hashMap = new HashMap();
        for (g gVar : dVar.f33074b) {
            hashMap.put(gVar, a(gVar));
        }
        r a2 = a(dVar, hashMap);
        dVar2.a(a2);
        long j2 = 0;
        for (w wVar : com.googlecode.mp4parser.c.j.a((com.b.a.a.b) a2, "trak/mdia/minf/stbl/stsz")) {
            org.mp4parser.aspectj.lang.a a3 = org.mp4parser.aspectj.a.b.b.a(w.f7152c, wVar, wVar);
            h.a();
            h.a(a3);
            j2 += a(wVar.f7154a);
        }
        f.a("About to create mdat");
        a aVar = new a(this, dVar, hashMap, j2, null);
        dVar2.a(aVar);
        f.a("mdat crated");
        long a4 = aVar.a();
        for (ab abVar : this.f33040a.values()) {
            long[] a5 = abVar.a();
            for (int i2 = 0; i2 < a5.length; i2++) {
                a5[i2] = a5[i2] + a4;
            }
        }
        for (com.mp4parser.iso14496.a.a aVar2 : this.f33041b) {
            long size2 = aVar2.getSize() + 44;
            e eVar = aVar2;
            while (true) {
                e parent = eVar.getParent();
                Iterator<com.b.a.a.b> it3 = parent.b().iterator();
                while (it3.hasNext() && (next = it3.next()) != eVar) {
                    size2 += next.getSize();
                }
                if (!(parent instanceof com.b.a.a.b)) {
                    break;
                }
                eVar = parent;
            }
            long[] b2 = aVar2.b();
            for (int i3 = 0; i3 < b2.length; i3++) {
                b2[i3] = b2[i3] + size2;
            }
            aVar2.a(b2);
        }
        return dVar2;
    }
}
