package com.google.android.play.core.splitinstall.a;

import com.google.android.play.core.splitinstall.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/a/f.class */
public final /* synthetic */ class f implements j {

    /* renamed from: a  reason: collision with root package name */
    private final int f31468a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ int f31469b = 0;

    f(int i) {
        this.f31468a = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(int i, byte[] bArr) {
        this.f31468a = i;
    }

    @Override // com.google.android.play.core.splitinstall.a.j
    public final c a(c cVar) {
        if (this.f31469b == 0) {
            return a.a(this.f31468a, cVar);
        }
        int i = this.f31468a;
        int i2 = a.h;
        if (cVar == null) {
            return null;
        }
        return c.a(cVar.a(), 6, i, cVar.d(), cVar.e(), cVar.f(), cVar.g());
    }
}
