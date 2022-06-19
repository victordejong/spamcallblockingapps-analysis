package p193e.p194a.p1129p5.p1133t0;

import android.content.Context;
import android.content.SharedPreferences;
import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.e0.c0;
import s1.e0.h;
import s1.e0.x;
import s1.u.i;
import s1.u.u;
import s1.z.b.l;
import s1.z.c.j;
import s1.z.c.m;
/* renamed from: e.a.p5.t0.a */
/* loaded from: classes15-dex2jar.jar:e/a/p5/t0/a.class */
public abstract class AbstractC19316a {

    /* renamed from: a */
    public final SharedPreferences f53758a;

    /* renamed from: e.a.p5.t0.a$a */
    /* loaded from: classes15-dex2jar.jar:e/a/p5/t0/a$a.class */
    public static final class C19317a extends m implements l<Map.Entry<? extends String, ? extends Object>, Boolean> {

        /* renamed from: b */
        public final /* synthetic */ Map f53759b;

        /* renamed from: c */
        public final /* synthetic */ Set f53760c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19317a(AbstractC19316a abstractC19316a, Map map, Set set, boolean z, SharedPreferences sharedPreferences) {
            super(1);
            this.f53759b = map;
            this.f53760c = set;
        }

        /* renamed from: d */
        public Object m13462d(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            s1.z.c.l.e(entry, "<name for destructuring parameter 0>");
            String str = (String) entry.getKey();
            Set set = this.f53760c;
            return Boolean.valueOf(set != null ? set.contains(str) : true);
        }
    }

    /* renamed from: e.a.p5.t0.a$b */
    /* loaded from: classes15-dex2jar.jar:e/a/p5/t0/a$b.class */
    public static final /* synthetic */ class C19318b extends j implements l<SharedPreferences, SharedPreferences.Editor> {

        /* renamed from: j */
        public static final C19318b f53761j = new C19318b();

        public C19318b() {
            super(1, SharedPreferences.class, "edit", "edit()Landroid/content/SharedPreferences$Editor;", 0);
        }

        /* renamed from: d */
        public Object m13461d(Object obj) {
            SharedPreferences sharedPreferences = (SharedPreferences) obj;
            s1.z.c.l.e(sharedPreferences, "p1");
            return sharedPreferences.edit();
        }
    }

    public AbstractC19316a(SharedPreferences sharedPreferences) {
        s1.z.c.l.e(sharedPreferences, "prefs");
        this.f53758a = sharedPreferences;
    }

    /* renamed from: m3 */
    public static /* synthetic */ int m13468m3(AbstractC19316a abstractC19316a, SharedPreferences sharedPreferences, Set set, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            set = null;
        }
        if ((i & 4) != 0) {
            z = true;
        }
        return abstractC19316a.m13469l3(sharedPreferences, set, z);
    }

    /* renamed from: E */
    public double m13473E(String str, double d) {
        s1.z.c.l.e(str, AnalyticsConstants.KEY);
        return Double.longBitsToDouble(this.f53758a.getLong(str, Double.doubleToLongBits(d)));
    }

    /* renamed from: R */
    public void m13472R(String str, Long l) {
        s1.z.c.l.e(str, AnalyticsConstants.KEY);
        if (l == null) {
            remove(str);
        } else {
            putLong(str, l.longValue());
        }
    }

    /* renamed from: c */
    public final void m13471c(Context context) {
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        this.f53758a.edit().clear().apply();
        m13467n3(context);
    }

    public boolean contains(String str) {
        s1.z.c.l.e(str, AnalyticsConstants.KEY);
        return this.f53758a.contains(str);
    }

    public boolean getBoolean(String str) {
        s1.z.c.l.e(str, AnalyticsConstants.KEY);
        return this.f53758a.getBoolean(str, false);
    }

    public boolean getBoolean(String str, boolean z) {
        s1.z.c.l.e(str, AnalyticsConstants.KEY);
        return this.f53758a.getBoolean(str, z);
    }

    public int getInt(String str, int i) {
        s1.z.c.l.e(str, AnalyticsConstants.KEY);
        return this.f53758a.getInt(str, i);
    }

    public long getLong(String str, long j) {
        s1.z.c.l.e(str, AnalyticsConstants.KEY);
        return this.f53758a.getLong(str, j);
    }

    public String getString(String str) {
        s1.z.c.l.e(str, AnalyticsConstants.KEY);
        return this.f53758a.getString(str, null);
    }

    public String getString(String str, String str2) {
        s1.z.c.l.e(str, AnalyticsConstants.KEY);
        s1.z.c.l.e(str2, "defaultValue");
        String string = this.f53758a.getString(str, str2);
        if (string != null) {
            str2 = string;
        }
        return str2;
    }

    /* renamed from: j3 */
    public abstract int mo8946j3();

    /* renamed from: k3 */
    public abstract String mo8945k3();

    /* renamed from: l */
    public int m13470l(String str) {
        s1.z.c.l.e(str, AnalyticsConstants.KEY);
        int i = getInt(str, 0) + 1;
        putInt(str, i);
        return i;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: l3 */
    public final int m13469l3(SharedPreferences sharedPreferences, Set<String> set, boolean z) {
        s1.z.c.l.e(sharedPreferences, "otherPrefs");
        Map<String, ?> all = sharedPreferences.getAll();
        s1.z.c.l.d(all, "it");
        if (!(!all.isEmpty())) {
            all = null;
        }
        if (all != null) {
            C19319b c19319b = new C19319b(this);
            try {
                h.a aVar = new h.a(x.f(i.i(all), new C19317a(this, all, set, z, sharedPreferences)));
                while (aVar.hasNext()) {
                    Map.Entry entry = (Map.Entry) aVar.next();
                    String str = (String) entry.getKey();
                    m13463q3(c19319b, str, entry.getValue());
                    if (z) {
                        sharedPreferences.edit().remove(str).commit();
                    }
                }
                C25225a.m4016G(c19319b, null);
                return all.size();
            } finally {
                try {
                    throw th;
                } catch (Throwable th) {
                }
            }
        }
        return 0;
    }

    /* renamed from: n3 */
    public final void m13467n3(Context context) {
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        SharedPreferences sharedPreferences = this.f53758a;
        StringBuilder m8728C = C22128a.m8728C("VERSION_");
        m8728C.append(mo8945k3());
        int i = sharedPreferences.getInt(m8728C.toString(), 0);
        int mo8946j3 = mo8946j3();
        if (i < mo8946j3) {
            mo8944o3(i, context);
        }
        SharedPreferences.Editor edit = this.f53758a.edit();
        StringBuilder m8728C2 = C22128a.m8728C("VERSION_");
        m8728C2.append(mo8945k3());
        edit.putInt(m8728C2.toString(), mo8946j3).apply();
    }

    /* renamed from: o3 */
    public abstract void mo8944o3(int i, Context context);

    /* renamed from: p */
    public Set<String> m13466p(String str) {
        s1.z.c.l.e(str, AnalyticsConstants.KEY);
        Set<String> stringSet = this.f53758a.getStringSet(str, u.a);
        return stringSet != null ? i.c1(stringSet) : new LinkedHashSet();
    }

    /* renamed from: p2 */
    public void m13465p2(String str, double d) {
        s1.z.c.l.e(str, AnalyticsConstants.KEY);
        this.f53758a.edit().putLong(str, Double.doubleToRawLongBits(d)).apply();
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: p3 */
    public final void m13464p3(List<? extends SharedPreferences> list, Set<String> set) {
        s1.z.c.l.e(list, "otherPrefs");
        s1.z.c.l.e(set, "keys");
        ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
        for (SharedPreferences sharedPreferences : list) {
            arrayList.add(sharedPreferences.getAll());
        }
        C19319b c19319b = new C19319b(this);
        try {
            Iterator<T> it = set.iterator();
            while (true) {
                Object obj = null;
                if (!it.hasNext()) {
                    break;
                }
                String str = (String) it.next();
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    Map map = (Map) it2.next();
                    if (obj == null) {
                        obj = map.get(str);
                    }
                }
                m13463q3(c19319b, str, obj);
            }
            C25225a.m4016G(c19319b, null);
            c0 k = x.k(i.h(list), C19318b.f53761j);
            for (Object obj2 : k.a) {
                SharedPreferences.Editor editor = (SharedPreferences.Editor) k.b.d(obj2);
                for (String str2 : set) {
                    editor.remove(str2);
                }
                editor.apply();
            }
        } finally {
            try {
                throw th;
            } catch (Throwable th) {
            }
        }
    }

    public void putBoolean(String str, boolean z) {
        s1.z.c.l.e(str, AnalyticsConstants.KEY);
        C22128a.m8577r0(this.f53758a, str, z);
    }

    public void putInt(String str, int i) {
        s1.z.c.l.e(str, AnalyticsConstants.KEY);
        C22128a.m8593n0(this.f53758a, str, i);
    }

    public void putLong(String str, long j) {
        s1.z.c.l.e(str, AnalyticsConstants.KEY);
        C22128a.m8589o0(this.f53758a, str, j);
    }

    public void putString(String str, String str2) {
        s1.z.c.l.e(str, AnalyticsConstants.KEY);
        C22128a.m8585p0(this.f53758a, str, str2);
    }

    public void putStringSet(String str, Set<String> set) {
        s1.z.c.l.e(str, AnalyticsConstants.KEY);
        this.f53758a.edit().putStringSet(str, set).apply();
    }

    /* renamed from: q3 */
    public final void m13463q3(C19319b c19319b, String str, Object obj) {
        if (obj instanceof Long) {
            long longValue = ((Number) obj).longValue();
            s1.z.c.l.e(str, AnalyticsConstants.KEY);
            c19319b.m13460b().putLong(str, longValue);
        } else if (obj instanceof Double) {
            double doubleValue = ((Number) obj).doubleValue();
            s1.z.c.l.e(str, AnalyticsConstants.KEY);
            c19319b.m13460b().putLong(str, Double.doubleToRawLongBits(doubleValue));
        } else if (obj instanceof Float) {
            float floatValue = ((Number) obj).floatValue();
            s1.z.c.l.e(str, AnalyticsConstants.KEY);
            c19319b.m13460b().putFloat(str, floatValue);
        } else if (obj instanceof Integer) {
            int intValue = ((Number) obj).intValue();
            s1.z.c.l.e(str, AnalyticsConstants.KEY);
            c19319b.m13460b().putInt(str, intValue);
        } else if (obj instanceof Boolean) {
            boolean booleanValue = ((Boolean) obj).booleanValue();
            s1.z.c.l.e(str, AnalyticsConstants.KEY);
            c19319b.m13460b().putBoolean(str, booleanValue);
        } else if (obj instanceof String) {
            s1.z.c.l.e(str, AnalyticsConstants.KEY);
            c19319b.m13460b().putString(str, (String) obj);
        } else if (!(obj instanceof Set)) {
            if (obj == null) {
                return;
            }
            StringBuilder m8728C = C22128a.m8728C("Unsupported value type: ");
            m8728C.append(obj.getClass());
            m8728C.append(" for key ");
            m8728C.append(str);
            throw new IllegalStateException(m8728C.toString());
        } else {
            Set<String> set = (Set) obj;
            s1.z.c.l.e(str, AnalyticsConstants.KEY);
            s1.z.c.l.e(set, "untypedSet");
            for (Object obj2 : set) {
                boolean z = obj2 instanceof String;
            }
            s1.z.c.l.e(str, AnalyticsConstants.KEY);
            c19319b.m13460b().putStringSet(str, set);
        }
    }

    public void remove(String str) {
        s1.z.c.l.e(str, AnalyticsConstants.KEY);
        this.f53758a.edit().remove(str).apply();
    }
}
