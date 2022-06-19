package p193e.p1451f.p1452a.p1457n.p1460o.p1461b0;

import android.graphics.Bitmap;
import android.os.Build;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1451f.p1452a.p1480t.C22623j;
/* renamed from: e.f.a.n.o.b0.m */
/* loaded from: classes-dex2jar.jar:e/f/a/n/o/b0/m.class */
public class C22317m implements AbstractC22315k {

    /* renamed from: d */
    public static final Bitmap.Config[] f61986d;

    /* renamed from: e */
    public static final Bitmap.Config[] f61987e;

    /* renamed from: f */
    public static final Bitmap.Config[] f61988f;

    /* renamed from: g */
    public static final Bitmap.Config[] f61989g;

    /* renamed from: h */
    public static final Bitmap.Config[] f61990h;

    /* renamed from: a */
    public final C22320c f61991a = new C22320c();

    /* renamed from: b */
    public final C22306g<C22319b, Bitmap> f61992b = new C22306g<>();

    /* renamed from: c */
    public final Map<Bitmap.Config, NavigableMap<Integer, Integer>> f61993c = new HashMap();

    /* renamed from: e.f.a.n.o.b0.m$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/o/b0/m$a.class */
    public static /* synthetic */ class C22318a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f61994a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[Bitmap.Config.values().length];
            f61994a = iArr;
            try {
                iArr[Bitmap.Config.ARGB_8888.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f61994a[Bitmap.Config.RGB_565.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f61994a[Bitmap.Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f61994a[Bitmap.Config.ALPHA_8.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* renamed from: e.f.a.n.o.b0.m$b */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/o/b0/m$b.class */
    public static final class C22319b implements AbstractC22316l {

        /* renamed from: a */
        public final C22320c f61995a;

        /* renamed from: b */
        public int f61996b;

        /* renamed from: c */
        public Bitmap.Config f61997c;

        public C22319b(C22320c c22320c) {
            this.f61995a = c22320c;
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1460o.p1461b0.AbstractC22316l
        /* renamed from: a */
        public void mo8314a() {
            this.f61995a.m8346c(this);
        }

        public boolean equals(Object obj) {
            boolean z = false;
            if (obj instanceof C22319b) {
                C22319b c22319b = (C22319b) obj;
                z = false;
                if (this.f61996b == c22319b.f61996b) {
                    z = false;
                    if (C22623j.m8022b(this.f61997c, c22319b.f61997c)) {
                        z = true;
                    }
                }
            }
            return z;
        }

        public int hashCode() {
            int i = this.f61996b;
            Bitmap.Config config = this.f61997c;
            return (i * 31) + (config != null ? config.hashCode() : 0);
        }

        public String toString() {
            return C22317m.m8318c(this.f61996b, this.f61997c);
        }
    }

    /* renamed from: e.f.a.n.o.b0.m$c */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/o/b0/m$c.class */
    public static class C22320c extends AbstractC22302c<C22319b> {
        @Override // p193e.p1451f.p1452a.p1457n.p1460o.p1461b0.AbstractC22302c
        /* renamed from: a */
        public C22319b mo8313a() {
            return new C22319b(this);
        }

        /* renamed from: d */
        public C22319b m8312d(int i, Bitmap.Config config) {
            C22319b m8347b = m8347b();
            m8347b.f61996b = i;
            m8347b.f61997c = config;
            return m8347b;
        }
    }

    static {
        Bitmap.Config[] configArr = {Bitmap.Config.ARGB_8888, null};
        Bitmap.Config[] configArr2 = configArr;
        if (Build.VERSION.SDK_INT >= 26) {
            configArr2 = (Bitmap.Config[]) Arrays.copyOf(configArr, 3);
            configArr2[configArr2.length - 1] = Bitmap.Config.RGBA_F16;
        }
        f61986d = configArr2;
        f61987e = configArr2;
        f61988f = new Bitmap.Config[]{Bitmap.Config.RGB_565};
        f61989g = new Bitmap.Config[]{Bitmap.Config.ARGB_4444};
        f61990h = new Bitmap.Config[]{Bitmap.Config.ALPHA_8};
    }

    /* renamed from: c */
    public static String m8318c(int i, Bitmap.Config config) {
        return "[" + i + "](" + config + ")";
    }

    /* renamed from: a */
    public final void m8320a(Integer num, Bitmap bitmap) {
        NavigableMap<Integer, Integer> m8317d = m8317d(bitmap.getConfig());
        Integer num2 = (Integer) m8317d.get(num);
        if (num2 != null) {
            if (num2.intValue() == 1) {
                m8317d.remove(num);
                return;
            } else {
                m8317d.put(num, Integer.valueOf(num2.intValue() - 1));
                return;
            }
        }
        throw new NullPointerException("Tried to decrement empty size, size: " + num + ", removed: " + m8316e(bitmap) + ", this: " + this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x00e1, code lost:
        if (r8 != null) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00f1, code lost:
        if (r0.equals(r8) == false) goto L35;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.graphics.Bitmap m8319b(int r6, int r7, android.graphics.Bitmap.Config r8) {
        /*
            Method dump skipped, instructions count: 322
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1451f.p1452a.p1457n.p1460o.p1461b0.C22317m.m8319b(int, int, android.graphics.Bitmap$Config):android.graphics.Bitmap");
    }

    /* renamed from: d */
    public final NavigableMap<Integer, Integer> m8317d(Bitmap.Config config) {
        NavigableMap<Integer, Integer> navigableMap = this.f61993c.get(config);
        TreeMap treeMap = navigableMap;
        if (navigableMap == null) {
            treeMap = new TreeMap();
            this.f61993c.put(config, treeMap);
        }
        return treeMap;
    }

    /* renamed from: e */
    public String m8316e(Bitmap bitmap) {
        return m8318c(C22623j.m8020d(bitmap), bitmap.getConfig());
    }

    /* renamed from: f */
    public void m8315f(Bitmap bitmap) {
        C22319b m8312d = this.f61991a.m8312d(C22623j.m8020d(bitmap), bitmap.getConfig());
        this.f61992b.m8344b(m8312d, bitmap);
        NavigableMap<Integer, Integer> m8317d = m8317d(bitmap.getConfig());
        Integer num = (Integer) m8317d.get(Integer.valueOf(m8312d.f61996b));
        int i = m8312d.f61996b;
        int i2 = 1;
        if (num != null) {
            i2 = 1 + num.intValue();
        }
        m8317d.put(Integer.valueOf(i), Integer.valueOf(i2));
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("SizeConfigStrategy{groupedMap=");
        m8728C.append(this.f61992b);
        m8728C.append(", sortedSizes=(");
        for (Map.Entry<Bitmap.Config, NavigableMap<Integer, Integer>> entry : this.f61993c.entrySet()) {
            m8728C.append(entry.getKey());
            m8728C.append('[');
            m8728C.append(entry.getValue());
            m8728C.append("], ");
        }
        if (!this.f61993c.isEmpty()) {
            m8728C.replace(m8728C.length() - 2, m8728C.length(), "");
        }
        m8728C.append(")}");
        return m8728C.toString();
    }
}
