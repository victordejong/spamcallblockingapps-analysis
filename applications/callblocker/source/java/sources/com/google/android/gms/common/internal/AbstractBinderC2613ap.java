package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC2731a;
import com.google.android.gms.internal.p138e.BinderC3719a;
import com.google.android.gms.internal.p138e.C3722d;
/* renamed from: com.google.android.gms.common.internal.ap */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/ap.class */
public abstract class AbstractBinderC2613ap extends BinderC3719a implements AbstractC2611an {
    public AbstractBinderC2613ap() {
        super("com.google.android.gms.common.internal.ICertData");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.common.internal.an] */
    /* renamed from: a */
    public static AbstractC2611an m14117a(IBinder iBinder) {
        C2612ao c2612ao;
        if (iBinder == null) {
            c2612ao = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.ICertData");
            c2612ao = queryLocalInterface instanceof AbstractC2611an ? (AbstractC2611an) queryLocalInterface : new C2612ao(iBinder);
        }
        return c2612ao;
    }

    @Override // com.google.android.gms.internal.p138e.BinderC3719a
    /* renamed from: a */
    protected final boolean mo6522a(int i, Parcel parcel, Parcel parcel2, int i2) {
        boolean z;
        switch (i) {
            case 1:
                AbstractC2731a a = mo13901a();
                parcel2.writeNoException();
                C3722d.m6517a(parcel2, a);
                z = true;
                break;
            case 2:
                int b = mo13899b();
                parcel2.writeNoException();
                parcel2.writeInt(b);
                z = true;
                break;
            default:
                z = false;
                break;
        }
        return z;
    }
}
