package p081h.p119d.p120a.p124s.p126i.p127n;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;
import p081h.p119d.p120a.p149y.C6096h;
@TargetApi(19)
/* renamed from: h.d.a.s.i.n.i */
/* loaded from: classes-dex2jar.jar:h/d/a/s/i/n/i.class */
public class C5866i implements AbstractC5864g {

    /* renamed from: d */
    public static final Bitmap.Config[] f14784d = {Bitmap.Config.ARGB_8888, null};

    /* renamed from: e */
    public static final Bitmap.Config[] f14785e = {Bitmap.Config.RGB_565};

    /* renamed from: f */
    public static final Bitmap.Config[] f14786f = {Bitmap.Config.ARGB_4444};

    /* renamed from: g */
    public static final Bitmap.Config[] f14787g = {Bitmap.Config.ALPHA_8};

    /* renamed from: a */
    public final C5869c f14788a = new C5869c();

    /* renamed from: b */
    public final C5858e<C5868b, Bitmap> f14789b = new C5858e<>();

    /* renamed from: c */
    public final Map<Bitmap.Config, NavigableMap<Integer, Integer>> f14790c = new HashMap();

    /* renamed from: h.d.a.s.i.n.i$a */
    /* loaded from: classes-dex2jar.jar:h/d/a/s/i/n/i$a.class */
    public static /* synthetic */ class C5867a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f14791a = new int[Bitmap.Config.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            try {
                f14791a[Bitmap.Config.ARGB_8888.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f14791a[Bitmap.Config.RGB_565.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f14791a[Bitmap.Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f14791a[Bitmap.Config.ALPHA_8.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* renamed from: h.d.a.s.i.n.i$b */
    /* loaded from: classes-dex2jar.jar:h/d/a/s/i/n/i$b.class */
    public static final class C5868b implements AbstractC5865h {

        /* renamed from: a */
        public final C5869c f14792a;

        /* renamed from: b */
        public int f14793b;

        /* renamed from: c */
        public Bitmap.Config f14794c;

        public C5868b(C5869c cVar) {
            this.f14792a = cVar;
        }

        @Override // p081h.p119d.p120a.p124s.p126i.p127n.AbstractC5865h
        /* renamed from: a */
        public void mo24199a() {
            this.f14792a.m24236a(this);
        }

        /* renamed from: a */
        public void m24198a(int i, Bitmap.Config config) {
            this.f14793b = i;
            this.f14794c = config;
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x0047, code lost:
            if (r0.equals(r0) != false) goto L_0x004a;
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x004a, code lost:
            r7 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:9:0x0038, code lost:
            if (r0 == null) goto L_0x004a;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean equals(java.lang.Object r4) {
            /*
                r3 = this;
                r0 = r4
                boolean r0 = r0 instanceof p081h.p119d.p120a.p124s.p126i.p127n.C5866i.C5868b
                r5 = r0
                r0 = 0
                r6 = r0
                r0 = r6
                r7 = r0
                r0 = r5
                if (r0 == 0) goto L_0x004d
                r0 = r4
                h.d.a.s.i.n.i$b r0 = (p081h.p119d.p120a.p124s.p126i.p127n.C5866i.C5868b) r0
                r8 = r0
                r0 = r6
                r7 = r0
                r0 = r3
                int r0 = r0.f14793b
                r1 = r8
                int r1 = r1.f14793b
                if (r0 != r1) goto L_0x004d
                r0 = r3
                android.graphics.Bitmap$Config r0 = r0.f14794c
                r4 = r0
                r0 = r8
                android.graphics.Bitmap$Config r0 = r0.f14794c
                r8 = r0
                r0 = r4
                if (r0 != 0) goto L_0x003e
                r0 = r6
                r7 = r0
                r0 = r8
                if (r0 != 0) goto L_0x004d
                goto L_0x004a
            L_0x003e:
                r0 = r6
                r7 = r0
                r0 = r4
                r1 = r8
                boolean r0 = r0.equals(r1)
                if (r0 == 0) goto L_0x004d
            L_0x004a:
                r0 = 1
                r7 = r0
            L_0x004d:
                r0 = r7
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p081h.p119d.p120a.p124s.p126i.p127n.C5866i.C5868b.equals(java.lang.Object):boolean");
        }

        public int hashCode() {
            int i = this.f14793b;
            Bitmap.Config config = this.f14794c;
            return (i * 31) + (config != null ? config.hashCode() : 0);
        }

        public String toString() {
            return C5866i.m24203b(this.f14793b, this.f14794c);
        }
    }

    /* renamed from: h.d.a.s.i.n.i$c */
    /* loaded from: classes-dex2jar.jar:h/d/a/s/i/n/i$c.class */
    public static class C5869c extends AbstractC5855b<C5868b> {
        @Override // p081h.p119d.p120a.p124s.p126i.p127n.AbstractC5855b
        /* renamed from: a  reason: avoid collision after fix types in other method */
        public C5868b mo24196a() {
            return new C5868b(this);
        }

        /* renamed from: a */
        public C5868b m24195a(int i, Bitmap.Config config) {
            C5868b b = m24235b();
            b.m24198a(i, config);
            return b;
        }
    }

    /* renamed from: b */
    public static String m24203b(int i, Bitmap.Config config) {
        return "[" + i + "](" + config + ")";
    }

    /* renamed from: b */
    public static Bitmap.Config[] m24202b(Bitmap.Config config) {
        int i = C5867a.f14791a[config.ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? new Bitmap.Config[]{config} : f14787g : f14786f : f14785e : f14784d;
    }

    @Override // p081h.p119d.p120a.p124s.p126i.p127n.AbstractC5864g
    /* renamed from: a */
    public Bitmap mo24210a(int i, int i2, Bitmap.Config config) {
        int a = C6096h.m23862a(i, i2, config);
        Bitmap a2 = this.f14789b.m24232a((C5858e<C5868b, Bitmap>) m24206a(this.f14788a.m24195a(a, config), a, config));
        if (a2 != null) {
            m24205a(Integer.valueOf(C6096h.m23860a(a2)), a2.getConfig());
            a2.reconfigure(i, i2, a2.getConfig() != null ? a2.getConfig() : Bitmap.Config.ARGB_8888);
        }
        return a2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0056, code lost:
        if (r7 != null) goto L_0x0068;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0065, code lost:
        if (r0.equals(r7) == false) goto L_0x0068;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p081h.p119d.p120a.p124s.p126i.p127n.C5866i.C5868b m24206a(p081h.p119d.p120a.p124s.p126i.p127n.C5866i.C5868b r5, int r6, android.graphics.Bitmap.Config r7) {
        /*
            r4 = this;
            r0 = r7
            android.graphics.Bitmap$Config[] r0 = m24202b(r0)
            r8 = r0
            r0 = r8
            int r0 = r0.length
            r9 = r0
            r0 = 0
            r10 = r0
        L_0x000e:
            r0 = r5
            r11 = r0
            r0 = r10
            r1 = r9
            if (r0 >= r1) goto L_0x0089
            r0 = r8
            r1 = r10
            r0 = r0[r1]
            r12 = r0
            r0 = r4
            r1 = r12
            java.util.NavigableMap r0 = r0.m24208a(r1)
            r1 = r6
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            java.lang.Object r0 = r0.ceilingKey(r1)
            java.lang.Integer r0 = (java.lang.Integer) r0
            r13 = r0
            r0 = r13
            if (r0 == 0) goto L_0x0083
            r0 = r13
            int r0 = r0.intValue()
            r1 = r6
            r2 = 8
            int r1 = r1 * r2
            if (r0 > r1) goto L_0x0083
            r0 = r13
            int r0 = r0.intValue()
            r1 = r6
            if (r0 != r1) goto L_0x0068
            r0 = r12
            if (r0 != 0) goto L_0x005c
            r0 = r5
            r11 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0089
            goto L_0x0068
        L_0x005c:
            r0 = r5
            r11 = r0
            r0 = r12
            r1 = r7
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L_0x0089
        L_0x0068:
            r0 = r4
            h.d.a.s.i.n.i$c r0 = r0.f14788a
            r1 = r5
            r0.m24236a(r1)
            r0 = r4
            h.d.a.s.i.n.i$c r0 = r0.f14788a
            r1 = r13
            int r1 = r1.intValue()
            r2 = r12
            h.d.a.s.i.n.i$b r0 = r0.m24195a(r1, r2)
            r11 = r0
            goto L_0x0089
        L_0x0083:
            int r10 = r10 + 1
            goto L_0x000e
        L_0x0089:
            r0 = r11
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p119d.p120a.p124s.p126i.p127n.C5866i.m24206a(h.d.a.s.i.n.i$b, int, android.graphics.Bitmap$Config):h.d.a.s.i.n.i$b");
    }

    /* renamed from: a */
    public final NavigableMap<Integer, Integer> m24208a(Bitmap.Config config) {
        NavigableMap<Integer, Integer> navigableMap = this.f14790c.get(config);
        NavigableMap<Integer, Integer> navigableMap2 = navigableMap;
        if (navigableMap == null) {
            navigableMap2 = new TreeMap<>();
            this.f14790c.put(config, navigableMap2);
        }
        return navigableMap2;
    }

    @Override // p081h.p119d.p120a.p124s.p126i.p127n.AbstractC5864g
    /* renamed from: a */
    public void mo24207a(Bitmap bitmap) {
        C5868b a = this.f14788a.m24195a(C6096h.m23860a(bitmap), bitmap.getConfig());
        this.f14789b.m24231a(a, bitmap);
        NavigableMap<Integer, Integer> a2 = m24208a(bitmap.getConfig());
        Integer num = (Integer) a2.get(Integer.valueOf(a.f14793b));
        int i = a.f14793b;
        int i2 = 1;
        if (num != null) {
            i2 = 1 + num.intValue();
        }
        a2.put(Integer.valueOf(i), Integer.valueOf(i2));
    }

    /* renamed from: a */
    public final void m24205a(Integer num, Bitmap.Config config) {
        NavigableMap<Integer, Integer> a = m24208a(config);
        Integer num2 = (Integer) a.get(num);
        if (num2.intValue() == 1) {
            a.remove(num);
        } else {
            a.put(num, Integer.valueOf(num2.intValue() - 1));
        }
    }

    @Override // p081h.p119d.p120a.p124s.p126i.p127n.AbstractC5864g
    /* renamed from: b */
    public String mo24204b(int i, int i2, Bitmap.Config config) {
        return m24203b(C6096h.m23862a(i, i2, config), config);
    }

    @Override // p081h.p119d.p120a.p124s.p126i.p127n.AbstractC5864g
    /* renamed from: b */
    public String mo24201b(Bitmap bitmap) {
        return m24203b(C6096h.m23860a(bitmap), bitmap.getConfig());
    }

    @Override // p081h.p119d.p120a.p124s.p126i.p127n.AbstractC5864g
    /* renamed from: c */
    public int mo24200c(Bitmap bitmap) {
        return C6096h.m23860a(bitmap);
    }

    @Override // p081h.p119d.p120a.p124s.p126i.p127n.AbstractC5864g
    public Bitmap removeLast() {
        Bitmap a = this.f14789b.m24234a();
        if (a != null) {
            m24205a(Integer.valueOf(C6096h.m23860a(a)), a.getConfig());
        }
        return a;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("SizeConfigStrategy{groupedMap=");
        sb.append(this.f14789b);
        sb.append(", sortedSizes=(");
        for (Map.Entry<Bitmap.Config, NavigableMap<Integer, Integer>> entry : this.f14790c.entrySet()) {
            sb.append(entry.getKey());
            sb.append('[');
            sb.append(entry.getValue());
            sb.append("], ");
        }
        if (!this.f14790c.isEmpty()) {
            sb.replace(sb.length() - 2, sb.length(), "");
        }
        sb.append(")}");
        return sb.toString();
    }
}
