package com.googlecode.mp4parser.a;

import com.googlecode.mp4parser.c.h;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/a/d.class */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public h f33073a;

    /* renamed from: b  reason: collision with root package name */
    public List<g> f33074b;

    public d() {
        this.f33073a = h.j;
        this.f33074b = new LinkedList();
    }

    public d(List<g> list) {
        this.f33073a = h.j;
        this.f33074b = new LinkedList();
        this.f33074b = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v1, types: [long] */
    /* JADX WARN: Type inference failed for: r6v2, types: [long] */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Unknown variable types count: 3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long a() {
        /*
            r5 = this;
            r0 = r5
            java.util.List<com.googlecode.mp4parser.a.g> r0 = r0.f33074b
            java.util.Iterator r0 = r0.iterator()
            java.lang.Object r0 = r0.next()
            com.googlecode.mp4parser.a.g r0 = (com.googlecode.mp4parser.a.g) r0
            com.googlecode.mp4parser.a.h r0 = r0.m()
            long r0 = r0.f33081b
            r6 = r0
            r0 = r5
            java.util.List<com.googlecode.mp4parser.a.g> r0 = r0.f33074b
            java.util.Iterator r0 = r0.iterator()
            r8 = r0
        L_0x0024:
            r0 = r8
            boolean r0 = r0.hasNext()
            if (r0 != 0) goto L_0x002f
            r0 = r6
            return r0
        L_0x002f:
            r0 = r8
            java.lang.Object r0 = r0.next()
            com.googlecode.mp4parser.a.g r0 = (com.googlecode.mp4parser.a.g) r0
            com.googlecode.mp4parser.a.h r0 = r0.m()
            long r0 = r0.f33081b
            r9 = r0
        L_0x0042:
            r0 = r6
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x004e
            r0 = r9
            r6 = r0
            goto L_0x0024
        L_0x004e:
            r0 = r9
            r1 = r6
            long r0 = r0 % r1
            r11 = r0
            r0 = r6
            r9 = r0
            r0 = r11
            r6 = r0
            goto L_0x0042
        */
        throw new UnsupportedOperationException("Method not decompiled: com.googlecode.mp4parser.a.d.a():long");
    }

    public final void a(g gVar) {
        g gVar2;
        long j = gVar.m().i;
        Iterator<g> it2 = this.f33074b.iterator();
        while (true) {
            if (!it2.hasNext()) {
                gVar2 = null;
                break;
            }
            gVar2 = it2.next();
            if (gVar2.m().i == j) {
                break;
            }
        }
        if (gVar2 != null) {
            h m = gVar.m();
            long j2 = 0;
            for (g gVar3 : this.f33074b) {
                if (j2 < gVar3.m().i) {
                    j2 = gVar3.m().i;
                }
            }
            m.i = j2 + 1;
        }
        this.f33074b.add(gVar);
    }

    public final String toString() {
        String str = "Movie{ ";
        for (g gVar : this.f33074b) {
            str = String.valueOf(str) + "track_" + gVar.m().i + " (" + gVar.n() + ") ";
        }
        return String.valueOf(str) + '}';
    }
}
