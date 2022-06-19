package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.NativeAd;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaek.class */
public final class zzaek extends NativeAd.AdChoicesInfo {
    private String text;
    private final List<NativeAd.Image> zzdfk = new ArrayList();
    private final zzaej zzdfv;

    public zzaek(zzaej zzaejVar) {
        zzaet zzaetVar;
        IBinder iBinder;
        this.zzdfv = zzaejVar;
        try {
            this.text = zzaejVar.getText();
        } catch (RemoteException e) {
            zzazk.zzc("", e);
            this.text = "";
        }
        try {
            for (zzaer zzaerVar : zzaejVar.zztd()) {
                if (!(zzaerVar instanceof IBinder) || (iBinder = (IBinder) zzaerVar) == null) {
                    zzaetVar = null;
                } else {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
                    zzaetVar = queryLocalInterface instanceof zzaer ? (zzaer) queryLocalInterface : new zzaet(iBinder);
                }
                if (zzaetVar != null) {
                    this.zzdfk.add(new zzaes(zzaetVar));
                }
            }
        } catch (RemoteException e2) {
            zzazk.zzc("", e2);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.AdChoicesInfo
    public final List<NativeAd.Image> getImages() {
        return this.zzdfk;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.AdChoicesInfo
    public final CharSequence getText() {
        return this.text;
    }
}
