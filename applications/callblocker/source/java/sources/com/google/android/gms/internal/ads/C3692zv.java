package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
/* renamed from: com.google.android.gms.internal.ads.zv */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zv.class */
public final class C3692zv extends AbstractC3684zn {
    @Override // com.google.android.gms.internal.ads.AbstractC3684zn
    /* renamed from: a */
    public final AbstractC3685zo mo6652a(Context context, aad aadVar, int i, boolean z, C3373o c3373o, aae aaeVar) {
        AbstractC3685zo aalVar;
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        if (!(applicationInfo == null || applicationInfo.targetSdkVersion >= 11)) {
            aalVar = null;
        } else {
            aalVar = i == 2 ? new aal(context, new aah(context, aadVar.mo13438j(), aadVar.getRequestId(), c3373o, aadVar.mo13446e()), aadVar, z, m6703a(aadVar), aaeVar) : new TextureView$SurfaceTextureListenerC3671za(context, z, m6703a(aadVar), aaeVar, new aah(context, aadVar.mo13438j(), aadVar.getRequestId(), c3373o, aadVar.mo13446e()));
        }
        return aalVar;
    }
}
