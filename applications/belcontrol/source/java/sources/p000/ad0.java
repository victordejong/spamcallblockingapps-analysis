package p000;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.PopupWindow;
import carbon.widget.FrameLayout;
import carbon.widget.TextView;
/* renamed from: ad0 */
/* loaded from: classes-dex2jar.jar:ad0.class */
public class ad0 extends PopupWindow {

    /* renamed from: a */
    public final Context f277a;

    /* renamed from: b */
    public final View f278b;

    /* renamed from: c */
    public FrameLayout f279c;

    /* renamed from: d */
    public TextView f280d;

    /* renamed from: ad0$a */
    /* loaded from: classes-dex2jar.jar:ad0$a.class */
    public class C0033a extends AnimatorListenerAdapter {
        public C0033a() {
            ad0.this = r4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ad0.super.dismiss();
        }
    }

    public ad0(Context context) {
        super(LayoutInflater.from(context).inflate(m80.carbon_seekbar_bubble, (ViewGroup) null, false));
        View contentView = getContentView();
        this.f278b = contentView;
        this.f280d = contentView.findViewById(l80.carbon_label);
        this.f279c = contentView.findViewById(l80.carbon_bubble);
        this.f277a = context;
        setBackgroundDrawable(new ColorDrawable(context.getResources().getColor(17170445)));
        setTouchable(false);
        setFocusable(false);
        setOutsideTouchable(false);
        setAnimationStyle(0);
        setClippingEnabled(false);
    }

    /* renamed from: b */
    public int m7227b() {
        return this.f279c.getMeasuredWidth();
    }

    /* renamed from: c */
    public void m7226c(String str) {
        this.f280d.setText(str);
    }

    /* renamed from: d */
    public boolean m7225d(View view) {
        super.showAtLocation(view, 8388659, 0, 0);
        WindowManager windowManager = (WindowManager) this.f277a.getSystemService("window");
        this.f278b.measure(View.MeasureSpec.makeMeasureSpec(windowManager.getDefaultDisplay().getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
        super.update(windowManager.getDefaultDisplay().getWidth(), this.f278b.getMeasuredHeight());
        this.f279c.e(0);
        return true;
    }

    @Override // android.widget.PopupWindow
    public void dismiss() {
        this.f279c.e(4);
        Animator animator = this.f279c.getAnimator();
        if (animator != null) {
            animator.addListener(new C0033a());
        }
    }

    @Override // android.widget.PopupWindow
    public void update(int i, int i2) {
        super.update(0, i2, ((WindowManager) this.f277a.getSystemService("window")).getDefaultDisplay().getWidth(), this.f278b.getMeasuredHeight());
        this.f279c.setTranslationX(i);
    }
}
