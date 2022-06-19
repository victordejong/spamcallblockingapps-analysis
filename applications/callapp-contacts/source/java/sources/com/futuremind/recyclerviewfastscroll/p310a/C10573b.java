package com.futuremind.recyclerviewfastscroll.p310a;

import android.graphics.drawable.InsetDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.content.C0790b;
import com.futuremind.recyclerviewfastscroll.C10581c;
import com.futuremind.recyclerviewfastscroll.p310a.C10576e;
import com.hbb20.C16330h;
/* renamed from: com.futuremind.recyclerviewfastscroll.a.b */
/* loaded from: classes3-dex2jar.jar:com/futuremind/recyclerviewfastscroll/a/b.class */
public final class C10573b extends AbstractC10574c {

    /* renamed from: a */
    protected View f34317a;

    /* renamed from: b */
    protected View f34318b;

    @Override // com.futuremind.recyclerviewfastscroll.p310a.AbstractC10574c
    /* renamed from: a */
    public final View mo22641a() {
        this.f34318b = new View(this.f34321c.getContext());
        int dimensionPixelSize = this.f34321c.m22654a() ? 0 : this.f34321c.getContext().getResources().getDimensionPixelSize(C16330h.C16334d.fastscroll__handle_inset);
        int dimensionPixelSize2 = !this.f34321c.m22654a() ? 0 : this.f34321c.getContext().getResources().getDimensionPixelSize(C16330h.C16334d.fastscroll__handle_inset);
        C10581c.m22625a(this.f34318b, new InsetDrawable(C0790b.m44502a(this.f34321c.getContext(), C16330h.C16335e.fastscroll__default_handle), dimensionPixelSize2, dimensionPixelSize, dimensionPixelSize2, dimensionPixelSize));
        this.f34318b.setLayoutParams(new ViewGroup.LayoutParams(this.f34321c.getContext().getResources().getDimensionPixelSize(this.f34321c.m22654a() ? C16330h.C16334d.fastscroll__handle_clickable_width : C16330h.C16334d.fastscroll__handle_height), this.f34321c.getContext().getResources().getDimensionPixelSize(this.f34321c.m22654a() ? C16330h.C16334d.fastscroll__handle_height : C16330h.C16334d.fastscroll__handle_clickable_width)));
        return this.f34318b;
    }

    @Override // com.futuremind.recyclerviewfastscroll.p310a.AbstractC10574c
    /* renamed from: a */
    public final View mo22640a(ViewGroup viewGroup) {
        View inflate = LayoutInflater.from(this.f34321c.getContext()).inflate(C16330h.C16337g.fastscroll__default_bubble, viewGroup, false);
        this.f34317a = inflate;
        return inflate;
    }

    @Override // com.futuremind.recyclerviewfastscroll.p310a.AbstractC10574c
    /* renamed from: b */
    public final TextView mo22639b() {
        return (TextView) this.f34317a;
    }

    @Override // com.futuremind.recyclerviewfastscroll.p310a.AbstractC10574c
    /* renamed from: c */
    public final int mo22638c() {
        int i;
        float f;
        if (this.f34321c.m22654a()) {
            f = this.f34318b.getHeight() / 2.0f;
            i = this.f34317a.getHeight();
        } else {
            f = this.f34318b.getWidth() / 2.0f;
            i = this.f34317a.getWidth();
        }
        return (int) (f - i);
    }

    @Override // com.futuremind.recyclerviewfastscroll.p310a.AbstractC10574c
    /* renamed from: d */
    protected final AbstractC10575d mo22637d() {
        return new C10572a(new C10576e.C10579b(this.f34317a).m22629a().m22628b().mo22627c());
    }
}
