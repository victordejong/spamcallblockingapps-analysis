package com.google.android.play.core.internal;

import android.os.IBinder;
import android.os.IInterface;
import java.util.List;
/* renamed from: com.google.android.play.core.internal.k */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/internal/k.class */
final class C8498k extends AbstractRunnableC8470b {

    /* renamed from: e */
    final /* synthetic */ IBinder f38043e;

    /* renamed from: f */
    final /* synthetic */ ServiceConnectionC8502m f38044f;

    public C8498k(ServiceConnectionC8502m serviceConnectionC8502m, IBinder iBinder) {
        this.f38044f = serviceConnectionC8502m;
        this.f38043e = iBinder;
    }

    @Override // com.google.android.play.core.internal.AbstractRunnableC8470b
    /* renamed from: a */
    public final void mo3507a() {
        AbstractC8496j abstractC8496j;
        List<Runnable> list;
        List list2;
        C8504n c8504n = this.f38044f.f38047a;
        abstractC8496j = c8504n.f38055h;
        c8504n.f38059l = (IInterface) abstractC8496j.mo3509a(this.f38043e);
        C8504n.m3496j(this.f38044f.f38047a);
        this.f38044f.f38047a.f38053f = false;
        list = this.f38044f.f38047a.f38052e;
        for (Runnable runnable : list) {
            runnable.run();
        }
        list2 = this.f38044f.f38047a.f38052e;
        list2.clear();
    }
}
