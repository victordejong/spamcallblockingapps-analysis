package com.bumptech.glide.load.engine.p119a;

import android.graphics.Bitmap;
import android.os.Build;
import com.bumptech.glide.p116g.C3644k;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;
/* renamed from: com.bumptech.glide.load.engine.a.n */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a/n.class */
public final class C3726n implements AbstractC3724l {

    /* renamed from: a */
    private static final Bitmap.Config[] f13907a;

    /* renamed from: b */
    private static final Bitmap.Config[] f13908b;

    /* renamed from: c */
    private static final Bitmap.Config[] f13909c;

    /* renamed from: d */
    private static final Bitmap.Config[] f13910d;

    /* renamed from: e */
    private static final Bitmap.Config[] f13911e;

    /* renamed from: f */
    private final C3729b f13912f = new C3729b();

    /* renamed from: g */
    private final C3715h<C3728a, Bitmap> f13913g = new C3715h<>();

    /* renamed from: h */
    private final Map<Bitmap.Config, NavigableMap<Integer, Integer>> f13914h = new HashMap();

    /* renamed from: com.bumptech.glide.load.engine.a.n$1 */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a/n$1.class */
    static final /* synthetic */ class C37271 {

        /* renamed from: a */
        static final /* synthetic */ int[] f13915a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[Bitmap.Config.values().length];
            f13915a = iArr;
            try {
                iArr[Bitmap.Config.ARGB_8888.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f13915a[Bitmap.Config.RGB_565.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f13915a[Bitmap.Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f13915a[Bitmap.Config.ALPHA_8.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.a.n$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a/n$a.class */
    public static final class C3728a implements AbstractC3725m {

        /* renamed from: a */
        int f13916a;

        /* renamed from: b */
        private final C3729b f13917b;

        /* renamed from: c */
        private Bitmap.Config f13918c;

        public C3728a(C3729b c3729b) {
            this.f13917b = c3729b;
        }

        C3728a(C3729b c3729b, int i, Bitmap.Config config) {
            this(c3729b);
            m37442a(i, config);
        }

        @Override // com.bumptech.glide.load.engine.p119a.AbstractC3725m
        /* renamed from: a */
        public final void mo37443a() {
            this.f13917b.m37492a(this);
        }

        /* renamed from: a */
        public final void m37442a(int i, Bitmap.Config config) {
            this.f13916a = i;
            this.f13918c = config;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof C3728a) {
                C3728a c3728a = (C3728a) obj;
                return this.f13916a == c3728a.f13916a && C3644k.m37577a(this.f13918c, c3728a.f13918c);
            }
            return false;
        }

        public final int hashCode() {
            int i = this.f13916a;
            Bitmap.Config config = this.f13918c;
            return (i * 31) + (config != null ? config.hashCode() : 0);
        }

        public final String toString() {
            return C3726n.m37450a(this.f13916a, this.f13918c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.load.engine.a.n$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a/n$b.class */
    public static final class C3729b extends AbstractC3711d<C3728a> {
        C3729b() {
        }

        @Override // com.bumptech.glide.load.engine.p119a.AbstractC3711d
        /* renamed from: a */
        protected final /* synthetic */ C3728a mo37441a() {
            return new C3728a(this);
        }

        /* renamed from: a */
        public final C3728a m37440a(int i, Bitmap.Config config) {
            C3728a b = m37491b();
            b.m37442a(i, config);
            return b;
        }
    }

    static {
        Bitmap.Config[] configArr = {Bitmap.Config.ARGB_8888, null};
        Bitmap.Config[] configArr2 = configArr;
        if (Build.VERSION.SDK_INT >= 26) {
            configArr2 = (Bitmap.Config[]) Arrays.copyOf(configArr, 3);
            configArr2[configArr2.length - 1] = Bitmap.Config.RGBA_F16;
        }
        f13907a = configArr2;
        f13908b = configArr2;
        f13909c = new Bitmap.Config[]{Bitmap.Config.RGB_565};
        f13910d = new Bitmap.Config[]{Bitmap.Config.ARGB_4444};
        f13911e = new Bitmap.Config[]{Bitmap.Config.ALPHA_8};
    }

    /* renamed from: a */
    static String m37450a(int i, Bitmap.Config config) {
        return "[" + i + "](" + config + ")";
    }

    /* renamed from: a */
    private NavigableMap<Integer, Integer> m37449a(Bitmap.Config config) {
        NavigableMap<Integer, Integer> navigableMap = this.f13914h.get(config);
        TreeMap treeMap = navigableMap;
        if (navigableMap == null) {
            treeMap = new TreeMap();
            this.f13914h.put(config, treeMap);
        }
        return treeMap;
    }

    /* renamed from: a */
    private void m37447a(Integer num, Bitmap bitmap) {
        NavigableMap<Integer, Integer> m37449a = m37449a(bitmap.getConfig());
        Integer num2 = (Integer) m37449a.get(num);
        if (num2 != null) {
            if (num2.intValue() == 1) {
                m37449a.remove(num);
                return;
            } else {
                m37449a.put(num, Integer.valueOf(num2.intValue() - 1));
                return;
            }
        }
        throw new NullPointerException("Tried to decrement empty size, size: " + num + ", removed: " + mo37445b(bitmap) + ", this: " + this);
    }

    @Override // com.bumptech.glide.load.engine.p119a.AbstractC3724l
    /* renamed from: a */
    public final Bitmap mo37452a() {
        Bitmap m37490a = this.f13913g.m37490a();
        if (m37490a != null) {
            m37447a(Integer.valueOf(C3644k.m37579a(m37490a)), m37490a);
        }
        return m37490a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x00d4, code lost:
        if (r8 != null) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00e4, code lost:
        if (r0.equals(r8) == false) goto L35;
     */
    @Override // com.bumptech.glide.load.engine.p119a.AbstractC3724l
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.Bitmap mo37451a(int r6, int r7, android.graphics.Bitmap.Config r8) {
        /*
            Method dump skipped, instructions count: 309
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.engine.p119a.C3726n.mo37451a(int, int, android.graphics.Bitmap$Config):android.graphics.Bitmap");
    }

    @Override // com.bumptech.glide.load.engine.p119a.AbstractC3724l
    /* renamed from: a */
    public final void mo37448a(Bitmap bitmap) {
        C3728a m37440a = this.f13912f.m37440a(C3644k.m37579a(bitmap), bitmap.getConfig());
        this.f13913g.m37487a(m37440a, bitmap);
        NavigableMap<Integer, Integer> m37449a = m37449a(bitmap.getConfig());
        Integer num = (Integer) m37449a.get(Integer.valueOf(m37440a.f13916a));
        int i = m37440a.f13916a;
        int i2 = 1;
        if (num != null) {
            i2 = 1 + num.intValue();
        }
        m37449a.put(Integer.valueOf(i), Integer.valueOf(i2));
    }

    @Override // com.bumptech.glide.load.engine.p119a.AbstractC3724l
    /* renamed from: b */
    public final String mo37446b(int i, int i2, Bitmap.Config config) {
        return m37450a(C3644k.m37580a(i, i2, config), config);
    }

    @Override // com.bumptech.glide.load.engine.p119a.AbstractC3724l
    /* renamed from: b */
    public final String mo37445b(Bitmap bitmap) {
        return m37450a(C3644k.m37579a(bitmap), bitmap.getConfig());
    }

    @Override // com.bumptech.glide.load.engine.p119a.AbstractC3724l
    /* renamed from: c */
    public final int mo37444c(Bitmap bitmap) {
        return C3644k.m37579a(bitmap);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SizeConfigStrategy{groupedMap=");
        sb.append(this.f13913g);
        sb.append(", sortedSizes=(");
        for (Map.Entry<Bitmap.Config, NavigableMap<Integer, Integer>> entry : this.f13914h.entrySet()) {
            sb.append(entry.getKey());
            sb.append('[');
            sb.append(entry.getValue());
            sb.append("], ");
        }
        if (!this.f13914h.isEmpty()) {
            sb.replace(sb.length() - 2, sb.length(), "");
        }
        sb.append(")}");
        return sb.toString();
    }
}
