package com.google.android.gms.common.internal;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: com.google.android.gms.common.internal.o */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/o.class */
public interface AbstractC2653o extends IInterface {

    /* renamed from: com.google.android.gms.common.internal.o$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/o$a.class */
    public static abstract class AbstractBinderC2654a extends Binder implements AbstractC2653o {

        /* renamed from: com.google.android.gms.common.internal.o$a$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/o$a$a.class */
        public static final class C2655a implements AbstractC2653o {

            /* renamed from: a */
            private final IBinder f7412a;

            public C2655a(IBinder iBinder) {
                this.f7412a = iBinder;
            }

            @Override // com.google.android.gms.common.internal.AbstractC2653o
            /* renamed from: a */
            public final void mo13996a(AbstractC2651n abstractC2651n, C2641g c2641g) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    obtain.writeStrongBinder(abstractC2651n != null ? abstractC2651n.asBinder() : null);
                    if (c2641g != null) {
                        obtain.writeInt(1);
                        c2641g.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f7412a.transact(46, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f7412a;
            }
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            C2614aq c2614aq;
            boolean z;
            if (i > 16777215) {
                z = super.onTransact(i, parcel, parcel2, i2);
            } else {
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    c2614aq = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsCallbacks");
                    c2614aq = queryLocalInterface instanceof AbstractC2651n ? (AbstractC2651n) queryLocalInterface : new C2614aq(readStrongBinder);
                }
                if (i != 46) {
                    if (i == 47) {
                        if (parcel.readInt() != 0) {
                            C2621ax.CREATOR.createFromParcel(parcel);
                        }
                        throw new UnsupportedOperationException();
                    }
                    parcel.readInt();
                    if (i != 4) {
                        parcel.readString();
                    }
                    switch (i) {
                        case 1:
                            parcel.readString();
                            parcel.createStringArray();
                            parcel.readString();
                            if (parcel.readInt() != 0) {
                                Bundle.CREATOR.createFromParcel(parcel);
                                break;
                            }
                            break;
                        case 2:
                        case 5:
                        case 6:
                        case 7:
                        case 8:
                        case 11:
                        case 12:
                        case 13:
                        case 14:
                        case 15:
                        case 16:
                        case 17:
                        case 18:
                        case 23:
                        case 25:
                        case 27:
                        case 37:
                        case 38:
                        case 41:
                        case 43:
                            if (parcel.readInt() != 0) {
                                Bundle.CREATOR.createFromParcel(parcel);
                                break;
                            }
                            break;
                        case 9:
                            parcel.readString();
                            parcel.createStringArray();
                            parcel.readString();
                            parcel.readStrongBinder();
                            parcel.readString();
                            if (parcel.readInt() != 0) {
                                Bundle.CREATOR.createFromParcel(parcel);
                                break;
                            }
                            break;
                        case 10:
                            parcel.readString();
                            parcel.createStringArray();
                            break;
                        case 19:
                            parcel.readStrongBinder();
                            if (parcel.readInt() != 0) {
                                Bundle.CREATOR.createFromParcel(parcel);
                                break;
                            }
                            break;
                        case 20:
                        case 30:
                            parcel.createStringArray();
                            parcel.readString();
                            if (parcel.readInt() != 0) {
                                Bundle.CREATOR.createFromParcel(parcel);
                                break;
                            }
                            break;
                        case 34:
                            parcel.readString();
                            break;
                    }
                    throw new UnsupportedOperationException();
                }
                mo13996a(c2614aq, parcel.readInt() != 0 ? C2641g.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                z = true;
            }
            return z;
        }
    }

    /* renamed from: a */
    void mo13996a(AbstractC2651n abstractC2651n, C2641g c2641g);
}
