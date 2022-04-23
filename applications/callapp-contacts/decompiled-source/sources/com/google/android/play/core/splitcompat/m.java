package com.google.android.play.core.splitcompat;

import com.google.android.play.core.splitinstall.ac;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitcompat/m.class */
public final class m implements ac {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ a f31446a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(a aVar) {
        this.f31446a = aVar;
    }

    @Override // com.google.android.play.core.splitinstall.ac
    public final Set<String> a() {
        Set<String> c2;
        c2 = this.f31446a.c();
        return c2;
    }
}
