package p193e.p194a.p1365y.p1366a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.PopupWindow;
import com.razorpay.AnalyticsConstants;
import com.truecaller.flashsdk.C3909R;
import s1.z.c.l;
/* renamed from: e.a.y.a.c */
/* loaded from: classes9-dex2jar.jar:e/a/y/a/c.class */
public final class ViewTreeObserver$OnGlobalLayoutListenerC21477c implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a */
    public final View f59977a;

    /* renamed from: b */
    public PopupWindow f59978b;

    /* renamed from: c */
    public final View f59979c;

    public ViewTreeObserver$OnGlobalLayoutListenerC21477c(Context context, View view) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(view, "anchorView");
        this.f59979c = view;
        View inflate = LayoutInflater.from(context).inflate(C3909R.layout.flash_tooltip_layout, (ViewGroup) null, false);
        l.d(inflate, "LayoutInflater.from(cont…ltip_layout, null, false)");
        this.f59977a = inflate;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        PopupWindow popupWindow = this.f59978b;
        if (popupWindow != null) {
            popupWindow.update(this.f59979c, 0, 0, -1, -1);
        }
    }
}
