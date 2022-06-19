package p193e.p194a.p1365y.p1366a.p1379l;

import android.app.Activity;
import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.flashsdk.C3909R;
import java.util.Objects;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import s1.z.c.l;
/* renamed from: e.a.y.a.l.c */
/* loaded from: classes9-dex2jar.jar:e/a/y/a/l/c.class */
public final class C21584c {

    /* renamed from: a */
    public final PopupWindow f60229a;

    /* renamed from: e.a.y.a.l.c$a */
    /* loaded from: classes9-dex2jar.jar:e/a/y/a/l/c$a.class */
    public static final class View$OnTouchListenerC21585a implements View.OnTouchListener {

        /* renamed from: a */
        public final /* synthetic */ PopupWindow f60230a;

        public View$OnTouchListenerC21585a(PopupWindow popupWindow) {
            this.f60230a = popupWindow;
        }

        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            this.f60230a.dismiss();
            return false;
        }
    }

    public C21584c(Context context, String str, int i) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(str, "toolTipText");
        View inflate = LayoutInflater.from(context).inflate(C3909R.layout.flash_v2_pop_up, (ViewGroup) null);
        View findViewById = inflate.findViewById(C3909R.C3911id.text);
        l.d(findViewById, "view.findViewById<TextView>(R.id.text)");
        ((TextView) findViewById).setText(str);
        PopupWindow popupWindow = new PopupWindow(inflate, -2, -2, false);
        popupWindow.setBackgroundDrawable(new ColorDrawable());
        popupWindow.setAnimationStyle(16973826);
        popupWindow.setOutsideTouchable(true);
        popupWindow.setTouchInterceptor(new View$OnTouchListenerC21585a(popupWindow));
        this.f60229a = popupWindow;
        Object obj = C26467a.f74235a;
        Drawable m1789b = C26467a.C26470c.m1789b(context, i);
        if (m1789b != null) {
            m1789b.setColorFilter(C19291g.m13538k0(context, C3909R.attr.theme_contrast_bg), PorterDuff.Mode.SRC_IN);
        }
        l.d(inflate, ViewAction.VIEW);
        inflate.setBackground(m1789b);
    }

    /* renamed from: a */
    public final void m9404a(View view, int i) {
        l.e(view, ViewAction.VIEW);
        Context context = view.getContext();
        Objects.requireNonNull(context, "null cannot be cast to non-null type android.app.Activity");
        if (((Activity) context).isFinishing() || view.getApplicationWindowToken() == null) {
            return;
        }
        View contentView = this.f60229a.getContentView();
        contentView.measure(0, 0);
        int measuredWidth = view.getMeasuredWidth() / 2;
        l.d(contentView, "contentView");
        int measuredWidth2 = contentView.getMeasuredWidth() / 2;
        this.f60229a.showAsDropDown(view, measuredWidth - measuredWidth2, -(contentView.getMeasuredHeight() + view.getMeasuredHeight() + i));
    }
}
