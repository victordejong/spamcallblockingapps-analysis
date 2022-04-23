package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.clearcut.LogEventParcelable;
import com.google.android.gms.internal.aq;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ar.class */
public interface ar extends IInterface {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ar$a.class */
    public static abstract class a extends Binder implements ar {

        /* renamed from: com.google.android.gms.internal.ar$a$a  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ar$a$a.class */
        private static final class C0125a implements ar {

            /* renamed from: a  reason: collision with root package name */
            private IBinder f4124a;

            C0125a(IBinder iBinder) {
                this.f4124a = iBinder;
            }

            @Override // com.google.android.gms.internal.ar
            public final void a(aq aqVar, LogEventParcelable logEventParcelable) {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.clearcut.internal.IClearcutLoggerService");
                    if (aqVar != null) {
                        iBinder = aqVar.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    if (logEventParcelable != null) {
                        obtain.writeInt(1);
                        logEventParcelable.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f4124a.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f4124a;
            }
        }

        public static ar a(IBinder iBinder) {
            ar aVar;
            if (iBinder == null) {
                aVar = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.clearcut.internal.IClearcutLoggerService");
                aVar = (queryLocalInterface == null || !(queryLocalInterface instanceof ar)) ? new C0125a(iBinder) : (ar) queryLocalInterface;
            }
            return aVar;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            aq aVar;
            boolean z;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.clearcut.internal.IClearcutLoggerService");
                    IBinder readStrongBinder = parcel.readStrongBinder();
                    if (readStrongBinder == null) {
                        aVar = null;
                    } else {
                        IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.clearcut.internal.IClearcutLoggerCallbacks");
                        aVar = (queryLocalInterface == null || !(queryLocalInterface instanceof aq)) ? new aq.a.C0124a(readStrongBinder) : (aq) queryLocalInterface;
                    }
                    a(aVar, parcel.readInt() != 0 ? (LogEventParcelable) LogEventParcelable.CREATOR.createFromParcel(parcel) : null);
                    z = true;
                    break;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.clearcut.internal.IClearcutLoggerService");
                    z = true;
                    break;
                default:
                    z = super.onTransact(i, parcel, parcel2, i2);
                    break;
            }
            return z;
        }
    }

    void a(aq aqVar, LogEventParcelable logEventParcelable);
}
