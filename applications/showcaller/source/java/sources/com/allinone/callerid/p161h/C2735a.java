package com.allinone.callerid.p161h;

import android.content.Context;
import android.content.Intent;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.provider.Settings;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.allinone.callerid.R$color;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$string;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.mvc.controller.contactpdt.UnknownContactActivity;
import com.allinone.callerid.search.CallLogBean;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3774j;
import com.allinone.callerid.util.C3809p0;
import com.allinone.callerid.util.C3852t;
/* renamed from: com.allinone.callerid.h.a */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/h/a.class */
public class C2735a extends AbstractC2741b {

    /* renamed from: c */
    private static volatile C2735a f9383c;

    /* renamed from: d */
    private Context f9384d = null;

    /* renamed from: e */
    private TextView f9385e;

    /* renamed from: f */
    private TextView f9386f;

    /* renamed from: g */
    private ImageView f9387g;

    /* renamed from: h */
    private float f9388h;

    /* renamed from: i */
    private float f9389i;

    /* renamed from: j */
    private float f9390j;

    /* renamed from: k */
    private float f9391k;

    /* renamed from: l */
    private WindowManager f9392l;

    /* renamed from: m */
    private WindowManager.LayoutParams f9393m;

    /* renamed from: n */
    private TextView f9394n;

    /* renamed from: o */
    private Typeface f9395o;

    /* renamed from: p */
    public ViewGroup f9396p;

    /* renamed from: com.allinone.callerid.h.a$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/h/a$a.class */
    public class View$OnClickListenerC2736a implements View.OnClickListener {
        View$OnClickListenerC2736a() {
            C2735a.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C2735a.this.m26728q();
        }
    }

    /* renamed from: com.allinone.callerid.h.a$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/h/a$b.class */
    public class View$OnClickListenerC2737b implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ CallLogBean f9398d;

        View$OnClickListenerC2737b(CallLogBean callLogBean) {
            C2735a.this = r4;
            this.f9398d = callLogBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C2735a.this.m26728q();
            try {
                C3809p0.m24078a(C2735a.this.f9384d, this.f9398d.m24880o());
            } catch (Exception e) {
                Toast.makeText(C2735a.this.f9384d, C2735a.this.f9384d.getResources().getString(R$string.no_phone_related), 1).show();
            }
        }
    }

    /* renamed from: com.allinone.callerid.h.a$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/h/a$c.class */
    public class View$OnClickListenerC2738c implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ CallLogBean f9400d;

        View$OnClickListenerC2738c(CallLogBean callLogBean) {
            C2735a.this = r4;
            this.f9400d = callLogBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C2735a.this.m26728q();
            try {
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setType("vnd.android-dir/mms-sms");
                intent.setData(Uri.parse("smsto:" + this.f9400d.m24880o()));
                intent.addFlags(268468224);
                C2735a.this.f9384d.startActivity(intent);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.h.a$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/h/a$d.class */
    public class View$OnClickListenerC2739d implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ CallLogBean f9402d;

        View$OnClickListenerC2739d(CallLogBean callLogBean) {
            C2735a.this = r4;
            this.f9402d = callLogBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C2735a.this.m26728q();
            Intent intent = new Intent();
            Bundle bundle = new Bundle();
            bundle.putParcelable("contact_tony", this.f9402d);
            intent.putExtras(bundle);
            intent.setClass(C2735a.this.f9384d, UnknownContactActivity.class);
            intent.setFlags(268435456);
            C2735a.this.f9384d.startActivity(intent);
        }
    }

    /* renamed from: com.allinone.callerid.h.a$e */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/h/a$e.class */
    public class View$OnTouchListenerC2740e implements View.OnTouchListener {
        View$OnTouchListenerC2740e() {
            C2735a.this = r4;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action == 0) {
                C2735a.this.f9388h = motionEvent.getX();
                C2735a.this.f9389i = motionEvent.getY();
                return true;
            } else if (action == 1) {
                C2735a.this.f9393m.x = (int) (C2735a.this.f9390j - C2735a.this.f9388h);
                C2735a.this.f9393m.y = (int) (C2735a.this.f9391k - C2735a.this.f9389i);
                try {
                    C2735a.this.f9392l.updateViewLayout(view, C2735a.this.f9393m);
                } catch (Exception e) {
                    e.printStackTrace();
                }
                C2735a c2735a = C2735a.this;
                c2735a.f9388h = c2735a.f9389i = 0.0f;
                view.performClick();
                return true;
            } else if (action != 2) {
                return true;
            } else {
                C2735a.this.f9390j = motionEvent.getRawX();
                C2735a.this.f9391k = motionEvent.getRawY();
                C2735a.this.f9393m.x = (int) (C2735a.this.f9390j - C2735a.this.f9388h);
                C2735a.this.f9393m.y = (int) (C2735a.this.f9391k - C2735a.this.f9389i);
                try {
                    C2735a.this.f9392l.updateViewLayout(view, C2735a.this.f9393m);
                    return true;
                } catch (Exception e2) {
                    e2.printStackTrace();
                    return true;
                }
            }
        }
    }

    private C2735a() {
    }

    /* renamed from: o */
    public static C2735a m26730o() {
        if (f9383c == null) {
            synchronized (C2735a.class) {
                try {
                    if (f9383c == null) {
                        f9383c = new C2735a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f9383c;
    }

    /* renamed from: p */
    private WindowManager.LayoutParams m26729p() {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        if (Build.VERSION.SDK_INT >= 26) {
            layoutParams.type = 2038;
        } else {
            layoutParams.type = 2010;
        }
        layoutParams.height = -2;
        layoutParams.width = -1;
        layoutParams.gravity = 51;
        layoutParams.format = 1;
        layoutParams.y = C3774j.m24169a(EZCallApplication.m26146c(), 100.0f);
        layoutParams.flags = 524840;
        return layoutParams;
    }

    /* renamed from: r */
    private void m26727r(Context context, CallLogBean callLogBean) {
        m26728q();
        if (this.f9393m == null) {
            this.f9393m = m26729p();
        }
        if (this.f9392l == null) {
            this.f9392l = (WindowManager) context.getSystemService("window");
        }
        if (Build.VERSION.SDK_INT < 23) {
            this.f9396p = m26723a(context, R$layout.view_float_clipboard);
        } else if (Settings.canDrawOverlays(EZCallApplication.m26146c())) {
            this.f9396p = m26723a(context, R$layout.view_float_clipboard);
        }
        ViewGroup viewGroup = this.f9396p;
        if (viewGroup != null) {
            m26721c(this.f9384d, viewGroup, this.f9393m);
            m26726s(this.f9396p, callLogBean);
        }
    }

    /* renamed from: s */
    private void m26726s(View view, CallLogBean callLogBean) {
        this.f9386f = (TextView) view.findViewById(R$id.tv_number_name);
        this.f9387g = (ImageView) view.findViewById(R$id.photo_view);
        this.f9385e = (TextView) view.findViewById(R$id.tv_location);
        this.f9394n = (TextView) view.findViewById(R$id.tv_type);
        TextView textView = (TextView) view.findViewById(R$id.tv_dimiss);
        ImageView imageView = (ImageView) view.findViewById(R$id.btn_call);
        ImageView imageView2 = (ImageView) view.findViewById(R$id.btn_sms);
        textView.setTypeface(C3739f1.m24360a());
        textView.setOnClickListener(new View$OnClickListenerC2736a());
        imageView.setOnClickListener(new View$OnClickListenerC2737b(callLogBean));
        imageView2.setOnClickListener(new View$OnClickListenerC2738c(callLogBean));
        ((ImageView) view.findViewById(R$id.btn_more)).setOnClickListener(new View$OnClickListenerC2739d(callLogBean));
        this.f9386f.setText(callLogBean.m24880o());
        this.f9386f.setTypeface(this.f9395o);
        this.f9385e.setTypeface(this.f9395o);
        this.f9394n.setTypeface(this.f9395o);
        if (callLogBean.m24880o() != null && !"".equals(callLogBean.m24880o())) {
            m26725t(this.f9384d, callLogBean);
        }
        view.setOnTouchListener(new View$OnTouchListenerC2740e());
    }

    /* renamed from: q */
    public void m26728q() {
        synchronized (this.f9406b) {
            ViewGroup viewGroup = this.f9396p;
            if (viewGroup != null) {
                try {
                    WindowManager windowManager = this.f9392l;
                    if (windowManager != null) {
                        windowManager.removeView(viewGroup);
                    } else {
                        ((WindowManager) EZCallApplication.m26146c().getSystemService("window")).removeView(this.f9396p);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
                this.f9396p = null;
            }
        }
    }

    /* renamed from: t */
    public void m26725t(Context context, CallLogBean callLogBean) {
        if (callLogBean.m24884m() != null && !"".equals(callLogBean.m24884m())) {
            this.f9386f.setText(callLogBean.m24884m());
        }
        if (callLogBean.m24914a() == null || "".equals(callLogBean.m24914a())) {
            this.f9387g.setImageResource(R$drawable.ic_photo_normal);
        } else {
            C3852t.m23961b(this.f9384d, callLogBean.m24914a(), R$drawable.ic_photo_normal, this.f9387g);
        }
        if (callLogBean.m24909c() == null || "".equals(callLogBean.m24909c())) {
            this.f9385e.setText("");
        } else {
            this.f9385e.setVisibility(0);
            this.f9385e.setText(callLogBean.m24909c());
        }
        int parseInt = (callLogBean.m24864x() == null || "".equals(callLogBean.m24864x())) ? 0 : Integer.parseInt(callLogBean.m24864x());
        if (callLogBean.m24932P() != null && !callLogBean.m24932P().equals("") && parseInt == 0) {
            this.f9387g.setImageResource(R$drawable.ic_photo_spam);
            this.f9385e.setVisibility(8);
            this.f9394n.setVisibility(0);
            TextView textView = this.f9394n;
            textView.setText(this.f9384d.getResources().getString(R$string.report_as) + " " + callLogBean.m24932P());
            this.f9394n.setTextColor(this.f9384d.getResources().getColor(R$color.spam));
        }
        if (callLogBean.m24932P() == null || callLogBean.m24932P().equals("") || parseInt <= 0) {
            return;
        }
        this.f9387g.setImageResource(R$drawable.ic_photo_spam);
        this.f9385e.setVisibility(8);
        this.f9394n.setVisibility(0);
        this.f9394n.setTextColor(this.f9384d.getResources().getColor(R$color.spam));
        TextView textView2 = this.f9394n;
        textView2.setText(this.f9384d.getResources().getString(R$string.report) + " " + parseInt + " " + this.f9384d.getResources().getString(R$string.time_as) + " " + callLogBean.m24932P());
    }

    /* renamed from: u */
    public void m26724u(Context context, CallLogBean callLogBean) {
        synchronized (this.f9406b) {
            this.f9384d = context;
            if (this.f9395o == null) {
                this.f9395o = C3739f1.m24359b();
            }
            m26727r(context, callLogBean);
        }
    }
}
