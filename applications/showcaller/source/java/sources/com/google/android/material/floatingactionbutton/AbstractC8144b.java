package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.util.Property;
import android.view.View;
import java.util.ArrayList;
import java.util.List;
import p020b.p041h.p049k.C1597h;
import p078c.p084c.p085a.p096b.p097m.C1897a;
import p078c.p084c.p085a.p096b.p097m.C1898b;
import p078c.p084c.p085a.p096b.p097m.C1904h;
/* renamed from: com.google.android.material.floatingactionbutton.b */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/floatingactionbutton/b.class */
public abstract class AbstractC8144b implements AbstractC8164f {

    /* renamed from: a */
    private final Context f36768a;

    /* renamed from: b */
    private final ExtendedFloatingActionButton f36769b;

    /* renamed from: c */
    private final ArrayList<Animator.AnimatorListener> f36770c = new ArrayList<>();

    /* renamed from: d */
    private final C8143a f36771d;

    /* renamed from: e */
    private C1904h f36772e;

    /* renamed from: f */
    private C1904h f36773f;

    /* renamed from: com.google.android.material.floatingactionbutton.b$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/floatingactionbutton/b$a.class */
    public class C8145a extends Property<ExtendedFloatingActionButton, Float> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C8145a(Class cls, String str) {
            super(cls, str);
            AbstractC8144b.this = r5;
        }

        /* renamed from: a */
        public Float get(ExtendedFloatingActionButton extendedFloatingActionButton) {
            return Float.valueOf(C1897a.m28752a(0.0f, 1.0f, (Color.alpha(extendedFloatingActionButton.getCurrentTextColor()) / 255.0f) / Color.alpha(extendedFloatingActionButton.f36724N.getColorForState(extendedFloatingActionButton.getDrawableState(), AbstractC8144b.this.f36769b.f36724N.getDefaultColor()))));
        }

        /* renamed from: b */
        public void set(ExtendedFloatingActionButton extendedFloatingActionButton, Float f) {
            int colorForState = extendedFloatingActionButton.f36724N.getColorForState(extendedFloatingActionButton.getDrawableState(), AbstractC8144b.this.f36769b.f36724N.getDefaultColor());
            ColorStateList valueOf = ColorStateList.valueOf(Color.argb((int) (C1897a.m28752a(0.0f, Color.alpha(colorForState) / 255.0f, f.floatValue()) * 255.0f), Color.red(colorForState), Color.green(colorForState), Color.blue(colorForState)));
            if (f.floatValue() == 1.0f) {
                extendedFloatingActionButton.m4825D(extendedFloatingActionButton.f36724N);
            } else {
                extendedFloatingActionButton.m4825D(valueOf);
            }
        }
    }

    public AbstractC8144b(ExtendedFloatingActionButton extendedFloatingActionButton, C8143a c8143a) {
        this.f36769b = extendedFloatingActionButton;
        this.f36768a = extendedFloatingActionButton.getContext();
        this.f36771d = c8143a;
    }

    @Override // com.google.android.material.floatingactionbutton.AbstractC8164f
    /* renamed from: a */
    public void mo4673a() {
        this.f36771d.m4755b();
    }

    @Override // com.google.android.material.floatingactionbutton.AbstractC8164f
    /* renamed from: d */
    public C1904h mo4670d() {
        return this.f36773f;
    }

    @Override // com.google.android.material.floatingactionbutton.AbstractC8164f
    /* renamed from: f */
    public void mo4668f() {
        this.f36771d.m4755b();
    }

    @Override // com.google.android.material.floatingactionbutton.AbstractC8164f
    /* renamed from: g */
    public final void mo4667g(C1904h c1904h) {
        this.f36773f = c1904h;
    }

    @Override // com.google.android.material.floatingactionbutton.AbstractC8164f
    /* renamed from: h */
    public AnimatorSet mo4666h() {
        return m4752l(m4751m());
    }

    @Override // com.google.android.material.floatingactionbutton.AbstractC8164f
    /* renamed from: i */
    public final List<Animator.AnimatorListener> mo4665i() {
        return this.f36770c;
    }

    /* renamed from: l */
    public AnimatorSet m4752l(C1904h c1904h) {
        ArrayList arrayList = new ArrayList();
        if (c1904h.m28731j("opacity")) {
            arrayList.add(c1904h.m28735f("opacity", this.f36769b, View.ALPHA));
        }
        if (c1904h.m28731j("scale")) {
            arrayList.add(c1904h.m28735f("scale", this.f36769b, View.SCALE_Y));
            arrayList.add(c1904h.m28735f("scale", this.f36769b, View.SCALE_X));
        }
        if (c1904h.m28731j("width")) {
            arrayList.add(c1904h.m28735f("width", this.f36769b, ExtendedFloatingActionButton.f36707w));
        }
        if (c1904h.m28731j("height")) {
            arrayList.add(c1904h.m28735f("height", this.f36769b, ExtendedFloatingActionButton.f36708x));
        }
        if (c1904h.m28731j("paddingStart")) {
            arrayList.add(c1904h.m28735f("paddingStart", this.f36769b, ExtendedFloatingActionButton.f36709y));
        }
        if (c1904h.m28731j("paddingEnd")) {
            arrayList.add(c1904h.m28735f("paddingEnd", this.f36769b, ExtendedFloatingActionButton.f36710z));
        }
        if (c1904h.m28731j("labelOpacity")) {
            arrayList.add(c1904h.m28735f("labelOpacity", this.f36769b, new C8145a(Float.class, "LABEL_OPACITY_PROPERTY")));
        }
        AnimatorSet animatorSet = new AnimatorSet();
        C1898b.m28749a(animatorSet, arrayList);
        return animatorSet;
    }

    /* renamed from: m */
    public final C1904h m4751m() {
        C1904h c1904h = this.f36773f;
        if (c1904h != null) {
            return c1904h;
        }
        if (this.f36772e == null) {
            this.f36772e = C1904h.m28737d(this.f36768a, mo4672b());
        }
        return (C1904h) C1597h.m29659e(this.f36772e);
    }

    @Override // com.google.android.material.floatingactionbutton.AbstractC8164f
    public void onAnimationStart(Animator animator) {
        this.f36771d.m4754c(animator);
    }
}
