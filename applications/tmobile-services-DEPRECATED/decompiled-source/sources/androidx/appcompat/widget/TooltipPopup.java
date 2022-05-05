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
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.appcompat.C0042R;
import com.facebook.stetho.websocket.CloseCodes;
import com.google.firebase.crashlytics.internal.common.AbstractSpiCall;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/TooltipPopup.class */
class TooltipPopup {

    /* renamed from: a */
    private final Context f1444a;

    /* renamed from: b */
    private final View f1445b;

    /* renamed from: c */
    private final TextView f1446c;

    /* renamed from: d */
    private final WindowManager.LayoutParams f1447d = new WindowManager.LayoutParams();

    /* renamed from: e */
    private final Rect f1448e = new Rect();

    /* renamed from: f */
    private final int[] f1449f = new int[2];

    /* renamed from: g */
    private final int[] f1450g = new int[2];

    /* JADX INFO: Access modifiers changed from: package-private */
    public TooltipPopup(@NonNull Context context) {
        this.f1444a = context;
        View inflate = LayoutInflater.from(context).inflate(C0042R.layout.abc_tooltip, (ViewGroup) null);
        this.f1445b = inflate;
        this.f1446c = (TextView) inflate.findViewById(C0042R.C0045id.message);
        this.f1447d.setTitle(TooltipPopup.class.getSimpleName());
        this.f1447d.packageName = this.f1444a.getPackageName();
        WindowManager.LayoutParams layoutParams = this.f1447d;
        layoutParams.type = CloseCodes.PROTOCOL_ERROR;
        layoutParams.width = -2;
        layoutParams.height = -2;
        layoutParams.format = -3;
        layoutParams.windowAnimations = C0042R.style.Animation_AppCompat_Tooltip;
        layoutParams.flags = 24;
    }

    /* renamed from: a */
    private void m21161a(View view, int i, int i2, boolean z, WindowManager.LayoutParams layoutParams) {
        int i3;
        int i4;
        layoutParams.token = view.getApplicationWindowToken();
        int dimensionPixelOffset = this.f1444a.getResources().getDimensionPixelOffset(C0042R.dimen.tooltip_precise_anchor_threshold);
        if (view.getWidth() < dimensionPixelOffset) {
            i = view.getWidth() / 2;
        }
        if (view.getHeight() >= dimensionPixelOffset) {
            int dimensionPixelOffset2 = this.f1444a.getResources().getDimensionPixelOffset(C0042R.dimen.tooltip_precise_anchor_extra_offset);
            i4 = i2 + dimensionPixelOffset2;
            i3 = i2 - dimensionPixelOffset2;
        } else {
            i4 = view.getHeight();
            i3 = 0;
        }
        layoutParams.gravity = 49;
        int dimensionPixelOffset3 = this.f1444a.getResources().getDimensionPixelOffset(z ? C0042R.dimen.tooltip_y_offset_touch : C0042R.dimen.tooltip_y_offset_non_touch);
        View b = m21160b(view);
        if (b == null) {
            Log.e("TooltipPopup", "Cannot find app view");
            return;
        }
        b.getWindowVisibleDisplayFrame(this.f1448e);
        Rect rect = this.f1448e;
        if (rect.left < 0 && rect.top < 0) {
            Resources resources = this.f1444a.getResources();
            int identifier = resources.getIdentifier("status_bar_height", "dimen", AbstractSpiCall.ANDROID_CLIENT_TYPE);
            int dimensionPixelSize = identifier != 0 ? resources.getDimensionPixelSize(identifier) : 0;
            DisplayMetrics displayMetrics = resources.getDisplayMetrics();
            this.f1448e.set(0, dimensionPixelSize, displayMetrics.widthPixels, displayMetrics.heightPixels);
        }
        b.getLocationOnScreen(this.f1450g);
        view.getLocationOnScreen(this.f1449f);
        int[] iArr = this.f1449f;
        int i5 = iArr[0];
        int[] iArr2 = this.f1450g;
        iArr[0] = i5 - iArr2[0];
        iArr[1] = iArr[1] - iArr2[1];
        layoutParams.x = (iArr[0] + i) - (b.getWidth() / 2);
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        this.f1445b.measure(makeMeasureSpec, makeMeasureSpec);
        int measuredHeight = this.f1445b.getMeasuredHeight();
        int[] iArr3 = this.f1449f;
        int i6 = ((iArr3[1] + i3) - dimensionPixelOffset3) - measuredHeight;
        int i7 = iArr3[1] + i4 + dimensionPixelOffset3;
        if (z) {
            if (i6 >= 0) {
                layoutParams.y = i6;
            } else {
                layoutParams.y = i7;
            }
        } else if (measuredHeight + i7 <= this.f1448e.height()) {
            layoutParams.y = i7;
        } else {
            layoutParams.y = i6;
        }
    }

    /* renamed from: b */
    private static View m21160b(View view) {
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public void m21159c() {
        if (m21158d()) {
            ((WindowManager) this.f1444a.getSystemService("window")).removeView(this.f1445b);
        }
    }

    /* renamed from: d */
    boolean m21158d() {
        return this.f1445b.getParent() != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public void m21157e(View view, int i, int i2, boolean z, CharSequence charSequence) {
        if (m21158d()) {
            m21159c();
        }
        this.f1446c.setText(charSequence);
        m21161a(view, i, i2, z, this.f1447d);
        ((WindowManager) this.f1444a.getSystemService("window")).addView(this.f1445b, this.f1447d);
    }
}
