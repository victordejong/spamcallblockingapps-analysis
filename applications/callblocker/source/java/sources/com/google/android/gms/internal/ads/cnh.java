package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cnh.class */
final class cnh implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ Context f13393a;

    public cnh(clf clfVar, Context context) {
        this.f13393a = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        clq clqVar;
        cfb cfbVar;
        try {
            cfbVar = clf.f13259s;
            cfbVar.mo11053a(this.f13393a);
        } catch (Exception e) {
            clqVar = clf.f13261u;
            clqVar.m11085a(2019, -1L, e);
        }
    }
}
