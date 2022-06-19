package com.google.android.gms.common.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.view.View;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.RemoteCreator;
import com.google.android.gms.internal.base.zac;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/zaz.class */
public final class zaz extends RemoteCreator<zam> {

    /* renamed from: a */
    public static final zaz f6039a = new zaz();

    private zaz() {
        super("com.google.android.gms.common.ui.SignInButtonCreatorImpl");
    }

    /* renamed from: a */
    public static View m38823a(Context context, int i, int i2) throws RemoteCreator.RemoteCreatorException {
        zaz zazVar = f6039a;
        try {
            zax zaxVar = new zax(1, i, i2, null);
            ObjectWrapper objectWrapper = new ObjectWrapper(context);
            zam remoteCreatorInstance = zazVar.getRemoteCreatorInstance(context);
            Parcel zaa = remoteCreatorInstance.zaa();
            zac.zad(zaa, objectWrapper);
            zac.zac(zaa, zaxVar);
            Parcel zab = remoteCreatorInstance.zab(2, zaa);
            IObjectWrapper m38750m1 = IObjectWrapper.Stub.m38750m1(zab.readStrongBinder());
            zab.recycle();
            return (View) ObjectWrapper.m38746B1(m38750m1);
        } catch (Exception e) {
            throw new RemoteCreator.RemoteCreatorException(C22128a.m8683N1(64, "Could not get button with size ", i, " and color ", i2), e);
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
