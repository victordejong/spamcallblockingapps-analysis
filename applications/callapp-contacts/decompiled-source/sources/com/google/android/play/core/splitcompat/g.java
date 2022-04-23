package com.google.android.play.core.splitcompat;

import java.io.IOException;
import java.util.Set;
import java.util.zip.ZipFile;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitcompat/g.class */
public final class g implements i {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Set f31435a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ r f31436b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ l f31437c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(l lVar, Set set, r rVar) {
        this.f31437c = lVar;
        this.f31435a = set;
        this.f31436b = rVar;
    }

    @Override // com.google.android.play.core.splitcompat.i
    public final void a(ZipFile zipFile, Set<k> set) throws IOException {
        this.f31435a.addAll(l.a(this.f31437c, set, this.f31436b, zipFile));
    }
}
