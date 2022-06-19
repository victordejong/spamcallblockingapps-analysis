package com.google.android.play.core.splitinstall;

import android.app.PendingIntent;
import android.content.Intent;
import android.os.Bundle;
import java.util.List;
/* renamed from: com.google.android.play.core.splitinstall.a */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/splitinstall/a.class */
public abstract class AbstractC8554a {
    /* renamed from: e */
    public static AbstractC8554a m3352e(Bundle bundle) {
        return new C8556c(bundle.getInt("session_id"), bundle.getInt("status"), bundle.getInt("error_code"), bundle.getLong("bytes_downloaded"), bundle.getLong("total_bytes_to_download"), bundle.getStringArrayList("module_names"), bundle.getStringArrayList("languages"), (PendingIntent) bundle.getParcelable("user_confirmation_intent"), bundle.getParcelableArrayList("split_file_intents"));
    }

    /* renamed from: a */
    public abstract List<String> mo3351a();

    /* renamed from: b */
    public abstract List<String> mo3350b();

    /* renamed from: c */
    public abstract long mo3349c();

    /* renamed from: d */
    public abstract List<Intent> mo3348d();

    /* renamed from: f */
    public abstract int mo3347f();

    @Deprecated
    /* renamed from: g */
    public abstract PendingIntent mo3346g();

    /* renamed from: h */
    public abstract int mo3345h();

    /* renamed from: i */
    public abstract int mo3344i();

    /* renamed from: j */
    public abstract long mo3343j();
}
