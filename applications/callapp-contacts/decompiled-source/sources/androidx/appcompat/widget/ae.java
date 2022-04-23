package androidx.appcompat.widget;

import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityManager;
import androidx.core.view.ViewConfigurationCompat;
import androidx.core.view.v;
import com.sinch.verification.flashcall.initialization.FlashCallInitializationDetails;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ae.class */
final class ae implements View.OnAttachStateChangeListener, View.OnHoverListener, View.OnLongClickListener {
    private static ae j;
    private static ae k;

    /* renamed from: a  reason: collision with root package name */
    private final View f1056a;

    /* renamed from: b  reason: collision with root package name */
    private final CharSequence f1057b;

    /* renamed from: c  reason: collision with root package name */
    private final int f1058c;

    /* renamed from: d  reason: collision with root package name */
    private final Runnable f1059d = new Runnable() { // from class: androidx.appcompat.widget.ae.1
        @Override // java.lang.Runnable
        public final void run() {
            ae.this.a(false);
        }
    };
    private final Runnable e = new Runnable() { // from class: androidx.appcompat.widget.ae.2
        @Override // java.lang.Runnable
        public final void run() {
            ae.this.a();
        }
    };
    private int f;
    private int g;
    private af h;
    private boolean i;

    private ae(View view, CharSequence charSequence) {
        this.f1056a = view;
        this.f1057b = charSequence;
        this.f1058c = ViewConfigurationCompat.getScaledHoverSlop(ViewConfiguration.get(view.getContext()));
        d();
        view.setOnLongClickListener(this);
        view.setOnHoverListener(this);
    }

    public static void a(View view, CharSequence charSequence) {
        ae aeVar = j;
        if (aeVar != null && aeVar.f1056a == view) {
            a((ae) null);
        }
        if (TextUtils.isEmpty(charSequence)) {
            ae aeVar2 = k;
            if (aeVar2 != null && aeVar2.f1056a == view) {
                aeVar2.a();
            }
            view.setOnLongClickListener(null);
            view.setLongClickable(false);
            view.setOnHoverListener(null);
            return;
        }
        new ae(view, charSequence);
    }

    private static void a(ae aeVar) {
        ae aeVar2 = j;
        if (aeVar2 != null) {
            aeVar2.c();
        }
        j = aeVar;
        if (aeVar != null) {
            aeVar.b();
        }
    }

    private void b() {
        this.f1056a.postDelayed(this.f1059d, ViewConfiguration.getLongPressTimeout());
    }

    private void c() {
        this.f1056a.removeCallbacks(this.f1059d);
    }

    private void d() {
        this.f = Integer.MAX_VALUE;
        this.g = Integer.MAX_VALUE;
    }

    final void a() {
        if (k == this) {
            k = null;
            af afVar = this.h;
            if (afVar != null) {
                afVar.a();
                this.h = null;
                d();
                this.f1056a.removeOnAttachStateChangeListener(this);
            } else {
                Log.e("TooltipCompatHandler", "sActiveHandler.mPopup == null");
            }
        }
        if (j == this) {
            a((ae) null);
        }
        this.f1056a.removeCallbacks(this.e);
    }

    final void a(boolean z) {
        long j2;
        int i;
        long j3;
        if (v.E(this.f1056a)) {
            a((ae) null);
            ae aeVar = k;
            if (aeVar != null) {
                aeVar.a();
            }
            k = this;
            this.i = z;
            af afVar = new af(this.f1056a.getContext());
            this.h = afVar;
            afVar.a(this.f1056a, this.f, this.g, this.i, this.f1057b);
            this.f1056a.addOnAttachStateChangeListener(this);
            if (this.i) {
                j2 = 2500;
            } else {
                if ((v.q(this.f1056a) & 1) == 1) {
                    j3 = 3000;
                    i = ViewConfiguration.getLongPressTimeout();
                } else {
                    j3 = FlashCallInitializationDetails.DEFAULT_INTERCEPTION_TIMEOUT;
                    i = ViewConfiguration.getLongPressTimeout();
                }
                j2 = j3 - i;
            }
            this.f1056a.removeCallbacks(this.e);
            this.f1056a.postDelayed(this.e, j2);
        }
    }

    @Override // android.view.View.OnHoverListener
    public final boolean onHover(View view, MotionEvent motionEvent) {
        boolean z;
        if (this.h != null && this.i) {
            return false;
        }
        AccessibilityManager accessibilityManager = (AccessibilityManager) this.f1056a.getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action != 7) {
            if (action != 10) {
                return false;
            }
            d();
            a();
            return false;
        } else if (!this.f1056a.isEnabled() || this.h != null) {
            return false;
        } else {
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            if (Math.abs(x - this.f) > this.f1058c || Math.abs(y - this.g) > this.f1058c) {
                this.f = x;
                this.g = y;
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                return false;
            }
            a(this);
            return false;
        }
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        this.f = view.getWidth() / 2;
        this.g = view.getHeight() / 2;
        a(true);
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        a();
    }
}
