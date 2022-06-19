package com.google.android.play.core.internal;

import android.os.IBinder;
import android.os.IInterface;
import java.util.List;
/* renamed from: com.google.android.play.core.internal.o */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/o.class */
final class C15079o extends AbstractRunnableC15073i {

    /* renamed from: a */
    final /* synthetic */ IBinder f54783a;

    /* renamed from: b */
    final /* synthetic */ ServiceConnectionC15081q f54784b;

    public C15079o(ServiceConnectionC15081q serviceConnectionC15081q, IBinder iBinder) {
        this.f54784b = serviceConnectionC15081q;
        this.f54783a = iBinder;
    }

    @Override // com.google.android.play.core.internal.AbstractRunnableC15073i
    /* renamed from: a */
    public final void mo9371a() {
        AbstractC15078n abstractC15078n;
        List<Runnable> list;
        List list2;
        C15082r c15082r = this.f54784b.f54786a;
        abstractC15078n = c15082r.f54796j;
        c15082r.f54792e = (IInterface) abstractC15078n.mo9372a(this.f54783a);
        C15082r.m9494f(this.f54784b.f54786a);
        this.f54784b.f54786a.f54794h = false;
        list = this.f54784b.f54786a.f54790c;
        for (Runnable runnable : list) {
            runnable.run();
        }
        list2 = this.f54784b.f54786a.f54790c;
        list2.clear();
    }
}
