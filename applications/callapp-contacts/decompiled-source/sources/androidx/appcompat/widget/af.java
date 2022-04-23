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
import androidx.appcompat.a;
import com.facebook.ads.AdError;
import com.mopub.common.Constants;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/af.class */
final class af {

    /* renamed from: a  reason: collision with root package name */
    private final Context f1062a;

    /* renamed from: b  reason: collision with root package name */
    private final View f1063b;

    /* renamed from: c  reason: collision with root package name */
    private final TextView f1064c;

    /* renamed from: d  reason: collision with root package name */
    private final WindowManager.LayoutParams f1065d;
    private final Rect e = new Rect();
    private final int[] f = new int[2];
    private final int[] g = new int[2];

    /* JADX INFO: Access modifiers changed from: package-private */
    public af(Context context) {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        this.f1065d = layoutParams;
        this.f1062a = context;
        View inflate = LayoutInflater.from(context).inflate(a.g.abc_tooltip, (ViewGroup) null);
        this.f1063b = inflate;
        this.f1064c = (TextView) inflate.findViewById(a.f.message);
        layoutParams.setTitle(getClass().getSimpleName());
        layoutParams.packageName = context.getPackageName();
        layoutParams.type = AdError.LOAD_TOO_FREQUENTLY_ERROR_CODE;
        layoutParams.width = -2;
        layoutParams.height = -2;
        layoutParams.format = -3;
        layoutParams.windowAnimations = a.i.Animation_AppCompat_Tooltip;
        layoutParams.flags = 24;
    }

    private static View a(View view) {
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

    private void a(View view, int i, int i2, boolean z, WindowManager.LayoutParams layoutParams) {
        int i3;
        int i4;
        layoutParams.token = view.getApplicationWindowToken();
        int dimensionPixelOffset = this.f1062a.getResources().getDimensionPixelOffset(a.d.tooltip_precise_anchor_threshold);
        if (view.getWidth() < dimensionPixelOffset) {
            i = view.getWidth() / 2;
        }
        if (view.getHeight() >= dimensionPixelOffset) {
            int dimensionPixelOffset2 = this.f1062a.getResources().getDimensionPixelOffset(a.d.tooltip_precise_anchor_extra_offset);
            i4 = i2 + dimensionPixelOffset2;
            i3 = i2 - dimensionPixelOffset2;
        } else {
            i4 = view.getHeight();
            i3 = 0;
        }
        layoutParams.gravity = 49;
        int dimensionPixelOffset3 = this.f1062a.getResources().getDimensionPixelOffset(z ? a.d.tooltip_y_offset_touch : a.d.tooltip_y_offset_non_touch);
        View a2 = a(view);
        if (a2 == null) {
            Log.e("TooltipPopup", "Cannot find app view");
            return;
        }
        a2.getWindowVisibleDisplayFrame(this.e);
        if (this.e.left < 0 && this.e.top < 0) {
            Resources resources = this.f1062a.getResources();
            int identifier = resources.getIdentifier("status_bar_height", "dimen", Constants.ANDROID_PLATFORM);
            int dimensionPixelSize = identifier != 0 ? resources.getDimensionPixelSize(identifier) : 0;
            DisplayMetrics displayMetrics = resources.getDisplayMetrics();
            this.e.set(0, dimensionPixelSize, displayMetrics.widthPixels, displayMetrics.heightPixels);
        }
        a2.getLocationOnScreen(this.g);
        view.getLocationOnScreen(this.f);
        int[] iArr = this.f;
        int i5 = iArr[0];
        int[] iArr2 = this.g;
        iArr[0] = i5 - iArr2[0];
        iArr[1] = iArr[1] - iArr2[1];
        layoutParams.x = (iArr[0] + i) - (a2.getWidth() / 2);
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        this.f1063b.measure(makeMeasureSpec, makeMeasureSpec);
        int measuredHeight = this.f1063b.getMeasuredHeight();
        int[] iArr3 = this.f;
        int i6 = ((iArr3[1] + i3) - dimensionPixelOffset3) - measuredHeight;
        int i7 = iArr3[1] + i4 + dimensionPixelOffset3;
        if (z) {
            if (i6 < 0) {
                layoutParams.y = i7;
                return;
            }
        } else if (measuredHeight + i7 <= this.e.height()) {
            layoutParams.y = i7;
            return;
        }
        layoutParams.y = i6;
    }

    private boolean b() {
        return this.f1063b.getParent() != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        if (b()) {
            ((WindowManager) this.f1062a.getSystemService("window")).removeView(this.f1063b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(View view, int i, int i2, boolean z, CharSequence charSequence) {
        if (b()) {
            a();
        }
        this.f1064c.setText(charSequence);
        a(view, i, i2, z, this.f1065d);
        ((WindowManager) this.f1062a.getSystemService("window")).addView(this.f1063b, this.f1065d);
    }
}
