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
import androidx.appcompat.C0142a;
import com.facebook.ads.AdError;
import com.mopub.common.Constants;
/* renamed from: androidx.appcompat.widget.af */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/af.class */
final class C0378af {

    /* renamed from: a */
    private final Context f1529a;

    /* renamed from: b */
    private final View f1530b;

    /* renamed from: c */
    private final TextView f1531c;

    /* renamed from: d */
    private final WindowManager.LayoutParams f1532d;

    /* renamed from: e */
    private final Rect f1533e = new Rect();

    /* renamed from: f */
    private final int[] f1534f = new int[2];

    /* renamed from: g */
    private final int[] f1535g = new int[2];

    public C0378af(Context context) {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        this.f1532d = layoutParams;
        this.f1529a = context;
        View inflate = LayoutInflater.from(context).inflate(C0142a.C0149g.abc_tooltip, (ViewGroup) null);
        this.f1530b = inflate;
        this.f1531c = (TextView) inflate.findViewById(C0142a.C0148f.message);
        layoutParams.setTitle(getClass().getSimpleName());
        layoutParams.packageName = context.getPackageName();
        layoutParams.type = AdError.LOAD_TOO_FREQUENTLY_ERROR_CODE;
        layoutParams.width = -2;
        layoutParams.height = -2;
        layoutParams.format = -3;
        layoutParams.windowAnimations = C0142a.C0151i.Animation_AppCompat_Tooltip;
        layoutParams.flags = 24;
    }

    /* renamed from: a */
    private static View m45776a(View view) {
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
    private void m45775a(View view, int i, int i2, boolean z, WindowManager.LayoutParams layoutParams) {
        int i3;
        int i4;
        layoutParams.token = view.getApplicationWindowToken();
        int dimensionPixelOffset = this.f1529a.getResources().getDimensionPixelOffset(C0142a.C0146d.tooltip_precise_anchor_threshold);
        if (view.getWidth() < dimensionPixelOffset) {
            i = view.getWidth() / 2;
        }
        if (view.getHeight() >= dimensionPixelOffset) {
            int dimensionPixelOffset2 = this.f1529a.getResources().getDimensionPixelOffset(C0142a.C0146d.tooltip_precise_anchor_extra_offset);
            int i5 = i2 + dimensionPixelOffset2;
            int i6 = i2 - dimensionPixelOffset2;
            i4 = i5;
            i3 = i6;
        } else {
            i4 = view.getHeight();
            i3 = 0;
        }
        layoutParams.gravity = 49;
        int dimensionPixelOffset3 = this.f1529a.getResources().getDimensionPixelOffset(z ? C0142a.C0146d.tooltip_y_offset_touch : C0142a.C0146d.tooltip_y_offset_non_touch);
        View m45776a = m45776a(view);
        if (m45776a == null) {
            Log.e("TooltipPopup", "Cannot find app view");
            return;
        }
        m45776a.getWindowVisibleDisplayFrame(this.f1533e);
        if (this.f1533e.left < 0 && this.f1533e.top < 0) {
            Resources resources = this.f1529a.getResources();
            int identifier = resources.getIdentifier("status_bar_height", "dimen", Constants.ANDROID_PLATFORM);
            int dimensionPixelSize = identifier != 0 ? resources.getDimensionPixelSize(identifier) : 0;
            DisplayMetrics displayMetrics = resources.getDisplayMetrics();
            this.f1533e.set(0, dimensionPixelSize, displayMetrics.widthPixels, displayMetrics.heightPixels);
        }
        m45776a.getLocationOnScreen(this.f1535g);
        view.getLocationOnScreen(this.f1534f);
        int[] iArr = this.f1534f;
        int i7 = iArr[0];
        int[] iArr2 = this.f1535g;
        iArr[0] = i7 - iArr2[0];
        iArr[1] = iArr[1] - iArr2[1];
        layoutParams.x = (iArr[0] + i) - (m45776a.getWidth() / 2);
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        this.f1530b.measure(makeMeasureSpec, makeMeasureSpec);
        int measuredHeight = this.f1530b.getMeasuredHeight();
        int[] iArr3 = this.f1534f;
        int i8 = ((iArr3[1] + i3) - dimensionPixelOffset3) - measuredHeight;
        int i9 = iArr3[1] + i4 + dimensionPixelOffset3;
        if (z) {
            if (i8 < 0) {
                layoutParams.y = i9;
                return;
            }
        } else if (measuredHeight + i9 <= this.f1533e.height()) {
            layoutParams.y = i9;
            return;
        }
        layoutParams.y = i8;
    }

    /* renamed from: b */
    private boolean m45773b() {
        return this.f1530b.getParent() != null;
    }

    /* renamed from: a */
    public final void m45777a() {
        if (!m45773b()) {
            return;
        }
        ((WindowManager) this.f1529a.getSystemService("window")).removeView(this.f1530b);
    }

    /* renamed from: a */
    public final void m45774a(View view, int i, int i2, boolean z, CharSequence charSequence) {
        if (m45773b()) {
            m45777a();
        }
        this.f1531c.setText(charSequence);
        m45775a(view, i, i2, z, this.f1532d);
        ((WindowManager) this.f1529a.getSystemService("window")).addView(this.f1530b, this.f1532d);
    }
}
