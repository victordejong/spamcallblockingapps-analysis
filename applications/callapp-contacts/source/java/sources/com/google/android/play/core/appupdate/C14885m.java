package com.google.android.play.core.appupdate;

import android.os.RemoteException;
import com.google.android.play.core.internal.AbstractC15055bs;
import com.google.android.play.core.internal.AbstractRunnableC15073i;
import com.google.android.play.core.internal.C15072h;
import com.google.android.play.core.tasks.C15192p;
/* renamed from: com.google.android.play.core.appupdate.m */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/appupdate/m.class */
final class C14885m extends AbstractRunnableC15073i {

    /* renamed from: a */
    final /* synthetic */ String f54318a;

    /* renamed from: b */
    final /* synthetic */ C15192p f54319b;

    /* renamed from: c */
    final /* synthetic */ C14890r f54320c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14885m(C14890r c14890r, C15192p c15192p, String str, C15192p c15192p2) {
        super(c15192p);
        this.f54320c = c14890r;
        this.f54318a = str;
        this.f54319b = c15192p2;
    }

    @Override // com.google.android.play.core.internal.AbstractRunnableC15073i
    /* renamed from: a */
    public final void mo9371a() {
        C15072h c15072h;
        String str;
        try {
            AbstractC15055bs abstractC15055bs = this.f54320c.f54331b.f54792e;
            str = this.f54320c.f54332d;
            abstractC15055bs.mo9546a(str, C14890r.m9816a(this.f54320c, this.f54318a), new BinderC14889q(this.f54320c, this.f54319b, this.f54318a));
        } catch (RemoteException e) {
            c15072h = C14890r.f54329a;
            c15072h.m9510a(e, "requestUpdateInfo(%s)", this.f54318a);
            this.f54319b.m9322b(new RuntimeException(e));
        }
    }
}
