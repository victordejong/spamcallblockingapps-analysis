package com.googlecode.mp4parser.p420b.p422b;

import com.explorestack.iab.utils.C9605o;
import com.googlecode.mp4parser.C16297h;
import com.googlecode.mp4parser.p420b.p422b.p423a.C16260h;
import org.mp4parser.aspectj.lang.AbstractC20997a;
import org.mp4parser.aspectj.p593a.p595b.C20987b;
/* renamed from: com.googlecode.mp4parser.b.b.b */
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/b/b/b.class */
public class C16268b extends C16250a {

    /* renamed from: c */
    private static final AbstractC20997a.AbstractC20998a f57480c = null;

    /* renamed from: d */
    private static final AbstractC20997a.AbstractC20998a f57481d = null;

    /* renamed from: e */
    private static final AbstractC20997a.AbstractC20998a f57482e = null;

    /* renamed from: f */
    private static final AbstractC20997a.AbstractC20998a f57483f = null;

    static {
        m7531c();
    }

    public C16268b() {
        super("esds");
    }

    /* renamed from: c */
    private static void m7531c() {
        C20987b c20987b = new C20987b("ESDescriptorBox.java", C16268b.class);
        f57480c = c20987b.m164a("method-execution", c20987b.m165a("1", "getEsDescriptor", "com.googlecode.mp4parser.boxes.mp4.ESDescriptorBox", "", "", "", "com.googlecode.mp4parser.boxes.mp4.objectdescriptors.ESDescriptor"), 35);
        f57481d = c20987b.m164a("method-execution", c20987b.m165a("1", "setEsDescriptor", "com.googlecode.mp4parser.boxes.mp4.ESDescriptorBox", "com.googlecode.mp4parser.boxes.mp4.objectdescriptors.ESDescriptor", "esDescriptor", "", "void"), 39);
        f57482e = c20987b.m164a("method-execution", c20987b.m165a("1", "equals", "com.googlecode.mp4parser.boxes.mp4.ESDescriptorBox", "java.lang.Object", C9605o.f32625a, "", "boolean"), 44);
        f57483f = c20987b.m164a("method-execution", c20987b.m165a("1", "hashCode", "com.googlecode.mp4parser.boxes.mp4.ESDescriptorBox", "", "", "", "int"), 55);
    }

    /* renamed from: b */
    public final C16260h m7532b() {
        AbstractC20997a m163a = C20987b.m163a(f57480c, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return (C16260h) super.m7553a();
    }

    public boolean equals(Object obj) {
        AbstractC20997a m162a = C20987b.m162a(f57482e, this, this, obj);
        C16297h.m7484a();
        C16297h.m7483a(m162a);
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C16268b c16268b = (C16268b) obj;
        return this.f57360b != null ? this.f57360b.equals(c16268b.f57360b) : c16268b.f57360b == null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0526  */
    @Override // com.googlecode.mp4parser.p420b.p422b.C16250a, com.googlecode.mp4parser.AbstractC16221a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void getContent(java.nio.ByteBuffer r6) {
        /*
            Method dump skipped, instructions count: 1749
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.googlecode.mp4parser.p420b.p422b.C16268b.getContent(java.nio.ByteBuffer):void");
    }

    @Override // com.googlecode.mp4parser.p420b.p422b.C16250a, com.googlecode.mp4parser.AbstractC16221a
    public long getContentSize() {
        C16260h m7532b = m7532b();
        return (m7532b != null ? m7532b.m7544b() : this.f57360b.remaining()) + 4;
    }

    public int hashCode() {
        AbstractC20997a m163a = C20987b.m163a(f57483f, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        if (this.f57360b != null) {
            return this.f57360b.hashCode();
        }
        return 0;
    }
}
