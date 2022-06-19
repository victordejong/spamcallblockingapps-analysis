package com.google.android.gms.dynamic;

import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.internal.common.zzb;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/dynamic/IObjectWrapper.class */
public interface IObjectWrapper extends IInterface {

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/dynamic/IObjectWrapper$Stub.class */
    public static abstract class Stub extends zzb implements IObjectWrapper {
        public Stub() {
            super("com.google.android.gms.dynamic.IObjectWrapper");
        }

        /* renamed from: m1 */
        public static IObjectWrapper m38750m1(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamic.IObjectWrapper");
            return queryLocalInterface instanceof IObjectWrapper ? (IObjectWrapper) queryLocalInterface : new zzb(iBinder);
        }
    }
}
