package com.google.android.play.core.review;

import android.os.RemoteException;
import com.google.android.play.core.common.C15001b;
import com.google.android.play.core.internal.AbstractC15063c;
import com.google.android.play.core.internal.AbstractRunnableC15073i;
import com.google.android.play.core.internal.C15072h;
import com.google.android.play.core.tasks.C15192p;
/* renamed from: com.google.android.play.core.review.g */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/review/g.class */
final class C15101g extends AbstractRunnableC15073i {

    /* renamed from: a */
    final /* synthetic */ C15192p f54829a;

    /* renamed from: b */
    final /* synthetic */ C15104j f54830b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C15101g(C15104j c15104j, C15192p c15192p, C15192p c15192p2) {
        super(c15192p);
        this.f54830b = c15104j;
        this.f54829a = c15192p2;
    }

    @Override // com.google.android.play.core.internal.AbstractRunnableC15073i
    /* renamed from: a */
    public final void mo9371a() {
        C15072h c15072h;
        String str;
        String str2;
        try {
            AbstractC15063c abstractC15063c = this.f54830b.f54835b.f54792e;
            str2 = this.f54830b.f54836c;
            abstractC15063c.mo9521a(str2, C15001b.m9634a("review"), new BinderC15103i(this.f54830b, this.f54829a));
        } catch (RemoteException e) {
            c15072h = C15104j.f54834a;
            str = this.f54830b.f54836c;
            c15072h.m9510a(e, "error requesting in-app review for %s", str);
            this.f54829a.m9322b(new RuntimeException(e));
        }
    }
}
