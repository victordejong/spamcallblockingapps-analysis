package com.criteo.publisher.p242b;

import android.app.Activity;
import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.criteo.publisher.p255m.C8420a;
/* renamed from: com.criteo.publisher.b.b */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/b/b.class */
public class C8255b {

    /* renamed from: a */
    private final Context f29807a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.criteo.publisher.b.b$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/b/b$a.class */
    public static final class C8256a extends C8420a {

        /* renamed from: a */
        private final Application f29808a;

        /* renamed from: b */
        private final ComponentName f29809b;

        /* renamed from: c */
        private AbstractC8257c f29810c;

        public C8256a(Application application, ComponentName componentName, AbstractC8257c abstractC8257c) {
            this.f29808a = application;
            this.f29809b = componentName;
            this.f29810c = abstractC8257c;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityResumed(Activity activity) {
            AbstractC8257c abstractC8257c;
            if (this.f29809b.equals(activity.getComponentName()) && (abstractC8257c = this.f29810c) != null) {
                abstractC8257c.mo25759b();
                this.f29808a.unregisterActivityLifecycleCallbacks(this);
                this.f29810c = null;
            }
        }
    }

    public C8255b(Context context) {
        this.f29807a = context;
    }

    /* renamed from: a */
    public final void m25960a(String str, ComponentName componentName, AbstractC8257c abstractC8257c) {
        Intent addFlags = new Intent("android.intent.action.VIEW", Uri.parse(str)).addFlags(268435456);
        if (this.f29807a.getPackageManager().queryIntentActivities(addFlags, 65536).size() > 0) {
            this.f29807a.startActivity(addFlags);
            abstractC8257c.mo25762a();
            if (componentName == null) {
                return;
            }
            Application application = (Application) this.f29807a.getApplicationContext();
            application.registerActivityLifecycleCallbacks(new C8256a(application, componentName, abstractC8257c));
        }
    }
}
