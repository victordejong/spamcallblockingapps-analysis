package com.b.a.a;

import com.b.a.e;
import com.b.a.f;
import com.googlecode.mp4parser.c;
import com.googlecode.mp4parser.h;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.mp4parser.aspectj.a.b.b;
import org.mp4parser.aspectj.lang.a;
/* loaded from: classes-dex2jar.jar:com/b/a/a/y.class */
public class y extends c {

    /* renamed from: b  reason: collision with root package name */
    public static final a.AbstractC0755a f7157b = null;

    /* renamed from: c  reason: collision with root package name */
    private static final a.AbstractC0755a f7158c = null;

    /* renamed from: d  reason: collision with root package name */
    private static final a.AbstractC0755a f7159d = null;
    private static final a.AbstractC0755a e = null;

    /* renamed from: a  reason: collision with root package name */
    public List<a> f7160a = Collections.emptyList();

    /* loaded from: classes-dex2jar.jar:com/b/a/a/y$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public long f7161a;

        /* renamed from: b  reason: collision with root package name */
        public long f7162b;

        /* renamed from: c  reason: collision with root package name */
        long f7163c;

        public a(long j, long j2, long j3) {
            this.f7161a = j;
            this.f7162b = j2;
            this.f7163c = j3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f7161a == aVar.f7161a && this.f7163c == aVar.f7163c && this.f7162b == aVar.f7162b;
        }

        public final int hashCode() {
            long j = this.f7161a;
            int i = (int) (j ^ (j >>> 32));
            long j2 = this.f7162b;
            int i2 = (int) (j2 ^ (j2 >>> 32));
            long j3 = this.f7163c;
            return (((i * 31) + i2) * 31) + ((int) (j3 ^ (j3 >>> 32)));
        }

        public final String toString() {
            return "Entry{firstChunk=" + this.f7161a + ", samplesPerChunk=" + this.f7162b + ", sampleDescriptionIndex=" + this.f7163c + '}';
        }
    }

    static {
        b();
    }

    public y() {
        super("stsc");
    }

    private static void b() {
        b bVar = new b("SampleToChunkBox.java", y.class);
        f7158c = bVar.a("method-execution", bVar.a("1", "getEntries", "com.coremedia.iso.boxes.SampleToChunkBox", "", "", "", "java.util.List"), 47);
        f7157b = bVar.a("method-execution", bVar.a("1", "setEntries", "com.coremedia.iso.boxes.SampleToChunkBox", "java.util.List", "entries", "", "void"), 51);
        f7159d = bVar.a("method-execution", bVar.a("1", "toString", "com.coremedia.iso.boxes.SampleToChunkBox", "", "", "", "java.lang.String"), 84);
        e = bVar.a("method-execution", bVar.a("1", "blowup", "com.coremedia.iso.boxes.SampleToChunkBox", "int", "chunkCount", "", "[J"), 95);
    }

    @Override // com.googlecode.mp4parser.a
    public void _parseDetails(ByteBuffer byteBuffer) {
        a(byteBuffer);
        int a2 = com.googlecode.mp4parser.c.b.a(e.a(byteBuffer));
        this.f7160a = new ArrayList(a2);
        for (int i = 0; i < a2; i++) {
            this.f7160a.add(new a(e.a(byteBuffer), e.a(byteBuffer), e.a(byteBuffer)));
        }
    }

    public final List<a> a() {
        org.mp4parser.aspectj.lang.a a2 = b.a(f7158c, this, this);
        h.a();
        h.a(a2);
        return this.f7160a;
    }

    public final long[] a(int i) {
        org.mp4parser.aspectj.lang.a a2 = b.a(e, this, this, Integer.valueOf(i));
        h.a();
        h.a(a2);
        long[] jArr = new long[i];
        LinkedList linkedList = new LinkedList(this.f7160a);
        Collections.reverse(linkedList);
        Iterator it2 = linkedList.iterator();
        a aVar = (a) it2.next();
        while (i > 1) {
            jArr[i - 1] = aVar.f7162b;
            aVar = aVar;
            if (i == aVar.f7161a) {
                aVar = (a) it2.next();
            }
            i--;
        }
        jArr[0] = aVar.f7162b;
        return jArr;
    }

    @Override // com.googlecode.mp4parser.a
    public void getContent(ByteBuffer byteBuffer) {
        b(byteBuffer);
        f.b(byteBuffer, this.f7160a.size());
        for (a aVar : this.f7160a) {
            f.b(byteBuffer, aVar.f7161a);
            f.b(byteBuffer, aVar.f7162b);
            f.b(byteBuffer, aVar.f7163c);
        }
    }

    @Override // com.googlecode.mp4parser.a
    public long getContentSize() {
        return (this.f7160a.size() * 12) + 8;
    }

    public String toString() {
        org.mp4parser.aspectj.lang.a a2 = b.a(f7159d, this, this);
        h.a();
        h.a(a2);
        return "SampleToChunkBox[entryCount=" + this.f7160a.size() + "]";
    }
}
