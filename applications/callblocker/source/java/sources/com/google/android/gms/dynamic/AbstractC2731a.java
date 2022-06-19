package com.google.android.gms.dynamic;

import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.internal.p138e.BinderC3719a;
import com.google.android.gms.internal.p138e.C3720b;
/* renamed from: com.google.android.gms.dynamic.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamic/a.class */
public interface AbstractC2731a extends IInterface {

    /* renamed from: com.google.android.gms.dynamic.a$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamic/a$a.class */
    public static class BinderC2732a extends BinderC3719a implements AbstractC2731a {

        /* renamed from: com.google.android.gms.dynamic.a$a$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamic/a$a$a.class */
        public static final class C2733a extends C3720b implements AbstractC2731a {
            C2733a(IBinder iBinder) {
                super(iBinder, "com.google.android.gms.dynamic.IObjectWrapper");
            }
        }

        public BinderC2732a() {
            super("com.google.android.gms.dynamic.IObjectWrapper");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.dynamic.a] */
        /* renamed from: a */
        public static AbstractC2731a m13796a(IBinder iBinder) {
            C2733a c2733a;
            if (iBinder == null) {
                c2733a = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamic.IObjectWrapper");
                c2733a = queryLocalInterface instanceof AbstractC2731a ? (AbstractC2731a) queryLocalInterface : new C2733a(iBinder);
            }
            return c2733a;
        }
    }
}
