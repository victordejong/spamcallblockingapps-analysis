package com.google.android.play.core.assetpacks;

import android.os.RemoteException;
import com.google.android.play.core.internal.AbstractC15060bx;
import com.google.android.play.core.internal.AbstractRunnableC15073i;
import com.google.android.play.core.internal.C15072h;
import com.google.android.play.core.internal.C15082r;
import com.google.android.play.core.tasks.C15192p;
import java.util.Map;
/* renamed from: com.google.android.play.core.assetpacks.cv */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/cv.class */
final class C14975cv extends AbstractRunnableC15073i {

    /* renamed from: a */
    final /* synthetic */ Map f54651a;

    /* renamed from: b */
    final /* synthetic */ C15192p f54652b;

    /* renamed from: c */
    final /* synthetic */ C14989p f54653c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14975cv(C14989p c14989p, C15192p c15192p, Map map, C15192p c15192p2) {
        super(c15192p);
        this.f54653c = c14989p;
        this.f54651a = map;
        this.f54652b = c15192p2;
    }

    @Override // com.google.android.play.core.internal.AbstractRunnableC15073i
    /* renamed from: a */
    public final void mo9371a() {
        C15072h c15072h;
        C15082r c15082r;
        String str;
        try {
            c15082r = this.f54653c.f54692e;
            AbstractC15060bx abstractC15060bx = (AbstractC15060bx) c15082r.f54792e;
            str = this.f54653c.f54690c;
            abstractC15060bx.mo9540a(str, C14989p.m9680b(this.f54651a), new BinderC14985m(this.f54653c, this.f54652b));
        } catch (RemoteException e) {
            c15072h = C14989p.f54688a;
            c15072h.m9510a(e, "syncPacks", new Object[0]);
            this.f54652b.m9322b(new RuntimeException(e));
        }
    }
}
