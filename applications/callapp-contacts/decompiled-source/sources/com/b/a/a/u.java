package com.b.a.a;

import com.b.a.e;
import com.b.a.f;
import com.googlecode.mp4parser.c;
import com.googlecode.mp4parser.h;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import org.mp4parser.aspectj.a.b.b;
import org.mp4parser.aspectj.lang.a;
/* loaded from: classes-dex2jar.jar:com/b/a/a/u.class */
public class u extends c {

    /* renamed from: b  reason: collision with root package name */
    public static final a.AbstractC0755a f7145b = null;

    /* renamed from: c  reason: collision with root package name */
    public static final a.AbstractC0755a f7146c = null;

    /* renamed from: d  reason: collision with root package name */
    private static final a.AbstractC0755a f7147d = null;

    /* renamed from: a  reason: collision with root package name */
    public List<a> f7148a = new ArrayList();

    /* loaded from: classes-dex2jar.jar:com/b/a/a/u$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        int f7149a;

        public a(int i) {
            this.f7149a = i;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.f7149a == ((a) obj).f7149a;
        }

        public final int hashCode() {
            return this.f7149a;
        }

        public final String toString() {
            return "Entry{isLeading=" + ((this.f7149a >> 6) & 3) + ", sampleDependsOn=" + ((this.f7149a >> 4) & 3) + ", sampleIsDependentOn=" + ((this.f7149a >> 2) & 3) + ", sampleHasRedundancy=" + (this.f7149a & 3) + '}';
        }
    }

    static {
        a();
    }

    public u() {
        super("sdtp");
    }

    private static void a() {
        b bVar = new b("SampleDependencyTypeBox.java", u.class);
        f7145b = bVar.a("method-execution", bVar.a("1", "getEntries", "com.coremedia.iso.boxes.SampleDependencyTypeBox", "", "", "", "java.util.List"), 139);
        f7146c = bVar.a("method-execution", bVar.a("1", "setEntries", "com.coremedia.iso.boxes.SampleDependencyTypeBox", "java.util.List", "entries", "", "void"), 143);
        f7147d = bVar.a("method-execution", bVar.a("1", "toString", "com.coremedia.iso.boxes.SampleDependencyTypeBox", "", "", "", "java.lang.String"), 148);
    }

    @Override // com.googlecode.mp4parser.a
    public void _parseDetails(ByteBuffer byteBuffer) {
        a(byteBuffer);
        while (byteBuffer.remaining() > 0) {
            this.f7148a.add(new a(e.a(byteBuffer.get())));
        }
    }

    @Override // com.googlecode.mp4parser.a
    public void getContent(ByteBuffer byteBuffer) {
        b(byteBuffer);
        for (a aVar : this.f7148a) {
            f.c(byteBuffer, aVar.f7149a);
        }
    }

    @Override // com.googlecode.mp4parser.a
    public long getContentSize() {
        return this.f7148a.size() + 4;
    }

    public String toString() {
        org.mp4parser.aspectj.lang.a a2 = b.a(f7147d, this, this);
        h.a();
        h.a(a2);
        return "SampleDependencyTypeBox{entries=" + this.f7148a + '}';
    }
}
