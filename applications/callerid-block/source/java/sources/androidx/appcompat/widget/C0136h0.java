package androidx.appcompat.widget;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.graphics.Rect;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.TextView;
import d.a.d;
import d.a.f;
import d.a.g;
import d.a.i;
/* renamed from: androidx.appcompat.widget.h0 */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/h0.class */
class C0136h0 {

    /* renamed from: a */
    private final Context f624a;

    /* renamed from: b */
    private final View f625b;

    /* renamed from: c */
    private final TextView f626c;

    /* renamed from: d */
    private final WindowManager.LayoutParams f627d;

    /* renamed from: e */
    private final Rect f628e = new Rect();

    /* renamed from: f */
    private final int[] f629f = new int[2];

    /* renamed from: g */
    private final int[] f630g = new int[2];

    public C0136h0(Context context) {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        this.f627d = layoutParams;
        this.f624a = context;
        View inflate = LayoutInflater.from(context).inflate(g.abc_tooltip, (ViewGroup) null);
        this.f625b = inflate;
        this.f626c = (TextView) inflate.findViewById(f.message);
        layoutParams.setTitle(C0136h0.class.getSimpleName());
        layoutParams.packageName = context.getPackageName();
        layoutParams.type = 1002;
        layoutParams.width = -2;
        layoutParams.height = -2;
        layoutParams.format = -3;
        layoutParams.windowAnimations = i.Animation_AppCompat_Tooltip;
        layoutParams.flags = 24;
    }

    /* renamed from: a */
    private void m14579a(View view, int i, int i2, boolean z, WindowManager.LayoutParams layoutParams) {
        int i3;
        int i4;
        layoutParams.token = view.getApplicationWindowToken();
        int dimensionPixelOffset = this.f624a.getResources().getDimensionPixelOffset(d.tooltip_precise_anchor_threshold);
        if (view.getWidth() < dimensionPixelOffset) {
            i = view.getWidth() / 2;
        }
        if (view.getHeight() >= dimensionPixelOffset) {
            int dimensionPixelOffset2 = this.f624a.getResources().getDimensionPixelOffset(d.tooltip_precise_anchor_extra_offset);
            int i5 = i2 + dimensionPixelOffset2;
            int i6 = i2 - dimensionPixelOffset2;
            i4 = i5;
            i3 = i6;
        } else {
            i4 = view.getHeight();
            i3 = 0;
        }
        layoutParams.gravity = 49;
        int dimensionPixelOffset3 = this.f624a.getResources().getDimensionPixelOffset(z ? d.tooltip_y_offset_touch : d.tooltip_y_offset_non_touch);
        View m14578b = m14578b(view);
        if (m14578b == null) {
            Log.e("TooltipPopup", "Cannot find app view");
            return;
        }
        m14578b.getWindowVisibleDisplayFrame(this.f628e);
        Rect rect = this.f628e;
        if (rect.left < 0 && rect.top < 0) {
            Resources resources = this.f624a.getResources();
            int identifier = resources.getIdentifier("status_bar_height", "dimen", "android");
            int dimensionPixelSize = identifier != 0 ? resources.getDimensionPixelSize(identifier) : 0;
            DisplayMetrics displayMetrics = resources.getDisplayMetrics();
            this.f628e.set(0, dimensionPixelSize, displayMetrics.widthPixels, displayMetrics.heightPixels);
        }
        m14578b.getLocationOnScreen(this.f630g);
        view.getLocationOnScreen(this.f629f);
        int[] iArr = this.f629f;
        int i7 = iArr[0];
        int[] iArr2 = this.f630g;
        iArr[0] = i7 - iArr2[0];
        iArr[1] = iArr[1] - iArr2[1];
        layoutParams.x = (iArr[0] + i) - (m14578b.getWidth() / 2);
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        this.f625b.measure(makeMeasureSpec, makeMeasureSpec);
        int measuredHeight = this.f625b.getMeasuredHeight();
        int[] iArr3 = this.f629f;
        int i8 = ((iArr3[1] + i3) - dimensionPixelOffset3) - measuredHeight;
        int i9 = iArr3[1] + i4 + dimensionPixelOffset3;
        if (!z ? measuredHeight + i9 > this.f628e.height() : i8 >= 0) {
            layoutParams.y = i8;
        } else {
            layoutParams.y = i9;
        }
    }

    /* renamed from: b */
    private static View m14578b(View view) {
        View rootView = view.getRootView();
        ViewGroup.LayoutParams layoutParams = rootView.getLayoutParams();
        if (!(layoutParams instanceof WindowManager.LayoutParams) || ((WindowManager.LayoutParams) layoutParams).type != 2) {
            Context context = view.getContext();
            while (true) {
                Context context2 = context;
                if (!(context2 instanceof ContextWrapper)) {
                    return rootView;
                }
                if (context2 instanceof Activity) {
                    return ((Activity) context2).getWindow().getDecorView();
                }
                context = ((ContextWrapper) context2).getBaseContext();
            }
        } else {
            return rootView;
        }
    }

    /* renamed from: c */
    public void m14577c() {
        if (!m14576d()) {
            return;
        }
        ((WindowManager) this.f624a.getSystemService("window")).removeView(this.f625b);
    }

    /* renamed from: d */
    boolean m14576d() {
        return this.f625b.getParent() != null;
    }

    /* renamed from: e */
    public void m14575e(View view, int i, int i2, boolean z, CharSequence charSequence) {
        if (m14576d()) {
            m14577c();
        }
        this.f626c.setText(charSequence);
        m14579a(view, i, i2, z, this.f627d);
        ((WindowManager) this.f624a.getSystemService("window")).addView(this.f625b, this.f627d);
    }
}
