package com.allinone.callerid.util.p202gg;

import androidx.lifecycle.AbstractC0792d;
import androidx.lifecycle.AbstractC0797h;
import androidx.lifecycle.C0802l;
import androidx.lifecycle.Lifecycle;
/* renamed from: com.allinone.callerid.util.gg.AppOpenManager_LifecycleAdapter */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/gg/AppOpenManager_LifecycleAdapter.class */
public class AppOpenManager_LifecycleAdapter implements AbstractC0792d {

    /* renamed from: a */
    final AppOpenManager f11961a;

    AppOpenManager_LifecycleAdapter(AppOpenManager appOpenManager) {
        this.f11961a = appOpenManager;
    }

    @Override // androidx.lifecycle.AbstractC0792d
    /* renamed from: a */
    public void mo24344a(AbstractC0797h abstractC0797h, Lifecycle.Event event, boolean z, C0802l c0802l) {
        boolean z2 = c0802l != null;
        if (z) {
            return;
        }
        if (event == Lifecycle.Event.ON_START) {
            if (z2 && !c0802l.m32374a("onStart", 1)) {
                return;
            }
            this.f11961a.onStart();
        } else if (event == Lifecycle.Event.ON_CREATE) {
            if (z2 && !c0802l.m32374a("onCreate", 1)) {
                return;
            }
            this.f11961a.onCreate();
        } else if (event == Lifecycle.Event.ON_RESUME) {
            if (z2 && !c0802l.m32374a("onResume", 1)) {
                return;
            }
            this.f11961a.onResume();
        } else if (event == Lifecycle.Event.ON_PAUSE) {
            if (z2 && !c0802l.m32374a("onPause", 1)) {
                return;
            }
            this.f11961a.onPause();
        } else if (event == Lifecycle.Event.ON_STOP) {
            if (z2 && !c0802l.m32374a("onStop", 1)) {
                return;
            }
            this.f11961a.onStop();
        } else if (event != Lifecycle.Event.ON_DESTROY) {
        } else {
            if (z2 && !c0802l.m32374a("onDestroy", 1)) {
                return;
            }
            this.f11961a.onDestroy();
        }
    }
}
