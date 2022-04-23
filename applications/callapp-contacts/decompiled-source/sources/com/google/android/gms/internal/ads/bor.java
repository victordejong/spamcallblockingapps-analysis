package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bor.class */
final class bor implements auf {

    /* renamed from: a  reason: collision with root package name */
    private final Context f24805a;

    /* renamed from: b  reason: collision with root package name */
    private final wo f24806b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bor(Context context, wo woVar) {
        this.f24805a = context;
        this.f24806b = woVar;
    }

    @Override // com.google.android.gms.internal.ads.auf
    public final void a(cpk cpkVar) {
        if (!TextUtils.isEmpty(cpkVar.f26222b.f26217b.f26199d)) {
            wo woVar = this.f24806b;
            Context context = this.f24805a;
            if (((Boolean) ekb.e().a(aq.af)).booleanValue() && woVar.a(context) && wo.b(context)) {
                synchronized (woVar.f28484c) {
                }
            }
            this.f24806b.a(this.f24805a, "_aq", cpkVar.f26222b.f26217b.f26199d, (Bundle) null);
        }
    }

    @Override // com.google.android.gms.internal.ads.auf
    public final void a(zzauj zzaujVar) {
    }
}
