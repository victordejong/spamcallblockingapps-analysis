package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.p138e.BinderC3719a;
import com.google.android.gms.internal.p138e.C3722d;
/* renamed from: com.google.android.gms.common.internal.n */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/n.class */
public interface AbstractC2651n extends IInterface {

    /* renamed from: com.google.android.gms.common.internal.n$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/n$a.class */
    public static abstract class AbstractBinderC2652a extends BinderC3719a implements AbstractC2651n {
        public AbstractBinderC2652a() {
            super("com.google.android.gms.common.internal.IGmsCallbacks");
        }

        @Override // com.google.android.gms.internal.p138e.BinderC3719a
        /* renamed from: a */
        protected final boolean mo6522a(int i, Parcel parcel, Parcel parcel2, int i2) {
            boolean z;
            switch (i) {
                case 1:
                    mo13998a(parcel.readInt(), parcel.readStrongBinder(), (Bundle) C3722d.m6516a(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 2:
                    mo13999a(parcel.readInt(), (Bundle) C3722d.m6516a(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 3:
                    mo13997a(parcel.readInt(), parcel.readStrongBinder(), (C2604ag) C3722d.m6516a(parcel, C2604ag.CREATOR));
                    parcel2.writeNoException();
                    z = true;
                    break;
                default:
                    z = false;
                    break;
            }
            return z;
        }
    }

    /* renamed from: a */
    void mo13999a(int i, Bundle bundle);

    /* renamed from: a */
    void mo13998a(int i, IBinder iBinder, Bundle bundle);

    /* renamed from: a */
    void mo13997a(int i, IBinder iBinder, C2604ag c2604ag);
}
