package com.google.android.play.core.splitinstall;

import android.app.PendingIntent;
import android.content.Intent;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.play.core.splitinstall.c */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/c.class */
public abstract class AbstractC15152c {
    /* renamed from: a */
    public static AbstractC15152c m9385a(int i, int i2, int i3, long j, long j2, List<String> list, List<String> list2) {
        if (i2 != 8) {
            return new C15154e(i, i2, i3, j, j2, list, list2, null, null);
        }
        throw new IllegalArgumentException("REQUIRES_USER_CONFIRMATION state not supported.");
    }

    /* renamed from: a */
    public static AbstractC15152c m9384a(Bundle bundle) {
        return new C15154e(bundle.getInt("session_id"), bundle.getInt("status"), bundle.getInt("error_code"), bundle.getLong("bytes_downloaded"), bundle.getLong("total_bytes_to_download"), bundle.getStringArrayList("module_names"), bundle.getStringArrayList("languages"), (PendingIntent) bundle.getParcelable("user_confirmation_intent"), bundle.getParcelableArrayList("split_file_intents"));
    }

    /* renamed from: a */
    public abstract int mo9381a();

    /* renamed from: b */
    public abstract int mo9380b();

    /* renamed from: c */
    public abstract int mo9379c();

    /* renamed from: d */
    public abstract long mo9378d();

    /* renamed from: e */
    public abstract long mo9377e();

    /* renamed from: f */
    public final List<String> m9383f() {
        return mo9375i() != null ? new ArrayList(mo9375i()) : new ArrayList();
    }

    /* renamed from: g */
    public final List<String> m9382g() {
        return mo9374j() != null ? new ArrayList(mo9374j()) : new ArrayList();
    }

    @Deprecated
    /* renamed from: h */
    public abstract PendingIntent mo9376h();

    /* renamed from: i */
    public abstract List<String> mo9375i();

    /* renamed from: j */
    public abstract List<String> mo9374j();

    /* renamed from: k */
    public abstract List<Intent> mo9373k();
}
