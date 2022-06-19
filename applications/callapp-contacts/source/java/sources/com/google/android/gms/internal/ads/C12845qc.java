package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.ads.nativead.NativeAd;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.qc */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/qc.class */
public final class C12845qc extends NativeAd.AdChoicesInfo {

    /* renamed from: a */
    private final List<NativeAd.Image> f49721a = new ArrayList();

    /* renamed from: b */
    private String f49722b;

    public C12845qc(AbstractC12371dj abstractC12371dj) {
        try {
            this.f49722b = abstractC12371dj.mo16523a();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
            this.f49722b = "";
        }
        try {
            for (AbstractC12394dr abstractC12394dr : abstractC12371dj.mo16522b()) {
                AbstractC12394dr m15703a = abstractC12394dr instanceof IBinder ? AbstractBinderC12426du.m15703a((IBinder) abstractC12394dr) : null;
                if (m15703a != null) {
                    this.f49721a.add(new C12847qe(m15703a));
                }
            }
        } catch (RemoteException e2) {
            C13088za.zzc("", e2);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd.AdChoicesInfo
    public final List<NativeAd.Image> getImages() {
        return this.f49721a;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd.AdChoicesInfo
    public final CharSequence getText() {
        return this.f49722b;
    }
}
