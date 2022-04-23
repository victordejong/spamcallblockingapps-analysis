package p081h.p203i.p204a.p224e.p285m.p287b;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.MainThread;
import com.appsflyer.internal.referrer.Payload;
import com.flurry.sdk.C3184gs;
import kotlinx.coroutines.DebugKt;
@TargetApi(14)
@MainThread
/* renamed from: h.i.a.e.m.b.e2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/e2.class */
public final class C8970e2 implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a */
    public final /* synthetic */ C9053s1 f20350a;

    public C8970e2(C9053s1 s1Var) {
        this.f20350a = s1Var;
    }

    public /* synthetic */ C8970e2(C9053s1 s1Var, RunnableC9059t1 t1Var) {
        this(s1Var);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        Uri data;
        try {
            this.f20350a.mo16178c().m16389A().m16338a("onActivityCreated");
            Intent intent = activity.getIntent();
            if (!(intent == null || (data = intent.getData()) == null || !data.isHierarchical())) {
                if (bundle == null) {
                    Bundle a = this.f20350a.m16351j().m16737a(data);
                    this.f20350a.m16351j();
                    String str = C8959c4.m16738a(intent) ? C3184gs.f5259a : DebugKt.DEBUG_PROPERTY_VALUE_AUTO;
                    if (a != null) {
                        this.f20350a.m16236b(str, "_cmp", a);
                    }
                }
                String queryParameter = data.getQueryParameter(Payload.REFERRER);
                if (!TextUtils.isEmpty(queryParameter)) {
                    if (!(queryParameter.contains("gclid") && (queryParameter.contains("utm_campaign") || queryParameter.contains("utm_source") || queryParameter.contains("utm_medium") || queryParameter.contains("utm_term") || queryParameter.contains("utm_content")))) {
                        this.f20350a.mo16178c().m16368z().m16338a("Activity created with data 'referrer' param without gclid and at least one utm field");
                        return;
                    }
                    this.f20350a.mo16178c().m16368z().m16337a("Activity created with referrer", queryParameter);
                    if (!TextUtils.isEmpty(queryParameter)) {
                        this.f20350a.m16247a(DebugKt.DEBUG_PROPERTY_VALUE_AUTO, "_ldl", (Object) queryParameter, true);
                    }
                } else {
                    return;
                }
            }
        } catch (Exception e) {
            this.f20350a.mo16178c().m16375s().m16337a("Throwable caught in onActivityCreated", e);
        }
        this.f20350a.m16320r().m16598a(activity, bundle);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        this.f20350a.m16320r().m16599a(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    @MainThread
    public final void onActivityPaused(Activity activity) {
        this.f20350a.m16320r().m16590b(activity);
        C8995i3 t = this.f20350a.m16318t();
        t.mo16214a().m16364a(new RunnableC9019m3(t, t.mo16174e().elapsedRealtime()));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    @MainThread
    public final void onActivityResumed(Activity activity) {
        this.f20350a.m16320r().m16588c(activity);
        C8995i3 t = this.f20350a.m16318t();
        t.mo16214a().m16364a(new RunnableC9013l3(t, t.mo16174e().elapsedRealtime()));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        this.f20350a.m16320r().m16589b(activity, bundle);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }
}
