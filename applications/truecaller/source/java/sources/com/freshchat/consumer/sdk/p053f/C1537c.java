package com.freshchat.consumer.sdk.p053f;

import android.app.Activity;
import android.app.Application;
import com.freshchat.consumer.sdk.p052e.C1533f;
import com.freshchat.consumer.sdk.p057j.AbstractC1677cc;
import com.freshchat.consumer.sdk.p057j.C1613ai;
import java.util.HashSet;
import java.util.Set;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.freshchat.consumer.sdk.f.c */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/f/c.class */
public class C1537c extends AbstractC1677cc {

    /* renamed from: mR */
    private static C1537c f4160mR;

    /* renamed from: mS */
    private boolean f4161mS;

    /* renamed from: mT */
    private Set<Integer> f4162mT = new HashSet();

    /* renamed from: mU */
    private volatile boolean f4163mU;

    private C1537c(Application application) {
        application.registerActivityLifecycleCallbacks(this);
    }

    /* renamed from: a */
    public static C1537c m40583a(Application application) {
        C1537c c1537c;
        synchronized (C1537c.class) {
            try {
                if (f4160mR == null) {
                    synchronized (C1537c.class) {
                        f4160mR = new C1537c(application);
                    }
                }
                c1537c = f4160mR;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c1537c;
    }

    /* renamed from: c */
    private void m40582c(Activity activity) {
        boolean z = !this.f4162mT.isEmpty() || activity.isChangingConfigurations();
        this.f4161mS = z;
        if (!z || !this.f4163mU) {
            return;
        }
        C1533f.m40589bV(activity.getApplicationContext());
        this.f4163mU = false;
    }

    /* renamed from: cE */
    public boolean m40581cE() {
        return this.f4161mS;
    }

    /* renamed from: m */
    public void m40580m(boolean z) {
        C1613ai.m40281i("AppStateListener", " FreshchatInitApiDeferred called - is init Deferred : " + z);
        this.f4163mU = z;
    }

    @Override // com.freshchat.consumer.sdk.p057j.AbstractC1677cc, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        this.f4162mT.add(Integer.valueOf(System.identityHashCode(activity)));
        m40582c(activity);
        StringBuilder m8728C = C22128a.m8728C("onActivityStarted for activity : ");
        m8728C.append(activity.getLocalClassName());
        m8728C.append(" isForegound : ");
        m8728C.append(m40581cE());
        C1613ai.m40281i("AppStateListener", m8728C.toString());
    }

    @Override // com.freshchat.consumer.sdk.p057j.AbstractC1677cc, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        this.f4162mT.remove(Integer.valueOf(System.identityHashCode(activity)));
        m40582c(activity);
        StringBuilder m8728C = C22128a.m8728C("onActivityStopped for activity : ");
        m8728C.append(activity.getLocalClassName());
        m8728C.append(" isForegound : ");
        m8728C.append(m40581cE());
        C1613ai.m40281i("AppStateListener", m8728C.toString());
    }
}
