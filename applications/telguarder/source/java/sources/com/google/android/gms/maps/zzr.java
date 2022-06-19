package com.google.android.gms.maps;

import android.graphics.Bitmap;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.internal.zzbt;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/zzr.class */
public final class zzr extends zzbt {
    private final /* synthetic */ GoogleMap.SnapshotReadyCallback zzz;

    public zzr(GoogleMap googleMap, GoogleMap.SnapshotReadyCallback snapshotReadyCallback) {
        this.zzz = snapshotReadyCallback;
    }

    @Override // com.google.android.gms.maps.internal.zzbs
    public final void onSnapshotReady(Bitmap bitmap) throws RemoteException {
        this.zzz.onSnapshotReady(bitmap);
    }

    @Override // com.google.android.gms.maps.internal.zzbs
    public final void zzb(IObjectWrapper iObjectWrapper) throws RemoteException {
        this.zzz.onSnapshotReady((Bitmap) ObjectWrapper.unwrap(iObjectWrapper));
    }
}
