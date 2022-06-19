package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.NativeAd;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.do */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/do.class */
public final class C12387do extends NativeAd.AdChoicesInfo {

    /* renamed from: a */
    private final AbstractC12371dj f47302a;

    /* renamed from: b */
    private final List<NativeAd.Image> f47303b = new ArrayList();

    /* renamed from: c */
    private String f47304c;

    public C12387do(AbstractC12371dj abstractC12371dj) {
        C12425dt c12425dt;
        IBinder iBinder;
        this.f47302a = abstractC12371dj;
        try {
            this.f47304c = abstractC12371dj.mo16523a();
        } catch (RemoteException e) {
            C13088za.zzc("", e);
            this.f47304c = "";
        }
        try {
            for (AbstractC12394dr abstractC12394dr : abstractC12371dj.mo16522b()) {
                if (!(abstractC12394dr instanceof IBinder) || (iBinder = (IBinder) abstractC12394dr) == null) {
                    c12425dt = null;
                } else {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
                    c12425dt = queryLocalInterface instanceof AbstractC12394dr ? (AbstractC12394dr) queryLocalInterface : new C12425dt(iBinder);
                }
                if (c12425dt != null) {
                    this.f47303b.add(new C12430dw(c12425dt));
                }
            }
        } catch (RemoteException e2) {
            C13088za.zzc("", e2);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.AdChoicesInfo
    public final List<NativeAd.Image> getImages() {
        return this.f47303b;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.AdChoicesInfo
    public final CharSequence getText() {
        return this.f47304c;
    }
}
