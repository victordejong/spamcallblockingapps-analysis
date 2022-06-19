package com.facebook.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import com.amazon.device.ads.MraidCloseCommand;
import com.amazon.device.ads.MraidOpenCommand;
import com.facebook.AccessToken;
import com.facebook.appevents.C1096x;
import com.facebook.internal.p037u0.p040m.C1220a;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import java.util.Set;
import kotlin.Metadata;
import p1727n3.p1872x.p1873a.C27062a;
import p193e.p1538j.C23228f0;
import s1.f0.h;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018�� \r2\u00020\u0001:\u0001\rB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0006\u001a\u00020\u0007H\u0002J\u0006\u0010\b\u001a\u00020\u0007J\u001c\u0010\t\u001a\u00020\u00072\b\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\b\u0010\f\u001a\u00020\u0007H\u0002R\u000e\u0010\u0005\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000e"}, d2 = {"Lcom/facebook/internal/BoltsMeasurementEventListener;", "Landroid/content/BroadcastReceiver;", AnalyticsConstants.CONTEXT, "Landroid/content/Context;", "(Landroid/content/Context;)V", "applicationContext", MraidCloseCommand.NAME, "", "finalize", "onReceive", "intent", "Landroid/content/Intent;", MraidOpenCommand.NAME, "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.internal.r */
/* loaded from: classes2-dex2jar.jar:com/facebook/internal/r.class */
public final class C1171r extends BroadcastReceiver {

    /* renamed from: b */
    public static C1171r f3201b;

    /* renamed from: a */
    public final Context f3202a;

    public C1171r(Context context, f fVar) {
        Context applicationContext = context.getApplicationContext();
        l.d(applicationContext, "context.applicationContext");
        this.f3202a = applicationContext;
    }

    /* renamed from: a */
    public static final /* synthetic */ C1171r m41656a() {
        if (C1220a.m41623b(C1171r.class)) {
            return null;
        }
        try {
            return f3201b;
        } catch (Throwable th) {
            C1220a.m41624a(th, C1171r.class);
            return null;
        }
    }

    /* renamed from: b */
    public static final C1171r m41655b(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        if (m41656a() != null) {
            return m41656a();
        }
        C1171r c1171r = new C1171r(context, null);
        if (!C1220a.m41623b(C1171r.class)) {
            try {
                if (!C1220a.m41623b(c1171r)) {
                    C27062a m968b = C27062a.m968b(c1171r.f3202a);
                    l.d(m968b, "getInstance(applicationContext)");
                    m968b.m967c(c1171r, new IntentFilter("com.parse.bolts.measurement_event"));
                }
            } catch (Throwable th) {
                C1220a.m41624a(th, C1171r.class);
            }
        }
        if (!C1220a.m41623b(C1171r.class)) {
            try {
                f3201b = c1171r;
            } catch (Throwable th2) {
                C1220a.m41624a(th2, C1171r.class);
            }
        }
        return m41656a();
    }

    public final void finalize() throws Throwable {
        if (C1220a.m41623b(this)) {
            return;
        }
        try {
            if (C1220a.m41623b(this)) {
                return;
            }
            C27062a m968b = C27062a.m968b(this.f3202a);
            l.d(m968b, "getInstance(applicationContext)");
            m968b.m965e(this);
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (C1220a.m41623b(this)) {
            return;
        }
        try {
            C1096x c1096x = new C1096x(context, (String) null, (AccessToken) null);
            l.e(c1096x, "loggerImpl");
            String j = l.j("bf_", intent == null ? null : intent.getStringExtra("event_name"));
            Bundle bundleExtra = intent == null ? null : intent.getBundleExtra("event_args");
            Bundle bundle = new Bundle();
            Set<String> keySet = bundleExtra == null ? null : bundleExtra.keySet();
            if (keySet != null) {
                for (String str : keySet) {
                    l.d(str, AnalyticsConstants.KEY);
                    bundle.putString(new h("[ -]*$").e(new h("^[ -]*").e(new h("[^0-9a-zA-Z _-]").e(str, StringConstant.DASH), ""), ""), (String) bundleExtra.get(str));
                }
            }
            C23228f0 c23228f0 = C23228f0.f64291a;
            if (!C23228f0.m7352c()) {
                return;
            }
            c1096x.m41763e(j, bundle);
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
        }
    }
}
