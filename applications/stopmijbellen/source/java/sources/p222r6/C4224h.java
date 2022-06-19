package p222r6;

import android.util.Log;
import com.google.android.gms.common.util.BiConsumer;
import com.google.android.gms.tasks.Task;
import java.nio.charset.Charset;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.regex.Pattern;
import org.json.JSONException;
import p158l6.RunnableC3506c;
/* renamed from: r6.h */
/* loaded from: classes-dex2jar.jar:r6/h.class */
public class C4224h {

    /* renamed from: e */
    public static final Pattern f13229e = Pattern.compile("^(1|true|t|yes|y|on)$", 2);

    /* renamed from: f */
    public static final Pattern f13230f = Pattern.compile("^(0|false|f|no|n|off|)$", 2);

    /* renamed from: a */
    public final Set<BiConsumer<String, C4221e>> f13231a = new HashSet();

    /* renamed from: b */
    public final Executor f13232b;

    /* renamed from: c */
    public final C4218d f13233c;

    /* renamed from: d */
    public final C4218d f13234d;

    static {
        Charset.forName("UTF-8");
    }

    public C4224h(Executor executor, C4218d c4218d, C4218d c4218d2) {
        this.f13232b = executor;
        this.f13233c = c4218d;
        this.f13234d = c4218d2;
    }

    /* renamed from: b */
    public static C4221e m1280b(C4218d c4218d) {
        C4221e c4221e;
        synchronized (c4218d) {
            Task<C4221e> task = c4218d.f13215c;
            if (task == null || !task.isSuccessful()) {
                try {
                    c4221e = (C4221e) C4218d.m1285a(c4218d.m1284b(), 5L, TimeUnit.SECONDS);
                } catch (InterruptedException | ExecutionException | TimeoutException e) {
                    c4221e = null;
                }
            } else {
                c4221e = c4218d.f13215c.getResult();
            }
        }
        return c4221e;
    }

    /* renamed from: c */
    public static Set<String> m1279c(C4218d c4218d) {
        HashSet hashSet = new HashSet();
        C4221e m1280b = m1280b(c4218d);
        if (m1280b == null) {
            return hashSet;
        }
        Iterator<String> keys = m1280b.f13219b.keys();
        while (keys.hasNext()) {
            hashSet.add(keys.next());
        }
        return hashSet;
    }

    /* renamed from: d */
    public static Long m1278d(C4218d c4218d, String str) {
        C4221e m1280b = m1280b(c4218d);
        if (m1280b == null) {
            return null;
        }
        try {
            return Long.valueOf(m1280b.f13219b.getLong(str));
        } catch (JSONException e) {
            return null;
        }
    }

    /* renamed from: e */
    public static String m1277e(C4218d c4218d, String str) {
        C4221e m1280b = m1280b(c4218d);
        if (m1280b == null) {
            return null;
        }
        try {
            return m1280b.f13219b.getString(str);
        } catch (JSONException e) {
            return null;
        }
    }

    /* renamed from: f */
    public static void m1276f(String str, String str2) {
        Log.w("FirebaseRemoteConfig", String.format("No value of type '%s' exists for parameter key '%s'.", str2, str));
    }

    /* renamed from: a */
    public final void m1281a(String str, C4221e c4221e) {
        if (c4221e == null) {
            return;
        }
        synchronized (this.f13231a) {
            for (BiConsumer<String, C4221e> biConsumer : this.f13231a) {
                this.f13232b.execute(new RunnableC3506c(biConsumer, str, c4221e, 2));
            }
        }
    }
}
