package com.google.android.gms.common.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.view.View;
import com.google.android.gms.dynamic.BinderC6255b;
import com.google.android.gms.dynamic.RemoteCreator;
/* renamed from: com.google.android.gms.common.internal.p0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/p0.class */
public final class C6159p0 extends RemoteCreator<C6129g0> {

    /* renamed from: c */
    private static final C6159p0 f19590c = new C6159p0();

    private C6159p0() {
        super("com.google.android.gms.common.ui.SignInButtonCreatorImpl");
    }

    /* renamed from: c */
    public static View m17002c(Context context, int i, int i2) {
        C6159p0 c6159p0 = f19590c;
        try {
            zax zaxVar = new zax(1, i, i2, null);
            return (View) BinderC6255b.m16745J0(c6159p0.m16747b(context).m17055a3(BinderC6255b.m16744m2(context), zaxVar));
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
    public final /* bridge */ /* synthetic */ C6129g0 mo10567a(IBinder iBinder) {
        C6129g0 c6129g0;
        if (iBinder == null) {
            c6129g0 = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.ISignInButtonCreator");
            c6129g0 = queryLocalInterface instanceof C6129g0 ? (C6129g0) queryLocalInterface : new C6129g0(iBinder);
        }
        return c6129g0;
    }
}
