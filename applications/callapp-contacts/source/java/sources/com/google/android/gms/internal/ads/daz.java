package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.View;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/daz.class */
final class daz implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ Context f46910a;

    /* renamed from: b */
    private final /* synthetic */ View f46911b;

    /* renamed from: c */
    private final /* synthetic */ Activity f46912c;

    public daz(czy czyVar, Context context, View view, Activity activity) {
        this.f46910a = context;
        this.f46911b = view;
        this.f46912c = activity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        cuy cuyVar;
        csa csaVar;
        try {
            csaVar = czy.f46829s;
            csaVar.zza(this.f46910a, this.f46911b, this.f46912c);
        } catch (Exception e) {
            cuyVar = czy.f46831u;
            cuyVar.m17192a(2020, -1L, e);
        }
    }
}
