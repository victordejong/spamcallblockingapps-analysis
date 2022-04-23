package com.google.android.gms.common.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.view.View;
import com.google.android.gms.dynamic.RemoteCreator;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.internal.base.c;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/ap.class */
public final class ap extends RemoteCreator<ag> {

    /* renamed from: a  reason: collision with root package name */
    private static final ap f22844a = new ap();

    private ap() {
        super("com.google.android.gms.common.ui.SignInButtonCreatorImpl");
    }

    public static View a(Context context, int i, int i2) throws RemoteCreator.RemoteCreatorException {
        ap apVar = f22844a;
        try {
            zax zaxVar = new zax(1, i, i2, null);
            b a2 = d.a(context);
            ag a3 = apVar.a(context);
            Parcel a4 = a3.a();
            c.a(a4, a2);
            c.a(a4, zaxVar);
            Parcel a5 = a3.a(a4);
            b a6 = b.a.a(a5.readStrongBinder());
            a5.recycle();
            return (View) d.a(a6);
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder(64);
            sb.append("Could not get button with size ");
            sb.append(i);
            sb.append(" and color ");
            sb.append(i2);
            throw new RemoteCreator.RemoteCreatorException(sb.toString(), e);
        }
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    public final /* synthetic */ ag a(IBinder iBinder) {
        ag agVar;
        if (iBinder == null) {
            agVar = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.ISignInButtonCreator");
            agVar = queryLocalInterface instanceof ag ? (ag) queryLocalInterface : new ag(iBinder);
        }
        return agVar;
    }
}
