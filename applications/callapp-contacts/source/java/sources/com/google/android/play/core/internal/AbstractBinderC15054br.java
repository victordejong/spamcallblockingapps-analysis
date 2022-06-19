package com.google.android.play.core.internal;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: com.google.android.play.core.internal.br */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/br.class */
public abstract class AbstractBinderC15054br extends BinderC15050bn implements AbstractC15055bs {
    /* renamed from: a */
    public static AbstractC15055bs m9547a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.play.core.appupdate.protocol.IAppUpdateService");
        return queryLocalInterface instanceof AbstractC15055bs ? (AbstractC15055bs) queryLocalInterface : new C15052bp(iBinder);
    }
}
