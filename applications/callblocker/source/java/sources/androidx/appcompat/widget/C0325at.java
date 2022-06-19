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
import androidx.appcompat.C0083a;
/* renamed from: androidx.appcompat.widget.at */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/at.class */
class C0325at {

    /* renamed from: a */
    private final Context f1376a;

    /* renamed from: b */
    private final View f1377b;

    /* renamed from: c */
    private final TextView f1378c;

    /* renamed from: d */
    private final WindowManager.LayoutParams f1379d = new WindowManager.LayoutParams();

    /* renamed from: e */
    private final Rect f1380e = new Rect();

    /* renamed from: f */
    private final int[] f1381f = new int[2];

    /* renamed from: g */
    private final int[] f1382g = new int[2];

    public C0325at(Context context) {
        this.f1376a = context;
        this.f1377b = LayoutInflater.from(this.f1376a).inflate(C0083a.C0090g.abc_tooltip, (ViewGroup) null);
        this.f1378c = (TextView) this.f1377b.findViewById(C0083a.C0089f.message);
        this.f1379d.setTitle(getClass().getSimpleName());
        this.f1379d.packageName = this.f1376a.getPackageName();
        this.f1379d.type = 1002;
        this.f1379d.width = -2;
        this.f1379d.height = -2;
        this.f1379d.format = -3;
        this.f1379d.windowAnimations = C0083a.C0092i.Animation_AppCompat_Tooltip;
        this.f1379d.flags = 24;
    }

    /* renamed from: a */
    private static View m21396a(View view) {
        View view2;
        View rootView = view.getRootView();
        ViewGroup.LayoutParams layoutParams = rootView.getLayoutParams();
        if (!(layoutParams instanceof WindowManager.LayoutParams) || ((WindowManager.LayoutParams) layoutParams).type != 2) {
            Context context = view.getContext();
            while (true) {
                Context context2 = context;
                if (!(context2 instanceof ContextWrapper)) {
                    view2 = rootView;
                    break;
                } else if (context2 instanceof Activity) {
                    view2 = ((Activity) context2).getWindow().getDecorView();
                    break;
                } else {
                    context = ((ContextWrapper) context2).getBaseContext();
                }
            }
        } else {
            view2 = rootView;
        }
        return view2;
    }

    /* renamed from: a */
    private void m21395a(View view, int i, int i2, boolean z, WindowManager.LayoutParams layoutParams) {
        int height;
        int i3;
        layoutParams.token = view.getApplicationWindowToken();
        int dimensionPixelOffset = this.f1376a.getResources().getDimensionPixelOffset(C0083a.C0087d.tooltip_precise_anchor_threshold);
        if (view.getWidth() < dimensionPixelOffset) {
            i = view.getWidth() / 2;
        }
        if (view.getHeight() >= dimensionPixelOffset) {
            int dimensionPixelOffset2 = this.f1376a.getResources().getDimensionPixelOffset(C0083a.C0087d.tooltip_precise_anchor_extra_offset);
            int i4 = i2 + dimensionPixelOffset2;
            int i5 = i2 - dimensionPixelOffset2;
            height = i4;
            i3 = i5;
        } else {
            height = view.getHeight();
            i3 = 0;
        }
        layoutParams.gravity = 49;
        int dimensionPixelOffset3 = this.f1376a.getResources().getDimensionPixelOffset(z ? C0083a.C0087d.tooltip_y_offset_touch : C0083a.C0087d.tooltip_y_offset_non_touch);
        View m21396a = m21396a(view);
        if (m21396a == null) {
            Log.e("TooltipPopup", "Cannot find app view");
            return;
        }
        m21396a.getWindowVisibleDisplayFrame(this.f1380e);
        if (this.f1380e.left < 0 && this.f1380e.top < 0) {
            Resources resources = this.f1376a.getResources();
            int identifier = resources.getIdentifier("status_bar_height", "dimen", "android");
            int dimensionPixelSize = identifier != 0 ? resources.getDimensionPixelSize(identifier) : 0;
            DisplayMetrics displayMetrics = resources.getDisplayMetrics();
            this.f1380e.set(0, dimensionPixelSize, displayMetrics.widthPixels, displayMetrics.heightPixels);
        }
        m21396a.getLocationOnScreen(this.f1382g);
        view.getLocationOnScreen(this.f1381f);
        int[] iArr = this.f1381f;
        iArr[0] = iArr[0] - this.f1382g[0];
        int[] iArr2 = this.f1381f;
        iArr2[1] = iArr2[1] - this.f1382g[1];
        layoutParams.x = (this.f1381f[0] + i) - (m21396a.getWidth() / 2);
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        this.f1377b.measure(makeMeasureSpec, makeMeasureSpec);
        int measuredHeight = this.f1377b.getMeasuredHeight();
        int i6 = ((i3 + this.f1381f[1]) - dimensionPixelOffset3) - measuredHeight;
        int i7 = height + this.f1381f[1] + dimensionPixelOffset3;
        if (z) {
            if (i6 >= 0) {
                layoutParams.y = i6;
            } else {
                layoutParams.y = i7;
            }
        } else if (measuredHeight + i7 <= this.f1380e.height()) {
            layoutParams.y = i7;
        } else {
            layoutParams.y = i6;
        }
    }

    /* renamed from: a */
    public void m21397a() {
        if (!m21393b()) {
            return;
        }
        ((WindowManager) this.f1376a.getSystemService("window")).removeView(this.f1377b);
    }

    /* renamed from: a */
    public void m21394a(View view, int i, int i2, boolean z, CharSequence charSequence) {
        if (m21393b()) {
            m21397a();
        }
        this.f1378c.setText(charSequence);
        m21395a(view, i, i2, z, this.f1379d);
        ((WindowManager) this.f1376a.getSystemService("window")).addView(this.f1377b, this.f1379d);
    }

    /* renamed from: b */
    boolean m21393b() {
        return this.f1377b.getParent() != null;
    }
}
