package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.dynamic.RemoteCreator;
/* renamed from: com.google.android.gms.internal.ads.dy */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dy.class */
public final class C3100dy extends RemoteCreator<AbstractC2856ce> {
    public C3100dy() {
        super("com.google.android.gms.ads.NativeAdViewDelegateCreatorImpl");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.internal.ads.ce] */
    @Override // com.google.android.gms.dynamic.RemoteCreator
    /* renamed from: a */
    protected final /* synthetic */ AbstractC2856ce mo7264a(IBinder iBinder) {
        C2855cd c2855cd;
        if (iBinder == null) {
            c2855cd = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegateCreator");
            c2855cd = queryLocalInterface instanceof AbstractC2856ce ? (AbstractC2856ce) queryLocalInterface : new C2855cd(iBinder);
        }
        return c2855cd;
    }
}
