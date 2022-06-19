package com.google.android.play.core.internal;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: com.google.android.play.core.internal.aj */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/aj.class */
public abstract class AbstractBinderC15019aj extends BinderC15050bn implements AbstractC15020ak {
    /* renamed from: a */
    public static AbstractC15020ak m9590a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.play.core.splitinstall.protocol.ISplitInstallService");
        return queryLocalInterface instanceof AbstractC15020ak ? (AbstractC15020ak) queryLocalInterface : new C15018ai(iBinder);
    }
}
