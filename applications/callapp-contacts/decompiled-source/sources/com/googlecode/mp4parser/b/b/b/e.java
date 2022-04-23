package com.googlecode.mp4parser.b.b.b;

import com.b.a.f;
import com.explorestack.iab.utils.o;
import com.googlecode.mp4parser.c;
import com.googlecode.mp4parser.h;
import com.mp4parser.iso14496.part15.d;
import java.nio.ByteBuffer;
import java.util.LinkedList;
import java.util.List;
import org.mp4parser.aspectj.a.b.b;
import org.mp4parser.aspectj.lang.a;
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/b/b/b/e.class */
public class e extends c {

    /* renamed from: c  reason: collision with root package name */
    public static final a.AbstractC0755a f33146c = null;

    /* renamed from: d  reason: collision with root package name */
    public static final a.AbstractC0755a f33147d = null;
    private static final a.AbstractC0755a f = null;
    private static final a.AbstractC0755a g = null;
    private static final a.AbstractC0755a h = null;
    private static final a.AbstractC0755a i = null;
    private static final a.AbstractC0755a j = null;
    private static final a.AbstractC0755a k = null;
    private static final a.AbstractC0755a l = null;

    /* renamed from: a  reason: collision with root package name */
    public String f33148a;

    /* renamed from: b  reason: collision with root package name */
    public List<b> f33149b = new LinkedList();
    private int e;

    static {
        c();
    }

    public e() {
        super("sgpd");
        b(1);
    }

    private static void c() {
        b bVar = new b("SampleGroupDescriptionBox.java", e.class);
        f = bVar.a("method-execution", bVar.a("1", "getGroupingType", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleGroupDescriptionBox", "", "", "", "java.lang.String"), 57);
        f33146c = bVar.a("method-execution", bVar.a("1", "setGroupingType", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleGroupDescriptionBox", "java.lang.String", "groupingType", "", "void"), 61);
        g = bVar.a("method-execution", bVar.a("1", "getDefaultLength", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleGroupDescriptionBox", "", "", "", "int"), 153);
        h = bVar.a("method-execution", bVar.a("1", "setDefaultLength", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleGroupDescriptionBox", "int", "defaultLength", "", "void"), 157);
        i = bVar.a("method-execution", bVar.a("1", "getGroupEntries", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleGroupDescriptionBox", "", "", "", "java.util.List"), 161);
        f33147d = bVar.a("method-execution", bVar.a("1", "setGroupEntries", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleGroupDescriptionBox", "java.util.List", "groupEntries", "", "void"), 165);
        j = bVar.a("method-execution", bVar.a("1", "equals", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleGroupDescriptionBox", "java.lang.Object", o.f19200a, "", "boolean"), 170);
        k = bVar.a("method-execution", bVar.a("1", "hashCode", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleGroupDescriptionBox", "", "", "", "int"), 191);
        l = bVar.a("method-execution", bVar.a("1", "toString", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleGroupDescriptionBox", "", "", "", "java.lang.String"), 199);
    }

    @Override // com.googlecode.mp4parser.a
    public void _parseDetails(ByteBuffer byteBuffer) {
        a(byteBuffer);
        if (h() == 1) {
            this.f33148a = com.b.a.e.h(byteBuffer);
            if (h() == 1) {
                this.e = com.googlecode.mp4parser.c.b.a(com.b.a.e.a(byteBuffer));
            }
            for (long a2 = com.b.a.e.a(byteBuffer); a2 > 0; a2--) {
                int i2 = this.e;
                if (h() == 1) {
                    if (this.e == 0) {
                        i2 = com.googlecode.mp4parser.c.b.a(com.b.a.e.a(byteBuffer));
                    }
                    int position = byteBuffer.position();
                    ByteBuffer slice = byteBuffer.slice();
                    slice.limit(i2);
                    List<b> list = this.f33149b;
                    String str = this.f33148a;
                    b dVar = "roll".equals(str) ? new d() : "rash".equals(str) ? new c() : "seig".equals(str) ? new a() : "rap ".equals(str) ? new i() : "tele".equals(str) ? new g() : "sync".equals(str) ? new com.mp4parser.iso14496.part15.b() : "tscl".equals(str) ? new com.mp4parser.iso14496.part15.c() : "tsas".equals(str) ? new d() : "stsa".equals(str) ? new com.mp4parser.iso14496.part15.a() : new h(str);
                    dVar.a(slice);
                    list.add(dVar);
                    byteBuffer.position(position + i2);
                } else {
                    throw new RuntimeException("This should be implemented");
                }
            }
            return;
        }
        throw new RuntimeException("SampleGroupDescriptionBox are only supported in version 1");
    }

    public final String a() {
        a a2 = b.a(f, this, this);
        h.a();
        h.a(a2);
        return this.f33148a;
    }

    public final List<b> b() {
        a a2 = b.a(i, this, this);
        h.a();
        h.a(a2);
        return this.f33149b;
    }

    public boolean equals(Object obj) {
        a a2 = b.a(j, this, this, obj);
        h.a();
        h.a(a2);
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        e eVar = (e) obj;
        if (this.e != eVar.e) {
            return false;
        }
        List<b> list = this.f33149b;
        List<b> list2 = eVar.f33149b;
        return list != null ? list.equals(list2) : list2 == null;
    }

    @Override // com.googlecode.mp4parser.a
    public void getContent(ByteBuffer byteBuffer) {
        b(byteBuffer);
        byteBuffer.put(com.b.a.d.a(this.f33148a));
        if (h() == 1) {
            f.b(byteBuffer, this.e);
        }
        f.b(byteBuffer, this.f33149b.size());
        for (b bVar : this.f33149b) {
            if (h() == 1 && this.e == 0) {
                f.b(byteBuffer, bVar.b().limit());
            }
            byteBuffer.put(bVar.b());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3, types: [long] */
    /* JADX WARN: Type inference failed for: r6v2, types: [long] */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // com.googlecode.mp4parser.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long getContentSize() {
        /*
            r5 = this;
            r0 = r5
            int r0 = r0.h()
            r1 = 1
            if (r0 != r1) goto L_0x000f
            r0 = 12
            r6 = r0
            goto L_0x0013
        L_0x000f:
            r0 = 8
            r6 = r0
        L_0x0013:
            r0 = r6
            r1 = 4
            long r0 = r0 + r1
            r6 = r0
            r0 = r5
            java.util.List<com.googlecode.mp4parser.b.b.b.b> r0 = r0.f33149b
            java.util.Iterator r0 = r0.iterator()
            r8 = r0
        L_0x0023:
            r0 = r8
            boolean r0 = r0.hasNext()
            if (r0 != 0) goto L_0x002e
            r0 = r6
            return r0
        L_0x002e:
            r0 = r8
            java.lang.Object r0 = r0.next()
            com.googlecode.mp4parser.b.b.b.b r0 = (com.googlecode.mp4parser.b.b.b.b) r0
            r9 = r0
            r0 = r6
            r10 = r0
            r0 = r5
            int r0 = r0.h()
            r1 = 1
            if (r0 != r1) goto L_0x0055
            r0 = r6
            r10 = r0
            r0 = r5
            int r0 = r0.e
            if (r0 != 0) goto L_0x0055
            r0 = r6
            r1 = 4
            long r0 = r0 + r1
            r10 = r0
        L_0x0055:
            r0 = r10
            r1 = r9
            int r1 = r1.c()
            long r1 = (long) r1
            long r0 = r0 + r1
            r6 = r0
            goto L_0x0023
        */
        throw new UnsupportedOperationException("Method not decompiled: com.googlecode.mp4parser.b.b.b.e.getContentSize():long");
    }

    public int hashCode() {
        a a2 = b.a(k, this, this);
        h.a();
        h.a(a2);
        int i2 = this.e;
        int i3 = 0;
        List<b> list = this.f33149b;
        if (list != null) {
            i3 = list.hashCode();
        }
        return ((i2 + 0) * 31) + i3;
    }

    public String toString() {
        a a2 = b.a(l, this, this);
        h.a();
        h.a(a2);
        StringBuilder sb = new StringBuilder("SampleGroupDescriptionBox{groupingType='");
        sb.append(this.f33149b.size() > 0 ? this.f33149b.get(0).a() : "????");
        sb.append('\'');
        sb.append(", defaultLength=");
        sb.append(this.e);
        sb.append(", groupEntries=");
        sb.append(this.f33149b);
        sb.append('}');
        return sb.toString();
    }
}
