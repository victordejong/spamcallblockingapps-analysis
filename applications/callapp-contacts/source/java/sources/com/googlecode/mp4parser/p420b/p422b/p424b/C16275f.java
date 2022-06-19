package com.googlecode.mp4parser.p420b.p422b.p424b;

import com.googlecode.mp4parser.AbstractC16280c;
import com.googlecode.mp4parser.C16297h;
import com.googlecode.mp4parser.p425c.C16282b;
import com.mopub.mobileads.resource.DrawableConstants;
import com.p102b.p103a.C3515e;
import com.p102b.p103a.C3516f;
import java.nio.ByteBuffer;
import java.util.LinkedList;
import java.util.List;
import org.mp4parser.aspectj.lang.AbstractC20997a;
import org.mp4parser.aspectj.p593a.p595b.C20987b;
/* renamed from: com.googlecode.mp4parser.b.b.b.f */
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/b/b/b/f.class */
public class C16275f extends AbstractC16280c {

    /* renamed from: c */
    public static final AbstractC20997a.AbstractC20998a f57508c = null;

    /* renamed from: e */
    private static final AbstractC20997a.AbstractC20998a f57509e = null;

    /* renamed from: f */
    private static final AbstractC20997a.AbstractC20998a f57510f = null;

    /* renamed from: g */
    private static final AbstractC20997a.AbstractC20998a f57511g = null;

    /* renamed from: h */
    private static final AbstractC20997a.AbstractC20998a f57512h = null;

    /* renamed from: i */
    private static final AbstractC20997a.AbstractC20998a f57513i = null;

    /* renamed from: a */
    public String f57514a;

    /* renamed from: b */
    List<C16276a> f57515b = new LinkedList();

    /* renamed from: d */
    private String f57516d;

    /* renamed from: com.googlecode.mp4parser.b.b.b.f$a */
    /* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/b/b/b/f$a.class */
    public static final class C16276a {

        /* renamed from: a */
        public long f57517a;

        /* renamed from: b */
        public int f57518b;

        public C16276a(long j, int i) {
            this.f57517a = j;
            this.f57518b = i;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            C16276a c16276a = (C16276a) obj;
            return this.f57518b == c16276a.f57518b && this.f57517a == c16276a.f57517a;
        }

        public final int hashCode() {
            long j = this.f57517a;
            return (((int) (j ^ (j >>> 32))) * 31) + this.f57518b;
        }

        public final String toString() {
            return "Entry{sampleCount=" + this.f57517a + ", groupDescriptionIndex=" + this.f57518b + '}';
        }
    }

    static {
        m7525c();
    }

    public C16275f() {
        super("sbgp");
    }

    /* renamed from: c */
    private static void m7525c() {
        C20987b c20987b = new C20987b("SampleToGroupBox.java", C16275f.class);
        f57509e = c20987b.m164a("method-execution", c20987b.m165a("1", "getGroupingType", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleToGroupBox", "", "", "", "java.lang.String"), DrawableConstants.CtaButton.WIDTH_DIPS);
        f57508c = c20987b.m164a("method-execution", c20987b.m165a("1", "setGroupingType", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleToGroupBox", "java.lang.String", "groupingType", "", "void"), 154);
        f57510f = c20987b.m164a("method-execution", c20987b.m165a("1", "getGroupingTypeParameter", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleToGroupBox", "", "", "", "java.lang.String"), 158);
        f57511g = c20987b.m164a("method-execution", c20987b.m165a("1", "setGroupingTypeParameter", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleToGroupBox", "java.lang.String", "groupingTypeParameter", "", "void"), 162);
        f57512h = c20987b.m164a("method-execution", c20987b.m165a("1", "getEntries", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleToGroupBox", "", "", "", "java.util.List"), 166);
        f57513i = c20987b.m164a("method-execution", c20987b.m165a("1", "setEntries", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleToGroupBox", "java.util.List", "entries", "", "void"), 170);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v7 */
    @Override // com.googlecode.mp4parser.AbstractC16221a
    public void _parseDetails(ByteBuffer byteBuffer) {
        m7523a(byteBuffer);
        this.f57514a = C3515e.m37843h(byteBuffer);
        if (m7519h() == 1) {
            this.f57516d = C3515e.m37843h(byteBuffer);
        }
        ?? r0 = C3515e.m37851a(byteBuffer);
        while (true) {
            char c = r0;
            if (c <= 0) {
                return;
            }
            this.f57515b.add(new C16276a(C16282b.m7517a(C3515e.m37851a(byteBuffer)), C16282b.m7517a(C3515e.m37851a(byteBuffer))));
            r0 = c - 1;
        }
    }

    /* renamed from: a */
    public final String m7527a() {
        AbstractC20997a m163a = C20987b.m163a(f57509e, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.f57514a;
    }

    /* renamed from: b */
    public final List<C16276a> m7526b() {
        AbstractC20997a m163a = C20987b.m163a(f57512h, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.f57515b;
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public void getContent(ByteBuffer byteBuffer) {
        m7521b(byteBuffer);
        byteBuffer.put(this.f57514a.getBytes());
        if (m7519h() == 1) {
            byteBuffer.put(this.f57516d.getBytes());
        }
        C3516f.m37835b(byteBuffer, this.f57515b.size());
        for (C16276a c16276a : this.f57515b) {
            C3516f.m37835b(byteBuffer, c16276a.f57517a);
            C3516f.m37835b(byteBuffer, c16276a.f57518b);
        }
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public long getContentSize() {
        return m7519h() == 1 ? (this.f57515b.size() * 8) + 16 : (this.f57515b.size() * 8) + 12;
    }
}
