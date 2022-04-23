package com.google.android.gms.analytics.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/internal/zzac.class */
public interface zzac extends IInterface {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/internal/zzac$zza.class */
    public static abstract class zza extends Binder implements zzac {

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/internal/zzac$zza$a.class */
        private static final class a implements zzac {

            /* renamed from: a  reason: collision with root package name */
            private IBinder f3822a;

            a(IBinder iBinder) {
                this.f3822a = iBinder;
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f3822a;
            }

            @Override // com.google.android.gms.analytics.internal.zzac
            public final String getVersion() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.analytics.internal.IAnalyticsService");
                    this.f3822a.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.analytics.internal.zzac
            public final void zza(Map map, long j, String str, List<Command> list) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.analytics.internal.IAnalyticsService");
                    obtain.writeMap(map);
                    obtain.writeLong(j);
                    obtain.writeString(str);
                    obtain.writeTypedList(list);
                    this.f3822a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.analytics.internal.zzac
            public final void zzlI() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.analytics.internal.IAnalyticsService");
                    this.f3822a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static zzac zzak(IBinder iBinder) {
            zzac aVar;
            if (iBinder == null) {
                aVar = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.analytics.internal.IAnalyticsService");
                aVar = (queryLocalInterface == null || !(queryLocalInterface instanceof zzac)) ? new a(iBinder) : (zzac) queryLocalInterface;
            }
            return aVar;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            boolean z;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.analytics.internal.IAnalyticsService");
                    zza(parcel.readHashMap(getClass().getClassLoader()), parcel.readLong(), parcel.readString(), parcel.createTypedArrayList(Command.CREATOR));
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.analytics.internal.IAnalyticsService");
                    zzlI();
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.analytics.internal.IAnalyticsService");
                    String version = getVersion();
                    parcel2.writeNoException();
                    parcel2.writeString(version);
                    z = true;
                    break;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.analytics.internal.IAnalyticsService");
                    z = true;
                    break;
                default:
                    z = super.onTransact(i, parcel, parcel2, i2);
                    break;
            }
            return z;
        }
    }

    String getVersion();

    void zza(Map map, long j, String str, List<Command> list);

    void zzlI();
}
