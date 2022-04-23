package com.google.android.play.core.internal;

import android.os.IBinder;
import android.os.IInterface;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/o.class */
final class o extends i {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ IBinder f31379a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ q f31380b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(q qVar, IBinder iBinder) {
        this.f31380b = qVar;
        this.f31379a = iBinder;
    }

    @Override // com.google.android.play.core.internal.i
    public final void a() {
        n nVar;
        List<Runnable> list;
        List list2;
        r rVar = this.f31380b.f31382a;
        nVar = rVar.j;
        rVar.e = (IInterface) nVar.a(this.f31379a);
        r.f(this.f31380b.f31382a);
        this.f31380b.f31382a.h = false;
        list = this.f31380b.f31382a.f31385c;
        for (Runnable runnable : list) {
            runnable.run();
        }
        list2 = this.f31380b.f31382a.f31385c;
        list2.clear();
    }
}
