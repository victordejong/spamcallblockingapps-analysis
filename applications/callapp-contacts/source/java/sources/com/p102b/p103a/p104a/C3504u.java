package com.p102b.p103a.p104a;

import com.googlecode.mp4parser.AbstractC16280c;
import com.googlecode.mp4parser.C16297h;
import com.p102b.p103a.C3515e;
import com.p102b.p103a.C3516f;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import org.mp4parser.aspectj.lang.AbstractC20997a;
import org.mp4parser.aspectj.p593a.p595b.C20987b;
/* renamed from: com.b.a.a.u */
/* loaded from: classes-dex2jar.jar:com/b/a/a/u.class */
public class C3504u extends AbstractC16280c {

    /* renamed from: b */
    public static final AbstractC20997a.AbstractC20998a f13344b = null;

    /* renamed from: c */
    public static final AbstractC20997a.AbstractC20998a f13345c = null;

    /* renamed from: d */
    private static final AbstractC20997a.AbstractC20998a f13346d = null;

    /* renamed from: a */
    public List<C3505a> f13347a = new ArrayList();

    /* renamed from: com.b.a.a.u$a */
    /* loaded from: classes-dex2jar.jar:com/b/a/a/u$a.class */
    public static final class C3505a {

        /* renamed from: a */
        int f13348a;

        public C3505a(int i) {
            this.f13348a = i;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.f13348a == ((C3505a) obj).f13348a;
        }

        public final int hashCode() {
            return this.f13348a;
        }

        public final String toString() {
            return "Entry{isLeading=" + ((this.f13348a >> 6) & 3) + ", sampleDependsOn=" + ((this.f13348a >> 4) & 3) + ", sampleIsDependentOn=" + ((this.f13348a >> 2) & 3) + ", sampleHasRedundancy=" + (this.f13348a & 3) + '}';
        }
    }

    static {
        m37874a();
    }

    public C3504u() {
        super("sdtp");
    }

    /* renamed from: a */
    private static void m37874a() {
        C20987b c20987b = new C20987b("SampleDependencyTypeBox.java", C3504u.class);
        f13344b = c20987b.m164a("method-execution", c20987b.m165a("1", "getEntries", "com.coremedia.iso.boxes.SampleDependencyTypeBox", "", "", "", "java.util.List"), 139);
        f13345c = c20987b.m164a("method-execution", c20987b.m165a("1", "setEntries", "com.coremedia.iso.boxes.SampleDependencyTypeBox", "java.util.List", "entries", "", "void"), 143);
        f13346d = c20987b.m164a("method-execution", c20987b.m165a("1", "toString", "com.coremedia.iso.boxes.SampleDependencyTypeBox", "", "", "", "java.lang.String"), 148);
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public void _parseDetails(ByteBuffer byteBuffer) {
        m7523a(byteBuffer);
        while (byteBuffer.remaining() > 0) {
            this.f13347a.add(new C3505a(C3515e.m37852a(byteBuffer.get())));
        }
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public void getContent(ByteBuffer byteBuffer) {
        m7521b(byteBuffer);
        for (C3505a c3505a : this.f13347a) {
            C3516f.m37832c(byteBuffer, c3505a.f13348a);
        }
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public long getContentSize() {
        return this.f13347a.size() + 4;
    }

    public String toString() {
        AbstractC20997a m163a = C20987b.m163a(f13346d, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return "SampleDependencyTypeBox{entries=" + this.f13347a + '}';
    }
}
