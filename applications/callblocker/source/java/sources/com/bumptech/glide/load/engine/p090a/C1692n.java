package com.bumptech.glide.load.engine.p090a;

import android.graphics.Bitmap;
import android.os.Build;
import com.bumptech.glide.p077h.C1457j;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;
/* renamed from: com.bumptech.glide.load.engine.a.n */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a/n.class */
public class C1692n implements AbstractC1690l {

    /* renamed from: a */
    private static final Bitmap.Config[] f5148a;

    /* renamed from: b */
    private static final Bitmap.Config[] f5149b;

    /* renamed from: c */
    private static final Bitmap.Config[] f5150c;

    /* renamed from: d */
    private static final Bitmap.Config[] f5151d;

    /* renamed from: e */
    private static final Bitmap.Config[] f5152e;

    /* renamed from: f */
    private final C1695b f5153f = new C1695b();

    /* renamed from: g */
    private final C1681h<C1694a, Bitmap> f5154g = new C1681h<>();

    /* renamed from: h */
    private final Map<Bitmap.Config, NavigableMap<Integer, Integer>> f5155h = new HashMap();

    /* renamed from: com.bumptech.glide.load.engine.a.n$1 */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a/n$1.class */
    public static /* synthetic */ class C16931 {

        /* renamed from: a */
        static final /* synthetic */ int[] f5156a = new int[Bitmap.Config.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:19:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:17:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0042 -> B:15:0x0014). Please submit an issue!!! */
        static {
            try {
                f5156a[Bitmap.Config.ARGB_8888.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f5156a[Bitmap.Config.RGB_565.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f5156a[Bitmap.Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f5156a[Bitmap.Config.ALPHA_8.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.a.n$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a/n$a.class */
    public static final class C1694a implements AbstractC1691m {

        /* renamed from: a */
        int f5157a;

        /* renamed from: b */
        private final C1695b f5158b;

        /* renamed from: c */
        private Bitmap.Config f5159c;

        public C1694a(C1695b c1695b) {
            this.f5158b = c1695b;
        }

        @Override // com.bumptech.glide.load.engine.p090a.AbstractC1691m
        /* renamed from: a */
        public void mo16515a() {
            this.f5158b.m16584a(this);
        }

        /* renamed from: a */
        public void m16514a(int i, Bitmap.Config config) {
            this.f5157a = i;
            this.f5159c = config;
        }

        public boolean equals(Object obj) {
            boolean z = false;
            if (obj instanceof C1694a) {
                C1694a c1694a = (C1694a) obj;
                z = false;
                if (this.f5157a == c1694a.f5157a) {
                    z = false;
                    if (C1457j.m16975a(this.f5159c, c1694a.f5159c)) {
                        z = true;
                    }
                }
            }
            return z;
        }

        public int hashCode() {
            return (this.f5159c != null ? this.f5159c.hashCode() : 0) + (this.f5157a * 31);
        }

        public String toString() {
            return C1692n.m16524a(this.f5157a, this.f5159c);
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.a.n$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a/n$b.class */
    public static class C1695b extends AbstractC1677d<C1694a> {
        C1695b() {
        }

        /* renamed from: a */
        public C1694a mo16511b() {
            return new C1694a(this);
        }

        /* renamed from: a */
        public C1694a m16512a(int i, Bitmap.Config config) {
            C1694a c = m16583c();
            c.m16514a(i, config);
            return c;
        }
    }

    static {
        Bitmap.Config[] configArr = {Bitmap.Config.ARGB_8888, null};
        Bitmap.Config[] configArr2 = configArr;
        if (Build.VERSION.SDK_INT >= 26) {
            configArr2 = (Bitmap.Config[]) Arrays.copyOf(configArr, configArr.length + 1);
            configArr2[configArr2.length - 1] = Bitmap.Config.RGBA_F16;
        }
        f5148a = configArr2;
        f5149b = f5148a;
        f5150c = new Bitmap.Config[]{Bitmap.Config.RGB_565};
        f5151d = new Bitmap.Config[]{Bitmap.Config.ARGB_4444};
        f5152e = new Bitmap.Config[]{Bitmap.Config.ALPHA_8};
    }

    /* renamed from: a */
    static String m16524a(int i, Bitmap.Config config) {
        return "[" + i + "](" + config + ")";
    }

    /* renamed from: a */
    private NavigableMap<Integer, Integer> m16523a(Bitmap.Config config) {
        NavigableMap<Integer, Integer> navigableMap = this.f5155h.get(config);
        TreeMap treeMap = navigableMap;
        if (navigableMap == null) {
            treeMap = new TreeMap();
            this.f5155h.put(config, treeMap);
        }
        return treeMap;
    }

    /* renamed from: a */
    private void m16521a(Integer num, Bitmap bitmap) {
        NavigableMap<Integer, Integer> m16523a = m16523a(bitmap.getConfig());
        Integer num2 = (Integer) m16523a.get(num);
        if (num2 == null) {
            throw new NullPointerException("Tried to decrement empty size, size: " + num + ", removed: " + mo16517b(bitmap) + ", this: " + this);
        }
        if (num2.intValue() == 1) {
            m16523a.remove(num);
        } else {
            m16523a.put(num, Integer.valueOf(num2.intValue() - 1));
        }
    }

    /* renamed from: b */
    private C1694a m16519b(int i, Bitmap.Config config) {
        C1694a c1694a;
        C1694a m16512a = this.f5153f.m16512a(i, config);
        Bitmap.Config[] m16518b = m16518b(config);
        int length = m16518b.length;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                break;
            }
            Bitmap.Config config2 = m16518b[i2];
            Integer ceilingKey = m16523a(config2).ceilingKey(Integer.valueOf(i));
            if (ceilingKey == null || ceilingKey.intValue() > i * 8) {
                i2++;
            } else if (ceilingKey.intValue() != i || (config2 != null ? !config2.equals(config) : config != null)) {
                this.f5153f.m16584a(m16512a);
                c1694a = this.f5153f.m16512a(ceilingKey.intValue(), config2);
            }
        }
        c1694a = m16512a;
        return c1694a;
    }

    /* renamed from: b */
    private static Bitmap.Config[] m16518b(Bitmap.Config config) {
        Bitmap.Config[] configArr;
        if (Build.VERSION.SDK_INT < 26 || !Bitmap.Config.RGBA_F16.equals(config)) {
            switch (C16931.f5156a[config.ordinal()]) {
                case 1:
                    configArr = f5148a;
                    break;
                case 2:
                    configArr = f5150c;
                    break;
                case 3:
                    configArr = f5151d;
                    break;
                case 4:
                    configArr = f5152e;
                    break;
                default:
                    configArr = new Bitmap.Config[]{config};
                    break;
            }
        } else {
            configArr = f5149b;
        }
        return configArr;
    }

    @Override // com.bumptech.glide.load.engine.p090a.AbstractC1690l
    /* renamed from: a */
    public Bitmap mo16526a() {
        Bitmap m16580a = this.f5154g.m16580a();
        if (m16580a != null) {
            m16521a(Integer.valueOf(C1457j.m16977a(m16580a)), m16580a);
        }
        return m16580a;
    }

    @Override // com.bumptech.glide.load.engine.p090a.AbstractC1690l
    /* renamed from: a */
    public Bitmap mo16525a(int i, int i2, Bitmap.Config config) {
        C1694a m16519b = m16519b(C1457j.m16979a(i, i2, config), config);
        Bitmap m16578a = this.f5154g.m16578a((C1681h<C1694a, Bitmap>) m16519b);
        if (m16578a != null) {
            m16521a(Integer.valueOf(m16519b.f5157a), m16578a);
            m16578a.reconfigure(i, i2, m16578a.getConfig() != null ? m16578a.getConfig() : Bitmap.Config.ARGB_8888);
        }
        return m16578a;
    }

    @Override // com.bumptech.glide.load.engine.p090a.AbstractC1690l
    /* renamed from: a */
    public void mo16522a(Bitmap bitmap) {
        C1694a m16512a = this.f5153f.m16512a(C1457j.m16977a(bitmap), bitmap.getConfig());
        this.f5154g.m16577a(m16512a, bitmap);
        NavigableMap<Integer, Integer> m16523a = m16523a(bitmap.getConfig());
        Integer num = (Integer) m16523a.get(Integer.valueOf(m16512a.f5157a));
        m16523a.put(Integer.valueOf(m16512a.f5157a), Integer.valueOf(num == null ? 1 : num.intValue() + 1));
    }

    @Override // com.bumptech.glide.load.engine.p090a.AbstractC1690l
    /* renamed from: b */
    public String mo16520b(int i, int i2, Bitmap.Config config) {
        return m16524a(C1457j.m16979a(i, i2, config), config);
    }

    @Override // com.bumptech.glide.load.engine.p090a.AbstractC1690l
    /* renamed from: b */
    public String mo16517b(Bitmap bitmap) {
        return m16524a(C1457j.m16977a(bitmap), bitmap.getConfig());
    }

    @Override // com.bumptech.glide.load.engine.p090a.AbstractC1690l
    /* renamed from: c */
    public int mo16516c(Bitmap bitmap) {
        return C1457j.m16977a(bitmap);
    }

    public String toString() {
        StringBuilder append = new StringBuilder().append("SizeConfigStrategy{groupedMap=").append(this.f5154g).append(", sortedSizes=(");
        for (Map.Entry<Bitmap.Config, NavigableMap<Integer, Integer>> entry : this.f5155h.entrySet()) {
            append.append(entry.getKey()).append('[').append(entry.getValue()).append("], ");
        }
        if (!this.f5155h.isEmpty()) {
            append.replace(append.length() - 2, append.length(), "");
        }
        return append.append(")}").toString();
    }
}
