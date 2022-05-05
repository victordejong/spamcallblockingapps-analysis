package com.hiya.stingray.p000ui.premium;

import android.view.View;
import kotlin.w.b.l;
/* renamed from: com.hiya.stingray.ui.premium.z$h */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/premium/z$h.class */
final class z$h implements View.OnLongClickListener {

    /* renamed from: f */
    final /* synthetic */ z f83f;

    /* renamed from: g */
    final /* synthetic */ l f84g;

    z$h(z zVar, l lVar) {
        this.f83f = zVar;
        this.f84g = lVar;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        this.f84g.invoke(new a(this));
        return true;
    }
}
