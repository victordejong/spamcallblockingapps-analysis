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
/* loaded from: classes-dex2jar.jar:com/b/a/a/ac.class */
public class ac extends c {

    /* renamed from: b  reason: collision with root package name */
    private static final a.AbstractC0755a f7063b = null;

    /* renamed from: c  reason: collision with root package name */
    private static final a.AbstractC0755a f7064c = null;

    /* renamed from: d  reason: collision with root package name */
    private static final a.AbstractC0755a f7065d = null;

    /* renamed from: a  reason: collision with root package name */
    private List<a> f7066a = new ArrayList();

    /* loaded from: classes-dex2jar.jar:com/b/a/a/ac$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public long f7067a;

        /* renamed from: b  reason: collision with root package name */
        public List<C0134a> f7068b = new ArrayList();

        /* renamed from: com.b.a.a.ac$a$a  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/b/a/a/ac$a$a.class */
        public static final class C0134a {

            /* renamed from: a  reason: collision with root package name */
            long f7069a;

            /* renamed from: b  reason: collision with root package name */
            int f7070b;

            /* renamed from: c  reason: collision with root package name */
            int f7071c;

            /* renamed from: d  reason: collision with root package name */
            long f7072d;

            public final String toString() {
                return "SubsampleEntry{subsampleSize=" + this.f7069a + ", subsamplePriority=" + this.f7070b + ", discardable=" + this.f7071c + ", reserved=" + this.f7072d + '}';
            }
        }

        public final String toString() {
            return "SampleEntry{sampleDelta=" + this.f7067a + ", subsampleCount=" + this.f7068b.size() + ", subsampleEntries=" + this.f7068b + '}';
        }
    }

    static {
        b();
    }

    public ac() {
        super("subs");
    }

    private static void b() {
        b bVar = new b("SubSampleInformationBox.java", ac.class);
        f7063b = bVar.a("method-execution", bVar.a("1", "getEntries", "com.coremedia.iso.boxes.SubSampleInformationBox", "", "", "", "java.util.List"), 50);
        f7064c = bVar.a("method-execution", bVar.a("1", "setEntries", "com.coremedia.iso.boxes.SubSampleInformationBox", "java.util.List", "entries", "", "void"), 54);
        f7065d = bVar.a("method-execution", bVar.a("1", "toString", "com.coremedia.iso.boxes.SubSampleInformationBox", "", "", "", "java.lang.String"), 124);
    }

    @Override // com.googlecode.mp4parser.a
    public void _parseDetails(ByteBuffer byteBuffer) {
        a(byteBuffer);
        long a2 = e.a(byteBuffer);
        for (int i = 0; i < a2; i++) {
            a aVar = new a();
            aVar.f7067a = e.a(byteBuffer);
            int c2 = e.c(byteBuffer);
            for (int i2 = 0; i2 < c2; i2++) {
                a.C0134a aVar2 = new a.C0134a();
                aVar2.f7069a = h() == 1 ? e.a(byteBuffer) : e.c(byteBuffer);
                aVar2.f7070b = e.a(byteBuffer.get());
                aVar2.f7071c = e.a(byteBuffer.get());
                aVar2.f7072d = e.a(byteBuffer);
                aVar.f7068b.add(aVar2);
            }
            this.f7066a.add(aVar);
        }
    }

    public final List<a> a() {
        org.mp4parser.aspectj.lang.a a2 = b.a(f7063b, this, this);
        h.a();
        h.a(a2);
        return this.f7066a;
    }

    @Override // com.googlecode.mp4parser.a
    public void getContent(ByteBuffer byteBuffer) {
        b(byteBuffer);
        f.b(byteBuffer, this.f7066a.size());
        for (a aVar : this.f7066a) {
            f.b(byteBuffer, aVar.f7067a);
            f.b(byteBuffer, aVar.f7068b.size());
            for (a.C0134a aVar2 : aVar.f7068b) {
                if (h() == 1) {
                    f.b(byteBuffer, aVar2.f7069a);
                } else {
                    f.b(byteBuffer, com.googlecode.mp4parser.c.b.a(aVar2.f7069a));
                }
                f.c(byteBuffer, aVar2.f7070b);
                f.c(byteBuffer, aVar2.f7071c);
                f.b(byteBuffer, aVar2.f7072d);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r7v7 */
    @Override // com.googlecode.mp4parser.a
    public long getContentSize() {
        long j;
        char c2;
        long j2 = 8;
        for (a aVar : this.f7066a) {
            int i = 0;
            j2 = j2 + 4 + 2;
            while (i < aVar.f7068b.size()) {
                if (h() == 1) {
                    c2 = j2;
                    j = 4;
                } else {
                    c2 = j2;
                    j = 2;
                }
                i++;
                j2 = c2 + j + 2 + 4;
            }
        }
        return j2;
    }

    public String toString() {
        org.mp4parser.aspectj.lang.a a2 = b.a(f7065d, this, this);
        h.a();
        h.a(a2);
        return "SubSampleInformationBox{entryCount=" + this.f7066a.size() + ", entries=" + this.f7066a + '}';
    }
}
