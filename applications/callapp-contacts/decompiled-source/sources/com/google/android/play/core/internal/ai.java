package com.google.android.play.core.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/ai.class */
public final class ai extends bm implements ak {
    /* JADX INFO: Access modifiers changed from: package-private */
    public ai(IBinder iBinder) {
        super(iBinder, "com.google.android.play.core.splitinstall.protocol.ISplitInstallService");
    }

    @Override // com.google.android.play.core.internal.ak
    public final void a(String str, int i, am amVar) throws RemoteException {
        Parcel a2 = a();
        a2.writeString(str);
        a2.writeInt(i);
        bo.a(a2, amVar);
        a(5, a2);
    }

    @Override // com.google.android.play.core.internal.ak
    public final void a(String str, List<Bundle> list, Bundle bundle, am amVar) throws RemoteException {
        Parcel a2 = a();
        a2.writeString(str);
        a2.writeTypedList(list);
        bo.a(a2, bundle);
        bo.a(a2, amVar);
        a(2, a2);
    }
}
