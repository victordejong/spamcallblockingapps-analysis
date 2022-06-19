package p1727n3.p1734b.p1743f;

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
import androidx.appcompat.C0032R;
import com.mopub.common.Constants;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1807k.p1821i.C26614s;
import p1727n3.p1807k.p1821i.C26624y;
/* renamed from: n3.b.f.u0 */
/* loaded from: classes-dex2jar.jar:n3/b/f/u0.class */
public class View$OnLongClickListenerC25548u0 implements View.OnLongClickListener, View.OnHoverListener, View.OnAttachStateChangeListener {

    /* renamed from: j */
    public static View$OnLongClickListenerC25548u0 f71502j;

    /* renamed from: k */
    public static View$OnLongClickListenerC25548u0 f71503k;

    /* renamed from: a */
    public final View f71504a;

    /* renamed from: b */
    public final CharSequence f71505b;

    /* renamed from: c */
    public final int f71506c;

    /* renamed from: d */
    public final Runnable f71507d = new RunnableC25549a();

    /* renamed from: e */
    public final Runnable f71508e = new RunnableC25550b();

    /* renamed from: f */
    public int f71509f;

    /* renamed from: g */
    public int f71510g;

    /* renamed from: h */
    public C25552v0 f71511h;

    /* renamed from: i */
    public boolean f71512i;

    /* renamed from: n3.b.f.u0$a */
    /* loaded from: classes-dex2jar.jar:n3/b/f/u0$a.class */
    public class RunnableC25549a implements Runnable {
        public RunnableC25549a() {
            View$OnLongClickListenerC25548u0.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            View$OnLongClickListenerC25548u0.this.m3278d(false);
        }
    }

    /* renamed from: n3.b.f.u0$b */
    /* loaded from: classes-dex2jar.jar:n3/b/f/u0$b.class */
    public class RunnableC25550b implements Runnable {
        public RunnableC25550b() {
            View$OnLongClickListenerC25548u0.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            View$OnLongClickListenerC25548u0.this.m3280b();
        }
    }

    public View$OnLongClickListenerC25548u0(View view, CharSequence charSequence) {
        this.f71504a = view;
        this.f71505b = charSequence;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(view.getContext());
        Method method = C26624y.f74522a;
        this.f71506c = Build.VERSION.SDK_INT >= 28 ? viewConfiguration.getScaledHoverSlop() : viewConfiguration.getScaledTouchSlop() / 2;
        m3281a();
        view.setOnLongClickListener(this);
        view.setOnHoverListener(this);
    }

    /* renamed from: c */
    public static void m3279c(View$OnLongClickListenerC25548u0 view$OnLongClickListenerC25548u0) {
        View$OnLongClickListenerC25548u0 view$OnLongClickListenerC25548u02 = f71502j;
        if (view$OnLongClickListenerC25548u02 != null) {
            view$OnLongClickListenerC25548u02.f71504a.removeCallbacks(view$OnLongClickListenerC25548u02.f71507d);
        }
        f71502j = view$OnLongClickListenerC25548u0;
        if (view$OnLongClickListenerC25548u0 != null) {
            view$OnLongClickListenerC25548u0.f71504a.postDelayed(view$OnLongClickListenerC25548u0.f71507d, ViewConfiguration.getLongPressTimeout());
        }
    }

    /* renamed from: a */
    public final void m3281a() {
        this.f71509f = Integer.MAX_VALUE;
        this.f71510g = Integer.MAX_VALUE;
    }

    /* renamed from: b */
    public void m3280b() {
        if (f71503k == this) {
            f71503k = null;
            C25552v0 c25552v0 = this.f71511h;
            if (c25552v0 != null) {
                c25552v0.m3251a();
                this.f71511h = null;
                m3281a();
                this.f71504a.removeOnAttachStateChangeListener(this);
            }
        }
        if (f71502j == this) {
            m3279c(null);
        }
        this.f71504a.removeCallbacks(this.f71508e);
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
    public void m3278d(boolean z) {
        int i;
        int i2;
        View view;
        ?? r19;
        ?? r192;
        int i3;
        View view2 = this.f71504a;
        AtomicInteger atomicInteger = C26614s.f74505a;
        if (!view2.isAttachedToWindow()) {
            return;
        }
        m3279c(null);
        View$OnLongClickListenerC25548u0 view$OnLongClickListenerC25548u0 = f71503k;
        if (view$OnLongClickListenerC25548u0 != null) {
            view$OnLongClickListenerC25548u0.m3280b();
        }
        f71503k = this;
        this.f71512i = z;
        C25552v0 c25552v0 = new C25552v0(this.f71504a.getContext());
        this.f71511h = c25552v0;
        View view3 = this.f71504a;
        int i4 = this.f71509f;
        int i5 = this.f71510g;
        boolean z2 = this.f71512i;
        CharSequence charSequence = this.f71505b;
        if ((c25552v0.f71516b.getParent() != null) != false) {
            c25552v0.m3251a();
        }
        c25552v0.f71517c.setText(charSequence);
        WindowManager.LayoutParams layoutParams = c25552v0.f71518d;
        layoutParams.token = view3.getApplicationWindowToken();
        int dimensionPixelOffset = c25552v0.f71515a.getResources().getDimensionPixelOffset(C0032R.dimen.tooltip_precise_anchor_threshold);
        int width = view3.getWidth() >= dimensionPixelOffset ? i4 : view3.getWidth() / 2;
        if (view3.getHeight() >= dimensionPixelOffset) {
            int dimensionPixelOffset2 = c25552v0.f71515a.getResources().getDimensionPixelOffset(C0032R.dimen.tooltip_precise_anchor_extra_offset);
            i2 = i5 + dimensionPixelOffset2;
            i = i5 - dimensionPixelOffset2;
        } else {
            i2 = view3.getHeight();
            i = 0;
        }
        layoutParams.gravity = 49;
        int dimensionPixelOffset3 = c25552v0.f71515a.getResources().getDimensionPixelOffset(z2 ? C0032R.dimen.tooltip_y_offset_touch : C0032R.dimen.tooltip_y_offset_non_touch);
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
            view.getWindowVisibleDisplayFrame(c25552v0.f71519e);
            Rect rect = c25552v0.f71519e;
            if (rect.left < 0 && rect.top < 0) {
                Resources resources = c25552v0.f71515a.getResources();
                int identifier = resources.getIdentifier("status_bar_height", "dimen", Constants.ANDROID_PLATFORM);
                int dimensionPixelSize = identifier != 0 ? resources.getDimensionPixelSize(identifier) : 0;
                DisplayMetrics displayMetrics = resources.getDisplayMetrics();
                c25552v0.f71519e.set(0, dimensionPixelSize, displayMetrics.widthPixels, displayMetrics.heightPixels);
            }
            view.getLocationOnScreen(c25552v0.f71521g);
            view3.getLocationOnScreen(c25552v0.f71520f);
            int[] iArr = c25552v0.f71520f;
            int i6 = iArr[0];
            int[] iArr2 = c25552v0.f71521g;
            iArr[0] = i6 - iArr2[0];
            iArr[1] = iArr[1] - iArr2[1];
            layoutParams.x = (iArr[0] + width) - (view.getWidth() / 2);
            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
            c25552v0.f71516b.measure(makeMeasureSpec, makeMeasureSpec);
            int measuredHeight = c25552v0.f71516b.getMeasuredHeight();
            int[] iArr3 = c25552v0.f71520f;
            int i7 = ((iArr3[1] + i) - dimensionPixelOffset3) - measuredHeight;
            int i8 = iArr3[1] + i2 + dimensionPixelOffset3;
            if (z2) {
                if (i7 >= 0) {
                    layoutParams.y = i7;
                } else {
                    layoutParams.y = i8;
                }
            } else if (measuredHeight + i8 <= c25552v0.f71519e.height()) {
                layoutParams.y = i8;
            } else {
                layoutParams.y = i7;
            }
        }
        ((WindowManager) c25552v0.f71515a.getSystemService("window")).addView(c25552v0.f71516b, c25552v0.f71518d);
        this.f71504a.addOnAttachStateChangeListener(this);
        if (this.f71512i) {
            r19 = 2500;
        } else {
            if ((this.f71504a.getWindowSystemUiVisibility() & 1) == 1) {
                r192 = true;
                i3 = ViewConfiguration.getLongPressTimeout();
            } else {
                r192 = true;
                i3 = ViewConfiguration.getLongPressTimeout();
            }
            r19 = (r192 == true ? 1L : 0L) - i3;
        }
        this.f71504a.removeCallbacks(this.f71508e);
        this.f71504a.postDelayed(this.f71508e, r19);
    }

    @Override // android.view.View.OnHoverListener
    public boolean onHover(View view, MotionEvent motionEvent) {
        boolean z;
        if (this.f71511h == null || !this.f71512i) {
            AccessibilityManager accessibilityManager = (AccessibilityManager) this.f71504a.getContext().getSystemService("accessibility");
            if (accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled()) {
                return false;
            }
            int action = motionEvent.getAction();
            if (action != 7) {
                if (action != 10) {
                    return false;
                }
                m3281a();
                m3280b();
                return false;
            } else if (!this.f71504a.isEnabled() || this.f71511h != null) {
                return false;
            } else {
                int x = (int) motionEvent.getX();
                int y = (int) motionEvent.getY();
                if (Math.abs(x - this.f71509f) > this.f71506c || Math.abs(y - this.f71510g) > this.f71506c) {
                    this.f71509f = x;
                    this.f71510g = y;
                    z = true;
                } else {
                    z = false;
                }
                if (!z) {
                    return false;
                }
                m3279c(this);
                return false;
            }
        }
        return false;
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        this.f71509f = view.getWidth() / 2;
        this.f71510g = view.getHeight() / 2;
        m3278d(true);
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        m3280b();
    }
}
