package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.g;
import com.google.android.gms.common.api.m;
import com.google.android.gms.common.api.p;
import com.google.android.gms.common.internal.o;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/bg.class */
final class bg implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ m f22681a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ bi f22682b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bg(bi biVar, m mVar) {
        this.f22682b = biVar;
        this.f22681a = mVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            try {
                BasePendingResult.f22623c.set(Boolean.TRUE);
                this.f22682b.h.sendMessage(this.f22682b.h.obtainMessage(0, ((p) o.a(this.f22682b.f22684a)).a()));
                BasePendingResult.f22623c.set(Boolean.FALSE);
                bi.b(this.f22681a);
                g gVar = this.f22682b.g.get();
                if (gVar != null) {
                    gVar.g();
                }
            } catch (RuntimeException e) {
                this.f22682b.h.sendMessage(this.f22682b.h.obtainMessage(1, e));
                BasePendingResult.f22623c.set(Boolean.FALSE);
                bi.b(this.f22681a);
                g gVar2 = this.f22682b.g.get();
                if (gVar2 != null) {
                    gVar2.g();
                }
            }
        } catch (Throwable th) {
            BasePendingResult.f22623c.set(Boolean.FALSE);
            bi.b(this.f22681a);
            g gVar3 = this.f22682b.g.get();
            if (gVar3 != null) {
                gVar3.g();
            }
            throw th;
        }
    }
}
