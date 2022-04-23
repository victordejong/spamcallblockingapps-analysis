package com.google.android.play.core.splitinstall;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/ai.class */
final class ai implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ b f31500a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ ak f31501b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ai(ak akVar, b bVar) {
        this.f31501b = akVar;
        this.f31500a = bVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ah ahVar = this.f31501b.f31503a;
        List<String> list = this.f31500a.f31514a;
        List<String> a2 = ak.a(this.f31500a.f31515b);
        Bundle bundle = new Bundle();
        bundle.putInt("session_id", 0);
        bundle.putInt("status", 5);
        bundle.putInt("error_code", 0);
        if (!list.isEmpty()) {
            bundle.putStringArrayList("module_names", new ArrayList<>(list));
        }
        if (!a2.isEmpty()) {
            bundle.putStringArrayList("languages", new ArrayList<>(a2));
        }
        bundle.putLong("total_bytes_to_download", 0L);
        bundle.putLong("bytes_downloaded", 0L);
        ahVar.a(c.a(bundle));
    }
}
