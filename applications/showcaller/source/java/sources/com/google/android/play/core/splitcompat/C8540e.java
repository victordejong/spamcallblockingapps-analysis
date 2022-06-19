package com.google.android.play.core.splitcompat;

import java.io.File;
/* renamed from: com.google.android.play.core.splitcompat.e */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/splitcompat/e.class */
final class C8540e implements AbstractC8545j {

    /* renamed from: a */
    final /* synthetic */ C8541f f38113a;

    public C8540e(C8541f c8541f) {
        this.f38113a = c8541f;
    }

    @Override // com.google.android.play.core.splitcompat.AbstractC8545j
    /* renamed from: a */
    public final void mo3364a(C8546k c8546k, File file, boolean z) {
        this.f38113a.f38115b.add(file);
        if (!z) {
            this.f38113a.f38116c.set(false);
        }
    }
}
