package com.bumptech.glide.load.engine.p209x;

import android.graphics.Bitmap;
import android.os.Build;
import com.bumptech.glide.p223p.C4383k;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;
/* renamed from: com.bumptech.glide.load.engine.x.n */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/x/n.class */
public class C4110n implements AbstractC4108l {

    /* renamed from: a */
    private static final Bitmap.Config[] f12944a;

    /* renamed from: b */
    private static final Bitmap.Config[] f12945b;

    /* renamed from: c */
    private static final Bitmap.Config[] f12946c;

    /* renamed from: d */
    private static final Bitmap.Config[] f12947d;

    /* renamed from: e */
    private static final Bitmap.Config[] f12948e;

    /* renamed from: f */
    private final C4113c f12949f = new C4113c();

    /* renamed from: g */
    private final C4099h<C4112b, Bitmap> f12950g = new C4099h<>();

    /* renamed from: h */
    private final Map<Bitmap.Config, NavigableMap<Integer, Integer>> f12951h = new HashMap();

    /* renamed from: com.bumptech.glide.load.engine.x.n$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/x/n$a.class */
    public static /* synthetic */ class C4111a {

        /* renamed from: a */
        static final /* synthetic */ int[] f12952a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[Bitmap.Config.values().length];
            f12952a = iArr;
            try {
                iArr[Bitmap.Config.ARGB_8888.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f12952a[Bitmap.Config.RGB_565.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f12952a[Bitmap.Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f12952a[Bitmap.Config.ALPHA_8.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.x.n$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/x/n$b.class */
    public static final class C4112b implements AbstractC4109m {

        /* renamed from: a */
        private final C4113c f12953a;

        /* renamed from: b */
        int f12954b;

        /* renamed from: c */
        private Bitmap.Config f12955c;

        public C4112b(C4113c c4113c) {
            this.f12953a = c4113c;
        }

        @Override // com.bumptech.glide.load.engine.p209x.AbstractC4109m
        /* renamed from: a */
        public void mo23231a() {
            this.f12953a.m23296c(this);
        }

        /* renamed from: b */
        public void m23230b(int i, Bitmap.Config config) {
            this.f12954b = i;
            this.f12955c = config;
        }

        public boolean equals(Object obj) {
            boolean z = false;
            if (obj instanceof C4112b) {
                C4112b c4112b = (C4112b) obj;
                z = false;
                if (this.f12954b == c4112b.f12954b) {
                    z = false;
                    if (C4383k.m22715c(this.f12955c, c4112b.f12955c)) {
                        z = true;
                    }
                }
            }
            return z;
        }

        public int hashCode() {
            int i = this.f12954b;
            Bitmap.Config config = this.f12955c;
            return (i * 31) + (config != null ? config.hashCode() : 0);
        }

        public String toString() {
            return C4110n.m23234i(this.f12954b, this.f12955c);
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.x.n$c */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/x/n$c.class */
    public static class C4113c extends AbstractC4095d<C4112b> {
        C4113c() {
        }

        /* renamed from: d */
        public C4112b mo23229a() {
            return new C4112b(this);
        }

        /* renamed from: e */
        public C4112b m23227e(int i, Bitmap.Config config) {
            C4112b m23297b = m23297b();
            m23297b.m23230b(i, config);
            return m23297b;
        }
    }

    static {
        Bitmap.Config[] configArr = {Bitmap.Config.ARGB_8888, null};
        Bitmap.Config[] configArr2 = configArr;
        if (Build.VERSION.SDK_INT >= 26) {
            configArr2 = (Bitmap.Config[]) Arrays.copyOf(configArr, 3);
            configArr2[configArr2.length - 1] = Bitmap.Config.RGBA_F16;
        }
        f12944a = configArr2;
        f12945b = configArr2;
        f12946c = new Bitmap.Config[]{Bitmap.Config.RGB_565};
        f12947d = new Bitmap.Config[]{Bitmap.Config.ARGB_4444};
        f12948e = new Bitmap.Config[]{Bitmap.Config.ALPHA_8};
    }

    /* renamed from: g */
    private void m23236g(Integer num, Bitmap bitmap) {
        NavigableMap<Integer, Integer> m23232k = m23232k(bitmap.getConfig());
        Integer num2 = (Integer) m23232k.get(num);
        if (num2 != null) {
            if (num2.intValue() == 1) {
                m23232k.remove(num);
                return;
            } else {
                m23232k.put(num, Integer.valueOf(num2.intValue() - 1));
                return;
            }
        }
        throw new NullPointerException("Tried to decrement empty size, size: " + num + ", removed: " + mo23237f(bitmap) + ", this: " + this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0060, code lost:
        if (r6 != null) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x006f, code lost:
        if (r0.equals(r6) == false) goto L17;
     */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.bumptech.glide.load.engine.p209x.C4110n.C4112b m23235h(int r5, android.graphics.Bitmap.Config r6) {
        /*
            r4 = this;
            r0 = r4
            com.bumptech.glide.load.engine.x.n$c r0 = r0.f12949f
            r1 = r5
            r2 = r6
            com.bumptech.glide.load.engine.x.n$b r0 = r0.m23227e(r1, r2)
            r7 = r0
            r0 = r6
            android.graphics.Bitmap$Config[] r0 = m23233j(r0)
            r8 = r0
            r0 = r8
            int r0 = r0.length
            r9 = r0
            r0 = 0
            r10 = r0
        L18:
            r0 = r7
            r11 = r0
            r0 = r10
            r1 = r9
            if (r0 >= r1) goto L93
            r0 = r8
            r1 = r10
            r0 = r0[r1]
            r12 = r0
            r0 = r4
            r1 = r12
            java.util.NavigableMap r0 = r0.m23232k(r1)
            r1 = r5
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            java.lang.Object r0 = r0.ceilingKey(r1)
            java.lang.Integer r0 = (java.lang.Integer) r0
            r13 = r0
            r0 = r13
            if (r0 == 0) goto L8d
            r0 = r13
            int r0 = r0.intValue()
            r1 = r5
            r2 = 8
            int r1 = r1 * r2
            if (r0 > r1) goto L8d
            r0 = r13
            int r0 = r0.intValue()
            r1 = r5
            if (r0 != r1) goto L72
            r0 = r12
            if (r0 != 0) goto L66
            r0 = r7
            r11 = r0
            r0 = r6
            if (r0 == 0) goto L93
            goto L72
        L66:
            r0 = r7
            r11 = r0
            r0 = r12
            r1 = r6
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L93
        L72:
            r0 = r4
            com.bumptech.glide.load.engine.x.n$c r0 = r0.f12949f
            r1 = r7
            r0.m23296c(r1)
            r0 = r4
            com.bumptech.glide.load.engine.x.n$c r0 = r0.f12949f
            r1 = r13
            int r1 = r1.intValue()
            r2 = r12
            com.bumptech.glide.load.engine.x.n$b r0 = r0.m23227e(r1, r2)
            r11 = r0
            goto L93
        L8d:
            int r10 = r10 + 1
            goto L18
        L93:
            r0 = r11
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.engine.p209x.C4110n.m23235h(int, android.graphics.Bitmap$Config):com.bumptech.glide.load.engine.x.n$b");
    }

    /* renamed from: i */
    static String m23234i(int i, Bitmap.Config config) {
        return "[" + i + "](" + config + ")";
    }

    /* renamed from: j */
    private static Bitmap.Config[] m23233j(Bitmap.Config config) {
        if (Build.VERSION.SDK_INT < 26 || !Bitmap.Config.RGBA_F16.equals(config)) {
            int i = C4111a.f12952a[config.ordinal()];
            return i != 1 ? i != 2 ? i != 3 ? i != 4 ? new Bitmap.Config[]{config} : f12948e : f12947d : f12946c : f12944a;
        }
        return f12945b;
    }

    /* renamed from: k */
    private NavigableMap<Integer, Integer> m23232k(Bitmap.Config config) {
        NavigableMap<Integer, Integer> navigableMap = this.f12951h.get(config);
        TreeMap treeMap = navigableMap;
        if (navigableMap == null) {
            treeMap = new TreeMap();
            this.f12951h.put(config, treeMap);
        }
        return treeMap;
    }

    @Override // com.bumptech.glide.load.engine.p209x.AbstractC4108l
    /* renamed from: a */
    public Bitmap mo23242a() {
        Bitmap m23288f = this.f12950g.m23288f();
        if (m23288f != null) {
            m23236g(Integer.valueOf(C4383k.m22711g(m23288f)), m23288f);
        }
        return m23288f;
    }

    @Override // com.bumptech.glide.load.engine.p209x.AbstractC4108l
    /* renamed from: b */
    public String mo23241b(int i, int i2, Bitmap.Config config) {
        return m23234i(C4383k.m22712f(i, i2, config), config);
    }

    @Override // com.bumptech.glide.load.engine.p209x.AbstractC4108l
    /* renamed from: c */
    public void mo23240c(Bitmap bitmap) {
        C4112b m23227e = this.f12949f.m23227e(C4383k.m22711g(bitmap), bitmap.getConfig());
        this.f12950g.m23290d(m23227e, bitmap);
        NavigableMap<Integer, Integer> m23232k = m23232k(bitmap.getConfig());
        Integer num = (Integer) m23232k.get(Integer.valueOf(m23227e.f12954b));
        int i = m23227e.f12954b;
        int i2 = 1;
        if (num != null) {
            i2 = 1 + num.intValue();
        }
        m23232k.put(Integer.valueOf(i), Integer.valueOf(i2));
    }

    @Override // com.bumptech.glide.load.engine.p209x.AbstractC4108l
    /* renamed from: d */
    public Bitmap mo23239d(int i, int i2, Bitmap.Config config) {
        C4112b m23235h = m23235h(C4383k.m22712f(i, i2, config), config);
        Bitmap m23293a = this.f12950g.m23293a(m23235h);
        if (m23293a != null) {
            m23236g(Integer.valueOf(m23235h.f12954b), m23293a);
            m23293a.reconfigure(i, i2, config);
        }
        return m23293a;
    }

    @Override // com.bumptech.glide.load.engine.p209x.AbstractC4108l
    /* renamed from: e */
    public int mo23238e(Bitmap bitmap) {
        return C4383k.m22711g(bitmap);
    }

    @Override // com.bumptech.glide.load.engine.p209x.AbstractC4108l
    /* renamed from: f */
    public String mo23237f(Bitmap bitmap) {
        return m23234i(C4383k.m22711g(bitmap), bitmap.getConfig());
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("SizeConfigStrategy{groupedMap=");
        sb.append(this.f12950g);
        sb.append(", sortedSizes=(");
        for (Map.Entry<Bitmap.Config, NavigableMap<Integer, Integer>> entry : this.f12951h.entrySet()) {
            sb.append(entry.getKey());
            sb.append('[');
            sb.append(entry.getValue());
            sb.append("], ");
        }
        if (!this.f12951h.isEmpty()) {
            sb.replace(sb.length() - 2, sb.length(), "");
        }
        sb.append(")}");
        return sb.toString();
    }
}
