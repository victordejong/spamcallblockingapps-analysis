package com.google.android.play.core.splitcompat;

import java.io.File;
import java.io.IOException;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitcompat/e.class */
final class e implements j {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ f f31430a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(f fVar) {
        this.f31430a = fVar;
    }

    @Override // com.google.android.play.core.splitcompat.j
    public final void a(k kVar, File file, boolean z) throws IOException {
        this.f31430a.f31432b.add(file);
        if (!z) {
            this.f31430a.f31433c.set(false);
        }
    }
}
