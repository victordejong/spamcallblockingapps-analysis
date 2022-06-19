package com.p102b.p103a.p104a;

import com.googlecode.mp4parser.AbstractC16280c;
import com.googlecode.mp4parser.C16297h;
import com.googlecode.mp4parser.p425c.C16282b;
import com.p102b.p103a.C3515e;
import com.p102b.p103a.C3516f;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.mp4parser.aspectj.lang.AbstractC20997a;
import org.mp4parser.aspectj.p593a.p595b.C20987b;
/* renamed from: com.b.a.a.y */
/* loaded from: classes-dex2jar.jar:com/b/a/a/y.class */
public class C3509y extends AbstractC16280c {

    /* renamed from: b */
    public static final AbstractC20997a.AbstractC20998a f13362b = null;

    /* renamed from: c */
    private static final AbstractC20997a.AbstractC20998a f13363c = null;

    /* renamed from: d */
    private static final AbstractC20997a.AbstractC20998a f13364d = null;

    /* renamed from: e */
    private static final AbstractC20997a.AbstractC20998a f13365e = null;

    /* renamed from: a */
    public List<C3510a> f13366a = Collections.emptyList();

    /* renamed from: com.b.a.a.y$a */
    /* loaded from: classes-dex2jar.jar:com/b/a/a/y$a.class */
    public static final class C3510a {

        /* renamed from: a */
        public long f13367a;

        /* renamed from: b */
        public long f13368b;

        /* renamed from: c */
        long f13369c;

        public C3510a(long j, long j2, long j3) {
            this.f13367a = j;
            this.f13368b = j2;
            this.f13369c = j3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            C3510a c3510a = (C3510a) obj;
            return this.f13367a == c3510a.f13367a && this.f13369c == c3510a.f13369c && this.f13368b == c3510a.f13368b;
        }

        public final int hashCode() {
            long j = this.f13367a;
            int i = (int) (j ^ (j >>> 32));
            long j2 = this.f13368b;
            int i2 = (int) (j2 ^ (j2 >>> 32));
            long j3 = this.f13369c;
            return (((i * 31) + i2) * 31) + ((int) (j3 ^ (j3 >>> 32)));
        }

        public final String toString() {
            return "Entry{firstChunk=" + this.f13367a + ", samplesPerChunk=" + this.f13368b + ", sampleDescriptionIndex=" + this.f13369c + '}';
        }
    }

    static {
        m37860b();
    }

    public C3509y() {
        super("stsc");
    }

    /* renamed from: b */
    private static void m37860b() {
        C20987b c20987b = new C20987b("SampleToChunkBox.java", C3509y.class);
        f13363c = c20987b.m164a("method-execution", c20987b.m165a("1", "getEntries", "com.coremedia.iso.boxes.SampleToChunkBox", "", "", "", "java.util.List"), 47);
        f13362b = c20987b.m164a("method-execution", c20987b.m165a("1", "setEntries", "com.coremedia.iso.boxes.SampleToChunkBox", "java.util.List", "entries", "", "void"), 51);
        f13364d = c20987b.m164a("method-execution", c20987b.m165a("1", "toString", "com.coremedia.iso.boxes.SampleToChunkBox", "", "", "", "java.lang.String"), 84);
        f13365e = c20987b.m164a("method-execution", c20987b.m165a("1", "blowup", "com.coremedia.iso.boxes.SampleToChunkBox", "int", "chunkCount", "", "[J"), 95);
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public void _parseDetails(ByteBuffer byteBuffer) {
        m7523a(byteBuffer);
        int m7517a = C16282b.m7517a(C3515e.m37851a(byteBuffer));
        this.f13366a = new ArrayList(m7517a);
        for (int i = 0; i < m7517a; i++) {
            this.f13366a.add(new C3510a(C3515e.m37851a(byteBuffer), C3515e.m37851a(byteBuffer), C3515e.m37851a(byteBuffer)));
        }
    }

    /* renamed from: a */
    public final List<C3510a> m37862a() {
        AbstractC20997a m163a = C20987b.m163a(f13363c, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.f13366a;
    }

    /* renamed from: a */
    public final long[] m37861a(int i) {
        AbstractC20997a m162a = C20987b.m162a(f13365e, this, this, Integer.valueOf(i));
        C16297h.m7484a();
        C16297h.m7483a(m162a);
        long[] jArr = new long[i];
        LinkedList linkedList = new LinkedList(this.f13366a);
        Collections.reverse(linkedList);
        Iterator it2 = linkedList.iterator();
        C3510a c3510a = (C3510a) it2.next();
        while (true) {
            C3510a c3510a2 = c3510a;
            if (i <= 1) {
                jArr[0] = c3510a2.f13368b;
                return jArr;
            }
            jArr[i - 1] = c3510a2.f13368b;
            C3510a c3510a3 = c3510a2;
            if (i == c3510a2.f13367a) {
                c3510a3 = (C3510a) it2.next();
            }
            i--;
            c3510a = c3510a3;
        }
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public void getContent(ByteBuffer byteBuffer) {
        m7521b(byteBuffer);
        C3516f.m37835b(byteBuffer, this.f13366a.size());
        for (C3510a c3510a : this.f13366a) {
            C3516f.m37835b(byteBuffer, c3510a.f13367a);
            C3516f.m37835b(byteBuffer, c3510a.f13368b);
            C3516f.m37835b(byteBuffer, c3510a.f13369c);
        }
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public long getContentSize() {
        return (this.f13366a.size() * 12) + 8;
    }

    public String toString() {
        AbstractC20997a m163a = C20987b.m163a(f13364d, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return "SampleToChunkBox[entryCount=" + this.f13366a.size() + "]";
    }
}
