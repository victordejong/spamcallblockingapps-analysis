package com.google.android.gms.dynamic;

import android.os.IBinder;
import android.os.IInterface;
import androidx.annotation.RecentlyNonNull;
import p078c.p084c.p085a.p086a.p088b.p091c.BinderC1848b;
/* renamed from: com.google.android.gms.dynamic.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamic/a.class */
public interface AbstractC6253a extends IInterface {

    /* renamed from: com.google.android.gms.dynamic.a$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamic/a$a.class */
    public static abstract class AbstractBinderC6254a extends BinderC1848b implements AbstractC6253a {
        public AbstractBinderC6254a() {
            super("com.google.android.gms.dynamic.IObjectWrapper");
        }

        @RecentlyNonNull
        /* renamed from: D0 */
        public static AbstractC6253a m16746D0(@RecentlyNonNull IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamic.IObjectWrapper");
            return queryLocalInterface instanceof AbstractC6253a ? (AbstractC6253a) queryLocalInterface : new C6256c(iBinder);
        }
    }
}
