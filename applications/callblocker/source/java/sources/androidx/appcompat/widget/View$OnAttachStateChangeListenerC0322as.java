package androidx.appcompat.widget;

import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityManager;
import androidx.core.p026h.C0595u;
import androidx.core.p026h.C0604v;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.appcompat.widget.as */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/as.class */
public class View$OnAttachStateChangeListenerC0322as implements View.OnAttachStateChangeListener, View.OnHoverListener, View.OnLongClickListener {

    /* renamed from: j */
    private static View$OnAttachStateChangeListenerC0322as f1363j;

    /* renamed from: k */
    private static View$OnAttachStateChangeListenerC0322as f1364k;

    /* renamed from: a */
    private final View f1365a;

    /* renamed from: b */
    private final CharSequence f1366b;

    /* renamed from: c */
    private final int f1367c;

    /* renamed from: d */
    private final Runnable f1368d = new Runnable() { // from class: androidx.appcompat.widget.as.1
        @Override // java.lang.Runnable
        public void run() {
            View$OnAttachStateChangeListenerC0322as.this.m21401a(false);
        }
    };

    /* renamed from: e */
    private final Runnable f1369e = new Runnable() { // from class: androidx.appcompat.widget.as.2
        @Override // java.lang.Runnable
        public void run() {
            View$OnAttachStateChangeListenerC0322as.this.m21405a();
        }
    };

    /* renamed from: f */
    private int f1370f;

    /* renamed from: g */
    private int f1371g;

    /* renamed from: h */
    private C0325at f1372h;

    /* renamed from: i */
    private boolean f1373i;

    private View$OnAttachStateChangeListenerC0322as(View view, CharSequence charSequence) {
        this.f1365a = view;
        this.f1366b = charSequence;
        this.f1367c = C0604v.m20270a(ViewConfiguration.get(this.f1365a.getContext()));
        m21398d();
        this.f1365a.setOnLongClickListener(this);
        this.f1365a.setOnHoverListener(this);
    }

    /* renamed from: a */
    public static void m21403a(View view, CharSequence charSequence) {
        if (f1363j != null && f1363j.f1365a == view) {
            m21402a((View$OnAttachStateChangeListenerC0322as) null);
        }
        if (!TextUtils.isEmpty(charSequence)) {
            new View$OnAttachStateChangeListenerC0322as(view, charSequence);
            return;
        }
        if (f1364k != null && f1364k.f1365a == view) {
            f1364k.m21405a();
        }
        view.setOnLongClickListener(null);
        view.setLongClickable(false);
        view.setOnHoverListener(null);
    }

    /* renamed from: a */
    private static void m21402a(View$OnAttachStateChangeListenerC0322as view$OnAttachStateChangeListenerC0322as) {
        if (f1363j != null) {
            f1363j.m21399c();
        }
        f1363j = view$OnAttachStateChangeListenerC0322as;
        if (f1363j != null) {
            f1363j.m21400b();
        }
    }

    /* renamed from: a */
    private boolean m21404a(MotionEvent motionEvent) {
        boolean z;
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        if (Math.abs(x - this.f1370f) > this.f1367c || Math.abs(y - this.f1371g) > this.f1367c) {
            this.f1370f = x;
            this.f1371g = y;
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    private void m21400b() {
        this.f1365a.postDelayed(this.f1368d, ViewConfiguration.getLongPressTimeout());
    }

    /* renamed from: c */
    private void m21399c() {
        this.f1365a.removeCallbacks(this.f1368d);
    }

    /* renamed from: d */
    private void m21398d() {
        this.f1370f = Integer.MAX_VALUE;
        this.f1371g = Integer.MAX_VALUE;
    }

    /* renamed from: a */
    void m21405a() {
        if (f1364k == this) {
            f1364k = null;
            if (this.f1372h != null) {
                this.f1372h.m21397a();
                this.f1372h = null;
                m21398d();
                this.f1365a.removeOnAttachStateChangeListener(this);
            } else {
                Log.e("TooltipCompatHandler", "sActiveHandler.mPopup == null");
            }
        }
        if (f1363j == this) {
            m21402a((View$OnAttachStateChangeListenerC0322as) null);
        }
        this.f1365a.removeCallbacks(this.f1369e);
    }

    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* renamed from: a */
    void m21401a(boolean z) {
        if (!C0595u.m20370B(this.f1365a)) {
            return;
        }
        m21402a((View$OnAttachStateChangeListenerC0322as) null);
        if (f1364k != null) {
            f1364k.m21405a();
        }
        f1364k = this;
        this.f1373i = z;
        this.f1372h = new C0325at(this.f1365a.getContext());
        this.f1372h.m21394a(this.f1365a, this.f1370f, this.f1371g, this.f1373i, this.f1366b);
        this.f1365a.addOnAttachStateChangeListener(this);
        char longPressTimeout = this.f1373i ? (char) 2500 : (C0595u.m20308p(this.f1365a) & 1) == 1 ? 3000 - ViewConfiguration.getLongPressTimeout() : 15000 - ViewConfiguration.getLongPressTimeout();
        this.f1365a.removeCallbacks(this.f1369e);
        this.f1365a.postDelayed(this.f1369e, longPressTimeout);
    }

    @Override // android.view.View.OnHoverListener
    public boolean onHover(View view, MotionEvent motionEvent) {
        if (this.f1372h == null || !this.f1373i) {
            AccessibilityManager accessibilityManager = (AccessibilityManager) this.f1365a.getContext().getSystemService("accessibility");
            if (accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled()) {
                return false;
            }
            switch (motionEvent.getAction()) {
                case 7:
                    if (!this.f1365a.isEnabled() || this.f1372h != null || !m21404a(motionEvent)) {
                        return false;
                    }
                    m21402a(this);
                    return false;
                case 8:
                case 9:
                default:
                    return false;
                case 10:
                    m21398d();
                    m21405a();
                    return false;
            }
        }
        return false;
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        this.f1370f = view.getWidth() / 2;
        this.f1371g = view.getHeight() / 2;
        m21401a(true);
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        m21405a();
    }
}
