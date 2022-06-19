package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.AbstractC11826g;
import com.google.android.gms.common.api.AbstractC11925m;
import com.google.android.gms.common.api.AbstractC11928p;
import com.google.android.gms.common.internal.C12045o;
/* renamed from: com.google.android.gms.common.api.internal.bg */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/bg.class */
final class RunnableC11866bg implements Runnable {

    /* renamed from: a */
    final /* synthetic */ AbstractC11925m f39282a;

    /* renamed from: b */
    final /* synthetic */ C11868bi f39283b;

    public RunnableC11866bg(C11868bi c11868bi, AbstractC11925m abstractC11925m) {
        this.f39283b = c11868bi;
        this.f39282a = abstractC11925m;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            try {
                BasePendingResult.f39195c.set(Boolean.TRUE);
                this.f39283b.f39292h.sendMessage(this.f39283b.f39292h.obtainMessage(0, ((AbstractC11928p) C12045o.m19162a(this.f39283b.f39285a)).m19288a()));
                BasePendingResult.f39195c.set(Boolean.FALSE);
                C11868bi.m19387b(this.f39282a);
                AbstractC11826g abstractC11826g = this.f39283b.f39291g.get();
                if (abstractC11826g == null) {
                    return;
                }
                abstractC11826g.mo19401g();
            } catch (RuntimeException e) {
                this.f39283b.f39292h.sendMessage(this.f39283b.f39292h.obtainMessage(1, e));
                BasePendingResult.f39195c.set(Boolean.FALSE);
                C11868bi.m19387b(this.f39282a);
                AbstractC11826g abstractC11826g2 = this.f39283b.f39291g.get();
                if (abstractC11826g2 == null) {
                    return;
                }
                abstractC11826g2.mo19401g();
            }
        } catch (Throwable th) {
            BasePendingResult.f39195c.set(Boolean.FALSE);
            C11868bi.m19387b(this.f39282a);
            AbstractC11826g abstractC11826g3 = this.f39283b.f39291g.get();
            if (abstractC11826g3 != null) {
                abstractC11826g3.mo19401g();
            }
            throw th;
        }
    }
}
