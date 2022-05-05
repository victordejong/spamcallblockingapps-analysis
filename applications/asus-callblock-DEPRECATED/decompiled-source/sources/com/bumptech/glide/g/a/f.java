package com.bumptech.glide.g.a;

import android.view.View;
import android.view.animation.Animation;
import com.bumptech.glide.g.a.c;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/a/f.class */
public final class f<R> implements c<R> {

    /* renamed from: a  reason: collision with root package name */
    private final a f3429a;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/a/f$a.class */
    interface a {
        Animation a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(a aVar) {
        this.f3429a = aVar;
    }

    @Override // com.bumptech.glide.g.a.c
    public final boolean a(R r, c.a aVar) {
        View view = aVar.getView();
        if (view == null) {
            return false;
        }
        view.clearAnimation();
        view.startAnimation(this.f3429a.a());
        return false;
    }
}
