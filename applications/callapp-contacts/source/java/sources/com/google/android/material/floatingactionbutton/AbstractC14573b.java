package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.util.Property;
import android.view.View;
import androidx.core.p036e.C0833d;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.p364a.C14389a;
import com.google.android.material.p364a.C14390b;
import com.google.android.material.p364a.C14396h;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.material.floatingactionbutton.b */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/floatingactionbutton/b.class */
public abstract class AbstractC14573b implements AbstractC14593f {

    /* renamed from: a */
    final ExtendedFloatingActionButton f53137a;

    /* renamed from: b */
    private final Context f53138b;

    /* renamed from: c */
    private final ArrayList<Animator.AnimatorListener> f53139c = new ArrayList<>();

    /* renamed from: d */
    private final C14572a f53140d;

    /* renamed from: e */
    private C14396h f53141e;

    /* renamed from: f */
    private C14396h f53142f;

    public AbstractC14573b(ExtendedFloatingActionButton extendedFloatingActionButton, C14572a c14572a) {
        this.f53137a = extendedFloatingActionButton;
        this.f53138b = extendedFloatingActionButton.getContext();
        this.f53140d = c14572a;
    }

    /* renamed from: a */
    public final C14396h m10723a() {
        C14396h c14396h = this.f53142f;
        if (c14396h != null) {
            return c14396h;
        }
        if (this.f53141e == null) {
            this.f53141e = C14396h.m11333a(this.f53138b, mo10666g());
        }
        return (C14396h) C0833d.m44410a(this.f53141e);
    }

    @Override // com.google.android.material.floatingactionbutton.AbstractC14593f
    /* renamed from: a */
    public void mo10673a(Animator animator) {
        C14572a c14572a = this.f53140d;
        if (c14572a.f53136a != null) {
            c14572a.f53136a.cancel();
        }
        c14572a.f53136a = animator;
    }

    @Override // com.google.android.material.floatingactionbutton.AbstractC14593f
    /* renamed from: a */
    public final void mo10672a(C14396h c14396h) {
        this.f53142f = c14396h;
    }

    /* renamed from: b */
    public final AnimatorSet m10722b(C14396h c14396h) {
        ArrayList arrayList = new ArrayList();
        if (c14396h.m11324b("opacity")) {
            arrayList.add(c14396h.m11328a("opacity", (String) this.f53137a, (Property<String, ?>) View.ALPHA));
        }
        if (c14396h.m11324b("scale")) {
            arrayList.add(c14396h.m11328a("scale", (String) this.f53137a, (Property<String, ?>) View.SCALE_Y));
            arrayList.add(c14396h.m11328a("scale", (String) this.f53137a, (Property<String, ?>) View.SCALE_X));
        }
        if (c14396h.m11324b("width")) {
            arrayList.add(c14396h.m11328a("width", (String) this.f53137a, (Property<String, ?>) ExtendedFloatingActionButton.f53075g));
        }
        if (c14396h.m11324b("height")) {
            arrayList.add(c14396h.m11328a("height", (String) this.f53137a, (Property<String, ?>) ExtendedFloatingActionButton.f53076h));
        }
        if (c14396h.m11324b("paddingStart")) {
            arrayList.add(c14396h.m11328a("paddingStart", (String) this.f53137a, (Property<String, ?>) ExtendedFloatingActionButton.f53077i));
        }
        if (c14396h.m11324b("paddingEnd")) {
            arrayList.add(c14396h.m11328a("paddingEnd", (String) this.f53137a, (Property<String, ?>) ExtendedFloatingActionButton.f53078j));
        }
        if (c14396h.m11324b("labelOpacity")) {
            arrayList.add(c14396h.m11328a("labelOpacity", (String) this.f53137a, (Property<String, ?>) new Property<ExtendedFloatingActionButton, Float>(Float.class, "LABEL_OPACITY_PROPERTY") { // from class: com.google.android.material.floatingactionbutton.b.1
                @Override // android.util.Property
                public final /* synthetic */ Float get(ExtendedFloatingActionButton extendedFloatingActionButton) {
                    ExtendedFloatingActionButton extendedFloatingActionButton2 = extendedFloatingActionButton;
                    return Float.valueOf(C14389a.m11339a((float) BitmapDescriptorFactory.HUE_RED, 1.0f, (Color.alpha(extendedFloatingActionButton2.getCurrentTextColor()) / 255.0f) / Color.alpha(extendedFloatingActionButton2.f53080f.getColorForState(extendedFloatingActionButton2.getDrawableState(), AbstractC14573b.this.f53137a.f53080f.getDefaultColor()))));
                }

                @Override // android.util.Property
                public final /* synthetic */ void set(ExtendedFloatingActionButton extendedFloatingActionButton, Float f) {
                    ExtendedFloatingActionButton extendedFloatingActionButton2 = extendedFloatingActionButton;
                    Float f2 = f;
                    int colorForState = extendedFloatingActionButton2.f53080f.getColorForState(extendedFloatingActionButton2.getDrawableState(), AbstractC14573b.this.f53137a.f53080f.getDefaultColor());
                    ColorStateList valueOf = ColorStateList.valueOf(Color.argb((int) (C14389a.m11339a((float) BitmapDescriptorFactory.HUE_RED, Color.alpha(colorForState) / 255.0f, f2.floatValue()) * 255.0f), Color.red(colorForState), Color.green(colorForState), Color.blue(colorForState)));
                    if (f2.floatValue() == 1.0f) {
                        extendedFloatingActionButton2.m10778a(extendedFloatingActionButton2.f53080f);
                    } else {
                        extendedFloatingActionButton2.m10778a(valueOf);
                    }
                }
            }));
        }
        AnimatorSet animatorSet = new AnimatorSet();
        C14390b.m11337a(animatorSet, arrayList);
        return animatorSet;
    }

    @Override // com.google.android.material.floatingactionbutton.AbstractC14593f
    /* renamed from: b */
    public final List<Animator.AnimatorListener> mo10671b() {
        return this.f53139c;
    }

    @Override // com.google.android.material.floatingactionbutton.AbstractC14593f
    /* renamed from: c */
    public void mo10670c() {
        this.f53140d.f53136a = null;
    }

    @Override // com.google.android.material.floatingactionbutton.AbstractC14593f
    /* renamed from: d */
    public void mo10669d() {
        this.f53140d.f53136a = null;
    }

    @Override // com.google.android.material.floatingactionbutton.AbstractC14593f
    /* renamed from: e */
    public AnimatorSet mo10668e() {
        return m10722b(m10723a());
    }
}
