package com.google.android.play.core.internal;

import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/aj.class */
public abstract class aj extends bn implements ak {
    public static ak a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.play.core.splitinstall.protocol.ISplitInstallService");
        return queryLocalInterface instanceof ak ? (ak) queryLocalInterface : new ai(iBinder);
    }
}
