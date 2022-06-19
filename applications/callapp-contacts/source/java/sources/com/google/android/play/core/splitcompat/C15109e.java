package com.google.android.play.core.splitcompat;

import java.io.File;
import java.io.IOException;
/* renamed from: com.google.android.play.core.splitcompat.e */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitcompat/e.class */
final class C15109e implements AbstractC15114j {

    /* renamed from: a */
    final /* synthetic */ C15110f f54845a;

    public C15109e(C15110f c15110f) {
        this.f54845a = c15110f;
    }

    @Override // com.google.android.play.core.splitcompat.AbstractC15114j
    /* renamed from: a */
    public final void mo9430a(C15115k c15115k, File file, boolean z) throws IOException {
        this.f54845a.f54847b.add(file);
        if (!z) {
            this.f54845a.f54848c.set(false);
        }
    }
}
