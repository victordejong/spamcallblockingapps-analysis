package com.bumptech.glide.load.b.a;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import com.asus.updatesdk.BuildConfig;
import com.bumptech.glide.i.h;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;
@TargetApi(19)
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/a/i.class */
public final class i implements g {

    /* renamed from: a  reason: collision with root package name */
    private static final Bitmap.Config[] f3499a = {Bitmap.Config.ARGB_8888, null};

    /* renamed from: b  reason: collision with root package name */
    private static final Bitmap.Config[] f3500b = {Bitmap.Config.RGB_565};
    private static final Bitmap.Config[] c = {Bitmap.Config.ARGB_4444};
    private static final Bitmap.Config[] d = {Bitmap.Config.ALPHA_8};
    private final b e = new b();
    private final e<a, Bitmap> f = new e<>();
    private final Map<Bitmap.Config, NavigableMap<Integer, Integer>> g = new HashMap();

    /* renamed from: com.bumptech.glide.load.b.a.i$1  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/a/i$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f3501a = new int[Bitmap.Config.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:19:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:17:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0042 -> B:15:0x0014). Please submit an issue!!! */
        static {
            try {
                f3501a[Bitmap.Config.ARGB_8888.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f3501a[Bitmap.Config.RGB_565.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f3501a[Bitmap.Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f3501a[Bitmap.Config.ALPHA_8.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/a/i$a.class */
    public static final class a implements h {

        /* renamed from: a  reason: collision with root package name */
        int f3502a;

        /* renamed from: b  reason: collision with root package name */
        Bitmap.Config f3503b;
        private final b c;

        public a(b bVar) {
            this.c = bVar;
        }

        @Override // com.bumptech.glide.load.b.a.h
        public final void a() {
            this.c.a(this);
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x002d, code lost:
            r6 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:14:0x003e, code lost:
            if (r3.f3503b.equals(r0.f3503b) != false) goto L_0x002d;
         */
        /* JADX WARN: Code restructure failed: missing block: B:9:0x002a, code lost:
            if (r0.f3503b == null) goto L_0x002d;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean equals(java.lang.Object r4) {
            /*
                r3 = this;
                r0 = 0
                r5 = r0
                r0 = r5
                r6 = r0
                r0 = r4
                boolean r0 = r0 instanceof com.bumptech.glide.load.b.a.i.a
                if (r0 == 0) goto L_0x002f
                r0 = r4
                com.bumptech.glide.load.b.a.i$a r0 = (com.bumptech.glide.load.b.a.i.a) r0
                r4 = r0
                r0 = r5
                r6 = r0
                r0 = r3
                int r0 = r0.f3502a
                r1 = r4
                int r1 = r1.f3502a
                if (r0 != r1) goto L_0x002f
                r0 = r3
                android.graphics.Bitmap$Config r0 = r0.f3503b
                if (r0 != 0) goto L_0x0031
                r0 = r5
                r6 = r0
                r0 = r4
                android.graphics.Bitmap$Config r0 = r0.f3503b
                if (r0 != 0) goto L_0x002f
            L_0x002d:
                r0 = 1
                r6 = r0
            L_0x002f:
                r0 = r6
                return r0
            L_0x0031:
                r0 = r5
                r6 = r0
                r0 = r3
                android.graphics.Bitmap$Config r0 = r0.f3503b
                r1 = r4
                android.graphics.Bitmap$Config r1 = r1.f3503b
                boolean r0 = r0.equals(r1)
                if (r0 == 0) goto L_0x002f
                goto L_0x002d
            */
            throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.b.a.i.a.equals(java.lang.Object):boolean");
        }

        public final int hashCode() {
            return (this.f3503b != null ? this.f3503b.hashCode() : 0) + (this.f3502a * 31);
        }

        public final String toString() {
            return i.b(this.f3502a, this.f3503b);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/a/i$b.class */
    static final class b extends com.bumptech.glide.load.b.a.b<a> {
        b() {
        }

        @Override // com.bumptech.glide.load.b.a.b
        protected final /* synthetic */ a a() {
            return new a(this);
        }

        public final a a(int i, Bitmap.Config config) {
            a b2 = b();
            b2.f3502a = i;
            b2.f3503b = config;
            return b2;
        }
    }

    private NavigableMap<Integer, Integer> a(Bitmap.Config config) {
        NavigableMap<Integer, Integer> navigableMap = this.g.get(config);
        NavigableMap<Integer, Integer> navigableMap2 = navigableMap;
        if (navigableMap == null) {
            navigableMap2 = new TreeMap<>();
            this.g.put(config, navigableMap2);
        }
        return navigableMap2;
    }

    private void a(Integer num, Bitmap.Config config) {
        NavigableMap<Integer, Integer> a2 = a(config);
        Integer num2 = (Integer) a2.get(num);
        if (num2.intValue() == 1) {
            a2.remove(num);
        } else {
            a2.put(num, Integer.valueOf(num2.intValue() - 1));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String b(int i, Bitmap.Config config) {
        return "[" + i + "](" + config + ")";
    }

    @Override // com.bumptech.glide.load.b.a.g
    public final Bitmap a() {
        Bitmap a2 = this.f.a();
        if (a2 != null) {
            a(Integer.valueOf(h.a(a2)), a2.getConfig());
        }
        return a2;
    }

    @Override // com.bumptech.glide.load.b.a.g
    public final Bitmap a(int i, int i2, Bitmap.Config config) {
        Bitmap.Config[] configArr;
        a aVar;
        int i3 = 0;
        int a2 = h.a(i, i2, config);
        a a3 = this.e.a(a2, config);
        switch (AnonymousClass1.f3501a[config.ordinal()]) {
            case 1:
                configArr = f3499a;
                break;
            case 2:
                configArr = f3500b;
                break;
            case 3:
                configArr = c;
                break;
            case 4:
                configArr = d;
                break;
            default:
                configArr = new Bitmap.Config[]{config};
                break;
        }
        int length = configArr.length;
        while (true) {
            if (i3 < length) {
                Bitmap.Config config2 = configArr[i3];
                Integer ceilingKey = a(config2).ceilingKey(Integer.valueOf(a2));
                if (ceilingKey == null || ceilingKey.intValue() > a2 * 8) {
                    i3++;
                } else if (ceilingKey.intValue() != a2 || (config2 != null ? !config2.equals(config) : config != null)) {
                    this.e.a(a3);
                    aVar = this.e.a(ceilingKey.intValue(), config2);
                }
            }
        }
        aVar = a3;
        Bitmap a4 = this.f.a((e<a, Bitmap>) aVar);
        if (a4 != null) {
            a(Integer.valueOf(h.a(a4)), a4.getConfig());
            a4.reconfigure(i, i2, a4.getConfig() != null ? a4.getConfig() : Bitmap.Config.ARGB_8888);
        }
        return a4;
    }

    @Override // com.bumptech.glide.load.b.a.g
    public final void a(Bitmap bitmap) {
        a a2 = this.e.a(h.a(bitmap), bitmap.getConfig());
        this.f.a(a2, bitmap);
        NavigableMap<Integer, Integer> a3 = a(bitmap.getConfig());
        Integer num = (Integer) a3.get(Integer.valueOf(a2.f3502a));
        a3.put(Integer.valueOf(a2.f3502a), Integer.valueOf(num == null ? 1 : num.intValue() + 1));
    }

    @Override // com.bumptech.glide.load.b.a.g
    public final String b(int i, int i2, Bitmap.Config config) {
        return b(h.a(i, i2, config), config);
    }

    @Override // com.bumptech.glide.load.b.a.g
    public final String b(Bitmap bitmap) {
        return b(h.a(bitmap), bitmap.getConfig());
    }

    @Override // com.bumptech.glide.load.b.a.g
    public final int c(Bitmap bitmap) {
        return h.a(bitmap);
    }

    public final String toString() {
        StringBuilder append = new StringBuilder("SizeConfigStrategy{groupedMap=").append(this.f).append(", sortedSizes=(");
        for (Map.Entry<Bitmap.Config, NavigableMap<Integer, Integer>> entry : this.g.entrySet()) {
            append.append(entry.getKey()).append('[').append(entry.getValue()).append("], ");
        }
        if (!this.g.isEmpty()) {
            append.replace(append.length() - 2, append.length(), BuildConfig.FLAVOR);
        }
        return append.append(")}").toString();
    }
}
