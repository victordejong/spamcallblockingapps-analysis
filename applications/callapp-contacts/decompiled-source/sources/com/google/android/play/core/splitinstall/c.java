package com.google.android.play.core.splitinstall;

import android.app.PendingIntent;
import android.content.Intent;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/c.class */
public abstract class c {
    public static c a(int i, int i2, int i3, long j, long j2, List<String> list, List<String> list2) {
        if (i2 != 8) {
            return new e(i, i2, i3, j, j2, list, list2, null, null);
        }
        throw new IllegalArgumentException("REQUIRES_USER_CONFIRMATION state not supported.");
    }

    public static c a(Bundle bundle) {
        return new e(bundle.getInt("session_id"), bundle.getInt("status"), bundle.getInt("error_code"), bundle.getLong("bytes_downloaded"), bundle.getLong("total_bytes_to_download"), bundle.getStringArrayList("module_names"), bundle.getStringArrayList("languages"), (PendingIntent) bundle.getParcelable("user_confirmation_intent"), bundle.getParcelableArrayList("split_file_intents"));
    }

    public abstract int a();

    public abstract int b();

    public abstract int c();

    public abstract long d();

    public abstract long e();

    public final List<String> f() {
        return i() != null ? new ArrayList(i()) : new ArrayList();
    }

    public final List<String> g() {
        return j() != null ? new ArrayList(j()) : new ArrayList();
    }

    @Deprecated
    public abstract PendingIntent h();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract List<String> i();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract List<String> j();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract List<Intent> k();
}
