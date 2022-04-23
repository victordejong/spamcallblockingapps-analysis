package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.util.Property;
import android.view.View;
import androidx.core.e.d;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.a.a;
import com.google.android.material.a.h;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/floatingactionbutton/b.class */
abstract class b implements f {

    /* renamed from: a  reason: collision with root package name */
    final ExtendedFloatingActionButton f30526a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f30527b;

    /* renamed from: c  reason: collision with root package name */
    private final ArrayList<Animator.AnimatorListener> f30528c = new ArrayList<>();

    /* renamed from: d  reason: collision with root package name */
    private final a f30529d;
    private h e;
    private h f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(ExtendedFloatingActionButton extendedFloatingActionButton, a aVar) {
        this.f30526a = extendedFloatingActionButton;
        this.f30527b = extendedFloatingActionButton.getContext();
        this.f30529d = aVar;
    }

    public final h a() {
        h hVar = this.f;
        if (hVar != null) {
            return hVar;
        }
        if (this.e == null) {
            this.e = h.a(this.f30527b, g());
        }
        return (h) d.a(this.e);
    }

    @Override // com.google.android.material.floatingactionbutton.f
    public void a(Animator animator) {
        a aVar = this.f30529d;
        if (aVar.f30525a != null) {
            aVar.f30525a.cancel();
        }
        aVar.f30525a = animator;
    }

    @Override // com.google.android.material.floatingactionbutton.f
    public final void a(h hVar) {
        this.f = hVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final AnimatorSet b(h hVar) {
        ArrayList arrayList = new ArrayList();
        if (hVar.b("opacity")) {
            arrayList.add(hVar.a("opacity", (String) this.f30526a, (Property<String, ?>) View.ALPHA));
        }
        if (hVar.b("scale")) {
            arrayList.add(hVar.a("scale", (String) this.f30526a, (Property<String, ?>) View.SCALE_Y));
            arrayList.add(hVar.a("scale", (String) this.f30526a, (Property<String, ?>) View.SCALE_X));
        }
        if (hVar.b("width")) {
            arrayList.add(hVar.a("width", (String) this.f30526a, (Property<String, ?>) ExtendedFloatingActionButton.g));
        }
        if (hVar.b("height")) {
            arrayList.add(hVar.a("height", (String) this.f30526a, (Property<String, ?>) ExtendedFloatingActionButton.h));
        }
        if (hVar.b("paddingStart")) {
            arrayList.add(hVar.a("paddingStart", (String) this.f30526a, (Property<String, ?>) ExtendedFloatingActionButton.i));
        }
        if (hVar.b("paddingEnd")) {
            arrayList.add(hVar.a("paddingEnd", (String) this.f30526a, (Property<String, ?>) ExtendedFloatingActionButton.j));
        }
        if (hVar.b("labelOpacity")) {
            arrayList.add(hVar.a("labelOpacity", (String) this.f30526a, (Property<String, ?>) new Property<ExtendedFloatingActionButton, Float>(Float.class, "LABEL_OPACITY_PROPERTY") { // from class: com.google.android.material.floatingactionbutton.b.1
                @Override // android.util.Property
                public final /* synthetic */ Float get(ExtendedFloatingActionButton extendedFloatingActionButton) {
                    ExtendedFloatingActionButton extendedFloatingActionButton2 = extendedFloatingActionButton;
                    return Float.valueOf(a.a((float) BitmapDescriptorFactory.HUE_RED, 1.0f, (Color.alpha(extendedFloatingActionButton2.getCurrentTextColor()) / 255.0f) / Color.alpha(extendedFloatingActionButton2.f.getColorForState(extendedFloatingActionButton2.getDrawableState(), b.this.f30526a.f.getDefaultColor()))));
                }

                @Override // android.util.Property
                public final /* synthetic */ void set(ExtendedFloatingActionButton extendedFloatingActionButton, Float f) {
                    ExtendedFloatingActionButton extendedFloatingActionButton2 = extendedFloatingActionButton;
                    Float f2 = f;
                    int colorForState = extendedFloatingActionButton2.f.getColorForState(extendedFloatingActionButton2.getDrawableState(), b.this.f30526a.f.getDefaultColor());
                    ColorStateList valueOf = ColorStateList.valueOf(Color.argb((int) (a.a((float) BitmapDescriptorFactory.HUE_RED, Color.alpha(colorForState) / 255.0f, f2.floatValue()) * 255.0f), Color.red(colorForState), Color.green(colorForState), Color.blue(colorForState)));
                    if (f2.floatValue() == 1.0f) {
                        extendedFloatingActionButton2.a(extendedFloatingActionButton2.f);
                    } else {
                        extendedFloatingActionButton2.a(valueOf);
                    }
                }
            }));
        }
        AnimatorSet animatorSet = new AnimatorSet();
        com.google.android.material.a.b.a(animatorSet, arrayList);
        return animatorSet;
    }

    @Override // com.google.android.material.floatingactionbutton.f
    public final List<Animator.AnimatorListener> b() {
        return this.f30528c;
    }

    @Override // com.google.android.material.floatingactionbutton.f
    public void c() {
        this.f30529d.f30525a = null;
    }

    @Override // com.google.android.material.floatingactionbutton.f
    public void d() {
        this.f30529d.f30525a = null;
    }

    @Override // com.google.android.material.floatingactionbutton.f
    public AnimatorSet e() {
        return b(a());
    }
}
