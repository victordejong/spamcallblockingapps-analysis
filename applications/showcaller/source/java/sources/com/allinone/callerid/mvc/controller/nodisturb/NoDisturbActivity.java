package com.allinone.callerid.mvc.controller.nodisturb;

import android.app.AlertDialog;
import android.app.TimePickerDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Typeface;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.TimePicker;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$string;
import com.allinone.callerid.bean.WeekInfo;
import com.allinone.callerid.customview.BlockLinearLayout;
import com.allinone.callerid.dialog.C2600m;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.p162i.p163a.p181l.AbstractC2896c;
import com.allinone.callerid.p162i.p163a.p181l.C2897d;
import com.allinone.callerid.receiver.LocalBroadcastReceiver;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3771i;
import com.allinone.callerid.util.C3799l0;
import com.allinone.callerid.util.C3810q;
import com.allinone.callerid.util.p203i1.C3773a;
import com.allinone.callerid.util.p204j1.C3776a;
import java.util.ArrayList;
import java.util.Iterator;
import p020b.p067p.p068a.C1764a;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity.class */
public class NoDisturbActivity extends DisturbBaseActivity implements View.OnClickListener {

    /* renamed from: A */
    private TextView f11028A;

    /* renamed from: B */
    private TextView f11029B;

    /* renamed from: C */
    private TextView f11030C;

    /* renamed from: D */
    private CheckBox f11031D;

    /* renamed from: E */
    private CheckBox f11032E;

    /* renamed from: F */
    private LinearLayout f11033F;

    /* renamed from: G */
    private BlockLinearLayout f11034G;

    /* renamed from: I */
    private int f11036I;

    /* renamed from: J */
    private int f11037J;

    /* renamed from: K */
    private int f11038K;

    /* renamed from: L */
    private int f11039L;

    /* renamed from: M */
    private ArrayList<WeekInfo> f11040M;

    /* renamed from: N */
    private LocalBroadcastReceiver f11041N;

    /* renamed from: O */
    private Switch f11042O;

    /* renamed from: w */
    private ImageView f11044w;

    /* renamed from: x */
    private Switch f11045x;

    /* renamed from: y */
    private Switch f11046y;

    /* renamed from: z */
    private TextView f11047z;

    /* renamed from: v */
    private final String f11043v = "NoDisturbActivity";

    /* renamed from: H */
    private boolean f11035H = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.mvc.controller.nodisturb.NoDisturbActivity$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$a.class */
    public class C3440a implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: com.allinone.callerid.mvc.controller.nodisturb.NoDisturbActivity$a$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$a$a.class */
        class C3441a implements C3776a.AbstractC3783g {

            /* renamed from: a */
            final /* synthetic */ boolean f11049a;

            C3441a(boolean z) {
                C3440a.this = r4;
                this.f11049a = z;
            }

            @Override // com.allinone.callerid.util.p204j1.C3776a.AbstractC3783g
            /* renamed from: a */
            public void mo23968a() {
                if (C3776a.m24161d(NoDisturbActivity.this.getApplicationContext())) {
                    C3773a.m24174p(this.f11049a);
                } else {
                    NoDisturbActivity.this.f11031D.setChecked(false);
                }
            }
        }

        C3440a() {
            NoDisturbActivity.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("wbb", "isChecked: " + z);
            }
            if (C3776a.m24161d(NoDisturbActivity.this)) {
                C3773a.m24174p(z);
            } else {
                C3776a.m24152m(NoDisturbActivity.this, new C3441a(z));
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.nodisturb.NoDisturbActivity$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$b.class */
    class C3442b implements AbstractC2896c {
        C3442b() {
            NoDisturbActivity.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p181l.AbstractC2896c
        /* renamed from: a */
        public void mo25244a(ArrayList<WeekInfo> arrayList) {
            if (arrayList == null || arrayList.size() <= 0) {
                return;
            }
            NoDisturbActivity.this.f11040M = arrayList;
            WeekInfo weekInfo = arrayList.get(arrayList.size() - 1);
            if (weekInfo != null && weekInfo.getWeekId() == -1 && weekInfo.isSelect()) {
                NoDisturbActivity.this.f11029B.setText(NoDisturbActivity.this.getString(R$string.All));
                return;
            }
            NoDisturbActivity.this.f11029B.setText("");
            StringBuilder sb = new StringBuilder();
            Iterator<WeekInfo> it = arrayList.iterator();
            while (it.hasNext()) {
                WeekInfo next = it.next();
                if (next.isSelect() && next.getWeekId() != -1) {
                    sb.append(next.getWeek());
                    sb.append(",");
                }
            }
            NoDisturbActivity.this.f11029B.setText(sb.toString());
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.nodisturb.NoDisturbActivity$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$c.class */
    class DialogInterface$OnClickListenerC3443c implements DialogInterface.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ ArrayList f11052d;

        DialogInterface$OnClickListenerC3443c(ArrayList arrayList) {
            NoDisturbActivity.this = r4;
            this.f11052d = arrayList;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            if (i < this.f11052d.size()) {
                if (!NoDisturbActivity.this.getString(R$string.Ring_Silent).equals((String) this.f11052d.get(i))) {
                    C3773a.m24177m(0);
                    NoDisturbActivity.this.f11030C.setText(NoDisturbActivity.this.getString(R$string.reject_automatically));
                } else if (!C2600m.m27037j(NoDisturbActivity.this)) {
                    NoDisturbActivity.this.f11035H = true;
                } else {
                    C3773a.m24177m(1);
                    NoDisturbActivity.this.f11030C.setText(NoDisturbActivity.this.getString(R$string.Ring_Silent));
                }
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.nodisturb.NoDisturbActivity$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$d.class */
    class C3444d implements CompoundButton.OnCheckedChangeListener {
        C3444d() {
            NoDisturbActivity.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("wbb", "isChecked: " + z);
            }
            C3773a.m24173q(z);
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.nodisturb.NoDisturbActivity$e */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$e.class */
    class C3445e implements LocalBroadcastReceiver.AbstractC3574a {
        C3445e() {
            NoDisturbActivity.this = r4;
        }

        @Override // com.allinone.callerid.receiver.LocalBroadcastReceiver.AbstractC3574a
        /* renamed from: a */
        public void mo24962a(Intent intent) {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("wbb", "勿扰模式总开关");
            }
            if (C3773a.m24181i()) {
                NoDisturbActivity.this.f11045x.setChecked(true);
                NoDisturbActivity.this.f11034G.setAlpha(1.0f);
                NoDisturbActivity.this.f11034G.setClick(false);
                return;
            }
            NoDisturbActivity.this.f11045x.setChecked(false);
            NoDisturbActivity.this.f11034G.setAlpha(0.4f);
            NoDisturbActivity.this.f11034G.setClick(true);
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.nodisturb.NoDisturbActivity$f */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$f.class */
    class C3446f implements CompoundButton.OnCheckedChangeListener {
        C3446f() {
            NoDisturbActivity.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (z) {
                NoDisturbActivity.this.f11033F.setVisibility(0);
                C3773a.m24170t(true);
                return;
            }
            NoDisturbActivity.this.f11033F.setVisibility(8);
            C3773a.m24170t(false);
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.nodisturb.NoDisturbActivity$g */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$g.class */
    class C3447g implements CompoundButton.OnCheckedChangeListener {
        C3447g() {
            NoDisturbActivity.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            C3773a.m24172r(z);
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.nodisturb.NoDisturbActivity$h */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$h.class */
    class C3448h implements CompoundButton.OnCheckedChangeListener {
        C3448h() {
            NoDisturbActivity.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (z) {
                NoDisturbActivity.this.f11034G.setAlpha(1.0f);
                NoDisturbActivity.this.f11034G.setClick(false);
                C3773a.m24171s(true);
                C3799l0.m24109b(NoDisturbActivity.this.getApplicationContext());
                return;
            }
            NoDisturbActivity.this.f11034G.setAlpha(0.4f);
            NoDisturbActivity.this.f11034G.setClick(true);
            C3773a.m24171s(false);
            C3799l0.m24110a(NoDisturbActivity.this.getApplicationContext());
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.nodisturb.NoDisturbActivity$i */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$i.class */
    class C3449i implements AbstractC2896c {
        C3449i() {
            NoDisturbActivity.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p181l.AbstractC2896c
        /* renamed from: a */
        public void mo25244a(ArrayList<WeekInfo> arrayList) {
            NoDisturbActivity.this.f11040M = arrayList;
            if (arrayList == null || arrayList.size() <= 0) {
                return;
            }
            WeekInfo weekInfo = arrayList.get(arrayList.size() - 1);
            if (weekInfo != null && weekInfo.getWeekId() == -1 && weekInfo.isSelect()) {
                NoDisturbActivity.this.f11029B.setText(NoDisturbActivity.this.getString(R$string.All));
                return;
            }
            NoDisturbActivity.this.f11029B.setText("");
            Iterator<WeekInfo> it = arrayList.iterator();
            while (it.hasNext()) {
                WeekInfo next = it.next();
                if (next.isSelect() && next.getWeekId() != -1) {
                    NoDisturbActivity.this.f11029B.append(next.getWeek());
                    NoDisturbActivity.this.f11029B.append(",");
                }
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.nodisturb.NoDisturbActivity$j */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$j.class */
    class C3450j implements TimePickerDialog.OnTimeSetListener {
        C3450j() {
            NoDisturbActivity.this = r4;
        }

        @Override // android.app.TimePickerDialog.OnTimeSetListener
        public void onTimeSet(TimePicker timePicker, int i, int i2) {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("wbb", "hourOfDay: " + i);
                C3718c0.m24436a("wbb", "minute: " + i2);
            }
            NoDisturbActivity.this.f11036I = i;
            NoDisturbActivity.this.f11037J = i2;
            NoDisturbActivity.this.f11047z.setText(C3771i.m24198l(i, i2));
            C3773a.m24179k(i);
            C3773a.m24178l(i2);
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.nodisturb.NoDisturbActivity$k */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$k.class */
    class C3451k implements TimePickerDialog.OnTimeSetListener {
        C3451k() {
            NoDisturbActivity.this = r4;
        }

        @Override // android.app.TimePickerDialog.OnTimeSetListener
        public void onTimeSet(TimePicker timePicker, int i, int i2) {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("wbb", "hourOfDay: " + i);
                C3718c0.m24436a("wbb", "minute: " + i2);
            }
            NoDisturbActivity.this.f11038K = i;
            NoDisturbActivity.this.f11039L = i2;
            C3773a.m24176n(i);
            C3773a.m24175o(i2);
            NoDisturbActivity.this.m25245o0(C3771i.m24198l(i, i2));
        }
    }

    /* renamed from: o0 */
    public void m25245o0(String str) {
        int i = this.f11038K;
        int i2 = this.f11036I;
        if (i < i2) {
            this.f11028A.setText(str);
            this.f11028A.append(" ");
            this.f11028A.append(getString(R$string.Next_day));
        } else if (i != i2) {
            this.f11028A.setText(str);
        } else if (this.f11039L <= this.f11037J) {
            this.f11028A.setText(str);
        } else {
            this.f11028A.setText(str);
            this.f11028A.append(" ");
            this.f11028A.append(getString(R$string.Next_day));
        }
    }

    @Override // com.allinone.callerid.mvc.controller.nodisturb.DisturbBaseActivity
    /* renamed from: W */
    public void mo25261W() {
        super.mo25261W();
        if (this.f11000u) {
            this.f11044w.setRotation(180.0f);
        }
        if (C3773a.m24181i()) {
            this.f11045x.setChecked(true);
            this.f11034G.setAlpha(1.0f);
            this.f11034G.setClick(false);
        } else {
            this.f11045x.setChecked(false);
            this.f11034G.setAlpha(0.4f);
            this.f11034G.setClick(true);
        }
        this.f11045x.setOnCheckedChangeListener(new C3448h());
        if (C3773a.m24180j()) {
            this.f11033F.setVisibility(0);
            this.f11046y.setChecked(true);
        } else {
            this.f11033F.setVisibility(8);
            this.f11046y.setChecked(false);
        }
        int m24187c = C3773a.m24187c();
        if (m24187c == 0) {
            this.f11030C.setText(getString(R$string.reject_automatically));
        } else if (m24187c == 1) {
            this.f11030C.setText(getString(R$string.Ring_Silent));
        }
        if (C3773a.m24182h()) {
            this.f11042O.setChecked(true);
        } else {
            this.f11042O.setChecked(false);
        }
        this.f11036I = C3773a.m24189a();
        int m24188b = C3773a.m24188b();
        this.f11037J = m24188b;
        this.f11047z.setText(C3771i.m24198l(this.f11036I, m24188b));
        this.f11038K = C3773a.m24186d();
        int m24185e = C3773a.m24185e();
        this.f11039L = m24185e;
        m25245o0(C3771i.m24198l(this.f11038K, m24185e));
        this.f11031D.setChecked(C3773a.m24184f());
        this.f11032E.setChecked(C3773a.m24183g());
        C2897d.m26449b(new C3449i());
    }

    @Override // com.allinone.callerid.mvc.controller.nodisturb.DisturbBaseActivity
    /* renamed from: X */
    protected void mo25260X() {
        try {
            setContentView(R$layout.activity_no_disturb);
            this.f11044w = (ImageView) findViewById(R$id.disturb_black);
            TextView textView = (TextView) findViewById(R$id.disturb_title);
            LinearLayout linearLayout = (LinearLayout) findViewById(R$id.disturb_turn_on_new_click);
            TextView textView2 = (TextView) findViewById(R$id.disturb_turn_on_new_title);
            this.f11045x = (Switch) findViewById(R$id.disturb_turn_on_new_switch);
            LinearLayout linearLayout2 = (LinearLayout) findViewById(R$id.disturb_scheduled_click);
            TextView textView3 = (TextView) findViewById(R$id.disturb_scheduled_title);
            this.f11046y = (Switch) findViewById(R$id.disturb_scheduled_switch);
            ConstraintLayout constraintLayout = (ConstraintLayout) findViewById(R$id.disturb_from_click);
            TextView textView4 = (TextView) findViewById(R$id.disturb_from_title);
            this.f11047z = (TextView) findViewById(R$id.disturb_from_time);
            ConstraintLayout constraintLayout2 = (ConstraintLayout) findViewById(R$id.disturb_to_click);
            TextView textView5 = (TextView) findViewById(R$id.disturb_to_title);
            this.f11028A = (TextView) findViewById(R$id.disturb_to_time);
            ConstraintLayout constraintLayout3 = (ConstraintLayout) findViewById(R$id.disturb_repeat_click);
            TextView textView6 = (TextView) findViewById(R$id.disturb_repeat_title);
            this.f11029B = (TextView) findViewById(R$id.disturb_repeat_time);
            LinearLayout linearLayout3 = (LinearLayout) findViewById(R$id.disturb_block_method_click);
            TextView textView7 = (TextView) findViewById(R$id.disturb_block_method_title);
            this.f11030C = (TextView) findViewById(R$id.disturb_block_method_info);
            ImageView imageView = (ImageView) findViewById(R$id.disturb_block_method_image);
            TextView textView8 = (TextView) findViewById(R$id.disturb_allow_calls);
            ConstraintLayout constraintLayout4 = (ConstraintLayout) findViewById(R$id.disturb_allow_contacts_click);
            TextView textView9 = (TextView) findViewById(R$id.disturb_allow_contacts_title);
            this.f11031D = (CheckBox) findViewById(R$id.disturb_allow_contacts_check);
            ConstraintLayout constraintLayout5 = (ConstraintLayout) findViewById(R$id.disturb_allow_custom_click);
            TextView textView10 = (TextView) findViewById(R$id.disturb_allow_custom_title);
            ImageView imageView2 = (ImageView) findViewById(R$id.disturb_allow_custom_select);
            this.f11032E = (CheckBox) findViewById(R$id.disturb_allow_custom_check);
            LinearLayout linearLayout4 = (LinearLayout) findViewById(R$id.disturb_repeat_call);
            TextView textView11 = (TextView) findViewById(R$id.disturb_repeat_call_title);
            TextView textView12 = (TextView) findViewById(R$id.disturb_repeat_call_tip);
            this.f11042O = (Switch) findViewById(R$id.disturb_repeat_call_switch);
            this.f11033F = (LinearLayout) findViewById(R$id.disturb_scheduled_time_layout);
            this.f11034G = (BlockLinearLayout) findViewById(R$id.setting_layout);
            Typeface m24359b = C3739f1.m24359b();
            textView.setTypeface(m24359b);
            textView2.setTypeface(m24359b);
            textView3.setTypeface(m24359b);
            textView4.setTypeface(m24359b);
            this.f11047z.setTypeface(m24359b);
            textView5.setTypeface(m24359b);
            this.f11028A.setTypeface(m24359b);
            textView6.setTypeface(m24359b);
            this.f11029B.setTypeface(m24359b);
            textView7.setTypeface(m24359b);
            this.f11030C.setTypeface(m24359b);
            textView8.setTypeface(m24359b);
            textView9.setTypeface(m24359b);
            textView10.setTypeface(m24359b);
            textView11.setTypeface(m24359b);
            textView12.setTypeface(m24359b);
            this.f11044w.setOnClickListener(this);
            linearLayout.setOnClickListener(this);
            linearLayout2.setOnClickListener(this);
            constraintLayout.setOnClickListener(this);
            constraintLayout2.setOnClickListener(this);
            constraintLayout3.setOnClickListener(this);
            linearLayout3.setOnClickListener(this);
            imageView2.setOnClickListener(this);
            linearLayout4.setOnClickListener(this);
            this.f11031D.setOnCheckedChangeListener(new C3440a());
            this.f11032E.setOnCheckedChangeListener(new C3444d());
            this.f11041N = new LocalBroadcastReceiver(new C3445e());
            this.f11046y.setOnCheckedChangeListener(new C3446f());
            this.f11042O.setOnCheckedChangeListener(new C3447g());
            C1764a.m28939b(this).m28938c(this.f11041N, new IntentFilter("com.allinone.callerid.DISTURB_NOTIFICATION_UPDATA"));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R$id.disturb_allow_custom_select /* 2131296596 */:
                startActivity(new Intent(this, DisturbCustomActivity.class));
                overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                return;
            case R$id.disturb_black /* 2131296598 */:
                m25281V();
                return;
            case R$id.disturb_block_method_click /* 2131296599 */:
                ArrayList arrayList = new ArrayList();
                arrayList.add(getString(R$string.reject_automatically));
                arrayList.add(getString(R$string.Ring_Silent));
                new AlertDialog.Builder(this).setAdapter(new ArrayAdapter(this, 17367043, arrayList), new DialogInterface$OnClickListenerC3443c(arrayList)).setCancelable(true).show();
                return;
            case R$id.disturb_from_click /* 2131296609 */:
                new TimePickerDialog(this, new C3450j(), this.f11036I, this.f11037J, C3771i.m24194p(this)).show();
                return;
            case R$id.disturb_repeat_call /* 2131296612 */:
                if (this.f11042O.isChecked()) {
                    this.f11042O.setChecked(false);
                    C3773a.m24172r(false);
                    return;
                }
                this.f11042O.setChecked(true);
                C3773a.m24172r(true);
                return;
            case R$id.disturb_repeat_click /* 2131296616 */:
                C2600m.m27042e(this, this.f11040M, new C3442b());
                return;
            case R$id.disturb_scheduled_click /* 2131296619 */:
                if (this.f11046y.isChecked()) {
                    this.f11046y.setChecked(false);
                    this.f11033F.setVisibility(8);
                    C3773a.m24170t(false);
                    return;
                }
                this.f11046y.setChecked(true);
                this.f11033F.setVisibility(0);
                C3773a.m24170t(true);
                return;
            case R$id.disturb_to_click /* 2131296624 */:
                new TimePickerDialog(this, new C3451k(), this.f11038K, this.f11039L, C3771i.m24194p(this)).show();
                return;
            case R$id.disturb_turn_on_new_click /* 2131296627 */:
                if (this.f11045x.isChecked()) {
                    this.f11045x.setChecked(false);
                    return;
                } else {
                    this.f11045x.setChecked(true);
                    return;
                }
            default:
                return;
        }
    }

    @Override // com.allinone.callerid.mvc.controller.nodisturb.DisturbBaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        if (this.f11041N != null) {
            C1764a.m28939b(this).m28936e(this.f11041N);
        }
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

    @Override // com.allinone.callerid.mvc.controller.nodisturb.DisturbBaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
    }

    @Override // com.allinone.callerid.mvc.controller.nodisturb.DisturbBaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (!this.f11035H || !C3776a.m24153l()) {
            return;
        }
        C3773a.m24177m(1);
        this.f11030C.setText(getString(R$string.Ring_Silent));
        this.f11035H = false;
        if (!EZCallApplication.m26146c().f9912f) {
            C3810q.m24071b().m24070c("openNotificationManagerCount");
        }
        EZCallApplication.m26146c().f9912f = true;
    }
}
