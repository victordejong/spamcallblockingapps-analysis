package com.google.android.play.core.internal;

import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/br.class */
public abstract class br extends bn implements bs {
    public static bs a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.play.core.appupdate.protocol.IAppUpdateService");
        return queryLocalInterface instanceof bs ? (bs) queryLocalInterface : new bp(iBinder);
    }
}
