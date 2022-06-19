package com.google.android.play.core.splitcompat;

import java.util.Set;
import java.util.zip.ZipFile;
/* renamed from: com.google.android.play.core.splitcompat.g */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/splitcompat/g.class */
public final class C8542g implements AbstractC8544i {

    /* renamed from: a */
    final /* synthetic */ Set f38118a;

    /* renamed from: b */
    final /* synthetic */ C8553r f38119b;

    /* renamed from: c */
    final /* synthetic */ C8547l f38120c;

    public C8542g(C8547l c8547l, Set set, C8553r c8553r) {
        this.f38120c = c8547l;
        this.f38118a = set;
        this.f38119b = c8553r;
    }

    @Override // com.google.android.play.core.splitcompat.AbstractC8544i
    /* renamed from: a */
    public final void mo3365a(ZipFile zipFile, Set<C8546k> set) {
        this.f38118a.addAll(C8547l.m3360d(this.f38120c, set, this.f38119b, zipFile));
    }
}
