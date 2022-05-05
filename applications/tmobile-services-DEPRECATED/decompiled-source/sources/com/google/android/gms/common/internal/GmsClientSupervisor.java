package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import com.google.android.gms.common.annotation.KeepForSdk;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/GmsClientSupervisor.class */
public abstract class GmsClientSupervisor {

    /* renamed from: a */
    private static final Object f7503a = new Object();

    /* renamed from: b */
    private static GmsClientSupervisor f7504b;

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/GmsClientSupervisor$zza.class */
    public static final class zza {

        /* renamed from: a */
        private final String f7505a;

        /* renamed from: b */
        private final String f7506b;

        /* renamed from: c */
        private final ComponentName f7507c = null;

        /* renamed from: d */
        private final int f7508d;

        public zza(String str, String str2, int i) {
            Preconditions.m14527g(str);
            this.f7505a = str;
            Preconditions.m14527g(str2);
            this.f7506b = str2;
            this.f7508d = i;
        }

        /* renamed from: a */
        public final ComponentName m14547a() {
            return this.f7507c;
        }

        /* renamed from: b */
        public final String m14546b() {
            return this.f7506b;
        }

        /* renamed from: c */
        public final Intent m14545c(Context context) {
            return this.f7505a != null ? new Intent(this.f7505a).setPackage(this.f7506b) : new Intent().setComponent(this.f7507c);
        }

        /* renamed from: d */
        public final int m14544d() {
            return this.f7508d;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof zza)) {
                return false;
            }
            zza zzaVar = (zza) obj;
            return Objects.m14537a(this.f7505a, zzaVar.f7505a) && Objects.m14537a(this.f7506b, zzaVar.f7506b) && Objects.m14537a(this.f7507c, zzaVar.f7507c) && this.f7508d == zzaVar.f7508d;
        }

        public final int hashCode() {
            return Objects.m14536b(this.f7505a, this.f7506b, this.f7507c, Integer.valueOf(this.f7508d));
        }

        public final String toString() {
            String str = this.f7505a;
            String str2 = str;
            if (str == null) {
                str2 = this.f7507c.flattenToString();
            }
            return str2;
        }
    }

    @KeepForSdk
    /* renamed from: a */
    public static GmsClientSupervisor m14549a(Context context) {
        synchronized (f7503a) {
            if (f7504b == null) {
                f7504b = new zze(context.getApplicationContext());
            }
        }
        return f7504b;
    }

    /* renamed from: b */
    public final void m14548b(String str, String str2, int i, ServiceConnection serviceConnection, String str3) {
        mo14429d(new zza(str, str2, i), serviceConnection, str3);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: c */
    public abstract boolean mo14430c(zza zzaVar, ServiceConnection serviceConnection, String str);

    /* renamed from: d */
    protected abstract void mo14429d(zza zzaVar, ServiceConnection serviceConnection, String str);
}
