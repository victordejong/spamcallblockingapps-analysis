package com.criteo.publisher.p023p;

import android.app.Activity;
import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.criteo.publisher.p022o.C2083a;
/* renamed from: com.criteo.publisher.p.b */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/p/b.class */
public class C2087b {
    @NonNull

    /* renamed from: a */
    public final Context f2335a;

    /* renamed from: com.criteo.publisher.p.b$a */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/p/b$a.class */
    public static class C2088a extends C2083a {
        @NonNull

        /* renamed from: a */
        public final Application f2336a;
        @NonNull

        /* renamed from: b */
        public final ComponentName f2337b;
        @Nullable

        /* renamed from: c */
        public AbstractC2089c f2338c;

        public C2088a(@NonNull Application application, @NonNull ComponentName componentName, @Nullable AbstractC2089c cVar) {
            this.f2336a = application;
            this.f2337b = componentName;
            this.f2338c = cVar;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            AbstractC2089c cVar;
            if (this.f2337b.equals(activity.getComponentName()) && (cVar = this.f2338c) != null) {
                cVar.mo35710a();
                this.f2336a.unregisterActivityLifecycleCallbacks(this);
                this.f2338c = null;
            }
        }
    }

    public C2087b(@NonNull Context context) {
        this.f2335a = context;
    }

    /* renamed from: a */
    public void m35711a(@NonNull String str, @Nullable ComponentName componentName, @NonNull AbstractC2089c cVar) {
        Intent addFlags = new Intent("android.intent.action.VIEW", Uri.parse(str)).addFlags(268435456);
        if (this.f2335a.getPackageManager().queryIntentActivities(addFlags, 65536).size() > 0) {
            this.f2335a.startActivity(addFlags);
            cVar.mo35709b();
            if (componentName != null) {
                Application application = (Application) this.f2335a.getApplicationContext();
                application.registerActivityLifecycleCallbacks(new C2088a(application, componentName, cVar));
            }
        }
    }
}
