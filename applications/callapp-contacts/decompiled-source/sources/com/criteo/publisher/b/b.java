package com.criteo.publisher.b;

import android.app.Activity;
import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/b/b.class */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private final Context f17201a;

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/b/b$a.class */
    static final class a extends com.criteo.publisher.m.a {

        /* renamed from: a  reason: collision with root package name */
        private final Application f17202a;

        /* renamed from: b  reason: collision with root package name */
        private final ComponentName f17203b;

        /* renamed from: c  reason: collision with root package name */
        private c f17204c;

        public a(Application application, ComponentName componentName, c cVar) {
            this.f17202a = application;
            this.f17203b = componentName;
            this.f17204c = cVar;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityResumed(Activity activity) {
            c cVar;
            if (this.f17203b.equals(activity.getComponentName()) && (cVar = this.f17204c) != null) {
                cVar.b();
                this.f17202a.unregisterActivityLifecycleCallbacks(this);
                this.f17204c = null;
            }
        }
    }

    public b(Context context) {
        this.f17201a = context;
    }

    public final void a(String str, ComponentName componentName, c cVar) {
        Intent addFlags = new Intent("android.intent.action.VIEW", Uri.parse(str)).addFlags(268435456);
        if (this.f17201a.getPackageManager().queryIntentActivities(addFlags, 65536).size() > 0) {
            this.f17201a.startActivity(addFlags);
            cVar.a();
            if (componentName != null) {
                Application application = (Application) this.f17201a.getApplicationContext();
                application.registerActivityLifecycleCallbacks(new a(application, componentName, cVar));
            }
        }
    }
}
