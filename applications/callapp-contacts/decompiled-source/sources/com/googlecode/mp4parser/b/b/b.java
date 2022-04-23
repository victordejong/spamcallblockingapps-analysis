package com.googlecode.mp4parser.b.b;

import com.explorestack.iab.utils.o;
import com.googlecode.mp4parser.b.b.a.h;
import org.mp4parser.aspectj.lang.a;
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/b/b/b.class */
public class b extends a {

    /* renamed from: c  reason: collision with root package name */
    private static final a.AbstractC0755a f33134c = null;

    /* renamed from: d  reason: collision with root package name */
    private static final a.AbstractC0755a f33135d = null;
    private static final a.AbstractC0755a e = null;
    private static final a.AbstractC0755a f = null;

    static {
        c();
    }

    public b() {
        super("esds");
    }

    private static void c() {
        org.mp4parser.aspectj.a.b.b bVar = new org.mp4parser.aspectj.a.b.b("ESDescriptorBox.java", b.class);
        f33134c = bVar.a("method-execution", bVar.a("1", "getEsDescriptor", "com.googlecode.mp4parser.boxes.mp4.ESDescriptorBox", "", "", "", "com.googlecode.mp4parser.boxes.mp4.objectdescriptors.ESDescriptor"), 35);
        f33135d = bVar.a("method-execution", bVar.a("1", "setEsDescriptor", "com.googlecode.mp4parser.boxes.mp4.ESDescriptorBox", "com.googlecode.mp4parser.boxes.mp4.objectdescriptors.ESDescriptor", "esDescriptor", "", "void"), 39);
        e = bVar.a("method-execution", bVar.a("1", "equals", "com.googlecode.mp4parser.boxes.mp4.ESDescriptorBox", "java.lang.Object", o.f19200a, "", "boolean"), 44);
        f = bVar.a("method-execution", bVar.a("1", "hashCode", "com.googlecode.mp4parser.boxes.mp4.ESDescriptorBox", "", "", "", "int"), 55);
    }

    public final h b() {
        a a2 = org.mp4parser.aspectj.a.b.b.a(f33134c, this, this);
        com.googlecode.mp4parser.h.a();
        com.googlecode.mp4parser.h.a(a2);
        return (h) super.a();
    }

    public boolean equals(Object obj) {
        a a2 = org.mp4parser.aspectj.a.b.b.a(e, this, this, obj);
        com.googlecode.mp4parser.h.a();
        com.googlecode.mp4parser.h.a(a2);
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        return this.f33096b != null ? this.f33096b.equals(bVar.f33096b) : bVar.f33096b == null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0526  */
    @Override // com.googlecode.mp4parser.b.b.a, com.googlecode.mp4parser.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void getContent(java.nio.ByteBuffer r6) {
        /*
            Method dump skipped, instructions count: 1749
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.googlecode.mp4parser.b.b.b.getContent(java.nio.ByteBuffer):void");
    }

    @Override // com.googlecode.mp4parser.b.b.a, com.googlecode.mp4parser.a
    public long getContentSize() {
        h b2 = b();
        return (b2 != null ? b2.b() : this.f33096b.remaining()) + 4;
    }

    public int hashCode() {
        a a2 = org.mp4parser.aspectj.a.b.b.a(f, this, this);
        com.googlecode.mp4parser.h.a();
        com.googlecode.mp4parser.h.a(a2);
        if (this.f33096b != null) {
            return this.f33096b.hashCode();
        }
        return 0;
    }
}
