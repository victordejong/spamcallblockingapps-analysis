package com.google.android.play.core.splitcompat;

import java.io.IOException;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.zip.ZipFile;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitcompat/f.class */
public final class f implements i {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ r f31431a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Set f31432b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ AtomicBoolean f31433c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ l f31434d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(l lVar, r rVar, Set set, AtomicBoolean atomicBoolean) {
        this.f31434d = lVar;
        this.f31431a = rVar;
        this.f31432b = set;
        this.f31433c = atomicBoolean;
    }

    @Override // com.google.android.play.core.splitcompat.i
    public final void a(ZipFile zipFile, Set<k> set) throws IOException {
        this.f31434d.a(this.f31431a, set, new e(this));
    }
}
