package com.google.android.gms.dynamic;

import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/dynamic/b.class */
public interface b extends IInterface {

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/dynamic/b$a.class */
    public static abstract class a extends com.google.android.gms.internal.c.b implements b {
        public a() {
            super("com.google.android.gms.dynamic.IObjectWrapper");
        }

        public static b a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamic.IObjectWrapper");
            return queryLocalInterface instanceof b ? (b) queryLocalInterface : new n(iBinder);
        }
    }
}
