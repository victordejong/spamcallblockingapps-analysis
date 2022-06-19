package com.allinone.callerid.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$string;
import com.allinone.callerid.R$style;
import com.allinone.callerid.inapputil.GoogleBillingUtil;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.p162i.p163a.p190t.C2967a;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3771i;
import com.allinone.callerid.util.C3774j;
import com.allinone.callerid.util.C3810q;
import java.util.Date;
/* renamed from: com.allinone.callerid.dialog.h */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/dialog/h.class */
public class DialogC2591h extends Dialog implements View.OnClickListener {

    /* renamed from: d */
    private FragmentActivity f9015d;

    /* renamed from: e */
    private Context f9016e;

    /* renamed from: f */
    private String f9017f;

    /* renamed from: g */
    private String f9018g;

    /* renamed from: h */
    private String f9019h;

    /* renamed from: i */
    private GoogleBillingUtil f9020i;

    /* renamed from: j */
    private boolean f9021j;

    /* renamed from: k */
    private boolean f9022k;

    /* renamed from: l */
    private LinearLayout f9023l;

    /* renamed from: m */
    private Typeface f9024m;

    /* renamed from: n */
    private PopupWindow f9025n;

    /* renamed from: o */
    private long f9026o;

    public DialogC2591h(Context context, int i, FragmentActivity fragmentActivity, String str, String str2, GoogleBillingUtil googleBillingUtil, boolean z, String str3, long j, boolean z2) {
        super(context, i);
        this.f9015d = fragmentActivity;
        this.f9016e = context;
        this.f9017f = str;
        this.f9018g = str2;
        this.f9019h = str3;
        this.f9021j = z;
        this.f9022k = z2;
        this.f9020i = googleBillingUtil;
        this.f9026o = j;
    }

    /* renamed from: a */
    private void m27054a() {
        try {
            View inflate = LayoutInflater.from(this.f9015d).inflate(R$layout.pop_comment_report, (ViewGroup) null);
            TextView textView = (TextView) inflate.findViewById(R$id.tv_comment_report);
            textView.setText(this.f9016e.getResources().getString(R$string.tv_more));
            textView.setTypeface(this.f9024m);
            ((FrameLayout) inflate.findViewById(R$id.fl_btn)).setOnClickListener(this);
            PopupWindow popupWindow = new PopupWindow(inflate);
            this.f9025n = popupWindow;
            popupWindow.setHeight(-2);
            this.f9025n.setWidth(-2);
            this.f9025n.setFocusable(true);
            if (C3767h1.m24250f0(EZCallApplication.m26146c()).booleanValue()) {
                this.f9025n.setAnimationStyle(R$style.pop_style_rtl);
            } else {
                this.f9025n.setAnimationStyle(R$style.pop_style);
            }
            this.f9025n.setBackgroundDrawable(new ColorDrawable(0));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R$id.fl_btn /* 2131296721 */:
                C2967a.m26328b(this.f9015d);
                PopupWindow popupWindow = this.f9025n;
                if (popupWindow == null) {
                    return;
                }
                popupWindow.dismiss();
                return;
            case R$id.iv_close /* 2131296970 */:
                C3810q.m24071b().m24070c("subscribe_dialog_close_button_click");
                dismiss();
                return;
            case R$id.rl_month /* 2131297515 */:
                GoogleBillingUtil googleBillingUtil = this.f9020i;
                if (googleBillingUtil != null) {
                    C3767h1.f12011f = "showcaller_removeads_month";
                    googleBillingUtil.m26221z(this.f9015d, "showcaller_removeads_month");
                    C3810q.m24071b().m24070c("premium_dialog_click_month");
                    if (this.f9022k) {
                        C3810q.m24071b().m24070c("recommend_premium_dialog_click_month");
                    } else {
                        C3810q.m24071b().m24070c("cehua_premium_dialog_click_month");
                    }
                }
                dismiss();
                return;
            case R$id.rl_year /* 2131297549 */:
                GoogleBillingUtil googleBillingUtil2 = this.f9020i;
                if (googleBillingUtil2 != null) {
                    C3767h1.f12011f = "showcaller_removeads_year";
                    googleBillingUtil2.m26221z(this.f9015d, "showcaller_removeads_year");
                    C3810q.m24071b().m24070c("premium_dialog_click_year");
                    if (this.f9022k) {
                        C3810q.m24071b().m24070c("recommend_premium_dialog_click_year");
                    } else {
                        C3810q.m24071b().m24070c("cehua_premium_dialog_click_year");
                    }
                }
                dismiss();
                return;
            case R$id.setwallpaper /* 2131297629 */:
                if (this.f9025n == null) {
                    m27054a();
                }
                if (this.f9025n == null) {
                    return;
                }
                if (C3767h1.m24250f0(this.f9016e).booleanValue()) {
                    this.f9025n.showAtLocation(view, 51, 5, C3774j.m24169a(this.f9016e, 14.0f) + 25);
                    return;
                } else {
                    this.f9025n.showAtLocation(view, 53, 5, C3774j.m24169a(this.f9016e, 14.0f) + 25);
                    return;
                }
            case R$id.tv_learn_more /* 2131297974 */:
                C2967a.m26328b(this.f9015d);
                return;
            case R$id.tv_restore /* 2131298084 */:
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("https://play.google.com/store/account/subscriptions?sku=" + this.f9019h + "&package=" + this.f9016e.getPackageName()));
                intent.setFlags(268435456);
                this.f9016e.startActivity(intent);
                C3810q.m24071b().m24070c("premium_dialog_click_restore");
                dismiss();
                return;
            default:
                return;
        }
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        String str;
        super.onCreate(bundle);
        C3767h1.m24281I0(this.f9016e, EZCallApplication.m26146c().f9914h);
        setContentView(R$layout.dialog_premium);
        if (C3767h1.m24250f0(this.f9016e).booleanValue() && Build.VERSION.SDK_INT >= 17 && getWindow() != null) {
            getWindow().getDecorView().setLayoutDirection(1);
        }
        this.f9024m = C3739f1.m24359b();
        Typeface m24360a = C3739f1.m24360a();
        this.f9023l = (LinearLayout) findViewById(R$id.ll_dialog);
        TextView textView = (TextView) findViewById(R$id.tv_year_price);
        TextView textView2 = (TextView) findViewById(R$id.tv_year);
        TextView textView3 = (TextView) findViewById(R$id.tv_title);
        TextView textView4 = (TextView) findViewById(R$id.tv_content);
        TextView textView5 = (TextView) findViewById(R$id.tv_year_price_one);
        textView5.setTypeface(this.f9024m);
        ((TextView) findViewById(R$id.tv_year_one)).setTypeface(this.f9024m);
        textView5.setText(this.f9018g);
        String str2 = this.f9018g;
        String substring = str2.substring(0, str2.indexOf("$") + 1);
        if (C3718c0.f11914a) {
            C3718c0.m24436a("inappbilling", "sign:" + substring);
        }
        try {
            StringBuilder sb = new StringBuilder();
            sb.append(substring);
            String str3 = this.f9018g;
            sb.append(String.format("%.2f", Float.valueOf(Float.parseFloat(str3.substring(str3.indexOf("$") + 1)) / 12.0f)));
            str = sb.toString();
            textView2.setText(this.f9016e.getResources().getString(R$string.tv_ad_price_month));
        } catch (Exception e) {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("inappbilling", "Exception:" + e.getMessage());
            }
            e.printStackTrace();
            str = this.f9018g;
            textView2.setText(this.f9016e.getResources().getString(R$string.tv_ad_price));
        }
        textView.setText(str);
        textView.setTypeface(this.f9024m);
        TextView textView6 = (TextView) findViewById(R$id.tv_month_price);
        textView6.setText(this.f9017f);
        textView6.setTypeface(this.f9024m);
        ((ImageView) findViewById(R$id.iv_close)).setOnClickListener(this);
        FrameLayout frameLayout = (FrameLayout) findViewById(R$id.rl_year);
        frameLayout.setOnClickListener(this);
        FrameLayout frameLayout2 = (FrameLayout) findViewById(R$id.rl_month);
        frameLayout2.setOnClickListener(this);
        TextView textView7 = (TextView) findViewById(R$id.tv_restore);
        textView7.setOnClickListener(this);
        TextView textView8 = (TextView) findViewById(R$id.tv_learn_more);
        textView8.setOnClickListener(this);
        ((ImageView) findViewById(R$id.setwallpaper)).setOnClickListener(this);
        RelativeLayout relativeLayout = (RelativeLayout) findViewById(R$id.rl_year_layout);
        if (this.f9021j) {
            textView7.setVisibility(0);
        }
        if (this.f9019h != null) {
            textView3.setText(this.f9016e.getResources().getString(R$string.premium));
            if ("showcaller_removeads_month".equals(this.f9019h)) {
                textView4.setText(this.f9016e.getResources().getString(R$string.next_renewal_time) + " " + C3771i.m24199k(new Date((this.f9026o + 2592000) * 1000)));
                frameLayout2.setVisibility(8);
            } else {
                textView4.setText(this.f9016e.getResources().getString(R$string.next_renewal_time) + " " + C3771i.m24199k(new Date((this.f9026o + 31104000) * 1000)));
                frameLayout2.setVisibility(8);
                frameLayout.setVisibility(8);
                relativeLayout.setVisibility(8);
            }
        }
        textView3.setTypeface(m24360a);
        textView4.setTypeface(this.f9024m);
        ((TextView) findViewById(R$id.tv_all_basic)).setTypeface(this.f9024m);
        ((TextView) findViewById(R$id.tv_auto)).setTypeface(this.f9024m);
        ((TextView) findViewById(R$id.tv_no_ads)).setTypeface(this.f9024m);
        ((TextView) findViewById(R$id.tv_no_limit_video)).setTypeface(this.f9024m);
        ((TextView) findViewById(R$id.tv_one_year)).setTypeface(this.f9024m);
        textView2.setTypeface(this.f9024m);
        ((TextView) findViewById(R$id.tv_one_month)).setTypeface(this.f9024m);
        ((TextView) findViewById(R$id.tv_month)).setTypeface(this.f9024m);
        ((TextView) findViewById(R$id.tv_half_off)).setTypeface(this.f9024m);
        textView8.setTypeface(this.f9024m);
        textView7.setTypeface(this.f9024m);
        if (this.f9022k) {
            C3810q.m24071b().m24070c("recommend_subscribe_dialog_show");
        } else {
            C3810q.m24071b().m24070c("cehua_subscribe_dialog_show");
        }
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            try {
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("tony", "KEYCODE_BACK");
                }
                C3810q.m24071b().m24070c("subscribe_dialog_close_back_click");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Dialog
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            if (motionEvent.getX() >= -10.0f && motionEvent.getY() >= -10.0f && motionEvent.getX() < this.f9023l.getWidth() + 10 && motionEvent.getY() < this.f9023l.getHeight() + 20) {
                return true;
            }
            if (C3718c0.f11914a) {
                C3718c0.m24436a("tony", "ACTION_OUTSIDE");
            }
            C3810q.m24071b().m24070c("subscribe_dialog_close_without_click");
            dismiss();
            return true;
        }
        return true;
    }
}
