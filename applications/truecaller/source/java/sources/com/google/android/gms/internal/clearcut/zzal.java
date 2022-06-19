package com.google.android.gms.internal.clearcut;

import android.content.SharedPreferences;
import android.util.Base64;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/clearcut/zzal.class */
public final class zzal extends zzae<T> {
    private final Object lock = new Object();
    private String zzec;
    private T zzed;
    private final /* synthetic */ zzan zzee;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzal(zzao zzaoVar, String str, Object obj, zzan zzanVar) {
        super(zzaoVar, str, obj, null);
        this.zzee = zzanVar;
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [T, java.lang.Object] */
    @Override // com.google.android.gms.internal.clearcut.zzae
    public final T zza(SharedPreferences sharedPreferences) {
        try {
            return zzb(sharedPreferences.getString(this.zzds, ""));
        } catch (ClassCastException e) {
            String valueOf = String.valueOf(this.zzds);
            if (valueOf.length() != 0) {
                "Invalid byte[] value in SharedPreferences for ".concat(valueOf);
                return null;
            }
            new String("Invalid byte[] value in SharedPreferences for ");
            return null;
        }
    }

    /* JADX WARN: Type inference failed for: r0v19, types: [T, java.lang.Object] */
    @Override // com.google.android.gms.internal.clearcut.zzae
    public final T zzb(String str) {
        T t;
        try {
            synchronized (this.lock) {
                if (!str.equals(this.zzec)) {
                    ?? zzb = this.zzee.zzb(Base64.decode(str, 3));
                    this.zzec = str;
                    this.zzed = zzb;
                }
                t = this.zzed;
            }
            return t;
        } catch (IOException | IllegalArgumentException e) {
            String.valueOf(this.zzds).length();
            String.valueOf(str).length();
            return null;
        }
    }
}
