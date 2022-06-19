package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Handler;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.p2 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/p2.class */
public final class C6834p2 {

    /* renamed from: a */
    private final Context f27813a;

    /* renamed from: b */
    private final RunnableC6760n2 f27814b;

    public C6834p2(Context context, Handler handler, AbstractC6797o2 abstractC6797o2) {
        this.f27813a = context.getApplicationContext();
        this.f27814b = new RunnableC6760n2(this, handler, abstractC6797o2);
    }
}
