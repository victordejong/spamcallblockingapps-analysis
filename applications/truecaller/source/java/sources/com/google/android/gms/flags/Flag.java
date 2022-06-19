package com.google.android.gms.flags;

import com.google.android.gms.common.annotation.KeepForSdk;
import p193e.p1577m.p1578a.p1642f.p1662h.C25017b;
@KeepForSdk
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/flags/Flag.class */
public abstract class Flag<T> {

    /* renamed from: a */
    public final T f6195a;

    @Deprecated
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/flags/Flag$BooleanFlag.class */
    public static class BooleanFlag extends Flag<Boolean> {
        public BooleanFlag(int i, String str, Boolean bool) {
            super(i, str, bool, null);
        }
    }

    @KeepForSdk
    @Deprecated
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/flags/Flag$IntegerFlag.class */
    public static class IntegerFlag extends Flag<Integer> {
    }

    @KeepForSdk
    @Deprecated
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/flags/Flag$LongFlag.class */
    public static class LongFlag extends Flag<Long> {
    }

    @KeepForSdk
    @Deprecated
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/flags/Flag$StringFlag.class */
    public static class StringFlag extends Flag<String> {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Flag(int i, String str, Object obj, C25017b c25017b) {
        Singletons singletons;
        this.f6195a = obj;
        Singletons singletons2 = Singletons.f6197b;
        synchronized (Singletons.class) {
            try {
                singletons = Singletons.f6197b;
            } catch (Throwable th) {
                throw th;
            }
        }
        singletons.f6198a.f6196a.add(this);
    }
}
