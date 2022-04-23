package com.google.firebase.remoteconfig.internal;

import android.util.Log;
import com.google.android.gms.common.util.d;
import java.nio.charset.Charset;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.regex.Pattern;
import org.json.JSONException;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/remoteconfig/internal/l.class */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    public static final Charset f32635a = Charset.forName("UTF-8");

    /* renamed from: b  reason: collision with root package name */
    static final Pattern f32636b = Pattern.compile("^(1|true|t|yes|y|on)$", 2);

    /* renamed from: c  reason: collision with root package name */
    static final Pattern f32637c = Pattern.compile("^(0|false|f|no|n|off|)$", 2);

    /* renamed from: d  reason: collision with root package name */
    public final Set<d<String, f>> f32638d = new HashSet();
    public final a e;
    public final a f;
    private final Executor g;

    public l(Executor executor, a aVar, a aVar2) {
        this.g = executor;
        this.e = aVar;
        this.f = aVar2;
    }

    public static f a(a aVar) {
        return aVar.a();
    }

    public static Long a(a aVar, String str) {
        f a2 = aVar.a();
        if (a2 == null) {
            return null;
        }
        try {
            return Long.valueOf(a2.f32610a.getLong(str));
        } catch (JSONException e) {
            return null;
        }
    }

    public static void a(String str, String str2) {
        Log.w("FirebaseRemoteConfig", String.format("No value of type '%s' exists for parameter key '%s'.", str2, str));
    }

    private static String b(a aVar, String str) {
        f a2 = aVar.a();
        if (a2 == null) {
            return null;
        }
        try {
            return a2.f32610a.getString(str);
        } catch (JSONException e) {
            return null;
        }
    }

    public final String a(String str) {
        String b2 = b(this.e, str);
        if (b2 != null) {
            a(str, this.e.a());
            return b2;
        }
        String b3 = b(this.f, str);
        if (b3 != null) {
            return b3;
        }
        a(str, "String");
        return "";
    }

    public final void a(String str, f fVar) {
        if (fVar != null) {
            synchronized (this.f32638d) {
                for (d<String, f> dVar : this.f32638d) {
                    this.g.execute(m.a(dVar, str, fVar));
                }
            }
        }
    }
}
