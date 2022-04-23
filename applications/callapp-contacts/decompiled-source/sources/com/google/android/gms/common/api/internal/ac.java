package com.google.android.gms.common.api.internal;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/ac.class */
final class ac implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ int f22630a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ af f22631b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ac(af afVar, int i) {
        this.f22631b = afVar;
        this.f22630a = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f22631b.b(this.f22630a);
    }
}
