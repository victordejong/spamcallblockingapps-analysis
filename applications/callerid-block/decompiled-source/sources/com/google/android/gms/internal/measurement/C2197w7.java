package com.google.android.gms.internal.measurement;

import java.lang.reflect.Field;
import java.security.PrivilegedExceptionAction;
import sun.misc.Unsafe;
/* renamed from: com.google.android.gms.internal.measurement.w7 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/w7.class */
final class C2197w7 implements PrivilegedExceptionAction<Unsafe> {
    /* renamed from: a */
    public static final Unsafe m4170a() {
        Field[] declaredFields;
        for (Field field : Unsafe.class.getDeclaredFields()) {
            field.setAccessible(true);
            Object obj = field.get(null);
            if (Unsafe.class.isInstance(obj)) {
                return (Unsafe) Unsafe.class.cast(obj);
            }
        }
        return null;
    }

    @Override // java.security.PrivilegedExceptionAction
    public final /* bridge */ /* synthetic */ Unsafe run() {
        return m4170a();
    }
}
