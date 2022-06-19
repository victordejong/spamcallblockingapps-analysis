package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.dynamic.RemoteCreator;
/* renamed from: com.google.android.gms.internal.ads.eb */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/eb.class */
public final class C3104eb extends RemoteCreator<AbstractC2859ch> {
    public C3104eb() {
        super("com.google.android.gms.ads.NativeAdViewHolderDelegateCreatorImpl");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.internal.ads.ch] */
    @Override // com.google.android.gms.dynamic.RemoteCreator
    /* renamed from: a */
    protected final /* synthetic */ AbstractC2859ch mo7264a(IBinder iBinder) {
        C2862ck c2862ck;
        if (iBinder == null) {
            c2862ck = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegateCreator");
            c2862ck = queryLocalInterface instanceof AbstractC2859ch ? (AbstractC2859ch) queryLocalInterface : new C2862ck(iBinder);
        }
        return c2862ck;
    }
}
