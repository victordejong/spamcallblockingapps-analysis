package com.google.android.gms.common.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.view.View;
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.dynamic.BinderC12129d;
import com.google.android.gms.dynamic.RemoteCreator;
import com.google.android.gms.internal.base.C13153c;
/* renamed from: com.google.android.gms.common.internal.ap */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/ap.class */
public final class C11990ap extends RemoteCreator<C11981ag> {

    /* renamed from: a */
    private static final C11990ap f39493a = new C11990ap();

    private C11990ap() {
        super("com.google.android.gms.common.ui.SignInButtonCreatorImpl");
    }

    /* renamed from: a */
    public static View m19221a(Context context, int i, int i2) throws RemoteCreator.RemoteCreatorException {
        C11990ap c11990ap = f39493a;
        try {
            zax zaxVar = new zax(1, i, i2, null);
            AbstractC12126b m18979a = BinderC12129d.m18979a(context);
            C11981ag a = c11990ap.m18996a(context);
            Parcel m13603a = a.m13603a();
            C13153c.m13599a(m13603a, m18979a);
            C13153c.m13597a(m13603a, zaxVar);
            Parcel m13602a = a.m13602a(m13603a);
            AbstractC12126b m18981a = AbstractC12126b.AbstractBinderC12127a.m18981a(m13602a.readStrongBinder());
            m13602a.recycle();
            return (View) BinderC12129d.m18980a(m18981a);
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
    /* renamed from: a */
    public final /* synthetic */ C11981ag mo14119a(IBinder iBinder) {
        C11981ag c11981ag;
        if (iBinder == null) {
            c11981ag = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.ISignInButtonCreator");
            c11981ag = queryLocalInterface instanceof C11981ag ? (C11981ag) queryLocalInterface : new C11981ag(iBinder);
        }
        return c11981ag;
    }
}
