package com.allinone.callerid.mvc.controller.nodisturb;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Typeface;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.C0586a;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.allinone.callerid.R$attr;
import com.allinone.callerid.R$color;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$string;
import com.allinone.callerid.bean.EZSimpleContact;
import com.allinone.callerid.bean.NoDisturbBean;
import com.allinone.callerid.customview.DeletableEditText;
import com.allinone.callerid.dialog.C2600m;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.p136b.p137a0.C2151b;
import com.allinone.callerid.p162i.p163a.p172g.AbstractC2808b;
import com.allinone.callerid.p162i.p163a.p172g.AbstractC2814f;
import com.allinone.callerid.p162i.p163a.p181l.p182e.AbstractC2900a;
import com.allinone.callerid.p162i.p163a.p181l.p182e.AbstractC2901b;
import com.allinone.callerid.p162i.p163a.p181l.p182e.C2902c;
import com.allinone.callerid.receiver.LocalBroadcastReceiver;
import com.allinone.callerid.search.CallLogBean;
import com.allinone.callerid.util.C3719c1;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.p204j1.C3776a;
import com.github.clans.fab.FloatingActionButton;
import com.github.clans.fab.FloatingActionMenu;
import java.util.ArrayList;
import p020b.p067p.p068a.C1764a;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity.class */
public class DisturbCustomActivity extends DisturbBaseActivity implements View.OnClickListener {

    /* renamed from: A */
    private LocalBroadcastReceiver f11001A;

    /* renamed from: B */
    private Typeface f11002B;

    /* renamed from: C */
    private int f11003C;

    /* renamed from: v */
    private final String f11004v = "DisturbCustomActivity";

    /* renamed from: w */
    private RecyclerView f11005w;

    /* renamed from: x */
    private LinearLayout f11006x;

    /* renamed from: y */
    private FloatingActionMenu f11007y;

    /* renamed from: z */
    private C2151b f11008z;

    /* renamed from: com.allinone.callerid.mvc.controller.nodisturb.DisturbCustomActivity$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity$a.class */
    class C3427a implements LocalBroadcastReceiver.AbstractC3574a {
        C3427a() {
            DisturbCustomActivity.this = r4;
        }

        @Override // com.allinone.callerid.receiver.LocalBroadcastReceiver.AbstractC3574a
        /* renamed from: a */
        public void mo24962a(Intent intent) {
            DisturbCustomActivity.this.mo25261W();
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.nodisturb.DisturbCustomActivity$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity$b.class */
    public class C3428b implements AbstractC2900a {
        C3428b() {
            DisturbCustomActivity.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p181l.p182e.AbstractC2900a
        /* renamed from: a */
        public void mo25265a(ArrayList<NoDisturbBean> arrayList) {
            if (arrayList == null || arrayList.size() <= 0) {
                DisturbCustomActivity.this.f11006x.setVisibility(0);
                DisturbCustomActivity.this.f11005w.setVisibility(8);
                return;
            }
            DisturbCustomActivity.this.f11008z.m27781A(arrayList, true);
            DisturbCustomActivity.this.f11008z.m31967i();
            DisturbCustomActivity.this.f11005w.setVisibility(0);
            DisturbCustomActivity.this.f11006x.setVisibility(8);
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.nodisturb.DisturbCustomActivity$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity$c.class */
    class C3429c implements C3776a.AbstractC3783g {
        C3429c() {
            DisturbCustomActivity.this = r4;
        }

        @Override // com.allinone.callerid.util.p204j1.C3776a.AbstractC3783g
        /* renamed from: a */
        public void mo23968a() {
            if (DisturbCustomActivity.this.f11007y != null) {
                DisturbCustomActivity.this.f11007y.m22334g(true);
            }
            DisturbCustomActivity.this.m25267l0();
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.nodisturb.DisturbCustomActivity$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity$d.class */
    class C3430d implements C3776a.AbstractC3783g {
        C3430d() {
            DisturbCustomActivity.this = r4;
        }

        @Override // com.allinone.callerid.util.p204j1.C3776a.AbstractC3783g
        /* renamed from: a */
        public void mo23968a() {
            if (DisturbCustomActivity.this.f11007y != null) {
                DisturbCustomActivity.this.f11007y.m22334g(true);
            }
            DisturbCustomActivity.this.m25268k0();
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.nodisturb.DisturbCustomActivity$e */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity$e.class */
    public class C3431e implements AbstractC2808b {

        /* renamed from: com.allinone.callerid.mvc.controller.nodisturb.DisturbCustomActivity$e$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity$e$a.class */
        class DialogInterface$OnClickListenerC3432a implements DialogInterface.OnClickListener {
            DialogInterface$OnClickListenerC3432a() {
                C3431e.this = r4;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
            }
        }

        /* renamed from: com.allinone.callerid.mvc.controller.nodisturb.DisturbCustomActivity$e$b */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity$e$b.class */
        class DialogInterface$OnClickListenerC3433b implements DialogInterface.OnClickListener {

            /* renamed from: d */
            final /* synthetic */ DeletableEditText f11015d;

            /* renamed from: e */
            final /* synthetic */ DeletableEditText f11016e;

            DialogInterface$OnClickListenerC3433b(DeletableEditText deletableEditText, DeletableEditText deletableEditText2) {
                C3431e.this = r4;
                this.f11015d = deletableEditText;
                this.f11016e = deletableEditText2;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                try {
                    String obj = this.f11015d.getText().toString();
                    DisturbCustomActivity.this.m25269j0(this.f11016e.getText().toString(), obj);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        C3431e() {
            DisturbCustomActivity.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p172g.AbstractC2808b
        /* renamed from: a */
        public void mo25264a(CallLogBean callLogBean) {
            try {
                View inflate = LayoutInflater.from(DisturbCustomActivity.this).inflate(R$layout.view_dialog_block_edit, (ViewGroup) null);
                DeletableEditText deletableEditText = (DeletableEditText) inflate.findViewById(R$id.edit_name);
                DeletableEditText deletableEditText2 = (DeletableEditText) inflate.findViewById(R$id.edit_number);
                deletableEditText.setHint(R$string.block_name);
                deletableEditText2.setTypeface(DisturbCustomActivity.this.f11002B);
                deletableEditText2.setHint(R$string.block_number);
                deletableEditText.setText(callLogBean.m24884m());
                deletableEditText2.setText(callLogBean.m24880o());
                deletableEditText2.setSelection(deletableEditText2.getText().length());
                AlertDialog create = new AlertDialog.Builder(DisturbCustomActivity.this).setMessage(DisturbCustomActivity.this.getResources().getString(R$string.add)).setView(inflate).setPositiveButton(DisturbCustomActivity.this.getResources().getString(R$string.save_small), new DialogInterface$OnClickListenerC3433b(deletableEditText2, deletableEditText)).setNegativeButton(DisturbCustomActivity.this.getResources().getString(R$string.cancel_dialog), new DialogInterface$OnClickListenerC3432a()).create();
                create.show();
                create.getButton(-1).setTextColor(DisturbCustomActivity.this.f11003C);
                create.getButton(-2).setTextColor(DisturbCustomActivity.this.getResources().getColor(R$color.btn_gray));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.nodisturb.DisturbCustomActivity$f */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity$f.class */
    public class C3434f implements AbstractC2814f {

        /* renamed from: com.allinone.callerid.mvc.controller.nodisturb.DisturbCustomActivity$f$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity$f$a.class */
        class DialogInterface$OnClickListenerC3435a implements DialogInterface.OnClickListener {
            DialogInterface$OnClickListenerC3435a() {
                C3434f.this = r4;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
            }
        }

        /* renamed from: com.allinone.callerid.mvc.controller.nodisturb.DisturbCustomActivity$f$b */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity$f$b.class */
        class DialogInterface$OnClickListenerC3436b implements DialogInterface.OnClickListener {

            /* renamed from: d */
            final /* synthetic */ DeletableEditText f11020d;

            /* renamed from: e */
            final /* synthetic */ DeletableEditText f11021e;

            DialogInterface$OnClickListenerC3436b(DeletableEditText deletableEditText, DeletableEditText deletableEditText2) {
                C3434f.this = r4;
                this.f11020d = deletableEditText;
                this.f11021e = deletableEditText2;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                try {
                    String obj = this.f11020d.getText().toString();
                    DisturbCustomActivity.this.m25269j0(this.f11021e.getText().toString(), obj);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        C3434f() {
            DisturbCustomActivity.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p172g.AbstractC2814f
        /* renamed from: a */
        public void mo25263a(EZSimpleContact eZSimpleContact) {
            try {
                View inflate = LayoutInflater.from(DisturbCustomActivity.this).inflate(R$layout.view_dialog_block_edit, (ViewGroup) null);
                DeletableEditText deletableEditText = (DeletableEditText) inflate.findViewById(R$id.edit_name);
                DeletableEditText deletableEditText2 = (DeletableEditText) inflate.findViewById(R$id.edit_number);
                deletableEditText.setText(eZSimpleContact.getName());
                deletableEditText2.setTypeface(DisturbCustomActivity.this.f11002B);
                deletableEditText2.setText(eZSimpleContact.getNumber());
                deletableEditText2.setSelection(deletableEditText2.getText().length());
                AlertDialog create = new AlertDialog.Builder(DisturbCustomActivity.this).setMessage(DisturbCustomActivity.this.getResources().getString(R$string.add)).setView(inflate).setPositiveButton(DisturbCustomActivity.this.getResources().getString(R$string.save_small), new DialogInterface$OnClickListenerC3436b(deletableEditText2, deletableEditText)).setNegativeButton(DisturbCustomActivity.this.getResources().getString(R$string.cancel_dialog), new DialogInterface$OnClickListenerC3435a()).create();
                create.show();
                create.getButton(-1).setTextColor(DisturbCustomActivity.this.f11003C);
                create.getButton(-2).setTextColor(DisturbCustomActivity.this.getResources().getColor(R$color.btn_gray));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.nodisturb.DisturbCustomActivity$g */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity$g.class */
    public class DialogInterface$OnClickListenerC3437g implements DialogInterface.OnClickListener {
        DialogInterface$OnClickListenerC3437g() {
            DisturbCustomActivity.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.nodisturb.DisturbCustomActivity$h */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity$h.class */
    public class DialogInterface$OnClickListenerC3438h implements DialogInterface.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ DeletableEditText f11024d;

        /* renamed from: e */
        final /* synthetic */ DeletableEditText f11025e;

        DialogInterface$OnClickListenerC3438h(DeletableEditText deletableEditText, DeletableEditText deletableEditText2) {
            DisturbCustomActivity.this = r4;
            this.f11024d = deletableEditText;
            this.f11025e = deletableEditText2;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            try {
                String obj = this.f11024d.getText().toString();
                DisturbCustomActivity.this.m25269j0(this.f11025e.getText().toString(), obj);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.nodisturb.DisturbCustomActivity$i */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity$i.class */
    public class C3439i implements AbstractC2901b {
        C3439i() {
            DisturbCustomActivity.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p181l.p182e.AbstractC2901b
        /* renamed from: a */
        public void mo25262a(boolean z) {
            C1764a.m28939b(DisturbCustomActivity.this.getApplicationContext()).m28937d(new Intent("com.allinone.callerid.WHITE_DATE_UPDATA"));
        }
    }

    /* renamed from: j0 */
    public void m25269j0(String str, String str2) {
        if (str2 == null || str2.length() <= 0) {
            return;
        }
        NoDisturbBean noDisturbBean = new NoDisturbBean();
        noDisturbBean.setName(str);
        noDisturbBean.setNumber(str2);
        C2902c.m26445a(noDisturbBean, new C3439i());
    }

    /* renamed from: k0 */
    public void m25268k0() {
        C2600m.m27039h(this, new C3434f());
    }

    /* renamed from: l0 */
    public void m25267l0() {
        C2600m.m27040g(this, new C3431e());
    }

    /* renamed from: m0 */
    private void m25266m0() {
        try {
            View inflate = LayoutInflater.from(this).inflate(R$layout.view_dialog_block_edit, (ViewGroup) null);
            DeletableEditText deletableEditText = (DeletableEditText) inflate.findViewById(R$id.edit_name);
            DeletableEditText deletableEditText2 = (DeletableEditText) inflate.findViewById(R$id.edit_number);
            deletableEditText.setHint(R$string.block_name);
            deletableEditText2.setTypeface(this.f11002B);
            deletableEditText2.setHint(R$string.block_number);
            AlertDialog create = new AlertDialog.Builder(this).setMessage(getResources().getString(R$string.add)).setView(inflate).setPositiveButton(getResources().getString(R$string.save_small), new DialogInterface$OnClickListenerC3438h(deletableEditText2, deletableEditText)).setNegativeButton(getResources().getString(R$string.cancel_dialog), new DialogInterface$OnClickListenerC3437g()).create();
            create.show();
            create.getButton(-1).setTextColor(this.f11003C);
            create.getButton(-2).setTextColor(getResources().getColor(R$color.btn_gray));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.allinone.callerid.mvc.controller.nodisturb.DisturbBaseActivity
    /* renamed from: W */
    public void mo25261W() {
        super.mo25261W();
        C2902c.m26443c(new C3428b());
    }

    @Override // com.allinone.callerid.mvc.controller.nodisturb.DisturbBaseActivity
    /* renamed from: X */
    protected void mo25260X() {
        setContentView(R$layout.activity_disturb_custom);
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue() && Build.VERSION.SDK_INT >= 17) {
            getWindow().getDecorView().setLayoutDirection(1);
        }
        this.f11003C = C3719c1.m24432a(this, R$attr.color_action, 2131099706);
        ImageView imageView = (ImageView) findViewById(R$id.disturb_custom_black);
        TextView textView = (TextView) findViewById(R$id.disturb_custom_title);
        this.f11005w = (RecyclerView) findViewById(R$id.disturb_custom_rlv);
        this.f11006x = (LinearLayout) findViewById(R$id.disturb_custom_null_ll);
        TextView textView2 = (TextView) findViewById(R$id.disturb_custom_null_tv);
        FloatingActionMenu floatingActionMenu = (FloatingActionMenu) findViewById(R$id.disturb_custom_switch_fam);
        this.f11007y = floatingActionMenu;
        floatingActionMenu.setContentDescription(getResources().getString(R$string.add));
        FloatingActionButton floatingActionButton = (FloatingActionButton) findViewById(R$id.fab_enter_number);
        FloatingActionButton floatingActionButton2 = (FloatingActionButton) findViewById(R$id.fab_from_his);
        FloatingActionButton floatingActionButton3 = (FloatingActionButton) findViewById(R$id.fab_from_contacts);
        Typeface m24359b = C3739f1.m24359b();
        this.f11002B = m24359b;
        textView.setTypeface(m24359b);
        textView2.setTypeface(this.f11002B);
        floatingActionButton.setLabelTextType(this.f11002B);
        floatingActionButton2.setLabelTextType(this.f11002B);
        floatingActionButton3.setLabelTextType(this.f11002B);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this);
        linearLayoutManager.m32114z2(1);
        this.f11005w.setLayoutManager(linearLayoutManager);
        this.f11005w.setHasFixedSize(true);
        C2151b c2151b = new C2151b(this);
        this.f11008z = c2151b;
        this.f11005w.setAdapter(c2151b);
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue()) {
            imageView.setImageResource(R$drawable.ic_back_oppo);
        }
        imageView.setOnClickListener(this);
        floatingActionButton.setOnClickListener(this);
        floatingActionButton2.setOnClickListener(this);
        floatingActionButton3.setOnClickListener(this);
        this.f11007y.setClosedOnTouchOutside(true);
        this.f11001A = new LocalBroadcastReceiver(new C3427a());
        C1764a.m28939b(this).m28938c(this.f11001A, new IntentFilter("com.allinone.callerid.WHITE_DATE_UPDATA"));
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == 2131296603) {
            m25281V();
            return;
        }
        switch (id) {
            case R$id.fab_enter_number /* 2131296693 */:
                FloatingActionMenu floatingActionMenu = this.f11007y;
                if (floatingActionMenu != null) {
                    floatingActionMenu.m22334g(true);
                }
                m25266m0();
                return;
            case R$id.fab_from_contacts /* 2131296694 */:
                if (!C3776a.m24161d(this)) {
                    C3776a.m24152m(this, new C3430d());
                    return;
                }
                FloatingActionMenu floatingActionMenu2 = this.f11007y;
                if (floatingActionMenu2 != null) {
                    floatingActionMenu2.m22334g(true);
                }
                m25268k0();
                return;
            case R$id.fab_from_his /* 2131296695 */:
                if (C0586a.m33353a(EZCallApplication.m26146c(), "android.permission.READ_CALL_LOG") != 0) {
                    C3776a.m24148q(this, new C3429c());
                    return;
                }
                FloatingActionMenu floatingActionMenu3 = this.f11007y;
                if (floatingActionMenu3 != null) {
                    floatingActionMenu3.m22334g(true);
                }
                m25267l0();
                return;
            default:
                return;
        }
    }

    @Override // com.allinone.callerid.mvc.controller.nodisturb.DisturbBaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        if (this.f11001A != null) {
            C1764a.m28939b(this).m28936e(this.f11001A);
        }
    }

    @Override // com.allinone.callerid.mvc.controller.nodisturb.DisturbBaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
    }

    @Override // com.allinone.callerid.mvc.controller.nodisturb.DisturbBaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }
}
