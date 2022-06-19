package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.play.core.internal.AbstractC15060bx;
import com.google.android.play.core.internal.AbstractRunnableC15073i;
import com.google.android.play.core.internal.C15072h;
import com.google.android.play.core.internal.C15082r;
import com.google.android.play.core.tasks.C15192p;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* renamed from: com.google.android.play.core.assetpacks.cu */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/cu.class */
final class C14974cu extends AbstractRunnableC15073i {

    /* renamed from: a */
    final /* synthetic */ List f54648a;

    /* renamed from: b */
    final /* synthetic */ C15192p f54649b;

    /* renamed from: c */
    final /* synthetic */ C14989p f54650c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14974cu(C14989p c14989p, C15192p c15192p, List list, C15192p c15192p2) {
        super(c15192p);
        this.f54650c = c14989p;
        this.f54648a = list;
        this.f54649b = c15192p2;
    }

    @Override // com.google.android.play.core.internal.AbstractRunnableC15073i
    /* renamed from: a */
    public final void mo9371a() {
        C15072h c15072h;
        C15082r c15082r;
        String str;
        Bundle m9672e;
        ArrayList m9688a = C14989p.m9688a((Collection) this.f54648a);
        try {
            c15082r = this.f54650c.f54692e;
            AbstractC15060bx abstractC15060bx = (AbstractC15060bx) c15082r.f54792e;
            str = this.f54650c.f54690c;
            m9672e = C14989p.m9672e();
            abstractC15060bx.mo9539a(str, m9688a, m9672e, new BinderC14983k(this.f54650c, this.f54649b, (byte[]) null));
        } catch (RemoteException e) {
            c15072h = C14989p.f54688a;
            c15072h.m9510a(e, "cancelDownloads(%s)", this.f54648a);
        }
    }
}
