package p081h.p203i.p325c.p372x;

import android.content.Intent;
import androidx.annotation.NonNull;
import androidx.core.app.NotificationCompat;
import com.appsflyer.CreateOneLinkHttpTask;
import gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject;
import java.io.IOException;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p325c.p359q.AbstractC9841d;
import p081h.p203i.p325c.p359q.AbstractC9842e;
import p081h.p203i.p325c.p359q.C9840c;
/* renamed from: h.i.c.x.m */
/* loaded from: classes2-dex2jar.jar:h/i/c/x/m.class */
public final class C9991m {

    /* renamed from: a */
    public final String f22594a;

    /* renamed from: b */
    public final Intent f22595b;

    /* renamed from: h.i.c.x.m$a */
    /* loaded from: classes2-dex2jar.jar:h/i/c/x/m$a.class */
    public static class C9992a implements AbstractC9841d<C9991m> {
        /* renamed from: a */
        public void mo13750a(C9991m mVar, AbstractC9842e eVar) throws C9840c, IOException {
            Intent b = mVar.m13754b();
            eVar.mo14089a(CreateOneLinkHttpTask.TRACKING_LINK_LIVE_TIME_KEY, C9997p.m13725l(b));
            eVar.mo14087a(NotificationCompat.CATEGORY_EVENT, mVar.m13755a());
            eVar.mo14087a("instanceId", C9997p.m13738b());
            eVar.mo14089a(IapProductRealmObject.PRIORITY, C9997p.m13727j(b));
            eVar.mo14087a("packageName", C9997p.m13736c());
            eVar.mo14087a("sdkPlatform", "ANDROID");
            eVar.mo14087a("messageType", C9997p.m13729h(b));
            String e = C9997p.m13732e(b);
            if (e != null) {
                eVar.mo14087a("messageId", e);
            }
            String k = C9997p.m13726k(b);
            if (k != null) {
                eVar.mo14087a("topic", k);
            }
            String a = C9997p.m13743a(b);
            if (a != null) {
                eVar.mo14087a("collapseKey", a);
            }
            if (C9997p.m13731f(b) != null) {
                eVar.mo14087a("analyticsLabel", C9997p.m13731f(b));
            }
            if (C9997p.m13735c(b) != null) {
                eVar.mo14087a("composerLabel", C9997p.m13735c(b));
            }
            String d = C9997p.m13734d();
            if (d != null) {
                eVar.mo14087a("projectNumber", d);
            }
        }
    }

    /* renamed from: h.i.c.x.m$b */
    /* loaded from: classes2-dex2jar.jar:h/i/c/x/m$b.class */
    public static final class C9993b {

        /* renamed from: a */
        public final C9991m f22596a;

        public C9993b(@NonNull C9991m mVar) {
            C7021t.m21290a(mVar);
            this.f22596a = mVar;
        }

        @NonNull
        /* renamed from: a */
        public final C9991m m13752a() {
            return this.f22596a;
        }
    }

    /* renamed from: h.i.c.x.m$c */
    /* loaded from: classes2-dex2jar.jar:h/i/c/x/m$c.class */
    public static final class C9994c implements AbstractC9841d<C9993b> {
        /* renamed from: a */
        public final void mo13750a(C9993b bVar, AbstractC9842e eVar) throws C9840c, IOException {
            eVar.mo14087a("messaging_client_event", bVar.m13752a());
        }
    }

    public C9991m(@NonNull String str, @NonNull Intent intent) {
        C7021t.m21287a(str, (Object) "evenType must be non-null");
        this.f22594a = str;
        C7021t.m21289a(intent, "intent must be non-null");
        this.f22595b = intent;
    }

    @NonNull
    /* renamed from: a */
    public final String m13755a() {
        return this.f22594a;
    }

    @NonNull
    /* renamed from: b */
    public final Intent m13754b() {
        return this.f22595b;
    }
}
