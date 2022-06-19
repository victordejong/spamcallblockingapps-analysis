package com.p102b.p103a.p104a;

import com.googlecode.mp4parser.AbstractC16280c;
import com.googlecode.mp4parser.C16297h;
import com.googlecode.mp4parser.p425c.C16282b;
import com.p102b.p103a.C3515e;
import com.p102b.p103a.C3516f;
import java.lang.ref.SoftReference;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import org.mp4parser.aspectj.lang.AbstractC20997a;
import org.mp4parser.aspectj.p593a.p595b.C20987b;
/* renamed from: com.b.a.a.af */
/* loaded from: classes-dex2jar.jar:com/b/a/a/af.class */
public class C3471af extends AbstractC16280c {

    /* renamed from: d */
    public static final AbstractC20997a.AbstractC20998a f13147d = null;

    /* renamed from: e */
    public static final AbstractC20997a.AbstractC20998a f13148e = null;

    /* renamed from: f */
    private static final AbstractC20997a.AbstractC20998a f13149f = null;

    /* renamed from: a */
    public List<C3472a> f13150a = Collections.emptyList();

    /* renamed from: c */
    static final /* synthetic */ boolean f13146c = true;

    /* renamed from: b */
    static Map<List<C3472a>, SoftReference<long[]>> f13145b = new WeakHashMap();

    /* renamed from: com.b.a.a.af$a */
    /* loaded from: classes-dex2jar.jar:com/b/a/a/af$a.class */
    public static final class C3472a {

        /* renamed from: a */
        public long f13151a;

        /* renamed from: b */
        public long f13152b;

        public C3472a(long j, long j2) {
            this.f13151a = j;
            this.f13152b = j2;
        }

        public final String toString() {
            return "Entry{count=" + this.f13151a + ", delta=" + this.f13152b + '}';
        }
    }

    static {
        m37910a();
    }

    public C3471af() {
        super("stts");
    }

    /* renamed from: a */
    private static void m37910a() {
        C20987b c20987b = new C20987b("TimeToSampleBox.java", C3471af.class);
        f13147d = c20987b.m164a("method-execution", c20987b.m165a("1", "getEntries", "com.coremedia.iso.boxes.TimeToSampleBox", "", "", "", "java.util.List"), 79);
        f13148e = c20987b.m164a("method-execution", c20987b.m165a("1", "setEntries", "com.coremedia.iso.boxes.TimeToSampleBox", "java.util.List", "entries", "", "void"), 83);
        f13149f = c20987b.m164a("method-execution", c20987b.m165a("1", "toString", "com.coremedia.iso.boxes.TimeToSampleBox", "", "", "", "java.lang.String"), 87);
    }

    /* JADX WARN: Type inference failed for: r0v46, types: [long] */
    /* renamed from: a */
    public static long[] m37909a(List<C3472a> list) {
        long[] jArr;
        synchronized (C3471af.class) {
            try {
                SoftReference<long[]> softReference = f13145b.get(list);
                if (softReference != null && (jArr = softReference.get()) != null) {
                    return jArr;
                }
                char c = 0;
                for (C3472a c3472a : list) {
                    c += c3472a.f13151a;
                }
                if (!f13146c && c > 2147483647L) {
                    throw new AssertionError();
                }
                long[] jArr2 = new long[c];
                int i = 0;
                for (C3472a c3472a2 : list) {
                    int i2 = 0;
                    while (i2 < c3472a2.f13151a) {
                        jArr2[i] = c3472a2.f13152b;
                        i2++;
                        i++;
                    }
                }
                f13145b.put(list, new SoftReference<>(jArr2));
                return jArr2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public void _parseDetails(ByteBuffer byteBuffer) {
        m7523a(byteBuffer);
        int m7517a = C16282b.m7517a(C3515e.m37851a(byteBuffer));
        this.f13150a = new ArrayList(m7517a);
        for (int i = 0; i < m7517a; i++) {
            this.f13150a.add(new C3472a(C3515e.m37851a(byteBuffer), C3515e.m37851a(byteBuffer)));
        }
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public void getContent(ByteBuffer byteBuffer) {
        m7521b(byteBuffer);
        C3516f.m37835b(byteBuffer, this.f13150a.size());
        for (C3472a c3472a : this.f13150a) {
            C3516f.m37835b(byteBuffer, c3472a.f13151a);
            C3516f.m37835b(byteBuffer, c3472a.f13152b);
        }
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public long getContentSize() {
        return (this.f13150a.size() * 8) + 8;
    }

    public String toString() {
        AbstractC20997a m163a = C20987b.m163a(f13149f, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return "TimeToSampleBox[entryCount=" + this.f13150a.size() + "]";
    }
}
