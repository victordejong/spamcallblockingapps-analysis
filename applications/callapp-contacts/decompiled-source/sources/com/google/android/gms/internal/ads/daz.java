package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.View;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/daz.class */
final class daz implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ Context f26691a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ View f26692b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ Activity f26693c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public daz(czy czyVar, Context context, View view, Activity activity) {
        this.f26691a = context;
        this.f26692b = view;
        this.f26693c = activity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        cuy cuyVar;
        csa csaVar;
        try {
            csaVar = czy.s;
            csaVar.zza(this.f26691a, this.f26692b, this.f26693c);
        } catch (Exception e) {
            cuyVar = czy.u;
            cuyVar.a(2020, -1L, e);
        }
    }
}
