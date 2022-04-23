package com.futuremind.recyclerviewfastscroll.a;

import android.graphics.drawable.InsetDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.futuremind.recyclerviewfastscroll.a.e;
import com.futuremind.recyclerviewfastscroll.c;
import com.hbb20.h;
/* loaded from: classes3-dex2jar.jar:com/futuremind/recyclerviewfastscroll/a/b.class */
public final class b extends c {

    /* renamed from: a  reason: collision with root package name */
    protected View f20246a;

    /* renamed from: b  reason: collision with root package name */
    protected View f20247b;

    @Override // com.futuremind.recyclerviewfastscroll.a.c
    public final View a() {
        this.f20247b = new View(this.f20250c.getContext());
        int dimensionPixelSize = this.f20250c.a() ? 0 : this.f20250c.getContext().getResources().getDimensionPixelSize(h.d.fastscroll__handle_inset);
        int dimensionPixelSize2 = !this.f20250c.a() ? 0 : this.f20250c.getContext().getResources().getDimensionPixelSize(h.d.fastscroll__handle_inset);
        c.a(this.f20247b, new InsetDrawable(androidx.core.content.b.a(this.f20250c.getContext(), h.e.fastscroll__default_handle), dimensionPixelSize2, dimensionPixelSize, dimensionPixelSize2, dimensionPixelSize));
        this.f20247b.setLayoutParams(new ViewGroup.LayoutParams(this.f20250c.getContext().getResources().getDimensionPixelSize(this.f20250c.a() ? h.d.fastscroll__handle_clickable_width : h.d.fastscroll__handle_height), this.f20250c.getContext().getResources().getDimensionPixelSize(this.f20250c.a() ? h.d.fastscroll__handle_height : h.d.fastscroll__handle_clickable_width)));
        return this.f20247b;
    }

    @Override // com.futuremind.recyclerviewfastscroll.a.c
    public final View a(ViewGroup viewGroup) {
        View inflate = LayoutInflater.from(this.f20250c.getContext()).inflate(h.g.fastscroll__default_bubble, viewGroup, false);
        this.f20246a = inflate;
        return inflate;
    }

    @Override // com.futuremind.recyclerviewfastscroll.a.c
    public final TextView b() {
        return (TextView) this.f20246a;
    }

    @Override // com.futuremind.recyclerviewfastscroll.a.c
    public final int c() {
        int i;
        float f;
        if (this.f20250c.a()) {
            f = this.f20247b.getHeight() / 2.0f;
            i = this.f20246a.getHeight();
        } else {
            f = this.f20247b.getWidth() / 2.0f;
            i = this.f20246a.getWidth();
        }
        return (int) (f - i);
    }

    @Override // com.futuremind.recyclerviewfastscroll.a.c
    protected final d d() {
        return new a(new e.b(this.f20246a).a().b().c());
    }
}
