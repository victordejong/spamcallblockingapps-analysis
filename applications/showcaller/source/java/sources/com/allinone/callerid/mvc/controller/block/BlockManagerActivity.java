package com.allinone.callerid.mvc.controller.block;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.DialogInterfaceC0146a;
import androidx.core.content.C0586a;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$attr;
import com.allinone.callerid.R$color;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$string;
import com.allinone.callerid.R$style;
import com.allinone.callerid.bean.CollectInfo;
import com.allinone.callerid.bean.EZBlackList;
import com.allinone.callerid.bean.EZSimpleContact;
import com.allinone.callerid.customview.DeletableEditText;
import com.allinone.callerid.dialog.C2600m;
import com.allinone.callerid.dialog.DialogC2588f;
import com.allinone.callerid.main.BaseActivity;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.mvc.controller.contactpdt.ContactActivity;
import com.allinone.callerid.mvc.controller.contactpdt.UnknownContactActivity;
import com.allinone.callerid.mvc.controller.nodisturb.NoDisturbActivity;
import com.allinone.callerid.p136b.C2166c;
import com.allinone.callerid.p162i.p163a.AbstractC2766a;
import com.allinone.callerid.p162i.p163a.p170f.AbstractC2795a;
import com.allinone.callerid.p162i.p163a.p170f.C2796b;
import com.allinone.callerid.p162i.p163a.p172g.AbstractC2808b;
import com.allinone.callerid.p162i.p163a.p172g.AbstractC2814f;
import com.allinone.callerid.p162i.p163a.p174i.C2839c;
import com.allinone.callerid.p162i.p163a.p186p.AbstractC2925a;
import com.allinone.callerid.p162i.p163a.p186p.C2927c;
import com.allinone.callerid.search.CallLogBean;
import com.allinone.callerid.util.C3711a1;
import com.allinone.callerid.util.C3719c1;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3744g1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3774j;
import com.allinone.callerid.util.C3810q;
import com.allinone.callerid.util.p204j1.C3776a;
import com.allinone.callerid.util.p204j1.C3784b;
import com.github.clans.fab.FloatingActionButton;
import com.github.clans.fab.FloatingActionMenu;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/BlockManagerActivity.class */
public class BlockManagerActivity extends BaseActivity implements View.OnClickListener {

    /* renamed from: A */
    private C2166c f10400A;

    /* renamed from: B */
    private LinearLayout f10401B;

    /* renamed from: F */
    private FloatingActionMenu f10405F;

    /* renamed from: G */
    private LinearLayout f10406G;

    /* renamed from: H */
    private Typeface f10407H;

    /* renamed from: I */
    private ImageView f10408I;

    /* renamed from: J */
    private LayoutInflater f10409J;

    /* renamed from: K */
    private int f10410K;

    /* renamed from: v */
    private ImageView f10412v;

    /* renamed from: w */
    private PopupWindow f10413w;

    /* renamed from: x */
    private Typeface f10414x;

    /* renamed from: y */
    private ArrayList<CallLogBean> f10415y;

    /* renamed from: z */
    private ArrayList<CallLogBean> f10416z;

    /* renamed from: u */
    private final String f10411u = "BlockManagerActivity";

    /* renamed from: C */
    private List<String> f10402C = new ArrayList();

    /* renamed from: D */
    public List f10403D = new ArrayList();

    /* renamed from: E */
    public List f10404E = new ArrayList();

    /* renamed from: com.allinone.callerid.mvc.controller.block.BlockManagerActivity$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/BlockManagerActivity$a.class */
    public class C3238a implements AbstractC2795a {

        /* renamed from: a */
        final /* synthetic */ String f10417a;

        /* renamed from: b */
        final /* synthetic */ String f10418b;

        /* renamed from: c */
        final /* synthetic */ boolean f10419c;

        /* renamed from: com.allinone.callerid.mvc.controller.block.BlockManagerActivity$a$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/BlockManagerActivity$a$a.class */
        class C3239a implements AbstractC2766a {
            C3239a() {
                C3238a.this = r4;
            }

            @Override // com.allinone.callerid.p162i.p163a.AbstractC2766a
            /* renamed from: a */
            public void mo24704a() {
                C3810q.m24071b().m24070c("add_blacklist");
                BlockManagerActivity blockManagerActivity = BlockManagerActivity.this;
                Toast.makeText(blockManagerActivity, blockManagerActivity.getResources().getString(R$string.blocked_to_list), 0).show();
                if (C3238a.this.f10419c) {
                    CollectInfo collectInfo = new CollectInfo();
                    collectInfo.setNumber(C3238a.this.f10417a);
                    collectInfo.setUser_blocked("1");
                    collectInfo.setUser_commented("0");
                    collectInfo.setUser_reported("0");
                    collectInfo.setUser_upload_recording("0");
                    C2839c.m26517c(EZCallApplication.m26146c(), collectInfo);
                }
            }
        }

        C3238a(String str, String str2, boolean z) {
            BlockManagerActivity.this = r4;
            this.f10417a = str;
            this.f10418b = str2;
            this.f10419c = z;
        }

        @Override // com.allinone.callerid.p162i.p163a.p170f.AbstractC2795a
        /* renamed from: a */
        public void mo24705a(boolean z) {
            if (!BlockManagerActivity.this.isFinishing()) {
                if (z) {
                    BlockManagerActivity blockManagerActivity = BlockManagerActivity.this;
                    Toast.makeText(blockManagerActivity, blockManagerActivity.getResources().getString(R$string.blocked_to_list), 0).show();
                    return;
                }
                EZBlackList eZBlackList = new EZBlackList();
                eZBlackList.setNumber(this.f10417a.replace("-", ""));
                eZBlackList.setName(this.f10418b);
                eZBlackList.setIs_myblock("true");
                C2796b.m26588a(eZBlackList, new C3239a());
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.block.BlockManagerActivity$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/BlockManagerActivity$b.class */
    public class DialogInterface$OnClickListenerC3240b implements DialogInterface.OnClickListener {
        DialogInterface$OnClickListenerC3240b() {
            BlockManagerActivity.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.block.BlockManagerActivity$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/BlockManagerActivity$c.class */
    public class DialogInterface$OnClickListenerC3241c implements DialogInterface.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ DeletableEditText f10423d;

        /* renamed from: e */
        final /* synthetic */ DeletableEditText f10424e;

        DialogInterface$OnClickListenerC3241c(DeletableEditText deletableEditText, DeletableEditText deletableEditText2) {
            BlockManagerActivity.this = r4;
            this.f10423d = deletableEditText;
            this.f10424e = deletableEditText2;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            try {
                String obj = this.f10423d.getText().toString();
                BlockManagerActivity.this.m25677C0(this.f10424e.getText().toString(), obj, true);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.block.BlockManagerActivity$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/BlockManagerActivity$d.class */
    public class RunnableC3242d implements Runnable {
        RunnableC3242d() {
            BlockManagerActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            BlockManagerActivity blockManagerActivity = BlockManagerActivity.this;
            blockManagerActivity.f10410K = C3719c1.m24432a(blockManagerActivity, R$attr.color_action, 2131099706);
            BlockManagerActivity.this.f10414x = C3739f1.m24359b();
            ((TextView) BlockManagerActivity.this.findViewById(R$id.tv_blcok_list)).setTypeface(BlockManagerActivity.this.f10414x);
            BlockManagerActivity blockManagerActivity2 = BlockManagerActivity.this;
            blockManagerActivity2.f10412v = (ImageView) blockManagerActivity2.findViewById(R$id.lb_block_more);
            BlockManagerActivity blockManagerActivity3 = BlockManagerActivity.this;
            blockManagerActivity3.f10408I = (ImageView) blockManagerActivity3.findViewById(R$id.lb_nodisturb);
            ImageView imageView = (ImageView) BlockManagerActivity.this.findViewById(R$id.header_left_about);
            BlockManagerActivity.this.f10412v.setOnClickListener(BlockManagerActivity.this);
            BlockManagerActivity.this.f10408I.setOnClickListener(BlockManagerActivity.this);
            imageView.setOnClickListener(BlockManagerActivity.this);
            if (C3767h1.m24250f0(BlockManagerActivity.this.getApplicationContext()).booleanValue()) {
                imageView.setImageResource(R$drawable.ic_back_oppo);
            }
            BlockManagerActivity.this.m25678B0();
            BlockManagerActivity.this.m25679A0();
            BlockManagerActivity.this.m25647x0();
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.block.BlockManagerActivity$e */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/BlockManagerActivity$e.class */
    public class C3243e implements AdapterView.OnItemClickListener {
        C3243e() {
            BlockManagerActivity.this = r4;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            if (BlockManagerActivity.this.f10415y == null || BlockManagerActivity.this.f10415y.size() == 0) {
                return;
            }
            CallLogBean callLogBean = (CallLogBean) BlockManagerActivity.this.f10415y.get(i);
            if (callLogBean.m24918Y()) {
                Intent intent = new Intent();
                Bundle bundle = new Bundle();
                bundle.putParcelable("contact_tony", callLogBean);
                intent.putExtras(bundle);
                intent.setClass(BlockManagerActivity.this, ContactActivity.class);
                BlockManagerActivity.this.startActivity(intent);
                BlockManagerActivity.this.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                return;
            }
            Intent intent2 = new Intent();
            Bundle bundle2 = new Bundle();
            bundle2.putParcelable("contact_tony", callLogBean);
            intent2.putExtras(bundle2);
            intent2.setClass(BlockManagerActivity.this, UnknownContactActivity.class);
            BlockManagerActivity.this.startActivity(intent2);
            BlockManagerActivity.this.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.block.BlockManagerActivity$f */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/BlockManagerActivity$f.class */
    public class C3244f implements FloatingActionMenu.AbstractC4501h {

        /* renamed from: com.allinone.callerid.mvc.controller.block.BlockManagerActivity$f$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/BlockManagerActivity$f$a.class */
        class DialogInterface$OnDismissListenerC3245a implements DialogInterface.OnDismissListener {
            DialogInterface$OnDismissListenerC3245a() {
                C3244f.this = r4;
            }

            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                BlockManagerActivity.this.m25648w0();
            }
        }

        C3244f() {
            BlockManagerActivity.this = r4;
        }

        @Override // com.github.clans.fab.FloatingActionMenu.AbstractC4501h
        /* renamed from: a */
        public void mo22319a(boolean z) {
            int i;
            if (z) {
                C3810q.m24071b().m24070c("addBlockButton");
                if (C3711a1.m24469x2().booleanValue() || (i = Build.VERSION.SDK_INT) < 26 || i >= 28 || C3784b.m24142d(BlockManagerActivity.this.getApplicationContext())) {
                    return;
                }
                DialogC2588f dialogC2588f = new DialogC2588f(BlockManagerActivity.this, R$style.CustomDialog4);
                dialogC2588f.setCanceledOnTouchOutside(false);
                dialogC2588f.setOnDismissListener(new DialogInterface$OnDismissListenerC3245a());
                dialogC2588f.show();
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.block.BlockManagerActivity$g */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/BlockManagerActivity$g.class */
    public class C3246g implements AbstractC2925a {
        C3246g() {
            BlockManagerActivity.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p186p.AbstractC2925a
        /* renamed from: a */
        public void mo25644a(ArrayList<CallLogBean> arrayList) {
            BlockManagerActivity.this.f10416z = arrayList;
            if (BlockManagerActivity.this.f10416z == null || BlockManagerActivity.this.f10416z.size() <= 0) {
                BlockManagerActivity.this.f10401B.setVisibility(0);
            } else {
                BlockManagerActivity.this.f10415y.clear();
                BlockManagerActivity.this.f10415y.addAll(BlockManagerActivity.this.f10416z);
                if (BlockManagerActivity.this.f10415y == null || BlockManagerActivity.this.f10400A == null || BlockManagerActivity.this.f10415y.size() <= 0) {
                    BlockManagerActivity.this.f10401B.setVisibility(0);
                } else {
                    BlockManagerActivity.this.f10401B.setVisibility(8);
                    BlockManagerActivity.this.f10400A.m27890b(BlockManagerActivity.this.f10415y);
                }
                BlockManagerActivity.this.m25646y0();
            }
            BlockManagerActivity.this.m25649v0();
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.block.BlockManagerActivity$h */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/BlockManagerActivity$h.class */
    public class C3247h implements AbstractC2925a {
        C3247h() {
            BlockManagerActivity.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p186p.AbstractC2925a
        /* renamed from: a */
        public void mo25644a(ArrayList<CallLogBean> arrayList) {
            if (arrayList == null || arrayList.size() <= 0) {
                BlockManagerActivity.this.f10401B.setVisibility(0);
                return;
            }
            BlockManagerActivity.this.f10415y.clear();
            BlockManagerActivity.this.f10415y.addAll(arrayList);
            if (BlockManagerActivity.this.f10415y == null || BlockManagerActivity.this.f10400A == null || BlockManagerActivity.this.f10415y.size() <= 0) {
                return;
            }
            BlockManagerActivity.this.f10400A.m27890b(BlockManagerActivity.this.f10415y);
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.block.BlockManagerActivity$i */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/BlockManagerActivity$i.class */
    class C3248i implements C3776a.AbstractC3783g {
        C3248i() {
            BlockManagerActivity.this = r4;
        }

        @Override // com.allinone.callerid.util.p204j1.C3776a.AbstractC3783g
        /* renamed from: a */
        public void mo23968a() {
            if (BlockManagerActivity.this.f10405F.m22322s()) {
                BlockManagerActivity.this.f10405F.m22320u(true);
            }
            BlockManagerActivity.this.m25675F0();
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.block.BlockManagerActivity$j */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/BlockManagerActivity$j.class */
    class C3249j implements C3776a.AbstractC3783g {
        C3249j() {
            BlockManagerActivity.this = r4;
        }

        @Override // com.allinone.callerid.util.p204j1.C3776a.AbstractC3783g
        /* renamed from: a */
        public void mo23968a() {
            if (BlockManagerActivity.this.f10405F.m22322s()) {
                BlockManagerActivity.this.f10405F.m22320u(true);
            }
            BlockManagerActivity.this.m25676E0();
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.block.BlockManagerActivity$k */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/BlockManagerActivity$k.class */
    public class C3250k implements AbstractC2814f {

        /* renamed from: com.allinone.callerid.mvc.controller.block.BlockManagerActivity$k$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/BlockManagerActivity$k$a.class */
        class DialogInterface$OnClickListenerC3251a implements DialogInterface.OnClickListener {
            DialogInterface$OnClickListenerC3251a() {
                C3250k.this = r4;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
            }
        }

        /* renamed from: com.allinone.callerid.mvc.controller.block.BlockManagerActivity$k$b */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/BlockManagerActivity$k$b.class */
        class DialogInterface$OnClickListenerC3252b implements DialogInterface.OnClickListener {

            /* renamed from: d */
            final /* synthetic */ DeletableEditText f10436d;

            /* renamed from: e */
            final /* synthetic */ DeletableEditText f10437e;

            DialogInterface$OnClickListenerC3252b(DeletableEditText deletableEditText, DeletableEditText deletableEditText2) {
                C3250k.this = r4;
                this.f10436d = deletableEditText;
                this.f10437e = deletableEditText2;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                try {
                    String obj = this.f10436d.getText().toString();
                    BlockManagerActivity.this.m25677C0(this.f10437e.getText().toString(), obj, false);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        C3250k() {
            BlockManagerActivity.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p172g.AbstractC2814f
        /* renamed from: a */
        public void mo25263a(EZSimpleContact eZSimpleContact) {
            View inflate = LayoutInflater.from(BlockManagerActivity.this).inflate(R$layout.view_dialog_block_edit, (ViewGroup) null);
            DeletableEditText deletableEditText = (DeletableEditText) inflate.findViewById(R$id.edit_name);
            DeletableEditText deletableEditText2 = (DeletableEditText) inflate.findViewById(R$id.edit_number);
            deletableEditText.setText(eZSimpleContact.getName());
            deletableEditText2.setTypeface(BlockManagerActivity.this.f10407H);
            deletableEditText2.setText(eZSimpleContact.getNumber());
            deletableEditText2.setSelection(deletableEditText2.getText().length());
            AlertDialog create = new AlertDialog.Builder(BlockManagerActivity.this).setMessage(BlockManagerActivity.this.getResources().getString(R$string.add)).setView(inflate).setPositiveButton(BlockManagerActivity.this.getResources().getString(R$string.save_small), new DialogInterface$OnClickListenerC3252b(deletableEditText2, deletableEditText)).setNegativeButton(BlockManagerActivity.this.getResources().getString(R$string.cancel_dialog), new DialogInterface$OnClickListenerC3251a()).create();
            create.show();
            create.getButton(-1).setTextColor(BlockManagerActivity.this.f10410K);
            create.getButton(-2).setTextColor(BlockManagerActivity.this.getResources().getColor(R$color.btn_gray));
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.block.BlockManagerActivity$l */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/BlockManagerActivity$l.class */
    public class C3253l implements AbstractC2808b {

        /* renamed from: com.allinone.callerid.mvc.controller.block.BlockManagerActivity$l$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/BlockManagerActivity$l$a.class */
        class DialogInterface$OnClickListenerC3254a implements DialogInterface.OnClickListener {
            DialogInterface$OnClickListenerC3254a() {
                C3253l.this = r4;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
            }
        }

        /* renamed from: com.allinone.callerid.mvc.controller.block.BlockManagerActivity$l$b */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/BlockManagerActivity$l$b.class */
        class DialogInterface$OnClickListenerC3255b implements DialogInterface.OnClickListener {

            /* renamed from: d */
            final /* synthetic */ DeletableEditText f10441d;

            /* renamed from: e */
            final /* synthetic */ DeletableEditText f10442e;

            DialogInterface$OnClickListenerC3255b(DeletableEditText deletableEditText, DeletableEditText deletableEditText2) {
                C3253l.this = r4;
                this.f10441d = deletableEditText;
                this.f10442e = deletableEditText2;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                try {
                    String obj = this.f10441d.getText().toString();
                    BlockManagerActivity.this.m25677C0(this.f10442e.getText().toString(), obj, true);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        C3253l() {
            BlockManagerActivity.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p172g.AbstractC2808b
        /* renamed from: a */
        public void mo25264a(CallLogBean callLogBean) {
            View inflate = LayoutInflater.from(BlockManagerActivity.this).inflate(R$layout.view_dialog_block_edit, (ViewGroup) null);
            DeletableEditText deletableEditText = (DeletableEditText) inflate.findViewById(R$id.edit_name);
            DeletableEditText deletableEditText2 = (DeletableEditText) inflate.findViewById(R$id.edit_number);
            deletableEditText.setHint(R$string.block_name);
            deletableEditText2.setTypeface(BlockManagerActivity.this.f10407H);
            deletableEditText2.setHint(R$string.block_number);
            deletableEditText.setText(callLogBean.m24884m());
            deletableEditText2.setText(callLogBean.m24880o());
            deletableEditText2.setSelection(deletableEditText2.getText().length());
            AlertDialog create = new AlertDialog.Builder(BlockManagerActivity.this).setMessage(BlockManagerActivity.this.getResources().getString(R$string.add)).setView(inflate).setPositiveButton(BlockManagerActivity.this.getResources().getString(R$string.save_small), new DialogInterface$OnClickListenerC3255b(deletableEditText2, deletableEditText)).setNegativeButton(BlockManagerActivity.this.getResources().getString(R$string.cancel_dialog), new DialogInterface$OnClickListenerC3254a()).create();
            create.show();
            create.getButton(-1).setTextColor(BlockManagerActivity.this.f10410K);
            create.getButton(-2).setTextColor(BlockManagerActivity.this.getResources().getColor(R$color.btn_gray));
        }
    }

    /* renamed from: A0 */
    public void m25679A0() {
        View inflate = this.f10409J.inflate(R$layout.popuwindow_block_manager, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(R$id.tv_my_block_list);
        TextView textView2 = (TextView) inflate.findViewById(R$id.tv_block_set);
        FrameLayout frameLayout = (FrameLayout) inflate.findViewById(R$id.rl_my_block_list);
        textView.setTypeface(this.f10414x);
        textView2.setTypeface(this.f10414x);
        frameLayout.setOnClickListener(this);
        ((FrameLayout) inflate.findViewById(R$id.rl_block_set)).setOnClickListener(this);
        this.f10413w = new PopupWindow(inflate);
        this.f10413w.setWidth(getWindowManager().getDefaultDisplay().getWidth() / 2);
        this.f10413w.setHeight(-2);
        this.f10413w.setFocusable(true);
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue()) {
            this.f10413w.setAnimationStyle(R$style.pop_style_rtl);
        } else {
            this.f10413w.setAnimationStyle(R$style.pop_style);
        }
        this.f10413w.setBackgroundDrawable(new ColorDrawable(0));
    }

    /* renamed from: B0 */
    public void m25678B0() {
        int i;
        this.f10407H = C3739f1.m24359b();
        ListView listView = (ListView) findViewById(R$id.lv_blocked);
        this.f10401B = (LinearLayout) findViewById(R$id.rl_no_block);
        this.f10406G = (LinearLayout) findViewById(R$id.ll_notifi_per);
        FrameLayout frameLayout = (FrameLayout) findViewById(R$id.flayout_enable);
        this.f10415y = new ArrayList<>();
        C2166c c2166c = new C2166c(this, this.f10415y, listView);
        this.f10400A = c2166c;
        listView.setAdapter((ListAdapter) c2166c);
        listView.setOnItemClickListener(new C3243e());
        ((TextView) findViewById(R$id.tv_no_block)).setTypeface(this.f10407H);
        ((TextView) findViewById(R$id.tv_no_block_tip)).setTypeface(this.f10407H);
        ((TextView) findViewById(R$id.tv_per_notifi)).setTypeface(this.f10407H);
        ((TextView) findViewById(R$id.tv_enable)).setTypeface(this.f10407H);
        frameLayout.setOnClickListener(this);
        FloatingActionMenu floatingActionMenu = (FloatingActionMenu) findViewById(R$id.switch_dial);
        this.f10405F = floatingActionMenu;
        floatingActionMenu.setContentDescription(getResources().getString(R$string.add));
        this.f10405F.setClosedOnTouchOutside(true);
        FloatingActionButton floatingActionButton = (FloatingActionButton) findViewById(R$id.fab_enter_number);
        FloatingActionButton floatingActionButton2 = (FloatingActionButton) findViewById(R$id.fab_from_his);
        FloatingActionButton floatingActionButton3 = (FloatingActionButton) findViewById(R$id.fab_from_contacts);
        FloatingActionButton floatingActionButton4 = (FloatingActionButton) findViewById(R$id.fab_custom_num);
        floatingActionButton.setOnClickListener(this);
        floatingActionButton2.setOnClickListener(this);
        floatingActionButton3.setOnClickListener(this);
        floatingActionButton4.setOnClickListener(this);
        floatingActionButton.setLabelTextType(this.f10407H);
        floatingActionButton2.setLabelTextType(this.f10407H);
        floatingActionButton3.setLabelTextType(this.f10407H);
        floatingActionButton4.setLabelTextType(this.f10407H);
        this.f10405F.setMenuButtonShowAnimation(AnimationUtils.loadAnimation(getApplicationContext(), R$anim.show_from_bottom));
        this.f10405F.setMenuButtonHideAnimation(AnimationUtils.loadAnimation(getApplicationContext(), R$anim.hide_to_bottom));
        this.f10405F.setOnMenuToggleListener(new C3244f());
        if (C3711a1.m24469x2().booleanValue() || (i = Build.VERSION.SDK_INT) < 26 || i >= 28 || C3784b.m24142d(getApplicationContext())) {
            return;
        }
        this.f10408I.setVisibility(8);
    }

    /* renamed from: C0 */
    public void m25677C0(String str, String str2, boolean z) {
        if (str2 != null) {
            try {
                if (!"".equals(str2)) {
                    C2796b.m26587b(str2, new C3238a(str2, str, z));
                }
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        Toast.makeText(this, getResources().getString(R$string.invalid_nubmer), 0).show();
    }

    /* renamed from: E0 */
    public void m25676E0() {
        C2600m.m27039h(this, new C3250k());
    }

    /* renamed from: F0 */
    public void m25675F0() {
        C2600m.m27040g(this, new C3253l());
    }

    /* renamed from: G0 */
    private void m25674G0() {
        View inflate = this.f10409J.inflate(R$layout.view_dialog_block_edit, (ViewGroup) null);
        DeletableEditText deletableEditText = (DeletableEditText) inflate.findViewById(R$id.edit_name);
        DeletableEditText deletableEditText2 = (DeletableEditText) inflate.findViewById(R$id.edit_number);
        deletableEditText.setHint(R$string.block_name);
        deletableEditText2.setTypeface(this.f10407H);
        deletableEditText2.setHint(R$string.block_number);
        DialogInterfaceC0146a m35574a = new DialogInterfaceC0146a.C0147a(this).m35567h(getResources().getString(R$string.add)).m35557r(inflate).m35561n(getResources().getString(R$string.save_small), new DialogInterface$OnClickListenerC3241c(deletableEditText2, deletableEditText)).m35565j(getResources().getString(R$string.cancel_dialog), new DialogInterface$OnClickListenerC3240b()).m35574a();
        m35574a.show();
        m35574a.m35577g(-1).setTextColor(this.f10410K);
        m35574a.m35577g(-2).setTextColor(getResources().getColor(R$color.btn_gray));
    }

    /* renamed from: v0 */
    public void m25649v0() {
        try {
            ArrayList<CallLogBean> arrayList = this.f10415y;
            if (arrayList == null || arrayList.size() <= 0) {
                if (!C3711a1.m24469x2().booleanValue()) {
                    int i = Build.VERSION.SDK_INT;
                    if (i >= 26 && i < 28 && !C3784b.m24142d(getApplicationContext())) {
                        C3810q.m24071b().m24070c("block_norifi_per_show");
                        this.f10406G.setVisibility(0);
                        this.f10401B.setVisibility(8);
                    }
                }
                this.f10406G.setVisibility(8);
                this.f10401B.setVisibility(0);
            } else if (!C3711a1.m24469x2().booleanValue()) {
                int i2 = Build.VERSION.SDK_INT;
                if (i2 >= 26 && i2 < 28 && !C3784b.m24142d(getApplicationContext())) {
                    DialogC2588f dialogC2588f = new DialogC2588f(this, R$style.CustomDialog4);
                    dialogC2588f.setCanceledOnTouchOutside(false);
                    dialogC2588f.show();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: w0 */
    public void m25648w0() {
        try {
            int i = Build.VERSION.SDK_INT;
            if (i < 26 || i >= 28 || C3784b.m24142d(getApplicationContext()) || !this.f10405F.m22322s()) {
                return;
            }
            this.f10405F.m22320u(true);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: x0 */
    public void m25647x0() {
        C2927c.m26405a(new C3246g());
    }

    /* renamed from: y0 */
    public void m25646y0() {
        C2927c.m26403c(new C3247h(), this.f10416z);
    }

    /* renamed from: z0 */
    private void m25645z0() {
        getWindow().getDecorView().post(new RunnableC3242d());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R$id.fab_custom_num /* 2131296692 */:
                if (this.f10405F.m22322s()) {
                    this.f10405F.m22320u(true);
                }
                Intent intent = new Intent();
                C3810q.m24071b().m24070c(C3744g1.f11943q);
                intent.setClass(this, AddCustomNumActivity.class);
                startActivity(intent);
                overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                return;
            case R$id.fab_enter_number /* 2131296693 */:
                if (this.f10405F.m22322s()) {
                    this.f10405F.m22320u(true);
                }
                m25674G0();
                return;
            case R$id.fab_from_contacts /* 2131296694 */:
                if (!C3776a.m24161d(this)) {
                    C3776a.m24152m(this, new C3249j());
                    return;
                }
                if (this.f10405F.m22322s()) {
                    this.f10405F.m22320u(true);
                }
                m25676E0();
                return;
            case R$id.fab_from_his /* 2131296695 */:
                if (C0586a.m33353a(EZCallApplication.m26146c(), "android.permission.READ_CALL_LOG") != 0) {
                    C3776a.m24148q(this, new C3248i());
                    return;
                }
                if (this.f10405F.m22322s()) {
                    this.f10405F.m22320u(true);
                }
                m25675F0();
                return;
            case R$id.flayout_enable /* 2131296817 */:
                C3810q.m24071b().m24070c("block_norifi_per_click");
                C3784b.f12036a = true;
                C3784b.m24143c(getApplicationContext());
                return;
            case R$id.header_left_about /* 2131296850 */:
                finish();
                overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                return;
            case R$id.lb_block_more /* 2131297115 */:
                if (C3767h1.m24250f0(getApplicationContext()).booleanValue()) {
                    this.f10413w.showAtLocation(this.f10412v, 51, 5, C3774j.m24169a(getApplicationContext(), 14.0f) + 25);
                    return;
                } else {
                    this.f10413w.showAtLocation(this.f10412v, 53, 5, C3774j.m24169a(getApplicationContext(), 14.0f) + 25);
                    return;
                }
            case R$id.lb_nodisturb /* 2131297125 */:
                Intent intent2 = new Intent();
                intent2.setClass(this, NoDisturbActivity.class);
                startActivity(intent2);
                overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                return;
            case R$id.rl_block_set /* 2131297482 */:
                C3810q.m24071b().m24070c("more_block_set_click");
                this.f10413w.dismiss();
                Intent intent3 = new Intent();
                intent3.setClass(this, BlockSettingActivity.class);
                startActivity(intent3);
                overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                return;
            case R$id.rl_my_block_list /* 2131297516 */:
                C3810q.m24071b().m24070c("more_blacklist_click");
                Intent intent4 = new Intent();
                intent4.setClass(this, MyBlockListActivity.class);
                startActivity(intent4);
                overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                this.f10413w.dismiss();
                return;
            default:
                return;
        }
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.activity_block_manager);
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue() && Build.VERSION.SDK_INT >= 17) {
            getWindow().getDecorView().setLayoutDirection(1);
        }
        this.f10409J = LayoutInflater.from(this);
        m25645z0();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
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
        if (C3784b.f12036a) {
            if (C3784b.m24144b(getApplicationContext())) {
                C3810q.m24071b().m24070c("dialog_notifi_per_tip_enalbleed");
                this.f10408I.setVisibility(0);
            }
            C3784b.f12036a = false;
            m25649v0();
        }
    }
}
