package com.google.android.play.core.splitcompat;

import java.io.IOException;
import java.util.Set;
import java.util.zip.ZipFile;
/* renamed from: com.google.android.play.core.splitcompat.g */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitcompat/g.class */
public final class C15111g implements AbstractC15113i {

    /* renamed from: a */
    final /* synthetic */ Set f54850a;

    /* renamed from: b */
    final /* synthetic */ C15122r f54851b;

    /* renamed from: c */
    final /* synthetic */ C15116l f54852c;

    public C15111g(C15116l c15116l, Set set, C15122r c15122r) {
        this.f54852c = c15116l;
        this.f54850a = set;
        this.f54851b = c15122r;
    }

    @Override // com.google.android.play.core.splitcompat.AbstractC15113i
    /* renamed from: a */
    public final void mo9431a(ZipFile zipFile, Set<C15115k> set) throws IOException {
        this.f54850a.addAll(C15116l.m9427a(this.f54852c, set, this.f54851b, zipFile));
    }
}
