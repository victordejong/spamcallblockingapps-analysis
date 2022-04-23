package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.View;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/deb.class */
final class deb implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ Context f26774a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ String f26775b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ View f26776c;

    /* renamed from: d  reason: collision with root package name */
    private final /* synthetic */ Activity f26777d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public deb(czy czyVar, Context context, String str, View view, Activity activity) {
        this.f26774a = context;
        this.f26775b = str;
        this.f26776c = view;
        this.f26777d = activity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        cuy cuyVar;
        csa csaVar;
        try {
            csaVar = czy.s;
            csaVar.zza(this.f26774a, this.f26775b, this.f26776c, this.f26777d);
        } catch (Exception e) {
            cuyVar = czy.u;
            cuyVar.a(2021, -1L, e);
        }
    }
}
