package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.View;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cpi.class */
final class cpi implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ Context f13495a;

    /* renamed from: b */
    private final /* synthetic */ String f13496b;

    /* renamed from: c */
    private final /* synthetic */ View f13497c;

    /* renamed from: d */
    private final /* synthetic */ Activity f13498d;

    public cpi(clf clfVar, Context context, String str, View view, Activity activity) {
        this.f13495a = context;
        this.f13496b = str;
        this.f13497c = view;
        this.f13498d = activity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        clq clqVar;
        cfb cfbVar;
        try {
            cfbVar = clf.f13259s;
            cfbVar.mo11048a(this.f13495a, this.f13496b, this.f13497c, this.f13498d);
        } catch (Exception e) {
            clqVar = clf.f13261u;
            clqVar.m11085a(2021, -1L, e);
        }
    }
}
