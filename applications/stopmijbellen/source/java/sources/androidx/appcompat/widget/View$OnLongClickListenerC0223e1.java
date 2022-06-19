package androidx.appcompat.widget;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityManager;
import com.google.android.gms.common.api.Api;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
import me.zhanghai.android.materialprogressbar.C3681R;
import p163m0.C3589v;
import p163m0.C3610x;
import p163m0.C3611y;
/* renamed from: androidx.appcompat.widget.e1 */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/e1.class */
public class View$OnLongClickListenerC0223e1 implements View.OnLongClickListener, View.OnHoverListener, View.OnAttachStateChangeListener {

    /* renamed from: j */
    public static View$OnLongClickListenerC0223e1 f920j;

    /* renamed from: k */
    public static View$OnLongClickListenerC0223e1 f921k;

    /* renamed from: a */
    public final View f922a;

    /* renamed from: b */
    public final CharSequence f923b;

    /* renamed from: c */
    public final int f924c;

    /* renamed from: d */
    public final Runnable f925d = new RunnableC0224a();

    /* renamed from: e */
    public final Runnable f926e = new RunnableC0225b();

    /* renamed from: f */
    public int f927f;

    /* renamed from: g */
    public int f928g;

    /* renamed from: h */
    public C0228f1 f929h;

    /* renamed from: i */
    public boolean f930i;

    /* renamed from: androidx.appcompat.widget.e1$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/e1$a.class */
    public class RunnableC0224a implements Runnable {
        public RunnableC0224a() {
            View$OnLongClickListenerC0223e1.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            View$OnLongClickListenerC0223e1.this.m8536d(false);
        }
    }

    /* renamed from: androidx.appcompat.widget.e1$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/e1$b.class */
    public class RunnableC0225b implements Runnable {
        public RunnableC0225b() {
            View$OnLongClickListenerC0223e1.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            View$OnLongClickListenerC0223e1.this.m8538b();
        }
    }

    public View$OnLongClickListenerC0223e1(View view, CharSequence charSequence) {
        this.f922a = view;
        this.f923b = charSequence;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(view.getContext());
        Method method = C3610x.f11801a;
        this.f924c = Build.VERSION.SDK_INT >= 28 ? viewConfiguration.getScaledHoverSlop() : viewConfiguration.getScaledTouchSlop() / 2;
        m8539a();
        view.setOnLongClickListener(this);
        view.setOnHoverListener(this);
    }

    /* renamed from: c */
    public static void m8537c(View$OnLongClickListenerC0223e1 view$OnLongClickListenerC0223e1) {
        View$OnLongClickListenerC0223e1 view$OnLongClickListenerC0223e12 = f920j;
        if (view$OnLongClickListenerC0223e12 != null) {
            view$OnLongClickListenerC0223e12.f922a.removeCallbacks(view$OnLongClickListenerC0223e12.f925d);
        }
        f920j = view$OnLongClickListenerC0223e1;
        if (view$OnLongClickListenerC0223e1 != null) {
            view$OnLongClickListenerC0223e1.f922a.postDelayed(view$OnLongClickListenerC0223e1.f925d, ViewConfiguration.getLongPressTimeout());
        }
    }

    /* renamed from: a */
    public final void m8539a() {
        this.f927f = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.f928g = Api.BaseClientBuilder.API_PRIORITY_OTHER;
    }

    /* renamed from: b */
    public void m8538b() {
        if (f921k == this) {
            f921k = null;
            C0228f1 c0228f1 = this.f929h;
            if (c0228f1 != null) {
                c0228f1.m8526a();
                this.f929h = null;
                m8539a();
                this.f922a.removeOnAttachStateChangeListener(this);
            }
        }
        if (f920j == this) {
            m8537c(null);
        }
        this.f922a.removeCallbacks(this.f926e);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v25 */
    /* JADX WARN: Type inference failed for: r0v65, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r0v71 */
    /* JADX WARN: Type inference failed for: r0v72, types: [long] */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v10 */
    /* JADX WARN: Type inference failed for: r14v9 */
    /* JADX WARN: Type inference failed for: r19v0 */
    /* JADX WARN: Type inference failed for: r19v1 */
    /* JADX WARN: Type inference failed for: r19v2 */
    /* JADX WARN: Type inference failed for: r19v3 */
    /* JADX WARN: Type inference failed for: r19v4 */
    /* JADX WARN: Type inference failed for: r19v5 */
    /* JADX WARN: Type inference failed for: r2v5, types: [long] */
    /* renamed from: d */
    public void m8536d(boolean z) {
        int i;
        int i2;
        View view;
        ?? r19;
        ?? r192;
        int i3;
        View view2 = this.f922a;
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        if (!C3589v.C3596g.m2059b(view2)) {
            return;
        }
        m8537c(null);
        View$OnLongClickListenerC0223e1 view$OnLongClickListenerC0223e1 = f921k;
        if (view$OnLongClickListenerC0223e1 != null) {
            view$OnLongClickListenerC0223e1.m8538b();
        }
        f921k = this;
        this.f930i = z;
        C0228f1 c0228f1 = new C0228f1(this.f922a.getContext());
        this.f929h = c0228f1;
        View view3 = this.f922a;
        int i4 = this.f927f;
        int i5 = this.f928g;
        boolean z2 = this.f930i;
        CharSequence charSequence = this.f923b;
        if ((c0228f1.f937b.getParent() != null) != false) {
            c0228f1.m8526a();
        }
        c0228f1.f938c.setText(charSequence);
        WindowManager.LayoutParams layoutParams = c0228f1.f939d;
        layoutParams.token = view3.getApplicationWindowToken();
        int dimensionPixelOffset = c0228f1.f936a.getResources().getDimensionPixelOffset(C3681R.dimen.tooltip_precise_anchor_threshold);
        int width = view3.getWidth() >= dimensionPixelOffset ? i4 : view3.getWidth() / 2;
        if (view3.getHeight() >= dimensionPixelOffset) {
            int dimensionPixelOffset2 = c0228f1.f936a.getResources().getDimensionPixelOffset(C3681R.dimen.tooltip_precise_anchor_extra_offset);
            i2 = i5 + dimensionPixelOffset2;
            i = i5 - dimensionPixelOffset2;
        } else {
            i2 = view3.getHeight();
            i = 0;
        }
        layoutParams.gravity = 49;
        int dimensionPixelOffset3 = c0228f1.f936a.getResources().getDimensionPixelOffset(z2 ? 2131165857 : 2131165856);
        View rootView = view3.getRootView();
        ViewGroup.LayoutParams layoutParams2 = rootView.getLayoutParams();
        if (!(layoutParams2 instanceof WindowManager.LayoutParams) || ((WindowManager.LayoutParams) layoutParams2).type != 2) {
            Context context = view3.getContext();
            while (true) {
                Context context2 = context;
                view = rootView;
                if (!(context2 instanceof ContextWrapper)) {
                    break;
                } else if (context2 instanceof Activity) {
                    view = ((Activity) context2).getWindow().getDecorView();
                    break;
                } else {
                    context = ((ContextWrapper) context2).getBaseContext();
                }
            }
        } else {
            view = rootView;
        }
        if (view != null) {
            view.getWindowVisibleDisplayFrame(c0228f1.f940e);
            Rect rect = c0228f1.f940e;
            if (rect.left < 0 && rect.top < 0) {
                Resources resources = c0228f1.f936a.getResources();
                int identifier = resources.getIdentifier("status_bar_height", "dimen", "android");
                int dimensionPixelSize = identifier != 0 ? resources.getDimensionPixelSize(identifier) : 0;
                DisplayMetrics displayMetrics = resources.getDisplayMetrics();
                c0228f1.f940e.set(0, dimensionPixelSize, displayMetrics.widthPixels, displayMetrics.heightPixels);
            }
            view.getLocationOnScreen(c0228f1.f942g);
            view3.getLocationOnScreen(c0228f1.f941f);
            int[] iArr = c0228f1.f941f;
            int i6 = iArr[0];
            int[] iArr2 = c0228f1.f942g;
            iArr[0] = i6 - iArr2[0];
            iArr[1] = iArr[1] - iArr2[1];
            layoutParams.x = (iArr[0] + width) - (view.getWidth() / 2);
            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
            c0228f1.f937b.measure(makeMeasureSpec, makeMeasureSpec);
            int measuredHeight = c0228f1.f937b.getMeasuredHeight();
            int[] iArr3 = c0228f1.f941f;
            int i7 = ((iArr3[1] + i) - dimensionPixelOffset3) - measuredHeight;
            int i8 = iArr3[1] + i2 + dimensionPixelOffset3;
            if (z2) {
                if (i7 >= 0) {
                    layoutParams.y = i7;
                } else {
                    layoutParams.y = i8;
                }
            } else if (measuredHeight + i8 <= c0228f1.f940e.height()) {
                layoutParams.y = i8;
            } else {
                layoutParams.y = i7;
            }
        }
        ((WindowManager) c0228f1.f936a.getSystemService("window")).addView(c0228f1.f937b, c0228f1.f939d);
        this.f922a.addOnAttachStateChangeListener(this);
        if (this.f930i) {
            r19 = 2500;
        } else {
            if ((C3589v.C3593d.m2087g(this.f922a) & 1) == 1) {
                r192 = true;
                i3 = ViewConfiguration.getLongPressTimeout();
            } else {
                r192 = true;
                i3 = ViewConfiguration.getLongPressTimeout();
            }
            r19 = (r192 == true ? 1L : 0L) - i3;
        }
        this.f922a.removeCallbacks(this.f926e);
        this.f922a.postDelayed(this.f926e, r19);
    }

    @Override // android.view.View.OnHoverListener
    public boolean onHover(View view, MotionEvent motionEvent) {
        boolean z;
        if (this.f929h == null || !this.f930i) {
            AccessibilityManager accessibilityManager = (AccessibilityManager) this.f922a.getContext().getSystemService("accessibility");
            if (accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled()) {
                return false;
            }
            int action = motionEvent.getAction();
            if (action != 7) {
                if (action != 10) {
                    return false;
                }
                m8539a();
                m8538b();
                return false;
            } else if (!this.f922a.isEnabled() || this.f929h != null) {
                return false;
            } else {
                int x = (int) motionEvent.getX();
                int y = (int) motionEvent.getY();
                if (Math.abs(x - this.f927f) > this.f924c || Math.abs(y - this.f928g) > this.f924c) {
                    this.f927f = x;
                    this.f928g = y;
                    z = true;
                } else {
                    z = false;
                }
                if (!z) {
                    return false;
                }
                m8537c(this);
                return false;
            }
        }
        return false;
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        this.f927f = view.getWidth() / 2;
        this.f928g = view.getHeight() / 2;
        m8536d(true);
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        m8538b();
    }
}
