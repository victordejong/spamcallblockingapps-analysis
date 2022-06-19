package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.View;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cqj.class */
final class cqj implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ Context f13574a;

    /* renamed from: b */
    private final /* synthetic */ View f13575b;

    /* renamed from: c */
    private final /* synthetic */ Activity f13576c;

    public cqj(clf clfVar, Context context, View view, Activity activity) {
        this.f13574a = context;
        this.f13575b = view;
        this.f13576c = activity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        clq clqVar;
        cfb cfbVar;
        try {
            cfbVar = clf.f13259s;
            cfbVar.mo11052a(this.f13574a, this.f13575b, this.f13576c);
        } catch (Exception e) {
            clqVar = clf.f13261u;
            clqVar.m11085a(2020, -1L, e);
        }
    }
}
