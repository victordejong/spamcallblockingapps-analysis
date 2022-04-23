package com.b.a.a;

import com.b.a.e;
import com.b.a.f;
import com.googlecode.mp4parser.c;
import com.googlecode.mp4parser.h;
import java.lang.ref.SoftReference;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import org.mp4parser.aspectj.a.b.b;
import org.mp4parser.aspectj.lang.a;
/* loaded from: classes-dex2jar.jar:com/b/a/a/af.class */
public class af extends c {

    /* renamed from: d  reason: collision with root package name */
    public static final a.AbstractC0755a f7080d = null;
    public static final a.AbstractC0755a e = null;
    private static final a.AbstractC0755a f = null;

    /* renamed from: a  reason: collision with root package name */
    public List<a> f7081a = Collections.emptyList();

    /* renamed from: c  reason: collision with root package name */
    static final /* synthetic */ boolean f7079c = true;

    /* renamed from: b  reason: collision with root package name */
    static Map<List<a>, SoftReference<long[]>> f7078b = new WeakHashMap();

    /* loaded from: classes-dex2jar.jar:com/b/a/a/af$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public long f7082a;

        /* renamed from: b  reason: collision with root package name */
        public long f7083b;

        public a(long j, long j2) {
            this.f7082a = j;
            this.f7083b = j2;
        }

        public final String toString() {
            return "Entry{count=" + this.f7082a + ", delta=" + this.f7083b + '}';
        }
    }

    static {
        a();
    }

    public af() {
        super("stts");
    }

    private static void a() {
        b bVar = new b("TimeToSampleBox.java", af.class);
        f7080d = bVar.a("method-execution", bVar.a("1", "getEntries", "com.coremedia.iso.boxes.TimeToSampleBox", "", "", "", "java.util.List"), 79);
        e = bVar.a("method-execution", bVar.a("1", "setEntries", "com.coremedia.iso.boxes.TimeToSampleBox", "java.util.List", "entries", "", "void"), 83);
        f = bVar.a("method-execution", bVar.a("1", "toString", "com.coremedia.iso.boxes.TimeToSampleBox", "", "", "", "java.lang.String"), 87);
    }

    public static long[] a(List<a> list) {
        long[] jArr;
        synchronized (af.class) {
            try {
                SoftReference<long[]> softReference = f7078b.get(list);
                if (!(softReference == null || (jArr = softReference.get()) == null)) {
                    return jArr;
                }
                long j = 0;
                for (a aVar : list) {
                    j += aVar.f7082a;
                }
                if (f7079c || j <= 2147483647L) {
                    long[] jArr2 = new long[(int) j];
                    int i = 0;
                    for (a aVar2 : list) {
                        int i2 = 0;
                        while (i2 < aVar2.f7082a) {
                            jArr2[i] = aVar2.f7083b;
                            i2++;
                            i++;
                        }
                    }
                    f7078b.put(list, new SoftReference<>(jArr2));
                    return jArr2;
                }
                throw new AssertionError();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.googlecode.mp4parser.a
    public void _parseDetails(ByteBuffer byteBuffer) {
        a(byteBuffer);
        int a2 = com.googlecode.mp4parser.c.b.a(e.a(byteBuffer));
        this.f7081a = new ArrayList(a2);
        for (int i = 0; i < a2; i++) {
            this.f7081a.add(new a(e.a(byteBuffer), e.a(byteBuffer)));
        }
    }

    @Override // com.googlecode.mp4parser.a
    public void getContent(ByteBuffer byteBuffer) {
        b(byteBuffer);
        f.b(byteBuffer, this.f7081a.size());
        for (a aVar : this.f7081a) {
            f.b(byteBuffer, aVar.f7082a);
            f.b(byteBuffer, aVar.f7083b);
        }
    }

    @Override // com.googlecode.mp4parser.a
    public long getContentSize() {
        return (this.f7081a.size() * 8) + 8;
    }

    public String toString() {
        org.mp4parser.aspectj.lang.a a2 = b.a(f, this, this);
        h.a();
        h.a(a2);
        return "TimeToSampleBox[entryCount=" + this.f7081a.size() + "]";
    }
}
