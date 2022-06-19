package com.google.android.play.core.splitinstall;

import android.os.RemoteException;
import com.google.android.play.core.internal.AbstractC15020ak;
import com.google.android.play.core.internal.AbstractRunnableC15073i;
import com.google.android.play.core.internal.C15072h;
import com.google.android.play.core.tasks.C15192p;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: com.google.android.play.core.splitinstall.i */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/i.class */
public final class C15158i extends AbstractRunnableC15073i {

    /* renamed from: a */
    final /* synthetic */ Collection f54967a;

    /* renamed from: b */
    final /* synthetic */ Collection f54968b;

    /* renamed from: c */
    final /* synthetic */ C15192p f54969c;

    /* renamed from: d */
    final /* synthetic */ C15164n f54970d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C15158i(C15164n c15164n, C15192p c15192p, Collection collection, Collection collection2, C15192p c15192p2) {
        super(c15192p);
        this.f54970d = c15164n;
        this.f54967a = collection;
        this.f54968b = collection2;
        this.f54969c = c15192p2;
    }

    @Override // com.google.android.play.core.internal.AbstractRunnableC15073i
    /* renamed from: a */
    public final void mo9371a() {
        C15072h c15072h;
        String str;
        ArrayList m9354a = C15164n.m9354a(this.f54967a);
        m9354a.addAll(C15164n.m9351b(this.f54968b));
        try {
            AbstractC15020ak abstractC15020ak = this.f54970d.f54980a.f54792e;
            str = this.f54970d.f54981d;
            abstractC15020ak.mo9588a(str, m9354a, C15164n.m9357a(), new BinderC15161l(this.f54970d, this.f54969c));
        } catch (RemoteException e) {
            c15072h = C15164n.f54978b;
            c15072h.m9510a(e, "startInstall(%s,%s)", this.f54967a, this.f54968b);
            this.f54969c.m9322b(new RuntimeException(e));
        }
    }
}
