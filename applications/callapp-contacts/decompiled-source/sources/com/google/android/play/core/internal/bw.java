package com.google.android.play.core.internal;

import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/bw.class */
public abstract class bw extends bn implements bx {
    public static bx a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.play.core.assetpacks.protocol.IAssetModuleService");
        return queryLocalInterface instanceof bx ? (bx) queryLocalInterface : new bv(iBinder);
    }
}
