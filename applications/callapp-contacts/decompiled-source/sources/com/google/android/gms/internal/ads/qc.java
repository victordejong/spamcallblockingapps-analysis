package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.ads.nativead.NativeAd;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/qc.class */
public final class qc extends NativeAd.AdChoicesInfo {

    /* renamed from: a  reason: collision with root package name */
    private final List<NativeAd.Image> f28319a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private String f28320b;

    public qc(dj djVar) {
        try {
            this.f28320b = djVar.a();
        } catch (RemoteException e) {
            za.zzc("", e);
            this.f28320b = "";
        }
        try {
            for (dr drVar : djVar.b()) {
                dr a2 = drVar instanceof IBinder ? du.a((IBinder) drVar) : null;
                if (a2 != null) {
                    this.f28319a.add(new qe(a2));
                }
            }
        } catch (RemoteException e2) {
            za.zzc("", e2);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd.AdChoicesInfo
    public final List<NativeAd.Image> getImages() {
        return this.f28319a;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd.AdChoicesInfo
    public final CharSequence getText() {
        return this.f28320b;
    }
}
