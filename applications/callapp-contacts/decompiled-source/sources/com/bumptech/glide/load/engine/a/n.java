package com.bumptech.glide.load.engine.a;

import android.graphics.Bitmap;
import android.os.Build;
import com.bumptech.glide.g.k;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a/n.class */
public final class n implements l {

    /* renamed from: a  reason: collision with root package name */
    private static final Bitmap.Config[] f7466a;

    /* renamed from: b  reason: collision with root package name */
    private static final Bitmap.Config[] f7467b;

    /* renamed from: c  reason: collision with root package name */
    private static final Bitmap.Config[] f7468c;

    /* renamed from: d  reason: collision with root package name */
    private static final Bitmap.Config[] f7469d;
    private static final Bitmap.Config[] e;
    private final b f = new b();
    private final h<a, Bitmap> g = new h<>();
    private final Map<Bitmap.Config, NavigableMap<Integer, Integer>> h = new HashMap();

    /* renamed from: com.bumptech.glide.load.engine.a.n$1  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a/n$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f7470a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[Bitmap.Config.values().length];
            f7470a = iArr;
            try {
                iArr[Bitmap.Config.ARGB_8888.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f7470a[Bitmap.Config.RGB_565.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f7470a[Bitmap.Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f7470a[Bitmap.Config.ALPHA_8.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a/n$a.class */
    public static final class a implements m {

        /* renamed from: a  reason: collision with root package name */
        int f7471a;

        /* renamed from: b  reason: collision with root package name */
        private final b f7472b;

        /* renamed from: c  reason: collision with root package name */
        private Bitmap.Config f7473c;

        public a(b bVar) {
            this.f7472b = bVar;
        }

        a(b bVar, int i, Bitmap.Config config) {
            this(bVar);
            a(i, config);
        }

        @Override // com.bumptech.glide.load.engine.a.m
        public final void a() {
            this.f7472b.a(this);
        }

        public final void a(int i, Bitmap.Config config) {
            this.f7471a = i;
            this.f7473c = config;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.f7471a == aVar.f7471a && k.a(this.f7473c, aVar.f7473c);
        }

        public final int hashCode() {
            int i = this.f7471a;
            Bitmap.Config config = this.f7473c;
            return (i * 31) + (config != null ? config.hashCode() : 0);
        }

        public final String toString() {
            return n.a(this.f7471a, this.f7473c);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a/n$b.class */
    static final class b extends d<a> {
        b() {
        }

        @Override // com.bumptech.glide.load.engine.a.d
        protected final /* synthetic */ a a() {
            return new a(this);
        }

        public final a a(int i, Bitmap.Config config) {
            a b2 = b();
            b2.a(i, config);
            return b2;
        }
    }

    static {
        Bitmap.Config[] configArr = {Bitmap.Config.ARGB_8888, null};
        Bitmap.Config[] configArr2 = configArr;
        if (Build.VERSION.SDK_INT >= 26) {
            configArr2 = (Bitmap.Config[]) Arrays.copyOf(configArr, 3);
            configArr2[configArr2.length - 1] = Bitmap.Config.RGBA_F16;
        }
        f7466a = configArr2;
        f7467b = configArr2;
        f7468c = new Bitmap.Config[]{Bitmap.Config.RGB_565};
        f7469d = new Bitmap.Config[]{Bitmap.Config.ARGB_4444};
        e = new Bitmap.Config[]{Bitmap.Config.ALPHA_8};
    }

    static String a(int i, Bitmap.Config config) {
        return "[" + i + "](" + config + ")";
    }

    private NavigableMap<Integer, Integer> a(Bitmap.Config config) {
        NavigableMap<Integer, Integer> navigableMap = this.h.get(config);
        NavigableMap<Integer, Integer> navigableMap2 = navigableMap;
        if (navigableMap == null) {
            navigableMap2 = new TreeMap<>();
            this.h.put(config, navigableMap2);
        }
        return navigableMap2;
    }

    private void a(Integer num, Bitmap bitmap) {
        NavigableMap<Integer, Integer> a2 = a(bitmap.getConfig());
        Integer num2 = (Integer) a2.get(num);
        if (num2 == null) {
            throw new NullPointerException("Tried to decrement empty size, size: " + num + ", removed: " + b(bitmap) + ", this: " + this);
        } else if (num2.intValue() == 1) {
            a2.remove(num);
        } else {
            a2.put(num, Integer.valueOf(num2.intValue() - 1));
        }
    }

    @Override // com.bumptech.glide.load.engine.a.l
    public final Bitmap a() {
        Bitmap a2 = this.g.a();
        if (a2 != null) {
            a(Integer.valueOf(k.a(a2)), a2);
        }
        return a2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x00d4, code lost:
        if (r8 != null) goto L_0x00e7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00e4, code lost:
        if (r0.equals(r8) == false) goto L_0x00e7;
     */
    @Override // com.bumptech.glide.load.engine.a.l
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.Bitmap a(int r6, int r7, android.graphics.Bitmap.Config r8) {
        /*
            Method dump skipped, instructions count: 309
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.engine.a.n.a(int, int, android.graphics.Bitmap$Config):android.graphics.Bitmap");
    }

    @Override // com.bumptech.glide.load.engine.a.l
    public final void a(Bitmap bitmap) {
        a a2 = this.f.a(k.a(bitmap), bitmap.getConfig());
        this.g.a(a2, bitmap);
        NavigableMap<Integer, Integer> a3 = a(bitmap.getConfig());
        Integer num = (Integer) a3.get(Integer.valueOf(a2.f7471a));
        int i = a2.f7471a;
        int i2 = 1;
        if (num != null) {
            i2 = 1 + num.intValue();
        }
        a3.put(Integer.valueOf(i), Integer.valueOf(i2));
    }

    @Override // com.bumptech.glide.load.engine.a.l
    public final String b(int i, int i2, Bitmap.Config config) {
        return a(k.a(i, i2, config), config);
    }

    @Override // com.bumptech.glide.load.engine.a.l
    public final String b(Bitmap bitmap) {
        return a(k.a(bitmap), bitmap.getConfig());
    }

    @Override // com.bumptech.glide.load.engine.a.l
    public final int c(Bitmap bitmap) {
        return k.a(bitmap);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SizeConfigStrategy{groupedMap=");
        sb.append(this.g);
        sb.append(", sortedSizes=(");
        for (Map.Entry<Bitmap.Config, NavigableMap<Integer, Integer>> entry : this.h.entrySet()) {
            sb.append(entry.getKey());
            sb.append('[');
            sb.append(entry.getValue());
            sb.append("], ");
        }
        if (!this.h.isEmpty()) {
            sb.replace(sb.length() - 2, sb.length(), "");
        }
        sb.append(")}");
        return sb.toString();
    }
}
