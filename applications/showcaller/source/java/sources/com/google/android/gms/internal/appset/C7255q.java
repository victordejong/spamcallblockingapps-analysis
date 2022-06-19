package com.google.android.gms.internal.appset;

import android.content.Context;
import com.google.android.gms.appset.AbstractC5869b;
import com.google.android.gms.appset.C5870c;
import com.google.android.gms.common.C6086c;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.tasks.AbstractC7954a;
import com.google.android.gms.tasks.AbstractC7966g;
import com.google.android.gms.tasks.C7970j;
/* renamed from: com.google.android.gms.internal.appset.q */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/appset/q.class */
public final class C7255q implements AbstractC5869b {

    /* renamed from: a */
    private final AbstractC5869b f34240a;

    /* renamed from: b */
    private final AbstractC5869b f34241b;

    public C7255q(Context context) {
        this.f34240a = new C7253o(context, C6086c.m17221f());
        this.f34241b = C7249k.m7839d(context);
    }

    /* renamed from: b */
    public static /* synthetic */ AbstractC7966g m7830b(C7255q c7255q, AbstractC7966g abstractC7966g) {
        AbstractC7966g<C5870c> abstractC7966g2 = abstractC7966g;
        if (!abstractC7966g.mo5810q()) {
            if (abstractC7966g.mo5812o()) {
                abstractC7966g2 = abstractC7966g;
            } else {
                Exception mo5815l = abstractC7966g.mo5815l();
                abstractC7966g2 = abstractC7966g;
                if (mo5815l instanceof ApiException) {
                    int statusCode = ((ApiException) mo5815l).getStatusCode();
                    if (statusCode == 43001 || statusCode == 43002 || statusCode == 43003 || statusCode == 17) {
                        abstractC7966g2 = c7255q.f34241b.mo7831a();
                    } else if (statusCode == 43000) {
                        abstractC7966g2 = C7970j.m5799d(new Exception("Failed to get app set ID due to an internal error. Please try again later."));
                    } else if (statusCode == 15) {
                        return C7970j.m5799d(new Exception("The operation to get app set ID timed out. Please try again later."));
                    } else {
                        abstractC7966g2 = abstractC7966g;
                    }
                }
            }
        }
        return abstractC7966g2;
    }

    @Override // com.google.android.gms.appset.AbstractC5869b
    /* renamed from: a */
    public final AbstractC7966g<C5870c> mo7831a() {
        return this.f34240a.mo7831a().mo5817j(new AbstractC7954a() { // from class: com.google.android.gms.internal.appset.p
            @Override // com.google.android.gms.tasks.AbstractC7954a
            /* renamed from: a */
            public final Object mo1125a(AbstractC7966g abstractC7966g) {
                return C7255q.m7830b(C7255q.this, abstractC7966g);
            }
        });
    }
}
