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
import androidx.appcompat.C0051a;
import io.fabric.sdk.android.services.p068b.AbstractC1468a;
/* renamed from: androidx.appcompat.widget.aw */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/aw.class */
class C0319aw {

    /* renamed from: a */
    private final Context f1319a;

    /* renamed from: b */
    private final View f1320b;

    /* renamed from: c */
    private final TextView f1321c;

    /* renamed from: d */
    private final WindowManager.LayoutParams f1322d = new WindowManager.LayoutParams();

    /* renamed from: e */
    private final Rect f1323e = new Rect();

    /* renamed from: f */
    private final int[] f1324f = new int[2];

    /* renamed from: g */
    private final int[] f1325g = new int[2];

    public C0319aw(Context context) {
        this.f1319a = context;
        this.f1320b = LayoutInflater.from(this.f1319a).inflate(C0051a.C0058g.abc_tooltip, (ViewGroup) null);
        this.f1321c = (TextView) this.f1320b.findViewById(C0051a.C0057f.message);
        this.f1322d.setTitle(getClass().getSimpleName());
        this.f1322d.packageName = this.f1319a.getPackageName();
        WindowManager.LayoutParams layoutParams = this.f1322d;
        layoutParams.type = 1002;
        layoutParams.width = -2;
        layoutParams.height = -2;
        layoutParams.format = -3;
        layoutParams.windowAnimations = C0051a.C0060i.Animation_AppCompat_Tooltip;
        this.f1322d.flags = 24;
    }

    /* renamed from: a */
    private static View m7122a(View view) {
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

    /* renamed from: a */
    private void m7121a(View view, int i, int i2, boolean z, WindowManager.LayoutParams layoutParams) {
        int i3;
        int i4;
        layoutParams.token = view.getApplicationWindowToken();
        int dimensionPixelOffset = this.f1319a.getResources().getDimensionPixelOffset(C0051a.C0055d.tooltip_precise_anchor_threshold);
        if (view.getWidth() < dimensionPixelOffset) {
            i = view.getWidth() / 2;
        }
        if (view.getHeight() >= dimensionPixelOffset) {
            int dimensionPixelOffset2 = this.f1319a.getResources().getDimensionPixelOffset(C0051a.C0055d.tooltip_precise_anchor_extra_offset);
            int i5 = i2 + dimensionPixelOffset2;
            int i6 = i2 - dimensionPixelOffset2;
            i4 = i5;
            i3 = i6;
        } else {
            i4 = view.getHeight();
            i3 = 0;
        }
        layoutParams.gravity = 49;
        int dimensionPixelOffset3 = this.f1319a.getResources().getDimensionPixelOffset(z ? C0051a.C0055d.tooltip_y_offset_touch : C0051a.C0055d.tooltip_y_offset_non_touch);
        View m7122a = m7122a(view);
        if (m7122a == null) {
            Log.e("TooltipPopup", "Cannot find app view");
            return;
        }
        m7122a.getWindowVisibleDisplayFrame(this.f1323e);
        if (this.f1323e.left < 0 && this.f1323e.top < 0) {
            Resources resources = this.f1319a.getResources();
            int identifier = resources.getIdentifier("status_bar_height", "dimen", AbstractC1468a.ANDROID_CLIENT_TYPE);
            int dimensionPixelSize = identifier != 0 ? resources.getDimensionPixelSize(identifier) : 0;
            DisplayMetrics displayMetrics = resources.getDisplayMetrics();
            this.f1323e.set(0, dimensionPixelSize, displayMetrics.widthPixels, displayMetrics.heightPixels);
        }
        m7122a.getLocationOnScreen(this.f1325g);
        view.getLocationOnScreen(this.f1324f);
        int[] iArr = this.f1324f;
        int i7 = iArr[0];
        int[] iArr2 = this.f1325g;
        iArr[0] = i7 - iArr2[0];
        iArr[1] = iArr[1] - iArr2[1];
        layoutParams.x = (iArr[0] + i) - (m7122a.getWidth() / 2);
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        this.f1320b.measure(makeMeasureSpec, makeMeasureSpec);
        int measuredHeight = this.f1320b.getMeasuredHeight();
        int[] iArr3 = this.f1324f;
        int i8 = ((iArr3[1] + i3) - dimensionPixelOffset3) - measuredHeight;
        int i9 = iArr3[1] + i4 + dimensionPixelOffset3;
        if (z) {
            if (i8 >= 0) {
                layoutParams.y = i8;
            } else {
                layoutParams.y = i9;
            }
        } else if (measuredHeight + i9 <= this.f1323e.height()) {
            layoutParams.y = i9;
        } else {
            layoutParams.y = i8;
        }
    }

    /* renamed from: a */
    public void m7123a() {
        if (!m7119b()) {
            return;
        }
        ((WindowManager) this.f1319a.getSystemService("window")).removeView(this.f1320b);
    }

    /* renamed from: a */
    public void m7120a(View view, int i, int i2, boolean z, CharSequence charSequence) {
        if (m7119b()) {
            m7123a();
        }
        this.f1321c.setText(charSequence);
        m7121a(view, i, i2, z, this.f1322d);
        ((WindowManager) this.f1319a.getSystemService("window")).addView(this.f1320b, this.f1322d);
    }

    /* renamed from: b */
    boolean m7119b() {
        return this.f1320b.getParent() != null;
    }
}
