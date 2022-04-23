package com.google.android.gms.dynamic;

import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.internal.common.zzb;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamic/IObjectWrapper.class */
public interface IObjectWrapper extends IInterface {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamic/IObjectWrapper$Stub.class */
    public static class Stub extends zzb implements IObjectWrapper {

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamic/IObjectWrapper$Stub$zza.class */
        public static final class zza extends com.google.android.gms.internal.common.zza implements IObjectWrapper {
            zza(IBinder iBinder) {
                super(iBinder, "com.google.android.gms.dynamic.IObjectWrapper");
            }
        }

        public Stub() {
            super("com.google.android.gms.dynamic.IObjectWrapper");
        }

        /* renamed from: b */
        public static IObjectWrapper m14259b(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamic.IObjectWrapper");
            return queryLocalInterface instanceof IObjectWrapper ? (IObjectWrapper) queryLocalInterface : new zza(iBinder);
        }
    }
}
