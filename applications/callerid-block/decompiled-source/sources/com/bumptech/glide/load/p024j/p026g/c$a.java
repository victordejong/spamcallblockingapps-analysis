package com.bumptech.glide.load.p024j.p026g;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
/* renamed from: com.bumptech.glide.load.j.g.c$a */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/j/g/c$a.class */
final class c$a extends Drawable.ConstantState {

    /* renamed from: a */
    final C0811g f3696a;

    c$a(C0811g gVar) {
        this.f3696a = gVar;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public int getChangingConfigurations() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable() {
        return new c(this);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable(Resources resources) {
        return newDrawable();
    }
}
