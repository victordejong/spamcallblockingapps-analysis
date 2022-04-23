package p012b.p016b.p026q;

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
import com.facebook.ads.AdError;
import p012b.p016b.C0577d;
import p012b.p016b.C0579f;
import p012b.p016b.C0580g;
import p012b.p016b.C0582i;
/* renamed from: b.b.q.j0 */
/* loaded from: classes-dex2jar.jar:b/b/q/j0.class */
public class C0703j0 {

    /* renamed from: a */
    public final Context f3462a;

    /* renamed from: b */
    public final View f3463b;

    /* renamed from: c */
    public final TextView f3464c;

    /* renamed from: d */
    public final WindowManager.LayoutParams f3465d = new WindowManager.LayoutParams();

    /* renamed from: e */
    public final Rect f3466e = new Rect();

    /* renamed from: f */
    public final int[] f3467f = new int[2];

    /* renamed from: g */
    public final int[] f3468g = new int[2];

    public C0703j0(Context context) {
        this.f3462a = context;
        View inflate = LayoutInflater.from(context).inflate(C0580g.abc_tooltip, (ViewGroup) null);
        this.f3463b = inflate;
        this.f3464c = (TextView) inflate.findViewById(C0579f.message);
        this.f3465d.setTitle(C0703j0.class.getSimpleName());
        this.f3465d.packageName = this.f3462a.getPackageName();
        WindowManager.LayoutParams layoutParams = this.f3465d;
        layoutParams.type = AdError.LOAD_TOO_FREQUENTLY_ERROR_CODE;
        layoutParams.width = -2;
        layoutParams.height = -2;
        layoutParams.format = -3;
        layoutParams.windowAnimations = C0582i.Animation_AppCompat_Tooltip;
        layoutParams.flags = 24;
    }

    /* renamed from: a */
    public static View m36356a(View view) {
        View rootView = view.getRootView();
        ViewGroup.LayoutParams layoutParams = rootView.getLayoutParams();
        if ((layoutParams instanceof WindowManager.LayoutParams) && ((WindowManager.LayoutParams) layoutParams).type == 2) {
            return rootView;
        }
        for (Context context = view.getContext(); context instanceof ContextWrapper; context = ((ContextWrapper) context).getBaseContext()) {
            if (context instanceof Activity) {
                return ((Activity) context).getWindow().getDecorView();
            }
        }
        return rootView;
    }

    /* renamed from: a */
    public void m36357a() {
        if (m36353b()) {
            ((WindowManager) this.f3462a.getSystemService("window")).removeView(this.f3463b);
        }
    }

    /* renamed from: a */
    public final void m36355a(View view, int i, int i2, boolean z, WindowManager.LayoutParams layoutParams) {
        int i3;
        int i4;
        layoutParams.token = view.getApplicationWindowToken();
        int dimensionPixelOffset = this.f3462a.getResources().getDimensionPixelOffset(C0577d.tooltip_precise_anchor_threshold);
        if (view.getWidth() < dimensionPixelOffset) {
            i = view.getWidth() / 2;
        }
        if (view.getHeight() >= dimensionPixelOffset) {
            int dimensionPixelOffset2 = this.f3462a.getResources().getDimensionPixelOffset(C0577d.tooltip_precise_anchor_extra_offset);
            i4 = i2 + dimensionPixelOffset2;
            i3 = i2 - dimensionPixelOffset2;
        } else {
            i4 = view.getHeight();
            i3 = 0;
        }
        layoutParams.gravity = 49;
        int dimensionPixelOffset3 = this.f3462a.getResources().getDimensionPixelOffset(z ? C0577d.tooltip_y_offset_touch : C0577d.tooltip_y_offset_non_touch);
        View a = m36356a(view);
        if (a == null) {
            Log.e("TooltipPopup", "Cannot find app view");
            return;
        }
        a.getWindowVisibleDisplayFrame(this.f3466e);
        Rect rect = this.f3466e;
        if (rect.left < 0 && rect.top < 0) {
            Resources resources = this.f3462a.getResources();
            int identifier = resources.getIdentifier("status_bar_height", "dimen", "android");
            int dimensionPixelSize = identifier != 0 ? resources.getDimensionPixelSize(identifier) : 0;
            DisplayMetrics displayMetrics = resources.getDisplayMetrics();
            this.f3466e.set(0, dimensionPixelSize, displayMetrics.widthPixels, displayMetrics.heightPixels);
        }
        a.getLocationOnScreen(this.f3468g);
        view.getLocationOnScreen(this.f3467f);
        int[] iArr = this.f3467f;
        int i5 = iArr[0];
        int[] iArr2 = this.f3468g;
        iArr[0] = i5 - iArr2[0];
        iArr[1] = iArr[1] - iArr2[1];
        layoutParams.x = (iArr[0] + i) - (a.getWidth() / 2);
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        this.f3463b.measure(makeMeasureSpec, makeMeasureSpec);
        int measuredHeight = this.f3463b.getMeasuredHeight();
        int[] iArr3 = this.f3467f;
        int i6 = ((iArr3[1] + i3) - dimensionPixelOffset3) - measuredHeight;
        int i7 = iArr3[1] + i4 + dimensionPixelOffset3;
        if (z) {
            if (i6 >= 0) {
                layoutParams.y = i6;
            } else {
                layoutParams.y = i7;
            }
        } else if (measuredHeight + i7 <= this.f3466e.height()) {
            layoutParams.y = i7;
        } else {
            layoutParams.y = i6;
        }
    }

    /* renamed from: a */
    public void m36354a(View view, int i, int i2, boolean z, CharSequence charSequence) {
        if (m36353b()) {
            m36357a();
        }
        this.f3464c.setText(charSequence);
        m36355a(view, i, i2, z, this.f3465d);
        ((WindowManager) this.f3462a.getSystemService("window")).addView(this.f3463b, this.f3465d);
    }

    /* renamed from: b */
    public boolean m36353b() {
        return this.f3463b.getParent() != null;
    }
}
