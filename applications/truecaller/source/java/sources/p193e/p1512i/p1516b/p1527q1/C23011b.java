package p193e.p1512i.p1516b.p1527q1;

import android.app.Activity;
import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import p193e.p1512i.p1516b.p1520f3.C22945a;
/* renamed from: e.i.b.q1.b */
/* loaded from: classes-dex2jar.jar:e/i/b/q1/b.class */
public class C23011b {

    /* renamed from: a */
    public final Context f63779a;

    /* renamed from: e.i.b.q1.b$a */
    /* loaded from: classes-dex2jar.jar:e/i/b/q1/b$a.class */
    public static class C23012a extends C22945a {

        /* renamed from: a */
        public final Application f63780a;

        /* renamed from: b */
        public final ComponentName f63781b;

        /* renamed from: c */
        public AbstractC23013c f63782c;

        public C23012a(Application application, ComponentName componentName, AbstractC23013c abstractC23013c) {
            this.f63780a = application;
            this.f63781b = componentName;
            this.f63782c = abstractC23013c;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            AbstractC23013c abstractC23013c;
            if (this.f63781b.equals(activity.getComponentName()) && (abstractC23013c = this.f63782c) != null) {
                abstractC23013c.mo7576a();
                this.f63780a.unregisterActivityLifecycleCallbacks(this);
                this.f63782c = null;
            }
        }
    }

    public C23011b(Context context) {
        this.f63779a = context;
    }

    /* renamed from: a */
    public void m7589a(String str, ComponentName componentName, AbstractC23013c abstractC23013c) {
        Intent addFlags = new Intent("android.intent.action.VIEW", Uri.parse(str)).addFlags(268435456);
        if (this.f63779a.getPackageManager().queryIntentActivities(addFlags, 65536).size() > 0) {
            this.f63779a.startActivity(addFlags);
            abstractC23013c.mo7575b();
            if (componentName == null) {
                return;
            }
            Application application = (Application) this.f63779a.getApplicationContext();
            application.registerActivityLifecycleCallbacks(new C23012a(application, componentName, abstractC23013c));
        }
    }
}
