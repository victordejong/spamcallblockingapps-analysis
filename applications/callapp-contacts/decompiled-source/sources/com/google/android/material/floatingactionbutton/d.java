package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.FloatEvaluator;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import android.content.res.ColorStateList;
import android.graphics.Matrix;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.util.StateSet;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.core.view.v;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.a;
import com.google.android.material.a.h;
import com.google.android.material.internal.g;
import com.google.android.material.k.m;
import com.google.android.material.k.q;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/floatingactionbutton/d.class */
public class d {

    /* renamed from: a  reason: collision with root package name */
    static final TimeInterpolator f30536a = com.google.android.material.a.a.f30175c;
    static final int[] t = {16842919, 16842910};
    static final int[] u = {16843623, 16842908, 16842910};
    static final int[] v = {16842908, 16842910};
    static final int[] w = {16843623, 16842910};
    static final int[] x = {16842910};
    static final int[] y = new int[0];
    final com.google.android.material.j.b A;
    ViewTreeObserver.OnPreDrawListener B;
    private final com.google.android.material.internal.g C;
    private h D;
    private h E;
    private Animator F;

    /* renamed from: b  reason: collision with root package name */
    m f30537b;

    /* renamed from: c  reason: collision with root package name */
    com.google.android.material.k.h f30538c;

    /* renamed from: d  reason: collision with root package name */
    Drawable f30539d;
    com.google.android.material.floatingactionbutton.c e;
    Drawable f;
    boolean g;
    float i;
    float j;
    float k;
    int l;
    h m;
    h n;
    float o;
    int p;
    public ArrayList<Animator.AnimatorListener> q;
    public ArrayList<Animator.AnimatorListener> r;
    public ArrayList<AbstractC0488d> s;
    final FloatingActionButton z;
    boolean h = true;
    private float G = 1.0f;
    private int H = 0;
    private final Rect I = new Rect();
    private final RectF J = new RectF();
    private final RectF K = new RectF();
    private final Matrix L = new Matrix();

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/floatingactionbutton/d$a.class */
    final class a extends g {
        a() {
            super();
        }

        @Override // com.google.android.material.floatingactionbutton.d.g
        protected final float a() {
            return BitmapDescriptorFactory.HUE_RED;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/floatingactionbutton/d$b.class */
    final class b extends g {
        b() {
            super();
        }

        @Override // com.google.android.material.floatingactionbutton.d.g
        protected final float a() {
            return d.this.i + d.this.j;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/floatingactionbutton/d$c.class */
    final class c extends g {
        c() {
            super();
        }

        @Override // com.google.android.material.floatingactionbutton.d.g
        protected final float a() {
            return d.this.i + d.this.k;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.floatingactionbutton.d$d  reason: collision with other inner class name */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/floatingactionbutton/d$d.class */
    public interface AbstractC0488d {
        void a();

        void b();
    }

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/floatingactionbutton/d$e.class */
    interface e {
        void a();

        void b();
    }

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/floatingactionbutton/d$f.class */
    final class f extends g {
        f() {
            super();
        }

        @Override // com.google.android.material.floatingactionbutton.d.g
        protected final float a() {
            return d.this.i;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/floatingactionbutton/d$g.class */
    abstract class g extends AnimatorListenerAdapter implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a  reason: collision with root package name */
        private boolean f30555a;

        /* renamed from: c  reason: collision with root package name */
        private float f30557c;

        /* renamed from: d  reason: collision with root package name */
        private float f30558d;

        private g() {
        }

        protected abstract float a();

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            d.this.d((int) this.f30558d);
            this.f30555a = false;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            if (!this.f30555a) {
                this.f30557c = d.this.f30538c == null ? BitmapDescriptorFactory.HUE_RED : d.this.f30538c.t.o;
                this.f30558d = a();
                this.f30555a = true;
            }
            d dVar = d.this;
            float f = this.f30557c;
            dVar.d((int) (f + ((this.f30558d - f) * valueAnimator.getAnimatedFraction())));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(FloatingActionButton floatingActionButton, com.google.android.material.j.b bVar) {
        this.z = floatingActionButton;
        this.A = bVar;
        com.google.android.material.internal.g gVar = new com.google.android.material.internal.g();
        this.C = gVar;
        gVar.a(t, a(new c()));
        gVar.a(u, a(new b()));
        gVar.a(v, a(new b()));
        gVar.a(w, a(new b()));
        gVar.a(x, a(new f()));
        gVar.a(y, a(new a()));
        this.o = floatingActionButton.getRotation();
    }

    private AnimatorSet a(h hVar, float f2, float f3, float f4) {
        ArrayList arrayList = new ArrayList();
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.z, View.ALPHA, f2);
        hVar.a("opacity").a((Animator) ofFloat);
        arrayList.add(ofFloat);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.z, View.SCALE_X, f3);
        hVar.a("scale").a((Animator) ofFloat2);
        a(ofFloat2);
        arrayList.add(ofFloat2);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(this.z, View.SCALE_Y, f3);
        hVar.a("scale").a((Animator) ofFloat3);
        a(ofFloat3);
        arrayList.add(ofFloat3);
        a(f4, this.L);
        ObjectAnimator ofObject = ObjectAnimator.ofObject(this.z, new com.google.android.material.a.f(), new com.google.android.material.a.g() { // from class: com.google.android.material.floatingactionbutton.d.3
            @Override // com.google.android.material.a.g
            /* renamed from: a */
            public final Matrix evaluate(float f5, Matrix matrix, Matrix matrix2) {
                d.this.G = f5;
                return super.evaluate(f5, matrix, matrix2);
            }
        }, new Matrix(this.L));
        hVar.a("iconScale").a((Animator) ofObject);
        arrayList.add(ofObject);
        AnimatorSet animatorSet = new AnimatorSet();
        com.google.android.material.a.b.a(animatorSet, arrayList);
        return animatorSet;
    }

    private static ValueAnimator a(g gVar) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setInterpolator(f30536a);
        valueAnimator.setDuration(100L);
        valueAnimator.addListener(gVar);
        valueAnimator.addUpdateListener(gVar);
        valueAnimator.setFloatValues(BitmapDescriptorFactory.HUE_RED, 1.0f);
        return valueAnimator;
    }

    private void a(float f2, Matrix matrix) {
        matrix.reset();
        Drawable drawable = this.z.getDrawable();
        if (drawable != null && this.p != 0) {
            RectF rectF = this.J;
            RectF rectF2 = this.K;
            rectF.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
            int i = this.p;
            rectF2.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, i, i);
            matrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.CENTER);
            int i2 = this.p;
            matrix.postScale(f2, f2, i2 / 2.0f, i2 / 2.0f);
        }
    }

    private void a(ObjectAnimator objectAnimator) {
        if (Build.VERSION.SDK_INT == 26) {
            objectAnimator.setEvaluator(new TypeEvaluator<Float>() { // from class: com.google.android.material.floatingactionbutton.d.4

                /* renamed from: a  reason: collision with root package name */
                FloatEvaluator f30548a = new FloatEvaluator();

                @Override // android.animation.TypeEvaluator
                public final /* synthetic */ Float evaluate(float f2, Float f3, Float f4) {
                    float floatValue = this.f30548a.evaluate(f2, (Number) f3, (Number) f4).floatValue();
                    float f5 = floatValue;
                    if (floatValue < 0.1f) {
                        f5 = BitmapDescriptorFactory.HUE_RED;
                    }
                    return Float.valueOf(f5);
                }
            });
        }
    }

    private void b(Rect rect) {
        androidx.core.e.d.a(this.f, "Didn't initialize content background");
        if (i()) {
            this.A.a(new InsetDrawable(this.f, rect.left, rect.top, rect.right, rect.bottom));
            return;
        }
        this.A.a(this.f);
    }

    private void e(float f2) {
        this.G = f2;
        Matrix matrix = this.L;
        a(f2, matrix);
        this.z.setImageMatrix(matrix);
    }

    private h o() {
        if (this.D == null) {
            this.D = h.a(this.z.getContext(), a.C0485a.design_fab_show_motion_spec);
        }
        return (h) androidx.core.e.d.a(this.D);
    }

    private h p() {
        if (this.E == null) {
            this.E = h.a(this.z.getContext(), a.C0485a.design_fab_hide_motion_spec);
        }
        return (h) androidx.core.e.d.a(this.E);
    }

    private boolean q() {
        return v.B(this.z) && !this.z.isInEditMode();
    }

    float a() {
        return this.i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(float f2) {
        if (this.i != f2) {
            this.i = f2;
            a(f2, this.j, this.k);
        }
    }

    void a(float f2, float f3, float f4) {
        h();
        d(f2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(ColorStateList colorStateList) {
        Drawable drawable = this.f30539d;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.a(drawable, com.google.android.material.i.b.b(colorStateList));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(ColorStateList colorStateList, PorterDuff.Mode mode, ColorStateList colorStateList2, int i) {
        com.google.android.material.k.h k = k();
        this.f30538c = k;
        k.setTintList(colorStateList);
        if (mode != null) {
            this.f30538c.setTintMode(mode);
        }
        this.f30538c.i();
        this.f30538c.a(this.z.getContext());
        com.google.android.material.i.a aVar = new com.google.android.material.i.a(this.f30538c.t.f30683a);
        aVar.setTintList(com.google.android.material.i.b.b(colorStateList2));
        this.f30539d = aVar;
        this.f = new LayerDrawable(new Drawable[]{(Drawable) androidx.core.e.d.a(this.f30538c), aVar});
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Rect rect) {
        int c2 = this.g ? (this.l - this.z.c()) / 2 : 0;
        float a2 = this.h ? a() + this.k : BitmapDescriptorFactory.HUE_RED;
        int max = Math.max(c2, (int) Math.ceil(a2));
        int max2 = Math.max(c2, (int) Math.ceil(a2 * 1.5f));
        rect.set(max, max2, max, max2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(final e eVar, final boolean z) {
        if (!m()) {
            Animator animator = this.F;
            if (animator != null) {
                animator.cancel();
            }
            if (q()) {
                h hVar = this.n;
                if (hVar == null) {
                    hVar = p();
                }
                AnimatorSet a2 = a(hVar, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
                a2.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.floatingactionbutton.d.1

                    /* renamed from: d  reason: collision with root package name */
                    private boolean f30543d;

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationCancel(Animator animator2) {
                        this.f30543d = true;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator2) {
                        d.this.H = 0;
                        d.this.F = null;
                        if (!this.f30543d) {
                            FloatingActionButton floatingActionButton = d.this.z;
                            boolean z2 = z;
                            floatingActionButton.a(z2 ? 8 : 4, z2);
                            e eVar2 = eVar;
                            if (eVar2 != null) {
                                eVar2.b();
                            }
                        }
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationStart(Animator animator2) {
                        d.this.z.a(0, z);
                        d.this.H = 1;
                        d.this.F = animator2;
                        this.f30543d = false;
                    }
                });
                ArrayList<Animator.AnimatorListener> arrayList = this.r;
                if (arrayList != null) {
                    Iterator<Animator.AnimatorListener> it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        a2.addListener(it2.next());
                    }
                }
                a2.start();
                return;
            }
            this.z.a(z ? 8 : 4, z);
            if (eVar != null) {
                eVar.b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(m mVar) {
        this.f30537b = mVar;
        com.google.android.material.k.h hVar = this.f30538c;
        if (hVar != null) {
            hVar.setShapeAppearanceModel(mVar);
        }
        Drawable drawable = this.f30539d;
        if (drawable instanceof q) {
            ((q) drawable).setShapeAppearanceModel(mVar);
        }
        com.google.android.material.floatingactionbutton.c cVar = this.e;
        if (cVar != null) {
            cVar.a(mVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int[] iArr) {
        g.a aVar;
        com.google.android.material.internal.g gVar = this.C;
        int size = gVar.f30630a.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                aVar = null;
                break;
            }
            g.a aVar2 = gVar.f30630a.get(i);
            if (StateSet.stateSetMatches(aVar2.f30635a, iArr)) {
                aVar = aVar2;
                break;
            }
            i++;
        }
        if (aVar != gVar.f30631b) {
            if (!(gVar.f30631b == null || gVar.f30632c == null)) {
                gVar.f30632c.cancel();
                gVar.f30632c = null;
            }
            gVar.f30631b = aVar;
            if (aVar != null) {
                gVar.f30632c = aVar.f30636b;
                gVar.f30632c.start();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b() {
        e(this.G);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(float f2) {
        if (this.j != f2) {
            this.j = f2;
            a(this.i, f2, this.k);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(final e eVar, final boolean z) {
        if (!l()) {
            Animator animator = this.F;
            if (animator != null) {
                animator.cancel();
            }
            if (q()) {
                if (this.z.getVisibility() != 0) {
                    this.z.setAlpha(BitmapDescriptorFactory.HUE_RED);
                    this.z.setScaleY(BitmapDescriptorFactory.HUE_RED);
                    this.z.setScaleX(BitmapDescriptorFactory.HUE_RED);
                    e(BitmapDescriptorFactory.HUE_RED);
                }
                h hVar = this.m;
                if (hVar == null) {
                    hVar = o();
                }
                AnimatorSet a2 = a(hVar, 1.0f, 1.0f, 1.0f);
                a2.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.floatingactionbutton.d.2
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator2) {
                        d.this.H = 0;
                        d.this.F = null;
                        e eVar2 = eVar;
                        if (eVar2 != null) {
                            eVar2.a();
                        }
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationStart(Animator animator2) {
                        d.this.z.a(0, z);
                        d.this.H = 2;
                        d.this.F = animator2;
                    }
                });
                ArrayList<Animator.AnimatorListener> arrayList = this.q;
                if (arrayList != null) {
                    Iterator<Animator.AnimatorListener> it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        a2.addListener(it2.next());
                    }
                }
                a2.start();
                return;
            }
            this.z.a(0, z);
            this.z.setAlpha(1.0f);
            this.z.setScaleY(1.0f);
            this.z.setScaleX(1.0f);
            e(1.0f);
            if (eVar != null) {
                eVar.a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c(float f2) {
        if (this.k != f2) {
            this.k = f2;
            a(this.i, this.j, f2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean c() {
        return !this.g || this.z.c() >= this.l;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d() {
        com.google.android.material.internal.g gVar = this.C;
        if (gVar.f30632c != null) {
            gVar.f30632c.end();
            gVar.f30632c = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void d(float f2) {
        com.google.android.material.k.h hVar = this.f30538c;
        if (hVar != null) {
            hVar.r(f2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void e() {
        ArrayList<AbstractC0488d> arrayList = this.s;
        if (arrayList != null) {
            Iterator<AbstractC0488d> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                it2.next().a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void f() {
        ArrayList<AbstractC0488d> arrayList = this.s;
        if (arrayList != null) {
            Iterator<AbstractC0488d> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                it2.next().b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void h() {
        Rect rect = this.I;
        a(rect);
        b(rect);
        this.A.a(rect.left, rect.top, rect.right, rect.bottom);
    }

    boolean i() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean j() {
        return true;
    }

    com.google.android.material.k.h k() {
        return new com.google.android.material.k.h((m) androidx.core.e.d.a(this.f30537b));
    }

    public final boolean l() {
        return this.z.getVisibility() != 0 ? this.H == 2 : this.H != 1;
    }

    public final boolean m() {
        return this.z.getVisibility() == 0 ? this.H == 1 : this.H != 2;
    }

    void n() {
        int i;
        if (Build.VERSION.SDK_INT == 19) {
            if (this.o % 90.0f != BitmapDescriptorFactory.HUE_RED) {
                if (this.z.getLayerType() != 1) {
                    this.z.setLayerType(1, null);
                }
            } else if (this.z.getLayerType() != 0) {
                this.z.setLayerType(0, null);
            }
        }
        com.google.android.material.k.h hVar = this.f30538c;
        if (hVar != null && hVar.t.t != (i = (int) this.o)) {
            hVar.t.t = i;
            hVar.h();
        }
    }
}
