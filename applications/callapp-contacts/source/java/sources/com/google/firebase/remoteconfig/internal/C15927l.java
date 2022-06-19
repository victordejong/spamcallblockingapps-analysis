package com.google.firebase.remoteconfig.internal;

import android.util.Log;
import com.google.android.gms.common.util.AbstractC12100d;
import java.nio.charset.Charset;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.regex.Pattern;
import org.json.JSONException;
/* renamed from: com.google.firebase.remoteconfig.internal.l */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/remoteconfig/internal/l.class */
public final class C15927l {

    /* renamed from: a */
    public static final Charset f56543a = Charset.forName("UTF-8");

    /* renamed from: b */
    static final Pattern f56544b = Pattern.compile("^(1|true|t|yes|y|on)$", 2);

    /* renamed from: c */
    static final Pattern f56545c = Pattern.compile("^(0|false|f|no|n|off|)$", 2);

    /* renamed from: d */
    public final Set<AbstractC12100d<String, C15918f>> f56546d = new HashSet();

    /* renamed from: e */
    public final C15911a f56547e;

    /* renamed from: f */
    public final C15911a f56548f;

    /* renamed from: g */
    private final Executor f56549g;

    public C15927l(Executor executor, C15911a c15911a, C15911a c15911a2) {
        this.f56549g = executor;
        this.f56547e = c15911a;
        this.f56548f = c15911a2;
    }

    /* renamed from: a */
    public static C15918f m8052a(C15911a c15911a) {
        return c15911a.m8081a();
    }

    /* renamed from: a */
    public static Long m8051a(C15911a c15911a, String str) {
        C15918f m8081a = c15911a.m8081a();
        if (m8081a == null) {
            return null;
        }
        try {
            return Long.valueOf(m8081a.f56510a.getLong(str));
        } catch (JSONException e) {
            return null;
        }
    }

    /* renamed from: a */
    public static void m8048a(String str, String str2) {
        Log.w("FirebaseRemoteConfig", String.format("No value of type '%s' exists for parameter key '%s'.", str2, str));
    }

    /* renamed from: b */
    private static String m8047b(C15911a c15911a, String str) {
        C15918f m8081a = c15911a.m8081a();
        if (m8081a == null) {
            return null;
        }
        try {
            return m8081a.f56510a.getString(str);
        } catch (JSONException e) {
            return null;
        }
    }

    /* renamed from: a */
    public final String m8050a(String str) {
        String m8047b = m8047b(this.f56547e, str);
        if (m8047b != null) {
            m8049a(str, this.f56547e.m8081a());
            return m8047b;
        }
        String m8047b2 = m8047b(this.f56548f, str);
        if (m8047b2 != null) {
            return m8047b2;
        }
        m8048a(str, "String");
        return "";
    }

    /* renamed from: a */
    public final void m8049a(String str, C15918f c15918f) {
        if (c15918f == null) {
            return;
        }
        synchronized (this.f56546d) {
            for (AbstractC12100d<String, C15918f> abstractC12100d : this.f56546d) {
                this.f56549g.execute(RunnableC15928m.m8046a(abstractC12100d, str, c15918f));
            }
        }
    }
}
