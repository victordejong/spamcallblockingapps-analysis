package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.View;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/deb.class */
final class deb implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ Context f47013a;

    /* renamed from: b */
    private final /* synthetic */ String f47014b;

    /* renamed from: c */
    private final /* synthetic */ View f47015c;

    /* renamed from: d */
    private final /* synthetic */ Activity f47016d;

    public deb(czy czyVar, Context context, String str, View view, Activity activity) {
        this.f47013a = context;
        this.f47014b = str;
        this.f47015c = view;
        this.f47016d = activity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        cuy cuyVar;
        csa csaVar;
        try {
            csaVar = czy.f46829s;
            csaVar.zza(this.f47013a, this.f47014b, this.f47015c, this.f47016d);
        } catch (Exception e) {
            cuyVar = czy.f46831u;
            cuyVar.m17192a(2021, -1L, e);
        }
    }
}
