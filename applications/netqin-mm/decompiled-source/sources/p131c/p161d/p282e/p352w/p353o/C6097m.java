package p131c.p161d.p282e.p352w.p353o;

import android.util.Log;
import com.android.volley.Request;
import com.google.android.gms.common.util.BiConsumer;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.regex.Pattern;
import org.json.JSONException;
import p131c.p161d.p282e.p352w.AbstractC6075j;
/* renamed from: c.d.e.w.o.m */
/* loaded from: classes2-dex2jar.jar:c/d/e/w/o/m.class */
public class C6097m {

    /* renamed from: e */
    public static final Pattern f19588e = Pattern.compile("^(1|true|t|yes|y|on)$", 2);

    /* renamed from: f */
    public static final Pattern f19589f = Pattern.compile("^(0|false|f|no|n|off|)$", 2);

    /* renamed from: a */
    public final Set<BiConsumer<String, C6087f>> f19590a = new HashSet();

    /* renamed from: b */
    public final Executor f19591b;

    /* renamed from: c */
    public final C6084e f19592c;

    /* renamed from: d */
    public final C6084e f19593d;

    static {
        Charset.forName(Request.DEFAULT_PARAMS_ENCODING);
    }

    public C6097m(Executor executor, C6084e eVar, C6084e eVar2) {
        this.f19591b = executor;
        this.f19592c = eVar;
        this.f19593d = eVar2;
    }

    /* renamed from: a */
    public static C6087f m22048a(C6084e eVar) {
        return eVar.m22095c();
    }

    /* renamed from: a */
    public static String m22047a(C6084e eVar, String str) {
        C6087f a = m22048a(eVar);
        if (a == null) {
            return null;
        }
        try {
            return a.m22091b().getString(str);
        } catch (JSONException e) {
            return null;
        }
    }

    /* renamed from: a */
    public static void m22042a(String str, String str2) {
        Log.w("FirebaseRemoteConfig", String.format("No value of type '%s' exists for parameter key '%s'.", str2, str));
    }

    /* renamed from: b */
    public static Set<String> m22041b(C6084e eVar) {
        HashSet hashSet = new HashSet();
        C6087f a = m22048a(eVar);
        if (a == null) {
            return hashSet;
        }
        Iterator<String> keys = a.m22091b().keys();
        while (keys.hasNext()) {
            hashSet.add(keys.next());
        }
        return hashSet;
    }

    /* renamed from: a */
    public Map<String, AbstractC6075j> m22049a() {
        HashSet<String> hashSet = new HashSet();
        hashSet.addAll(m22041b(this.f19592c));
        hashSet.addAll(m22041b(this.f19593d));
        HashMap hashMap = new HashMap();
        for (String str : hashSet) {
            hashMap.put(str, m22039c(str));
        }
        return hashMap;
    }

    /* renamed from: a */
    public void m22046a(BiConsumer<String, C6087f> biConsumer) {
        synchronized (this.f19590a) {
            this.f19590a.add(biConsumer);
        }
    }

    /* renamed from: a */
    public final void m22043a(String str, C6087f fVar) {
        if (fVar != null) {
            synchronized (this.f19590a) {
                try {
                    for (BiConsumer<String, C6087f> biConsumer : this.f19590a) {
                        this.f19591b.execute(RunnableC6096l.m22050a(biConsumer, str, fVar));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    /* renamed from: a */
    public boolean m22044a(String str) {
        String a = m22047a(this.f19592c, str);
        if (a != null) {
            if (f19588e.matcher(a).matches()) {
                m22043a(str, m22048a(this.f19592c));
                return true;
            } else if (f19589f.matcher(a).matches()) {
                m22043a(str, m22048a(this.f19592c));
                return false;
            }
        }
        String a2 = m22047a(this.f19593d, str);
        if (a2 != null) {
            if (f19588e.matcher(a2).matches()) {
                return true;
            }
            if (f19589f.matcher(a2).matches()) {
                return false;
            }
        }
        m22042a(str, "Boolean");
        return false;
    }

    /* renamed from: b */
    public String m22040b(String str) {
        String a = m22047a(this.f19592c, str);
        if (a != null) {
            m22043a(str, m22048a(this.f19592c));
            return a;
        }
        String a2 = m22047a(this.f19593d, str);
        if (a2 != null) {
            return a2;
        }
        m22042a(str, "String");
        return "";
    }

    /* renamed from: c */
    public AbstractC6075j m22039c(String str) {
        String a = m22047a(this.f19592c, str);
        if (a != null) {
            m22043a(str, m22048a(this.f19592c));
            return new C6105r(a, 2);
        }
        String a2 = m22047a(this.f19593d, str);
        if (a2 != null) {
            return new C6105r(a2, 1);
        }
        m22042a(str, "FirebaseRemoteConfigValue");
        return new C6105r("", 0);
    }
}
