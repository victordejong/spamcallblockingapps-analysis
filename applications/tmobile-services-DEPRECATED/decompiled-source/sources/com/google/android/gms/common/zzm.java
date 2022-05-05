package com.google.android.gms.common;

import android.util.Log;
import androidx.annotation.NonNull;
import com.google.android.gms.common.util.AndroidUtilsLight;
import com.google.android.gms.common.util.Hex;
import java.util.concurrent.Callable;
import javax.annotation.CheckReturnValue;
import javax.annotation.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@CheckReturnValue
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/zzm.class */
public class zzm {

    /* renamed from: d */
    private static final zzm f7684d = new zzm(true, null, null);

    /* renamed from: a */
    final boolean f7685a;

    /* renamed from: b */
    private final String f7686b;

    /* renamed from: c */
    private final Throwable f7687c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzm(boolean z, @Nullable String str, @Nullable Throwable th) {
        this.f7685a = z;
        this.f7686b = str;
        this.f7687c = th;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static zzm m14268b(@NonNull String str, @NonNull Throwable th) {
        return new zzm(false, str, th);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static zzm m14267c(Callable<String> callable) {
        return new zzo(callable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static zzm m14266d(@NonNull String str) {
        return new zzm(false, str, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public static String m14265e(String str, zze zzeVar, boolean z, boolean z2) {
        return String.format("%s: pkg=%s, sha1=%s, atk=%s, ver=%s", z2 ? "debug cert rejected" : "not whitelisted", str, Hex.m14327a(AndroidUtilsLight.m14356b("SHA-1").digest(zzeVar.mo14271c())), Boolean.valueOf(z), "12451009.false");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public static zzm m14264f() {
        return f7684d;
    }

    @Nullable
    /* renamed from: a */
    String mo14262a() {
        return this.f7686b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public final void m14263g() {
        if (!this.f7685a && Log.isLoggable("GoogleCertificatesRslt", 3)) {
            if (this.f7687c != null) {
                Log.d("GoogleCertificatesRslt", mo14262a(), this.f7687c);
            } else {
                Log.d("GoogleCertificatesRslt", mo14262a());
            }
        }
    }
}
