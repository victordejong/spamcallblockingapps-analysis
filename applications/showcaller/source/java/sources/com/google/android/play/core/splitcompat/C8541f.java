package com.google.android.play.core.splitcompat;

import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.zip.ZipFile;
/* renamed from: com.google.android.play.core.splitcompat.f */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/splitcompat/f.class */
public final class C8541f implements AbstractC8544i {

    /* renamed from: a */
    final /* synthetic */ C8553r f38114a;

    /* renamed from: b */
    final /* synthetic */ Set f38115b;

    /* renamed from: c */
    final /* synthetic */ AtomicBoolean f38116c;

    /* renamed from: d */
    final /* synthetic */ C8547l f38117d;

    public C8541f(C8547l c8547l, C8553r c8553r, Set set, AtomicBoolean atomicBoolean) {
        this.f38117d = c8547l;
        this.f38114a = c8553r;
        this.f38115b = set;
        this.f38116c = atomicBoolean;
    }

    @Override // com.google.android.play.core.splitcompat.AbstractC8544i
    /* renamed from: a */
    public final void mo3365a(ZipFile zipFile, Set<C8546k> set) {
        this.f38117d.m3358f(this.f38114a, set, new C8540e(this));
    }
}
