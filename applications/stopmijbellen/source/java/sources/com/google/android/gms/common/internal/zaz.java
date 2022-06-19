package com.google.android.gms.common.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.support.p012v4.media.C0082b;
import android.view.View;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.RemoteCreator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zaz.class */
public final class zaz extends RemoteCreator<zam> {
    private static final zaz zaa = new zaz();

    private zaz() {
        super("com.google.android.gms.common.ui.SignInButtonCreatorImpl");
    }

    public static View zaa(Context context, int i, int i2) throws RemoteCreator.RemoteCreatorException {
        zaz zazVar = zaa;
        try {
            zax zaxVar = new zax(1, i, i2, null);
            return (View) ObjectWrapper.unwrap(zazVar.getRemoteCreatorInstance(context).zae(ObjectWrapper.wrap(context), zaxVar));
        } catch (Exception e) {
            throw new RemoteCreator.RemoteCreatorException(C0082b.m8757e(64, "Could not get button with size ", i, " and color ", i2), e);
        }
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    public final /* bridge */ /* synthetic */ zam getRemoteCreator(IBinder iBinder) {
        zam zamVar;
        if (iBinder == null) {
            zamVar = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.ISignInButtonCreator");
            zamVar = queryLocalInterface instanceof zam ? (zam) queryLocalInterface : new zam(iBinder);
        }
        return zamVar;
    }
}
