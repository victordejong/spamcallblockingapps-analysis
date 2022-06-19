package com.allinone.callerid.start;

import android.content.Intent;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.RadioButton;
import android.widget.Switch;
import android.widget.TextView;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.main.BaseActivity;
import com.allinone.callerid.util.C3711a1;
import com.allinone.callerid.util.C3720d;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3772i0;
import com.allinone.callerid.util.C3810q;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/CallerActivity.class */
public class CallerActivity extends BaseActivity {

    /* renamed from: A */
    private RadioButton f11670A;

    /* renamed from: u */
    private final String f11671u = "CallerActivity";

    /* renamed from: v */
    private Typeface f11672v;

    /* renamed from: w */
    private RadioButton f11673w;

    /* renamed from: x */
    private RadioButton f11674x;

    /* renamed from: y */
    private RadioButton f11675y;

    /* renamed from: z */
    private RadioButton f11676z;

    /* renamed from: com.allinone.callerid.start.CallerActivity$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/CallerActivity$a.class */
    public class C3631a implements CompoundButton.OnCheckedChangeListener {
        C3631a() {
            CallerActivity.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (z) {
                C3711a1.m24549d2(1);
                CallerActivity.this.f11673w.setChecked(false);
                return;
            }
            C3711a1.m24549d2(0);
            CallerActivity.this.f11673w.setChecked(true);
        }
    }

    /* renamed from: com.allinone.callerid.start.CallerActivity$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/CallerActivity$b.class */
    public class C3632b implements CompoundButton.OnCheckedChangeListener {
        C3632b() {
            CallerActivity.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (z) {
                C3772i0.m24190a().f12015b.execute(new RunnableC3649s(CallerActivity.this));
                CallerActivity.this.f11676z.setChecked(false);
                CallerActivity.this.f11670A.setChecked(false);
            }
        }
    }

    /* renamed from: com.allinone.callerid.start.CallerActivity$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/CallerActivity$c.class */
    public class C3633c implements CompoundButton.OnCheckedChangeListener {
        C3633c() {
            CallerActivity.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (z) {
                C3772i0.m24190a().f12015b.execute(new RunnableC3647q(CallerActivity.this));
                CallerActivity.this.f11675y.setChecked(false);
                CallerActivity.this.f11670A.setChecked(false);
            }
        }
    }

    /* renamed from: com.allinone.callerid.start.CallerActivity$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/CallerActivity$d.class */
    public class C3634d implements CompoundButton.OnCheckedChangeListener {
        C3634d() {
            CallerActivity.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (z) {
                C3772i0.m24190a().f12015b.execute(new RunnableC3648r(CallerActivity.this));
                CallerActivity.this.f11676z.setChecked(false);
                CallerActivity.this.f11675y.setChecked(false);
            }
        }
    }

    /* renamed from: com.allinone.callerid.start.CallerActivity$e */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/CallerActivity$e.class */
    public class View$OnClickListenerC3635e implements View.OnClickListener {
        View$OnClickListenerC3635e() {
            CallerActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (CallerActivity.this.f11673w.isChecked()) {
                CallerActivity.this.startActivity(new Intent(CallerActivity.this, PreviewTopBigActivity.class));
            } else {
                CallerActivity.this.startActivity(new Intent(CallerActivity.this, PreviewTopSmallActivity.class));
            }
            CallerActivity.this.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        }
    }

    /* renamed from: com.allinone.callerid.start.CallerActivity$f */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/CallerActivity$f.class */
    public class View$OnClickListenerC3636f implements View.OnClickListener {
        View$OnClickListenerC3636f() {
            CallerActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (CallerActivity.this.f11673w.isChecked()) {
                CallerActivity.this.startActivity(new Intent(CallerActivity.this, PreviewBottomBigActivity.class));
            } else {
                CallerActivity.this.startActivity(new Intent(CallerActivity.this, PreviewBottomSmallActivity.class));
            }
            CallerActivity.this.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        }
    }

    /* renamed from: com.allinone.callerid.start.CallerActivity$g */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/CallerActivity$g.class */
    public class View$OnClickListenerC3637g implements View.OnClickListener {
        View$OnClickListenerC3637g() {
            CallerActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (CallerActivity.this.f11673w.isChecked()) {
                CallerActivity.this.startActivity(new Intent(CallerActivity.this, PreviewNormalActivity.class));
            } else {
                CallerActivity.this.startActivity(new Intent(CallerActivity.this, PreviewSimpleActivity.class));
            }
            CallerActivity.this.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        }
    }

    /* renamed from: com.allinone.callerid.start.CallerActivity$h */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/CallerActivity$h.class */
    class View$OnClickListenerC3638h implements View.OnClickListener {
        View$OnClickListenerC3638h() {
            CallerActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CallerActivity.this.finish();
            CallerActivity.this.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        }
    }

    /* renamed from: com.allinone.callerid.start.CallerActivity$i */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/CallerActivity$i.class */
    public class View$OnClickListenerC3639i implements View.OnClickListener {
        View$OnClickListenerC3639i() {
            CallerActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CallerActivity.this.startActivity(new Intent(CallerActivity.this, PreviewNormalActivity.class));
            CallerActivity.this.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        }
    }

    /* renamed from: com.allinone.callerid.start.CallerActivity$j */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/CallerActivity$j.class */
    public class View$OnClickListenerC3640j implements View.OnClickListener {
        View$OnClickListenerC3640j() {
            CallerActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CallerActivity.this.startActivity(new Intent(CallerActivity.this, PreviewSimpleActivity.class));
            CallerActivity.this.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        }
    }

    /* renamed from: com.allinone.callerid.start.CallerActivity$k */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/CallerActivity$k.class */
    public class C3641k implements CompoundButton.OnCheckedChangeListener {
        C3641k() {
            CallerActivity.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (z) {
                C3711a1.m24636G2(Boolean.TRUE);
            } else {
                C3711a1.m24636G2(Boolean.FALSE);
            }
        }
    }

    /* renamed from: com.allinone.callerid.start.CallerActivity$l */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/CallerActivity$l.class */
    public class C3642l implements CompoundButton.OnCheckedChangeListener {
        C3642l() {
            CallerActivity.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (z) {
                C3711a1.m24592R2(Boolean.TRUE);
            } else {
                C3711a1.m24592R2(Boolean.FALSE);
            }
        }
    }

    /* renamed from: com.allinone.callerid.start.CallerActivity$m */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/CallerActivity$m.class */
    public class C3643m implements CompoundButton.OnCheckedChangeListener {
        C3643m() {
            CallerActivity.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (z) {
                C3810q.m24071b().m24070c("open_xuanfu_unknow");
                C3711a1.m24561a2(true);
                return;
            }
            C3810q.m24071b().m24070c("close_xuanfu_unknow");
            C3711a1.m24561a2(false);
        }
    }

    /* renamed from: com.allinone.callerid.start.CallerActivity$n */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/CallerActivity$n.class */
    public class C3644n implements CompoundButton.OnCheckedChangeListener {
        C3644n() {
            CallerActivity.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (z) {
                C3810q.m24071b().m24070c("open_xuanfu_contact");
                C3711a1.m24557b2(true);
                return;
            }
            C3810q.m24071b().m24070c("close_xuanfu_contact");
            C3711a1.m24557b2(false);
        }
    }

    /* renamed from: com.allinone.callerid.start.CallerActivity$o */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/CallerActivity$o.class */
    public class C3645o implements CompoundButton.OnCheckedChangeListener {
        C3645o() {
            CallerActivity.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (z) {
                C3810q.m24071b().m24070c("open_xuanfu_missed");
                C3711a1.m24589S1(true);
                return;
            }
            C3810q.m24071b().m24070c("close_xuanfu_missed");
            C3711a1.m24589S1(false);
        }
    }

    /* renamed from: com.allinone.callerid.start.CallerActivity$p */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/CallerActivity$p.class */
    public class C3646p implements CompoundButton.OnCheckedChangeListener {
        C3646p() {
            CallerActivity.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (z) {
                C3711a1.m24549d2(0);
                CallerActivity.this.f11674x.setChecked(false);
                return;
            }
            C3711a1.m24549d2(1);
            CallerActivity.this.f11674x.setChecked(true);
        }
    }

    /* renamed from: com.allinone.callerid.start.CallerActivity$q */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/CallerActivity$q.class */
    private static class RunnableC3647q implements Runnable {

        /* renamed from: d */
        final WeakReference<CallerActivity> f11693d;

        RunnableC3647q(CallerActivity callerActivity) {
            this.f11693d = new WeakReference<>(callerActivity);
        }

        @Override // java.lang.Runnable
        public void run() {
            CallerActivity callerActivity = this.f11693d.get();
            if (callerActivity == null || callerActivity.isFinishing()) {
                return;
            }
            C3711a1.m24641F1(1);
            C3711a1.m24525j2(1000);
        }
    }

    /* renamed from: com.allinone.callerid.start.CallerActivity$r */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/CallerActivity$r.class */
    private static class RunnableC3648r implements Runnable {

        /* renamed from: d */
        final WeakReference<CallerActivity> f11694d;

        RunnableC3648r(CallerActivity callerActivity) {
            this.f11694d = new WeakReference<>(callerActivity);
        }

        @Override // java.lang.Runnable
        public void run() {
            CallerActivity callerActivity = this.f11694d.get();
            if (callerActivity == null || callerActivity.isFinishing()) {
                return;
            }
            C3711a1.m24641F1(-1);
            C3720d.m24423g(callerActivity.getApplicationContext());
        }
    }

    /* renamed from: com.allinone.callerid.start.CallerActivity$s */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/CallerActivity$s.class */
    private static class RunnableC3649s implements Runnable {

        /* renamed from: d */
        final WeakReference<CallerActivity> f11695d;

        RunnableC3649s(CallerActivity callerActivity) {
            this.f11695d = new WeakReference<>(callerActivity);
        }

        @Override // java.lang.Runnable
        public void run() {
            CallerActivity callerActivity = this.f11695d.get();
            if (callerActivity == null || callerActivity.isFinishing()) {
                return;
            }
            C3711a1.m24641F1(0);
            C3711a1.m24525j2(0);
        }
    }

    /* renamed from: c0 */
    private void m24766c0() {
        TextView textView = (TextView) findViewById(R$id.tv_caller_id);
        TextView textView2 = (TextView) findViewById(R$id.tv_caller_id_tip);
        TextView textView3 = (TextView) findViewById(R$id.tv_fast);
        TextView textView4 = (TextView) findViewById(R$id.tv_contacts);
        TextView textView5 = (TextView) findViewById(R$id.tv_normal_preview);
        TextView textView6 = (TextView) findViewById(R$id.tv_simple_preview);
        ((TextView) findViewById(R$id.tv_normal)).setTypeface(this.f11672v);
        textView5.setTypeface(this.f11672v);
        textView6.setTypeface(this.f11672v);
        ((TextView) findViewById(R$id.tv_simple)).setTypeface(this.f11672v);
        ((TextView) findViewById(R$id.tv_simple_preview)).setTypeface(this.f11672v);
        ((TextView) findViewById(R$id.tv_missed_notifi)).setTypeface(this.f11672v);
        TextView textView7 = (TextView) findViewById(R$id.tv_top);
        TextView textView8 = (TextView) findViewById(R$id.tv_top_preview);
        this.f11675y = (RadioButton) findViewById(R$id.radio_top);
        TextView textView9 = (TextView) findViewById(R$id.tv_bottom);
        TextView textView10 = (TextView) findViewById(R$id.tv_bottom_preview);
        this.f11676z = (RadioButton) findViewById(R$id.radio_bottom);
        TextView textView11 = (TextView) findViewById(R$id.tv_default);
        TextView textView12 = (TextView) findViewById(R$id.tv_default_preview);
        this.f11670A = (RadioButton) findViewById(R$id.radio_default);
        ((TextView) findViewById(R$id.tv_pos_title)).setTypeface(this.f11672v);
        textView7.setTypeface(this.f11672v);
        textView8.setTypeface(this.f11672v);
        textView9.setTypeface(this.f11672v);
        textView10.setTypeface(this.f11672v);
        textView11.setTypeface(this.f11672v);
        textView12.setTypeface(this.f11672v);
        textView5.setOnClickListener(new View$OnClickListenerC3639i());
        textView6.setOnClickListener(new View$OnClickListenerC3640j());
        Switch r0 = (Switch) findViewById(R$id.switch_caller);
        if (C3711a1.m24487t0()) {
            r0.setChecked(true);
        } else {
            r0.setChecked(false);
        }
        Switch r02 = (Switch) findViewById(R$id.switch_contacts);
        if (C3711a1.m24483u0()) {
            r02.setChecked(true);
        } else {
            r02.setChecked(false);
        }
        Switch r03 = (Switch) findViewById(R$id.switch_incoming_hangup);
        r03.setOnCheckedChangeListener(new C3641k());
        if (C3711a1.m24501p2().booleanValue()) {
            r03.setChecked(true);
        } else {
            r03.setChecked(false);
        }
        Switch r04 = (Switch) findViewById(R$id.switch_outgoing_hangup);
        r04.setOnCheckedChangeListener(new C3642l());
        if (C3711a1.m24465y2().booleanValue()) {
            r04.setChecked(true);
        } else {
            r04.setChecked(false);
        }
        Switch r05 = (Switch) findViewById(R$id.switch_missed_notifi);
        if (C3711a1.m24511n0()) {
            r05.setChecked(true);
        } else {
            r05.setChecked(false);
        }
        r0.setOnCheckedChangeListener(new C3643m());
        r02.setOnCheckedChangeListener(new C3644n());
        r05.setOnCheckedChangeListener(new C3645o());
        this.f11673w = (RadioButton) findViewById(R$id.radio_normal);
        this.f11674x = (RadioButton) findViewById(R$id.radio_simple);
        int m24475w0 = C3711a1.m24475w0();
        if (m24475w0 == 0) {
            this.f11673w.setChecked(true);
            this.f11674x.setChecked(false);
        } else if (m24475w0 == 1) {
            this.f11674x.setChecked(true);
            this.f11673w.setChecked(false);
        }
        this.f11673w.setOnCheckedChangeListener(new C3646p());
        this.f11674x.setOnCheckedChangeListener(new C3631a());
        int m24563a0 = C3711a1.m24563a0();
        if (m24563a0 == -1) {
            this.f11670A.setChecked(true);
            this.f11675y.setChecked(false);
            this.f11676z.setChecked(false);
        } else if (m24563a0 == 0) {
            this.f11670A.setChecked(false);
            this.f11675y.setChecked(true);
            this.f11676z.setChecked(false);
        } else if (m24563a0 == 1) {
            this.f11670A.setChecked(false);
            this.f11675y.setChecked(false);
            this.f11676z.setChecked(true);
        }
        this.f11675y.setOnCheckedChangeListener(new C3632b());
        this.f11676z.setOnCheckedChangeListener(new C3633c());
        this.f11670A.setOnCheckedChangeListener(new C3634d());
        textView8.setOnClickListener(new View$OnClickListenerC3635e());
        textView10.setOnClickListener(new View$OnClickListenerC3636f());
        textView12.setOnClickListener(new View$OnClickListenerC3637g());
        ((TextView) findViewById(R$id.tv_incoming_hangup)).setTypeface(this.f11672v);
        ((TextView) findViewById(R$id.tv_outgoing_hangup)).setTypeface(this.f11672v);
        textView3.setTypeface(this.f11672v);
        textView4.setTypeface(this.f11672v);
        textView.setTypeface(this.f11672v);
        textView2.setTypeface(this.f11672v);
        ((TextView) findViewById(R$id.tv_style)).setTypeface(this.f11672v);
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.activity_caller_id);
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue() && Build.VERSION.SDK_INT >= 17) {
            getWindow().getDecorView().setLayoutDirection(1);
        }
        this.f11672v = Typeface.createFromAsset(getAssets(), "Roboto-Regular.ttf");
        ImageView imageView = (ImageView) findViewById(R$id.lb_caller_back);
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue()) {
            imageView.setImageResource(R$drawable.ic_back_oppo);
        }
        imageView.setOnClickListener(new View$OnClickListenerC3638h());
        m24766c0();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            finish();
            overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }
}
