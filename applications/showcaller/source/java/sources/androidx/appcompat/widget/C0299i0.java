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
import p020b.p021a.C1426d;
import p020b.p021a.C1428f;
import p020b.p021a.C1429g;
import p020b.p021a.C1431i;
/* renamed from: androidx.appcompat.widget.i0 */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/i0.class */
class C0299i0 {

    /* renamed from: a */
    private final Context f1307a;

    /* renamed from: b */
    private final View f1308b;

    /* renamed from: c */
    private final TextView f1309c;

    /* renamed from: d */
    private final WindowManager.LayoutParams f1310d;

    /* renamed from: e */
    private final Rect f1311e = new Rect();

    /* renamed from: f */
    private final int[] f1312f = new int[2];

    /* renamed from: g */
    private final int[] f1313g = new int[2];

    public C0299i0(Context context) {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        this.f1310d = layoutParams;
        this.f1307a = context;
        View inflate = LayoutInflater.from(context).inflate(C1429g.abc_tooltip, (ViewGroup) null);
        this.f1308b = inflate;
        this.f1309c = (TextView) inflate.findViewById(C1428f.message);
        layoutParams.setTitle(C0299i0.class.getSimpleName());
        layoutParams.packageName = context.getPackageName();
        layoutParams.type = 1002;
        layoutParams.width = -2;
        layoutParams.height = -2;
        layoutParams.format = -3;
        layoutParams.windowAnimations = C1431i.Animation_AppCompat_Tooltip;
        layoutParams.flags = 24;
    }

    /* renamed from: a */
    private void m34890a(View view, int i, int i2, boolean z, WindowManager.LayoutParams layoutParams) {
        int i3;
        int i4;
        layoutParams.token = view.getApplicationWindowToken();
        int dimensionPixelOffset = this.f1307a.getResources().getDimensionPixelOffset(C1426d.tooltip_precise_anchor_threshold);
        if (view.getWidth() < dimensionPixelOffset) {
            i = view.getWidth() / 2;
        }
        if (view.getHeight() >= dimensionPixelOffset) {
            int dimensionPixelOffset2 = this.f1307a.getResources().getDimensionPixelOffset(C1426d.tooltip_precise_anchor_extra_offset);
            int i5 = i2 + dimensionPixelOffset2;
            int i6 = i2 - dimensionPixelOffset2;
            i4 = i5;
            i3 = i6;
        } else {
            i4 = view.getHeight();
            i3 = 0;
        }
        layoutParams.gravity = 49;
        int dimensionPixelOffset3 = this.f1307a.getResources().getDimensionPixelOffset(z ? C1426d.tooltip_y_offset_touch : C1426d.tooltip_y_offset_non_touch);
        View m34889b = m34889b(view);
        if (m34889b == null) {
            Log.e("TooltipPopup", "Cannot find app view");
            return;
        }
        m34889b.getWindowVisibleDisplayFrame(this.f1311e);
        Rect rect = this.f1311e;
        if (rect.left < 0 && rect.top < 0) {
            Resources resources = this.f1307a.getResources();
            int identifier = resources.getIdentifier("status_bar_height", "dimen", "android");
            int dimensionPixelSize = identifier != 0 ? resources.getDimensionPixelSize(identifier) : 0;
            DisplayMetrics displayMetrics = resources.getDisplayMetrics();
            this.f1311e.set(0, dimensionPixelSize, displayMetrics.widthPixels, displayMetrics.heightPixels);
        }
        m34889b.getLocationOnScreen(this.f1313g);
        view.getLocationOnScreen(this.f1312f);
        int[] iArr = this.f1312f;
        int i7 = iArr[0];
        int[] iArr2 = this.f1313g;
        iArr[0] = i7 - iArr2[0];
        iArr[1] = iArr[1] - iArr2[1];
        layoutParams.x = (iArr[0] + i) - (m34889b.getWidth() / 2);
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        this.f1308b.measure(makeMeasureSpec, makeMeasureSpec);
        int measuredHeight = this.f1308b.getMeasuredHeight();
        int[] iArr3 = this.f1312f;
        int i8 = ((iArr3[1] + i3) - dimensionPixelOffset3) - measuredHeight;
        int i9 = iArr3[1] + i4 + dimensionPixelOffset3;
        if (z) {
            if (i8 >= 0) {
                layoutParams.y = i8;
            } else {
                layoutParams.y = i9;
            }
        } else if (measuredHeight + i9 <= this.f1311e.height()) {
            layoutParams.y = i9;
        } else {
            layoutParams.y = i8;
        }
    }

    /* renamed from: b */
    private static View m34889b(View view) {
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
    public void m34888c() {
        if (!m34887d()) {
            return;
        }
        ((WindowManager) this.f1307a.getSystemService("window")).removeView(this.f1308b);
    }

    /* renamed from: d */
    boolean m34887d() {
        return this.f1308b.getParent() != null;
    }

    /* renamed from: e */
    public void m34886e(View view, int i, int i2, boolean z, CharSequence charSequence) {
        if (m34887d()) {
            m34888c();
        }
        this.f1309c.setText(charSequence);
        m34890a(view, i, i2, z, this.f1310d);
        ((WindowManager) this.f1307a.getSystemService("window")).addView(this.f1308b, this.f1310d);
    }
}
