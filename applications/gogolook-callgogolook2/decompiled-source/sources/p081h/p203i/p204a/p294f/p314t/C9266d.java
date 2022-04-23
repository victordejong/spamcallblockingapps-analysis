package p081h.p203i.p204a.p294f.p314t;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.accessibility.AccessibilityManager;
import android.widget.FrameLayout;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityManagerCompat;
import com.google.android.material.R$styleable;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: h.i.a.f.t.d */
/* loaded from: classes2-dex2jar.jar:h/i/a/f/t/d.class */
public class C9266d extends FrameLayout {

    /* renamed from: a */
    public final AccessibilityManager f21271a;

    /* renamed from: b */
    public final AccessibilityManagerCompat.TouchExplorationStateChangeListener f21272b;

    /* renamed from: c */
    public AbstractC9265c f21273c;

    /* renamed from: d */
    public AbstractC9264b f21274d;

    /* renamed from: h.i.a.f.t.d$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/f/t/d$a.class */
    public class C9267a implements AccessibilityManagerCompat.TouchExplorationStateChangeListener {
        public C9267a() {
        }

        @Override // androidx.core.view.accessibility.AccessibilityManagerCompat.TouchExplorationStateChangeListener
        public void onTouchExplorationStateChanged(boolean z) {
            C9266d.this.m15559a(z);
        }
    }

    public C9266d(Context context) {
        this(context, null);
    }

    public C9266d(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.SnackbarLayout);
        if (obtainStyledAttributes.hasValue(R$styleable.SnackbarLayout_elevation)) {
            ViewCompat.setElevation(this, obtainStyledAttributes.getDimensionPixelSize(R$styleable.SnackbarLayout_elevation, 0));
        }
        obtainStyledAttributes.recycle();
        this.f21271a = (AccessibilityManager) context.getSystemService("accessibility");
        this.f21272b = new C9267a();
        AccessibilityManagerCompat.addTouchExplorationStateChangeListener(this.f21271a, this.f21272b);
        m15559a(this.f21271a.isTouchExplorationEnabled());
    }

    /* renamed from: a */
    public final void m15559a(boolean z) {
        setClickable(!z);
        setFocusable(z);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        AbstractC9264b bVar = this.f21274d;
        if (bVar != null) {
            bVar.onViewAttachedToWindow(this);
        }
        ViewCompat.requestApplyInsets(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        AbstractC9264b bVar = this.f21274d;
        if (bVar != null) {
            bVar.onViewDetachedFromWindow(this);
        }
        AccessibilityManagerCompat.removeTouchExplorationStateChangeListener(this.f21271a, this.f21272b);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        AbstractC9265c cVar = this.f21273c;
        if (cVar != null) {
            cVar.m15561a(this, i, i2, i3, i4);
        }
    }
}
