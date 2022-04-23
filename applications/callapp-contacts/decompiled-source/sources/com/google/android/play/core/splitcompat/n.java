package com.google.android.play.core.splitcompat;

import android.content.Context;
import com.google.android.play.core.splitinstall.ah;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitcompat/n.class */
final class n implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Context f31447a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(Context context) {
        this.f31447a = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ah.a(this.f31447a).a(true);
    }
}
