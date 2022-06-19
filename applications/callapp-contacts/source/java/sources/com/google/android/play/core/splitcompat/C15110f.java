package com.google.android.play.core.splitcompat;

import java.io.IOException;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.zip.ZipFile;
/* renamed from: com.google.android.play.core.splitcompat.f */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitcompat/f.class */
public final class C15110f implements AbstractC15113i {

    /* renamed from: a */
    final /* synthetic */ C15122r f54846a;

    /* renamed from: b */
    final /* synthetic */ Set f54847b;

    /* renamed from: c */
    final /* synthetic */ AtomicBoolean f54848c;

    /* renamed from: d */
    final /* synthetic */ C15116l f54849d;

    public C15110f(C15116l c15116l, C15122r c15122r, Set set, AtomicBoolean atomicBoolean) {
        this.f54849d = c15116l;
        this.f54846a = c15122r;
        this.f54847b = set;
        this.f54848c = atomicBoolean;
    }

    @Override // com.google.android.play.core.splitcompat.AbstractC15113i
    /* renamed from: a */
    public final void mo9431a(ZipFile zipFile, Set<C15115k> set) throws IOException {
        this.f54849d.m9425a(this.f54846a, set, new C15109e(this));
    }
}
