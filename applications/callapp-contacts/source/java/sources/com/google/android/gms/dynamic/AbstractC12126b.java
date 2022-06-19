package com.google.android.gms.dynamic;

import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.internal.p357c.BinderC13162b;
/* renamed from: com.google.android.gms.dynamic.b */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/dynamic/b.class */
public interface AbstractC12126b extends IInterface {

    /* renamed from: com.google.android.gms.dynamic.b$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/dynamic/b$a.class */
    public static abstract class AbstractBinderC12127a extends BinderC13162b implements AbstractC12126b {
        public AbstractBinderC12127a() {
            super("com.google.android.gms.dynamic.IObjectWrapper");
        }

        /* renamed from: a */
        public static AbstractC12126b m18981a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamic.IObjectWrapper");
            return queryLocalInterface instanceof AbstractC12126b ? (AbstractC12126b) queryLocalInterface : new C12139n(iBinder);
        }
    }
}
