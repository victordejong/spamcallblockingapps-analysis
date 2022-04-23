package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.NativeAd;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.do  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/do.class */
public final class C0759do extends NativeAd.AdChoicesInfo {

    /* renamed from: a  reason: collision with root package name */
    private final dj f27016a;

    /* renamed from: b  reason: collision with root package name */
    private final List<NativeAd.Image> f27017b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    private String f27018c;

    public C0759do(dj djVar) {
        dr drVar;
        IBinder iBinder;
        this.f27016a = djVar;
        try {
            this.f27018c = djVar.a();
        } catch (RemoteException e) {
            za.zzc("", e);
            this.f27018c = "";
        }
        try {
            for (dr drVar2 : djVar.b()) {
                if (!(drVar2 instanceof IBinder) || (iBinder = (IBinder) drVar2) == null) {
                    drVar = null;
                } else {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
                    drVar = queryLocalInterface instanceof dr ? (dr) queryLocalInterface : new dt(iBinder);
                }
                if (drVar != null) {
                    this.f27017b.add(new dw(drVar));
                }
            }
        } catch (RemoteException e2) {
            za.zzc("", e2);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.AdChoicesInfo
    public final List<NativeAd.Image> getImages() {
        return this.f27017b;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.AdChoicesInfo
    public final CharSequence getText() {
        return this.f27018c;
    }
}
