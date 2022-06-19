package com.p102b.p103a.p104a;

import com.googlecode.mp4parser.AbstractC16280c;
import com.googlecode.mp4parser.C16297h;
import com.googlecode.mp4parser.p425c.C16282b;
import com.p102b.p103a.C3515e;
import com.p102b.p103a.C3516f;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import org.mp4parser.aspectj.lang.AbstractC20997a;
import org.mp4parser.aspectj.p593a.p595b.C20987b;
/* renamed from: com.b.a.a.ac */
/* loaded from: classes-dex2jar.jar:com/b/a/a/ac.class */
public class C3466ac extends AbstractC16280c {

    /* renamed from: b */
    private static final AbstractC20997a.AbstractC20998a f13130b = null;

    /* renamed from: c */
    private static final AbstractC20997a.AbstractC20998a f13131c = null;

    /* renamed from: d */
    private static final AbstractC20997a.AbstractC20998a f13132d = null;

    /* renamed from: a */
    private List<C3467a> f13133a = new ArrayList();

    /* renamed from: com.b.a.a.ac$a */
    /* loaded from: classes-dex2jar.jar:com/b/a/a/ac$a.class */
    public static final class C3467a {

        /* renamed from: a */
        public long f13134a;

        /* renamed from: b */
        public List<C3468a> f13135b = new ArrayList();

        /* renamed from: com.b.a.a.ac$a$a */
        /* loaded from: classes-dex2jar.jar:com/b/a/a/ac$a$a.class */
        public static final class C3468a {

            /* renamed from: a */
            long f13136a;

            /* renamed from: b */
            int f13137b;

            /* renamed from: c */
            int f13138c;

            /* renamed from: d */
            long f13139d;

            public final String toString() {
                return "SubsampleEntry{subsampleSize=" + this.f13136a + ", subsamplePriority=" + this.f13137b + ", discardable=" + this.f13138c + ", reserved=" + this.f13139d + '}';
            }
        }

        public final String toString() {
            return "SampleEntry{sampleDelta=" + this.f13134a + ", subsampleCount=" + this.f13135b.size() + ", subsampleEntries=" + this.f13135b + '}';
        }
    }

    static {
        m37913b();
    }

    public C3466ac() {
        super("subs");
    }

    /* renamed from: b */
    private static void m37913b() {
        C20987b c20987b = new C20987b("SubSampleInformationBox.java", C3466ac.class);
        f13130b = c20987b.m164a("method-execution", c20987b.m165a("1", "getEntries", "com.coremedia.iso.boxes.SubSampleInformationBox", "", "", "", "java.util.List"), 50);
        f13131c = c20987b.m164a("method-execution", c20987b.m165a("1", "setEntries", "com.coremedia.iso.boxes.SubSampleInformationBox", "java.util.List", "entries", "", "void"), 54);
        f13132d = c20987b.m164a("method-execution", c20987b.m165a("1", "toString", "com.coremedia.iso.boxes.SubSampleInformationBox", "", "", "", "java.lang.String"), 124);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    @Override // com.googlecode.mp4parser.AbstractC16221a
    public void _parseDetails(ByteBuffer byteBuffer) {
        m7523a(byteBuffer);
        long m37851a = C3515e.m37851a(byteBuffer);
        for (int i = 0; i < m37851a; i++) {
            C3467a c3467a = new C3467a();
            c3467a.f13134a = C3515e.m37851a(byteBuffer);
            int m37848c = C3515e.m37848c(byteBuffer);
            for (int i2 = 0; i2 < m37848c; i2++) {
                C3467a.C3468a c3468a = new C3467a.C3468a();
                c3468a.f13136a = m7519h() == 1 ? C3515e.m37851a(byteBuffer) : C3515e.m37848c(byteBuffer);
                c3468a.f13137b = C3515e.m37852a(byteBuffer.get());
                c3468a.f13138c = C3515e.m37852a(byteBuffer.get());
                c3468a.f13139d = C3515e.m37851a(byteBuffer);
                c3467a.f13135b.add(c3468a);
            }
            this.f13133a.add(c3467a);
        }
    }

    /* renamed from: a */
    public final List<C3467a> m37914a() {
        AbstractC20997a m163a = C20987b.m163a(f13130b, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.f13133a;
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public void getContent(ByteBuffer byteBuffer) {
        m7521b(byteBuffer);
        C3516f.m37835b(byteBuffer, this.f13133a.size());
        for (C3467a c3467a : this.f13133a) {
            C3516f.m37835b(byteBuffer, c3467a.f13134a);
            C3516f.m37836b(byteBuffer, c3467a.f13135b.size());
            for (C3467a.C3468a c3468a : c3467a.f13135b) {
                if (m7519h() == 1) {
                    C3516f.m37835b(byteBuffer, c3468a.f13136a);
                } else {
                    C3516f.m37836b(byteBuffer, C16282b.m7517a(c3468a.f13136a));
                }
                C3516f.m37832c(byteBuffer, c3468a.f13137b);
                C3516f.m37832c(byteBuffer, c3468a.f13138c);
                C3516f.m37835b(byteBuffer, c3468a.f13139d);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    @Override // com.googlecode.mp4parser.AbstractC16221a
    public long getContentSize() {
        long j;
        char c;
        char c2 = '\b';
        for (C3467a c3467a : this.f13133a) {
            c2 = c2 + 4 + 2;
            for (int i = 0; i < c3467a.f13135b.size(); i++) {
                if (m7519h() == 1) {
                    c = c2;
                    j = 4;
                } else {
                    c = c2;
                    j = 2;
                }
                c2 = c + j + 2 + 4;
            }
        }
        return c2;
    }

    public String toString() {
        AbstractC20997a m163a = C20987b.m163a(f13132d, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return "SubSampleInformationBox{entryCount=" + this.f13133a.size() + ", entries=" + this.f13133a + '}';
    }
}
