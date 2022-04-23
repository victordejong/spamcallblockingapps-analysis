package com.googlecode.mp4parser.b.b.b;

import com.b.a.e;
import com.googlecode.mp4parser.c;
import com.googlecode.mp4parser.h;
import com.mopub.mobileads.resource.DrawableConstants;
import java.nio.ByteBuffer;
import java.util.LinkedList;
import java.util.List;
import org.mp4parser.aspectj.a.b.b;
import org.mp4parser.aspectj.lang.a;
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/b/b/b/f.class */
public class f extends c {

    /* renamed from: c  reason: collision with root package name */
    public static final a.AbstractC0755a f33150c = null;
    private static final a.AbstractC0755a e = null;
    private static final a.AbstractC0755a f = null;
    private static final a.AbstractC0755a g = null;
    private static final a.AbstractC0755a h = null;
    private static final a.AbstractC0755a i = null;

    /* renamed from: a  reason: collision with root package name */
    public String f33151a;

    /* renamed from: b  reason: collision with root package name */
    List<a> f33152b = new LinkedList();

    /* renamed from: d  reason: collision with root package name */
    private String f33153d;

    /* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/b/b/b/f$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public long f33154a;

        /* renamed from: b  reason: collision with root package name */
        public int f33155b;

        public a(long j, int i) {
            this.f33154a = j;
            this.f33155b = i;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f33155b == aVar.f33155b && this.f33154a == aVar.f33154a;
        }

        public final int hashCode() {
            long j = this.f33154a;
            return (((int) (j ^ (j >>> 32))) * 31) + this.f33155b;
        }

        public final String toString() {
            return "Entry{sampleCount=" + this.f33154a + ", groupDescriptionIndex=" + this.f33155b + '}';
        }
    }

    static {
        c();
    }

    public f() {
        super("sbgp");
    }

    private static void c() {
        b bVar = new b("SampleToGroupBox.java", f.class);
        e = bVar.a("method-execution", bVar.a("1", "getGroupingType", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleToGroupBox", "", "", "", "java.lang.String"), DrawableConstants.CtaButton.WIDTH_DIPS);
        f33150c = bVar.a("method-execution", bVar.a("1", "setGroupingType", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleToGroupBox", "java.lang.String", "groupingType", "", "void"), 154);
        f = bVar.a("method-execution", bVar.a("1", "getGroupingTypeParameter", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleToGroupBox", "", "", "", "java.lang.String"), 158);
        g = bVar.a("method-execution", bVar.a("1", "setGroupingTypeParameter", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleToGroupBox", "java.lang.String", "groupingTypeParameter", "", "void"), 162);
        h = bVar.a("method-execution", bVar.a("1", "getEntries", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleToGroupBox", "", "", "", "java.util.List"), 166);
        i = bVar.a("method-execution", bVar.a("1", "setEntries", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleToGroupBox", "java.util.List", "entries", "", "void"), 170);
    }

    @Override // com.googlecode.mp4parser.a
    public void _parseDetails(ByteBuffer byteBuffer) {
        a(byteBuffer);
        this.f33151a = e.h(byteBuffer);
        if (h() == 1) {
            this.f33153d = e.h(byteBuffer);
        }
        for (long a2 = e.a(byteBuffer); a2 > 0; a2--) {
            this.f33152b.add(new a(com.googlecode.mp4parser.c.b.a(e.a(byteBuffer)), com.googlecode.mp4parser.c.b.a(e.a(byteBuffer))));
        }
    }

    public final String a() {
        org.mp4parser.aspectj.lang.a a2 = b.a(e, this, this);
        h.a();
        h.a(a2);
        return this.f33151a;
    }

    public final List<a> b() {
        org.mp4parser.aspectj.lang.a a2 = b.a(h, this, this);
        h.a();
        h.a(a2);
        return this.f33152b;
    }

    @Override // com.googlecode.mp4parser.a
    public void getContent(ByteBuffer byteBuffer) {
        b(byteBuffer);
        byteBuffer.put(this.f33151a.getBytes());
        if (h() == 1) {
            byteBuffer.put(this.f33153d.getBytes());
        }
        com.b.a.f.b(byteBuffer, this.f33152b.size());
        for (a aVar : this.f33152b) {
            com.b.a.f.b(byteBuffer, aVar.f33154a);
            com.b.a.f.b(byteBuffer, aVar.f33155b);
        }
    }

    @Override // com.googlecode.mp4parser.a
    public long getContentSize() {
        return h() == 1 ? (this.f33152b.size() * 8) + 16 : (this.f33152b.size() * 8) + 12;
    }
}
