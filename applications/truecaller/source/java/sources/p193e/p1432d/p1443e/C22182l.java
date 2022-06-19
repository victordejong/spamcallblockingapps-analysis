package p193e.p1432d.p1443e;

import java.util.Collections;
import java.util.List;
import java.util.Map;
/* renamed from: e.d.e.l */
/* loaded from: classes-dex2jar.jar:e/d/e/l.class */
public class C22182l {

    /* renamed from: a */
    public final int f61631a;

    /* renamed from: b */
    public final byte[] f61632b;

    /* renamed from: c */
    public final Map<String, String> f61633c;

    /* renamed from: d */
    public final List<C22178h> f61634d;

    /* renamed from: e */
    public final boolean f61635e;

    public C22182l(int i, byte[] bArr, Map<String, String> map, List<C22178h> list, boolean z, long j) {
        this.f61631a = i;
        this.f61632b = bArr;
        this.f61633c = map;
        if (list == null) {
            this.f61634d = null;
        } else {
            this.f61634d = Collections.unmodifiableList(list);
        }
        this.f61635e = z;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C22182l(int r10, byte[] r11, boolean r12, long r13, java.util.List<p193e.p1432d.p1443e.C22178h> r15) {
        /*
            r9 = this;
            r0 = r15
            if (r0 != 0) goto Lb
            r0 = 0
            r16 = r0
        L8:
            goto L5f
        Lb:
            r0 = r15
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L1d
            java.util.Map r0 = java.util.Collections.emptyMap()
            r16 = r0
            goto L8
        L1d:
            java.util.TreeMap r0 = new java.util.TreeMap
            r1 = r0
            java.util.Comparator r2 = java.lang.String.CASE_INSENSITIVE_ORDER
            r1.<init>(r2)
            r17 = r0
            r0 = r15
            java.util.Iterator r0 = r0.iterator()
            r18 = r0
        L32:
            r0 = r17
            r16 = r0
            r0 = r18
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L8
            r0 = r18
            java.lang.Object r0 = r0.next()
            e.d.e.h r0 = (p193e.p1432d.p1443e.C22178h) r0
            r16 = r0
            r0 = r17
            r1 = r16
            java.lang.String r1 = r1.f61624a
            r2 = r16
            java.lang.String r2 = r2.f61625b
            java.lang.Object r0 = r0.put(r1, r2)
            goto L32
        L5f:
            r0 = r9
            r1 = r10
            r2 = r11
            r3 = r16
            r4 = r15
            r5 = r12
            r6 = r13
            r0.<init>(r1, r2, r3, r4, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1432d.p1443e.C22182l.<init>(int, byte[], boolean, long, java.util.List):void");
    }
}
