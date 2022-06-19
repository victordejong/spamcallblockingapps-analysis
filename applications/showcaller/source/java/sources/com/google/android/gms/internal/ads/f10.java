package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.dynamic.RemoteCreator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/f10.class */
public final class f10 extends RemoteCreator<AbstractC6941rz> {
    public f10() {
        super("com.google.android.gms.ads.NativeAdViewHolderDelegateCreatorImpl");
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    /* renamed from: a */
    protected final /* bridge */ /* synthetic */ AbstractC6941rz mo10567a(IBinder iBinder) {
        C6904qz c6904qz;
        if (iBinder == null) {
            c6904qz = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegateCreator");
            c6904qz = queryLocalInterface instanceof AbstractC6941rz ? (AbstractC6941rz) queryLocalInterface : new C6904qz(iBinder);
        }
        return c6904qz;
    }
}
