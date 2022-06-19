package com.google.firebase.remoteconfig.internal;

import android.util.Log;
import com.google.android.gms.common.util.AbstractC1608d;
import com.google.firebase.remoteconfig.AbstractC2508h;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.regex.Pattern;
import org.json.JSONException;
/* renamed from: com.google.firebase.remoteconfig.internal.m */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/remoteconfig/internal/m.class */
public class C2527m {

    /* renamed from: e */
    static final Pattern f10836e = Pattern.compile("^(1|true|t|yes|y|on)$", 2);

    /* renamed from: f */
    static final Pattern f10837f = Pattern.compile("^(0|false|f|no|n|off|)$", 2);

    /* renamed from: a */
    private final Set<AbstractC1608d<String, C2517f>> f10838a = new HashSet();

    /* renamed from: b */
    private final Executor f10839b;

    /* renamed from: c */
    private final C2514e f10840c;

    /* renamed from: d */
    private final C2514e f10841d;

    static {
        Charset.forName("UTF-8");
    }

    public C2527m(Executor executor, C2514e c2514e, C2514e c2514e2) {
        this.f10839b = executor;
        this.f10840c = c2514e;
        this.f10841d = c2514e2;
    }

    /* renamed from: b */
    private void m3214b(String str, C2517f c2517f) {
        if (c2517f == null) {
            return;
        }
        synchronized (this.f10838a) {
            try {
                for (AbstractC1608d<String, C2517f> abstractC1608d : this.f10838a) {
                    this.f10839b.execute(RunnableC2526l.m3216a(abstractC1608d, str, c2517f));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: d */
    private static C2517f m3212d(C2514e c2514e) {
        return c2514e.m3272d();
    }

    /* renamed from: e */
    private static Set<String> m3211e(C2514e c2514e) {
        HashSet hashSet = new HashSet();
        C2517f m3212d = m3212d(c2514e);
        if (m3212d == null) {
            return hashSet;
        }
        Iterator<String> keys = m3212d.m3257d().keys();
        while (keys.hasNext()) {
            hashSet.add(keys.next());
        }
        return hashSet;
    }

    /* renamed from: f */
    private static String m3210f(C2514e c2514e, String str) {
        C2517f m3212d = m3212d(c2514e);
        if (m3212d == null) {
            return null;
        }
        try {
            return m3212d.m3257d().getString(str);
        } catch (JSONException e) {
            return null;
        }
    }

    /* renamed from: i */
    private static void m3207i(String str, String str2) {
        Log.w("FirebaseRemoteConfig", String.format("No value of type '%s' exists for parameter key '%s'.", str2, str));
    }

    /* renamed from: a */
    public void m3215a(AbstractC1608d<String, C2517f> abstractC1608d) {
        synchronized (this.f10838a) {
            this.f10838a.add(abstractC1608d);
        }
    }

    /* renamed from: c */
    public Map<String, AbstractC2508h> m3213c() {
        HashSet<String> hashSet = new HashSet();
        hashSet.addAll(m3211e(this.f10840c));
        hashSet.addAll(m3211e(this.f10841d));
        HashMap hashMap = new HashMap();
        for (String str : hashSet) {
            hashMap.put(str, m3209g(str));
        }
        return hashMap;
    }

    /* renamed from: g */
    public AbstractC2508h m3209g(String str) {
        String m3210f = m3210f(this.f10840c, str);
        if (m3210f != null) {
            m3214b(str, m3212d(this.f10840c));
            return new C2533q(m3210f, 2);
        }
        String m3210f2 = m3210f(this.f10841d, str);
        if (m3210f2 != null) {
            return new C2533q(m3210f2, 1);
        }
        m3207i(str, "FirebaseRemoteConfigValue");
        return new C2533q("", 0);
    }
}
