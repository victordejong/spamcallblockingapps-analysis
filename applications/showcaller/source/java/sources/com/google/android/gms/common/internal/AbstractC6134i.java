package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.IBinder;
import android.os.IInterface;
import androidx.annotation.RecentlyNonNull;
import p078c.p084c.p085a.p086a.p088b.p091c.BinderC1848b;
/* renamed from: com.google.android.gms.common.internal.i */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/i.class */
public interface AbstractC6134i extends IInterface {

    /* renamed from: com.google.android.gms.common.internal.i$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/i$a.class */
    public static abstract class AbstractBinderC6135a extends BinderC1848b implements AbstractC6134i {
        @RecentlyNonNull
        /* renamed from: D0 */
        public static AbstractC6134i m17054D0(@RecentlyNonNull IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IAccountAccessor");
            return queryLocalInterface instanceof AbstractC6134i ? (AbstractC6134i) queryLocalInterface : new C6169s1(iBinder);
        }
    }

    @RecentlyNonNull
    /* renamed from: b */
    Account mo16986b();
}
