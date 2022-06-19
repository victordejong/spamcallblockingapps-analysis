package com.allinone.callerid.mvc.controller.recorder;

import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Typeface;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.DialogInterfaceC0146a;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.C0951c;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$string;
import com.allinone.callerid.bean.recorder.CustomRecord;
import com.allinone.callerid.customview.BaseEditText;
import com.allinone.callerid.main.BaseActivity;
import com.allinone.callerid.p136b.p139z.C2263d;
import com.allinone.callerid.p157f.p159k.C2643a;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
import com.github.clans.fab.FloatingActionButton;
import com.github.clans.fab.FloatingActionMenu;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/CustomActivity.class */
public class CustomActivity extends BaseActivity implements View.OnClickListener {

    /* renamed from: A */
    private FloatingActionMenu f11116A;

    /* renamed from: B */
    private FloatingActionButton f11117B;

    /* renamed from: C */
    private FloatingActionButton f11118C;

    /* renamed from: D */
    private FloatingActionButton f11119D;

    /* renamed from: E */
    private ConstraintLayout f11120E;

    /* renamed from: F */
    private ImageView f11121F;

    /* renamed from: G */
    private TextView f11122G;

    /* renamed from: H */
    private ImageView f11123H;

    /* renamed from: I */
    private ImageView f11124I;

    /* renamed from: J */
    private C2263d f11125J;

    /* renamed from: v */
    private Typeface f11129v;

    /* renamed from: w */
    private LinearLayout f11130w;

    /* renamed from: x */
    private ImageView f11131x;

    /* renamed from: y */
    private RecyclerView f11132y;

    /* renamed from: z */
    private LinearLayout f11133z;

    /* renamed from: u */
    private final String f11128u = "CustomActivity";

    /* renamed from: K */
    public boolean f11126K = false;

    /* renamed from: L */
    public int f11127L = 0;

    /* renamed from: com.allinone.callerid.mvc.controller.recorder.CustomActivity$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/CustomActivity$a.class */
    public class RunnableC3467a implements Runnable {

        /* renamed from: com.allinone.callerid.mvc.controller.recorder.CustomActivity$a$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/CustomActivity$a$a.class */
        class RunnableC3468a implements Runnable {

            /* renamed from: d */
            final /* synthetic */ ArrayList f11135d;

            RunnableC3468a(ArrayList arrayList) {
                RunnableC3467a.this = r4;
                this.f11135d = arrayList;
            }

            @Override // java.lang.Runnable
            public void run() {
                ArrayList arrayList = this.f11135d;
                if (arrayList == null || arrayList.size() <= 0) {
                    CustomActivity.this.f11133z.setVisibility(0);
                    CustomActivity.this.f11132y.setVisibility(8);
                    return;
                }
                CustomActivity.this.f11125J.m27781A(this.f11135d, true);
                CustomActivity.this.f11125J.m31967i();
                CustomActivity.this.f11133z.setVisibility(8);
                CustomActivity.this.f11132y.setVisibility(0);
            }
        }

        RunnableC3467a() {
            CustomActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            CustomActivity.this.runOnUiThread(new RunnableC3468a((ArrayList) C2643a.m26973c().m26971e(CustomActivity.this.f11127L)));
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.recorder.CustomActivity$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/CustomActivity$b.class */
    public class DialogInterface$OnClickListenerC3469b implements DialogInterface.OnClickListener {
        DialogInterface$OnClickListenerC3469b() {
            CustomActivity.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            dialogInterface.dismiss();
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.recorder.CustomActivity$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/CustomActivity$c.class */
    public class DialogInterface$OnClickListenerC3470c implements DialogInterface.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ BaseEditText f11138d;

        /* renamed from: e */
        final /* synthetic */ BaseEditText f11139e;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.allinone.callerid.mvc.controller.recorder.CustomActivity$c$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/CustomActivity$c$a.class */
        public class RunnableC3471a implements Runnable {

            /* renamed from: com.allinone.callerid.mvc.controller.recorder.CustomActivity$c$a$a */
            /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/CustomActivity$c$a$a.class */
            class RunnableC3472a implements Runnable {

                /* renamed from: d */
                final /* synthetic */ CustomRecord f11142d;

                RunnableC3472a(CustomRecord customRecord) {
                    RunnableC3471a.this = r4;
                    this.f11142d = customRecord;
                }

                @Override // java.lang.Runnable
                public void run() {
                    if (CustomActivity.this.f11125J != null) {
                        CustomActivity.this.f11125J.m27780B(this.f11142d, false);
                        CustomActivity.this.f11125J.m31966j(0);
                        if (CustomActivity.this.f11125J.m27779C() != null) {
                            CustomActivity.this.f11125J.m31965k(0, CustomActivity.this.f11125J.m27779C().size());
                            if (CustomActivity.this.f11132y.getVisibility() == 8) {
                                CustomActivity.this.f11132y.setVisibility(0);
                                CustomActivity.this.f11133z.setVisibility(8);
                            }
                        }
                        CustomActivity customActivity = CustomActivity.this;
                        Toast.makeText(customActivity, customActivity.getString(R$string.custom_addnumber_success), 0).show();
                    }
                }
            }

            RunnableC3471a() {
                DialogInterface$OnClickListenerC3470c.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                CustomRecord customRecord = new CustomRecord();
                customRecord.setPhone(DialogInterface$OnClickListenerC3470c.this.f11138d.getText().toString());
                customRecord.setName(DialogInterface$OnClickListenerC3470c.this.f11139e.getText().toString());
                customRecord.setType(CustomActivity.this.f11127L);
                customRecord.setSelect(false);
                if (C2643a.m26973c().m26975a(customRecord)) {
                    CustomActivity.this.runOnUiThread(new RunnableC3472a(customRecord));
                }
            }
        }

        DialogInterface$OnClickListenerC3470c(BaseEditText baseEditText, BaseEditText baseEditText2) {
            CustomActivity.this = r4;
            this.f11138d = baseEditText;
            this.f11139e = baseEditText2;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            dialogInterface.dismiss();
            new Thread(new RunnableC3471a()).start();
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.recorder.CustomActivity$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/CustomActivity$d.class */
    public static class AsyncTaskC3473d extends AsyncTask<Void, Void, String> {

        /* renamed from: a */
        private WeakReference<CustomActivity> f11144a;

        AsyncTaskC3473d(CustomActivity customActivity) {
            this.f11144a = new WeakReference<>(customActivity);
        }

        /* renamed from: a */
        public String doInBackground(Void... voidArr) {
            CustomActivity customActivity = this.f11144a.get();
            if (customActivity == null || customActivity.isFinishing()) {
                return "";
            }
            try {
                if (customActivity.f11125J.m27767G() == null || customActivity.f11125J.m27767G().size() <= 0) {
                    return "";
                }
                Iterator<CustomRecord> it = customActivity.f11125J.m27767G().iterator();
                while (it.hasNext()) {
                    CustomRecord next = it.next();
                    if (next.isSelect()) {
                        C2643a.m26973c().m26974b(next.getPhone());
                        if (customActivity.f11125J.m27779C() != null) {
                            customActivity.f11125J.m27779C().remove(next);
                        }
                    }
                }
                return "success";
            } catch (Exception e) {
                e.printStackTrace();
                return "";
            }
        }

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            CustomActivity customActivity = this.f11144a.get();
            if (customActivity == null || customActivity.isFinishing() || !"success".equals(str)) {
                return;
            }
            customActivity.f11125J.m31967i();
            customActivity.f11125J.m27767G().clear();
            customActivity.m25203h0();
            Toast.makeText(customActivity, customActivity.getString(R$string.delete_success), 0).show();
            customActivity.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
            customActivity.m25201j0();
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.recorder.CustomActivity$e */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/CustomActivity$e.class */
    public static class AsyncTaskC3474e extends AsyncTask<Void, Void, Void> {

        /* renamed from: a */
        private WeakReference<CustomActivity> f11145a;

        AsyncTaskC3474e(CustomActivity customActivity) {
            this.f11145a = new WeakReference<>(customActivity);
        }

        /* renamed from: a */
        public Void doInBackground(Void... voidArr) {
            CustomActivity customActivity = this.f11145a.get();
            if (customActivity == null || customActivity.isFinishing()) {
                return null;
            }
            try {
                if (customActivity.f11125J.m27779C() == null || customActivity.f11125J.m27779C().size() <= 0 || customActivity.f11125J.m27767G() == null) {
                    return null;
                }
                Iterator<CustomRecord> it = customActivity.f11125J.m27779C().iterator();
                while (it.hasNext()) {
                    it.next().setSelect(false);
                }
                customActivity.f11125J.m27767G().clear();
                return null;
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }

        /* renamed from: b */
        public void onPostExecute(Void r4) {
            super.onPostExecute(r4);
            CustomActivity customActivity = this.f11145a.get();
            if (customActivity == null || customActivity.isFinishing()) {
                return;
            }
            customActivity.f11125J.m31967i();
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.recorder.CustomActivity$f */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/CustomActivity$f.class */
    public static class AsyncTaskC3475f extends AsyncTask<Void, Void, Void> {

        /* renamed from: a */
        private WeakReference<CustomActivity> f11146a;

        AsyncTaskC3475f(CustomActivity customActivity) {
            this.f11146a = new WeakReference<>(customActivity);
        }

        /* renamed from: a */
        public Void doInBackground(Void... voidArr) {
            CustomActivity customActivity = this.f11146a.get();
            if (customActivity == null || customActivity.isFinishing()) {
                return null;
            }
            try {
                ArrayList<CustomRecord> m27779C = customActivity.f11125J.m27779C();
                ArrayList<CustomRecord> m27767G = customActivity.f11125J.m27767G();
                if (m27779C == null || m27779C.size() <= 0 || m27767G == null) {
                    return null;
                }
                if (m27767G.size() >= m27779C.size()) {
                    Iterator<CustomRecord> it = m27779C.iterator();
                    while (it.hasNext()) {
                        it.next().setSelect(false);
                    }
                    m27767G.clear();
                    return null;
                }
                m27767G.clear();
                Iterator<CustomRecord> it2 = m27779C.iterator();
                while (it2.hasNext()) {
                    CustomRecord next = it2.next();
                    next.setSelect(true);
                    m27767G.add(next);
                }
                return null;
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }

        /* renamed from: b */
        public void onPostExecute(Void r4) {
            super.onPostExecute(r4);
            CustomActivity customActivity = this.f11146a.get();
            if (customActivity == null || customActivity.isFinishing()) {
                return;
            }
            customActivity.f11125J.m31967i();
            customActivity.m25203h0();
        }
    }

    /* renamed from: a0 */
    private void m25210a0() {
        try {
            View inflate = LayoutInflater.from(this).inflate(R$layout.dialog_custom_number, (ViewGroup) null);
            BaseEditText baseEditText = (BaseEditText) inflate.findViewById(R$id.dialog_custom_name);
            BaseEditText baseEditText2 = (BaseEditText) inflate.findViewById(R$id.dialog_custom_number);
            baseEditText.setTypeface(this.f11129v);
            baseEditText2.setTypeface(this.f11129v);
            DialogInterfaceC0146a.C0147a c0147a = new DialogInterfaceC0146a.C0147a(this);
            c0147a.m35559p(R$string.add);
            c0147a.m35557r(inflate);
            c0147a.m35566i(R$string.cancel_dialog, new DialogInterface$OnClickListenerC3469b());
            c0147a.m35562m(R$string.suggest_submit, new DialogInterface$OnClickListenerC3470c(baseEditText2, baseEditText)).m35574a().show();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b0 */
    private void m25209b0() {
        new AsyncTaskC3473d(this).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    /* renamed from: c0 */
    private void m25208c0() {
        new AsyncTaskC3474e(this).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    /* renamed from: d0 */
    private void m25207d0() {
        this.f11116A.setClosedOnTouchOutside(true);
        this.f11116A.setMenuButtonShowAnimation(AnimationUtils.loadAnimation(this, R$anim.show_from_bottom));
        this.f11116A.setMenuButtonHideAnimation(AnimationUtils.loadAnimation(this, R$anim.hide_to_bottom));
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this);
        linearLayoutManager.m32114z2(1);
        this.f11132y.setLayoutManager(linearLayoutManager);
        this.f11132y.setItemAnimator(new C0951c());
        C2263d c2263d = new C2263d(this, new ArrayList());
        this.f11125J = c2263d;
        this.f11132y.setAdapter(c2263d);
    }

    /* renamed from: e0 */
    private void m25206e0() {
        this.f11131x.setOnClickListener(this);
        this.f11117B.setOnClickListener(this);
        this.f11118C.setOnClickListener(this);
        this.f11119D.setOnClickListener(this);
        this.f11121F.setOnClickListener(this);
        this.f11123H.setOnClickListener(this);
        this.f11124I.setOnClickListener(this);
    }

    /* renamed from: f0 */
    private void m25205f0() {
        this.f11129v = C3739f1.m24359b();
        this.f11120E = (ConstraintLayout) findViewById(R$id.custom_select_ll);
        this.f11121F = (ImageView) findViewById(R$id.custom_select_close);
        this.f11122G = (TextView) findViewById(R$id.custom_select_count);
        this.f11123H = (ImageView) findViewById(R$id.custom_select_all);
        this.f11124I = (ImageView) findViewById(R$id.custom_select_delete);
        this.f11130w = (LinearLayout) findViewById(R$id.main_bar_ll);
        this.f11131x = (ImageView) findViewById(R$id.custon_menu);
        TextView textView = (TextView) findViewById(R$id.custon_title);
        this.f11132y = (RecyclerView) findViewById(R$id.custom_rl);
        this.f11133z = (LinearLayout) findViewById(R$id.custom_empty_ll);
        TextView textView2 = (TextView) findViewById(R$id.custom_empty_text_left);
        FloatingActionMenu floatingActionMenu = (FloatingActionMenu) findViewById(R$id.custom_fb_menu);
        this.f11116A = floatingActionMenu;
        floatingActionMenu.setContentDescription(getResources().getString(R$string.add));
        this.f11117B = (FloatingActionButton) findViewById(R$id.fab_enter_number);
        this.f11118C = (FloatingActionButton) findViewById(R$id.fab_from_contacts);
        this.f11119D = (FloatingActionButton) findViewById(R$id.fab_record_his);
        textView.setTypeface(this.f11129v);
        this.f11122G.setTypeface(this.f11129v);
        textView2.setTypeface(this.f11129v);
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue()) {
            this.f11131x.setImageResource(R$drawable.ic_back_oppo);
        }
    }

    /* renamed from: g0 */
    private void m25204g0() {
        new Thread(new RunnableC3467a()).start();
    }

    /* renamed from: i0 */
    private void m25202i0() {
        new AsyncTaskC3475f(this).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    /* renamed from: h0 */
    public void m25203h0() {
        if (this.f11125J.m27779C() == null || this.f11125J.m27779C().size() <= 0 || this.f11125J.m27767G() == null) {
            this.f11122G.setText("0/0");
            return;
        }
        TextView textView = this.f11122G;
        textView.setText(this.f11125J.m27767G().size() + "/" + this.f11125J.m27779C().size());
    }

    /* renamed from: j0 */
    public void m25201j0() {
        this.f11120E.setVisibility(8);
        this.f11130w.setVisibility(0);
        this.f11126K = false;
        m25208c0();
    }

    /* renamed from: k0 */
    public void m25200k0() {
        this.f11120E.setVisibility(0);
        this.f11130w.setVisibility(8);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.f11126K) {
            m25201j0();
        } else {
            super.onBackPressed();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R$id.custom_select_all /* 2131296529 */:
                m25202i0();
                return;
            case R$id.custom_select_close /* 2131296530 */:
                m25201j0();
                return;
            case R$id.custom_select_delete /* 2131296532 */:
                m25209b0();
                return;
            case R$id.custon_menu /* 2131296540 */:
                finish();
                overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                return;
            case R$id.fab_enter_number /* 2131296693 */:
                m25210a0();
                if (!this.f11116A.m22322s()) {
                    return;
                }
                this.f11116A.m22320u(true);
                return;
            case R$id.fab_from_contacts /* 2131296694 */:
                Intent intent = new Intent(this, CustomAddActivity.class);
                intent.putExtra("customType", this.f11127L);
                intent.putExtra("phoneDataType", 0);
                startActivity(intent);
                overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                if (!this.f11116A.m22322s()) {
                    return;
                }
                this.f11116A.m22320u(true);
                return;
            case R$id.fab_record_his /* 2131296697 */:
                Intent intent2 = new Intent(this, CustomAddActivity.class);
                intent2.putExtra("customType", this.f11127L);
                intent2.putExtra("phoneDataType", 1);
                startActivity(intent2);
                overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                if (!this.f11116A.m22322s()) {
                    return;
                }
                this.f11116A.m22320u(true);
                return;
            default:
                return;
        }
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.activity_custom);
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue() && Build.VERSION.SDK_INT >= 17) {
            getWindow().getDecorView().setLayoutDirection(1);
        }
        this.f11127L = getIntent().getIntExtra("customType", 0);
        m25205f0();
        m25207d0();
        m25206e0();
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        m25204g0();
    }
}
