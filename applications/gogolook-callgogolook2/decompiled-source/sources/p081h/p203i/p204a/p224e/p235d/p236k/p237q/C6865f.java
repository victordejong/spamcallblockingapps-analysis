package p081h.p203i.p204a.p224e.p235d.p236k.p237q;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import androidx.media2.session.MediaSessionImplBase;
import com.google.android.gms.common.R$string;
import com.google.android.gms.common.api.Status;
import javax.annotation.concurrent.GuardedBy;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p235d.p240n.C7027w;
import p081h.p203i.p204a.p224e.p235d.p240n.C7033x0;
@Deprecated
/* renamed from: h.i.a.e.d.k.q.f */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/q/f.class */
public final class C6865f {

    /* renamed from: d */
    public static final Object f16830d = new Object();
    @GuardedBy("sLock")

    /* renamed from: e */
    public static C6865f f16831e;

    /* renamed from: a */
    public final String f16832a;

    /* renamed from: b */
    public final Status f16833b;

    /* renamed from: c */
    public final boolean f16834c;

    public C6865f(Context context) {
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("google_app_measurement_enable", "integer", resources.getResourcePackageName(R$string.common_google_play_services_unknown_issue));
        boolean z = false;
        if (identifier != 0) {
            this.f16834c = !(resources.getInteger(identifier) != 0 ? true : z);
        } else {
            this.f16834c = false;
        }
        String a = C7033x0.m21198a(context);
        String a2 = a == null ? new C7027w(context).m21273a("google_app_id") : a;
        if (TextUtils.isEmpty(a2)) {
            this.f16833b = new Status(10, "Missing google app id value from from string resources with name google_app_id.");
            this.f16832a = null;
            return;
        }
        this.f16832a = a2;
        this.f16833b = Status.f6510e;
    }

    /* renamed from: a */
    public static Status m21689a(Context context) {
        Status status;
        C7021t.m21289a(context, "Context must not be null.");
        synchronized (f16830d) {
            if (f16831e == null) {
                f16831e = new C6865f(context);
            }
            status = f16831e.f16833b;
        }
        return status;
    }

    /* renamed from: a */
    public static C6865f m21688a(String str) {
        C6865f fVar;
        synchronized (f16830d) {
            if (f16831e != null) {
                fVar = f16831e;
            } else {
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 34);
                sb.append("Initialize must be called before ");
                sb.append(str);
                sb.append(MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM);
                throw new IllegalStateException(sb.toString());
            }
        }
        return fVar;
    }

    /* renamed from: a */
    public static String m21690a() {
        return m21688a("getGoogleAppId").f16832a;
    }

    /* renamed from: b */
    public static boolean m21687b() {
        return m21688a("isMeasurementExplicitlyDisabled").f16834c;
    }
}
