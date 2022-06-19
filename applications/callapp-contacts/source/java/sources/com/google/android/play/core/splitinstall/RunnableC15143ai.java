package com.google.android.play.core.splitinstall;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.play.core.splitinstall.ai */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/ai.class */
final class RunnableC15143ai implements Runnable {

    /* renamed from: a */
    final /* synthetic */ C15150b f54935a;

    /* renamed from: b */
    final /* synthetic */ C15145ak f54936b;

    public RunnableC15143ai(C15145ak c15145ak, C15150b c15150b) {
        this.f54936b = c15145ak;
        this.f54935a = c15150b;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C15142ah c15142ah = this.f54936b.f54938a;
        List<String> list = this.f54935a.f54950a;
        List<String> m9388a = C15145ak.m9388a(this.f54935a.f54951b);
        Bundle bundle = new Bundle();
        bundle.putInt("session_id", 0);
        bundle.putInt("status", 5);
        bundle.putInt("error_code", 0);
        if (!list.isEmpty()) {
            bundle.putStringArrayList("module_names", new ArrayList<>(list));
        }
        if (!m9388a.isEmpty()) {
            bundle.putStringArrayList("languages", new ArrayList<>(m9388a));
        }
        bundle.putLong("total_bytes_to_download", 0L);
        bundle.putLong("bytes_downloaded", 0L);
        c15142ah.m9390a(AbstractC15152c.m9384a(bundle));
    }
}
