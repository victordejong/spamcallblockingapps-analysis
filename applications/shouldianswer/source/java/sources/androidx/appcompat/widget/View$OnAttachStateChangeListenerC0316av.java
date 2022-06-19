package androidx.appcompat.widget;

import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityManager;
import androidx.core.p023g.C0552u;
import androidx.core.p023g.C0561v;
import com.google.android.gms.common.api.Api;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.appcompat.widget.av */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/av.class */
public class View$OnAttachStateChangeListenerC0316av implements View.OnAttachStateChangeListener, View.OnHoverListener, View.OnLongClickListener {

    /* renamed from: j */
    private static View$OnAttachStateChangeListenerC0316av f1306j;

    /* renamed from: k */
    private static View$OnAttachStateChangeListenerC0316av f1307k;

    /* renamed from: a */
    private final View f1308a;

    /* renamed from: b */
    private final CharSequence f1309b;

    /* renamed from: c */
    private final int f1310c;

    /* renamed from: d */
    private final Runnable f1311d = new Runnable() { // from class: androidx.appcompat.widget.av.1
        @Override // java.lang.Runnable
        public void run() {
            View$OnAttachStateChangeListenerC0316av.this.m7127a(false);
        }
    };

    /* renamed from: e */
    private final Runnable f1312e = new Runnable() { // from class: androidx.appcompat.widget.av.2
        @Override // java.lang.Runnable
        public void run() {
            View$OnAttachStateChangeListenerC0316av.this.m7131a();
        }
    };

    /* renamed from: f */
    private int f1313f;

    /* renamed from: g */
    private int f1314g;

    /* renamed from: h */
    private C0319aw f1315h;

    /* renamed from: i */
    private boolean f1316i;

    private View$OnAttachStateChangeListenerC0316av(View view, CharSequence charSequence) {
        this.f1308a = view;
        this.f1309b = charSequence;
        this.f1310c = C0561v.m6203a(ViewConfiguration.get(this.f1308a.getContext()));
        m7124d();
        this.f1308a.setOnLongClickListener(this);
        this.f1308a.setOnHoverListener(this);
    }

    /* renamed from: a */
    public static void m7129a(View view, CharSequence charSequence) {
        View$OnAttachStateChangeListenerC0316av view$OnAttachStateChangeListenerC0316av = f1306j;
        if (view$OnAttachStateChangeListenerC0316av != null && view$OnAttachStateChangeListenerC0316av.f1308a == view) {
            m7128a((View$OnAttachStateChangeListenerC0316av) null);
        }
        if (!TextUtils.isEmpty(charSequence)) {
            new View$OnAttachStateChangeListenerC0316av(view, charSequence);
            return;
        }
        View$OnAttachStateChangeListenerC0316av view$OnAttachStateChangeListenerC0316av2 = f1307k;
        if (view$OnAttachStateChangeListenerC0316av2 != null && view$OnAttachStateChangeListenerC0316av2.f1308a == view) {
            view$OnAttachStateChangeListenerC0316av2.m7131a();
        }
        view.setOnLongClickListener(null);
        view.setLongClickable(false);
        view.setOnHoverListener(null);
    }

    /* renamed from: a */
    private static void m7128a(View$OnAttachStateChangeListenerC0316av view$OnAttachStateChangeListenerC0316av) {
        View$OnAttachStateChangeListenerC0316av view$OnAttachStateChangeListenerC0316av2 = f1306j;
        if (view$OnAttachStateChangeListenerC0316av2 != null) {
            view$OnAttachStateChangeListenerC0316av2.m7125c();
        }
        f1306j = view$OnAttachStateChangeListenerC0316av;
        View$OnAttachStateChangeListenerC0316av view$OnAttachStateChangeListenerC0316av3 = f1306j;
        if (view$OnAttachStateChangeListenerC0316av3 != null) {
            view$OnAttachStateChangeListenerC0316av3.m7126b();
        }
    }

    /* renamed from: a */
    private boolean m7130a(MotionEvent motionEvent) {
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        if (Math.abs(x - this.f1313f) > this.f1310c || Math.abs(y - this.f1314g) > this.f1310c) {
            this.f1313f = x;
            this.f1314g = y;
            return true;
        }
        return false;
    }

    /* renamed from: b */
    private void m7126b() {
        this.f1308a.postDelayed(this.f1311d, ViewConfiguration.getLongPressTimeout());
    }

    /* renamed from: c */
    private void m7125c() {
        this.f1308a.removeCallbacks(this.f1311d);
    }

    /* renamed from: d */
    private void m7124d() {
        this.f1313f = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.f1314g = Api.BaseClientBuilder.API_PRIORITY_OTHER;
    }

    /* renamed from: a */
    void m7131a() {
        if (f1307k == this) {
            f1307k = null;
            C0319aw c0319aw = this.f1315h;
            if (c0319aw != null) {
                c0319aw.m7123a();
                this.f1315h = null;
                m7124d();
                this.f1308a.removeOnAttachStateChangeListener(this);
            } else {
                Log.e("TooltipCompatHandler", "sActiveHandler.mPopup == null");
            }
        }
        if (f1306j == this) {
            m7128a((View$OnAttachStateChangeListenerC0316av) null);
        }
        this.f1308a.removeCallbacks(this.f1312e);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v19, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r0v25 */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r2v3, types: [long] */
    /* renamed from: a */
    void m7127a(boolean z) {
        ?? r10;
        int i;
        ?? r102;
        if (!C0552u.m6292D(this.f1308a)) {
            return;
        }
        m7128a((View$OnAttachStateChangeListenerC0316av) null);
        View$OnAttachStateChangeListenerC0316av view$OnAttachStateChangeListenerC0316av = f1307k;
        if (view$OnAttachStateChangeListenerC0316av != null) {
            view$OnAttachStateChangeListenerC0316av.m7131a();
        }
        f1307k = this;
        this.f1316i = z;
        this.f1315h = new C0319aw(this.f1308a.getContext());
        this.f1315h.m7120a(this.f1308a, this.f1313f, this.f1314g, this.f1316i, this.f1309b);
        this.f1308a.addOnAttachStateChangeListener(this);
        if (this.f1316i) {
            r10 = 2500;
        } else {
            if ((C0552u.m6229r(this.f1308a) & 1) == 1) {
                r102 = true;
                i = ViewConfiguration.getLongPressTimeout();
            } else {
                r102 = true;
                i = ViewConfiguration.getLongPressTimeout();
            }
            r10 = (r102 == true ? 1L : 0L) - i;
        }
        this.f1308a.removeCallbacks(this.f1312e);
        this.f1308a.postDelayed(this.f1312e, r10);
    }

    @Override // android.view.View.OnHoverListener
    public boolean onHover(View view, MotionEvent motionEvent) {
        if (this.f1315h == null || !this.f1316i) {
            AccessibilityManager accessibilityManager = (AccessibilityManager) this.f1308a.getContext().getSystemService("accessibility");
            if (accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled()) {
                return false;
            }
            int action = motionEvent.getAction();
            if (action != 7) {
                if (action != 10) {
                    return false;
                }
                m7124d();
                m7131a();
                return false;
            } else if (!this.f1308a.isEnabled() || this.f1315h != null || !m7130a(motionEvent)) {
                return false;
            } else {
                m7128a(this);
                return false;
            }
        }
        return false;
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        this.f1313f = view.getWidth() / 2;
        this.f1314g = view.getHeight() / 2;
        m7127a(true);
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        m7131a();
    }
}
