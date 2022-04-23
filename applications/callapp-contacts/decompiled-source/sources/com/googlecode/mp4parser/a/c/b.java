package com.googlecode.mp4parser.a.c;

import com.b.a.a.a.g;
import com.b.a.a.ag;
import com.b.a.a.e;
import com.b.a.d;
import com.googlecode.mp4parser.a.f;
import com.googlecode.mp4parser.c.j;
import java.lang.ref.SoftReference;
import java.nio.ByteBuffer;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/a/c/b.class */
public final class b extends AbstractList<f> {

    /* renamed from: a  reason: collision with root package name */
    e f33065a;

    /* renamed from: b  reason: collision with root package name */
    d[] f33066b;

    /* renamed from: c  reason: collision with root package name */
    ag f33067c;

    /* renamed from: d  reason: collision with root package name */
    com.b.a.a.a.d f33068d;
    private SoftReference<f>[] e;
    private List<com.b.a.a.a.e> f;
    private int[] h;
    private Map<g, SoftReference<ByteBuffer>> g = new HashMap();
    private int i = -1;

    public b(long j, e eVar, d... dVarArr) {
        this.f33067c = null;
        this.f33068d = null;
        this.f33065a = eVar;
        this.f33066b = dVarArr;
        for (ag agVar : j.a(eVar, "moov[0]/trak")) {
            if (agVar.a().a() == j) {
                this.f33067c = agVar;
            }
        }
        if (this.f33067c != null) {
            for (com.b.a.a.a.d dVar : j.a(eVar, "moov[0]/mvex[0]/trex")) {
                if (dVar.a() == this.f33067c.a().a()) {
                    this.f33068d = dVar;
                }
            }
            this.e = new SoftReference[size()];
            a();
            return;
        }
        throw new RuntimeException("This MP4 does not contain track ".concat(String.valueOf(j)));
    }

    private static int a(com.b.a.a.a.e eVar) {
        List<com.b.a.a.b> b2 = eVar.b();
        int i = 0;
        for (int i2 = 0; i2 < b2.size(); i2++) {
            com.b.a.a.b bVar = b2.get(i2);
            i = i;
            if (bVar instanceof g) {
                i += com.googlecode.mp4parser.c.b.a(((g) bVar).b());
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v8, types: [com.b.a.a.e] */
    /* JADX WARN: Type inference failed for: r1v18, types: [long] */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v23, types: [long] */
    /* JADX WARN: Type inference failed for: r22v0 */
    /* JADX WARN: Type inference failed for: r22v2, types: [long] */
    /* JADX WARN: Type inference failed for: r22v5 */
    /* JADX WARN: Type inference failed for: r24v0, types: [long] */
    /* JADX WARN: Type inference failed for: r24v3 */
    /* JADX WARN: Type inference failed for: r24v6 */
    /* JADX WARN: Type inference failed for: r24v7 */
    /* JADX WARN: Type inference failed for: r27v0 */
    /* JADX WARN: Type inference failed for: r27v1, types: [long] */
    /* JADX WARN: Type inference failed for: r27v3 */
    /* JADX WARN: Unknown variable types count: 4 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.googlecode.mp4parser.a.f get(int r9) {
        /*
            Method dump skipped, instructions count: 684
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.googlecode.mp4parser.a.c.b.get(int):com.googlecode.mp4parser.a.f");
    }

    private List<com.b.a.a.a.e> a() {
        List<com.b.a.a.a.e> list = this.f;
        if (list != null) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        for (com.b.a.a.a.b bVar : this.f33065a.a(com.b.a.a.a.b.class)) {
            for (com.b.a.a.a.e eVar : bVar.a(com.b.a.a.a.e.class)) {
                if (eVar.a().b() == this.f33067c.a().a()) {
                    arrayList.add(eVar);
                }
            }
        }
        d[] dVarArr = this.f33066b;
        if (dVarArr != null) {
            for (d dVar : dVarArr) {
                for (com.b.a.a.a.b bVar2 : dVar.a(com.b.a.a.a.b.class)) {
                    for (com.b.a.a.a.e eVar2 : bVar2.a(com.b.a.a.a.e.class)) {
                        if (eVar2.a().b() == this.f33067c.a().a()) {
                            arrayList.add(eVar2);
                        }
                    }
                }
            }
        }
        this.f = arrayList;
        this.h = new int[arrayList.size()];
        int i = 1;
        for (int i2 = 0; i2 < this.f.size(); i2++) {
            this.h[i2] = i;
            i += a(this.f.get(i2));
        }
        return arrayList;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        int i = this.i;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (com.b.a.a.a.b bVar : this.f33065a.a(com.b.a.a.a.b.class)) {
            for (com.b.a.a.a.e eVar : bVar.a(com.b.a.a.a.e.class)) {
                if (eVar.a().b() == this.f33067c.a().a()) {
                    for (g gVar : eVar.a(g.class)) {
                        i2 = (int) (i2 + gVar.b());
                    }
                }
            }
        }
        for (d dVar : this.f33066b) {
            for (com.b.a.a.a.b bVar2 : dVar.a(com.b.a.a.a.b.class)) {
                for (com.b.a.a.a.e eVar2 : bVar2.a(com.b.a.a.a.e.class)) {
                    if (eVar2.a().b() == this.f33067c.a().a()) {
                        for (g gVar2 : eVar2.a(g.class)) {
                            i2 = (int) (i2 + gVar2.b());
                        }
                    }
                }
            }
        }
        this.i = i2;
        return i2;
    }
}
