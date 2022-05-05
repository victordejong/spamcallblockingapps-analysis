package com.hiya.stingray.p000ui.premium.upsell;

import android.view.View;
import kotlin.w.b.l;
/* renamed from: com.hiya.stingray.ui.premium.upsell.c$i */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/premium/upsell/c$i.class */
final class c$i implements View.OnLongClickListener {

    /* renamed from: f */
    final /* synthetic */ c f65f;

    /* renamed from: g */
    final /* synthetic */ l f66g;

    c$i(c cVar, l lVar) {
        this.f65f = cVar;
        this.f66g = lVar;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        this.f66g.invoke(new a(this));
        return true;
    }
}
