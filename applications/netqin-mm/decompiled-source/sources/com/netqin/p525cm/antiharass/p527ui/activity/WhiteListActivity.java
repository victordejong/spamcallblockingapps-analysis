package com.netqin.p525cm.antiharass.p527ui.activity;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.netqin.p525cm.main.p529ui.BaseActivity;
import com.netqin.p525cm.p528db.model.BlackWhiteListModel;
import com.netqin.p525cm.permission.CBPermissionsHelper;
import com.netqin.p525cm.utils.AsyncTask;
import java.util.ArrayList;
import java.util.List;
import p131c.p431l.p432a.p442b.p445c.C6727b;
import p131c.p431l.p432a.p442b.p445c.C6741c;
import p131c.p431l.p432a.p442b.p448f.p450b.C6773c;
import p131c.p431l.p432a.p442b.p448f.p451c.DialogC6776a;
import p131c.p431l.p432a.p442b.p448f.p451c.DialogC6778b;
import p131c.p431l.p432a.p468n.C6843d;
import p131c.p431l.p432a.p468n.C6850i;
import p131c.p431l.p432a.p468n.p469s.p472c.C6864a;
import p573f.C9946p;
import p573f.p590w.p591b.AbstractC10031l;
/* renamed from: com.netqin.cm.antiharass.ui.activity.WhiteListActivity */
/* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/WhiteListActivity.class */
public class WhiteListActivity extends BaseActivity {

    /* renamed from: A */
    public EditText f35539A;

    /* renamed from: B */
    public TextView f35540B;

    /* renamed from: C */
    public TextView f35541C;

    /* renamed from: D */
    public TextView f35542D;

    /* renamed from: E */
    public TextView f35543E;

    /* renamed from: F */
    public TextView f35544F;

    /* renamed from: G */
    public TextView f35545G;

    /* renamed from: H */
    public EditText f35546H;

    /* renamed from: I */
    public EditText f35547I;

    /* renamed from: J */
    public ImageView f35548J;

    /* renamed from: K */
    public C6727b f35549K;

    /* renamed from: L */
    public C6773c f35550L;

    /* renamed from: M */
    public C9141r f35551M;

    /* renamed from: N */
    public C9140q f35552N;

    /* renamed from: O */
    public Context f35553O;

    /* renamed from: P */
    public ListView f35554P;

    /* renamed from: T */
    public DialogC6776a f35558T;

    /* renamed from: U */
    public DialogC6776a f35559U;

    /* renamed from: t */
    public LinearLayout f35561t;

    /* renamed from: u */
    public ListView f35562u;

    /* renamed from: v */
    public View f35563v;

    /* renamed from: w */
    public List<BlackWhiteListModel> f35564w;

    /* renamed from: x */
    public DialogC6778b f35565x;

    /* renamed from: y */
    public TextView f35566y;

    /* renamed from: z */
    public EditText f35567z;

    /* renamed from: Q */
    public boolean f35555Q = false;

    /* renamed from: R */
    public boolean f35556R = false;

    /* renamed from: S */
    public View.OnClickListener f35557S = new View$OnClickListenerC9129h();

    /* renamed from: V */
    public AdapterView.OnItemClickListener f35560V = new C9138o();

    /* renamed from: com.netqin.cm.antiharass.ui.activity.WhiteListActivity$a */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/WhiteListActivity$a.class */
    public class View$OnClickListenerC9122a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ BlackWhiteListModel f35568a;

        public View$OnClickListenerC9122a(BlackWhiteListModel blackWhiteListModel) {
            this.f35568a = blackWhiteListModel;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            WhiteListActivity.this.m3375c(this.f35568a);
            WhiteListActivity.this.f35558T.dismiss();
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.WhiteListActivity$b */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/WhiteListActivity$b.class */
    public class DialogInterface$OnClickListenerC9123b implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ BlackWhiteListModel f35570a;

        public DialogInterface$OnClickListenerC9123b(BlackWhiteListModel blackWhiteListModel) {
            this.f35570a = blackWhiteListModel;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            try {
                int a = WhiteListActivity.this.f35549K.m19963a(this.f35570a.getAddress());
                WhiteListActivity.this.f35564w.remove(this.f35570a);
                WhiteListActivity.this.f35550L.notifyDataSetChanged();
                if (a > 0) {
                    C6741c.m19914a(WhiteListActivity.this.f35553O, "com.netqin.antiharass.refresh");
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.WhiteListActivity$c */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/WhiteListActivity$c.class */
    public class DialogInterface$OnClickListenerC9124c implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC9124c() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            dialogInterface.dismiss();
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.WhiteListActivity$d */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/WhiteListActivity$d.class */
    public class DialogInterface$OnClickListenerC9125d implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ BlackWhiteListModel f35573a;

        public DialogInterface$OnClickListenerC9125d(BlackWhiteListModel blackWhiteListModel) {
            this.f35573a = blackWhiteListModel;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            try {
                String trim = WhiteListActivity.this.f35546H.getText().toString().trim();
                String str = trim;
                if (TextUtils.isEmpty(trim.replaceAll(" ", ""))) {
                    str = this.f35573a.getAddress();
                }
                long a = WhiteListActivity.this.f35549K.m19972a(this.f35573a.getId(), str, this.f35573a.getAddress(), 0);
                WhiteListActivity.this.f35550L.notifyDataSetChanged();
                if (a > 0) {
                    C6741c.m19914a(WhiteListActivity.this.f35553O, "com.netqin.antiharass.refresh");
                    WhiteListActivity.this.f35551M = new C9141r(WhiteListActivity.this, null);
                    try {
                        WhiteListActivity.this.f35551M.m3194b(new Object[0]);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    WhiteListActivity.this.m3356s();
                    WhiteListActivity.this.onResume();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.WhiteListActivity$e */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/WhiteListActivity$e.class */
    public class DialogInterface$OnClickListenerC9126e implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC9126e() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            dialogInterface.dismiss();
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.WhiteListActivity$f */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/WhiteListActivity$f.class */
    public class C9127f implements AbstractC10031l<Integer, C9946p> {
        public C9127f() {
        }

        /* renamed from: a */
        public C9946p invoke(Integer num) {
            if (num.intValue() == 0) {
                WhiteListActivity.this.m3363n();
            }
            DialogC6776a aVar = WhiteListActivity.this.f35558T;
            if (aVar == null) {
                return null;
            }
            aVar.dismiss();
            return null;
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.WhiteListActivity$g */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/WhiteListActivity$g.class */
    public class C9128g implements AbstractC10031l<Integer, C9946p> {
        public C9128g() {
        }

        /* renamed from: a */
        public C9946p invoke(Integer num) {
            if (num.intValue() == 0) {
                WhiteListActivity.this.m3361o();
            }
            DialogC6776a aVar = WhiteListActivity.this.f35558T;
            if (aVar == null) {
                return null;
            }
            aVar.dismiss();
            return null;
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.WhiteListActivity$h */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/WhiteListActivity$h.class */
    public class View$OnClickListenerC9129h implements View.OnClickListener {
        public View$OnClickListenerC9129h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int id = view.getId();
            if (id == 2131230990) {
                WhiteListActivity.this.m3350y();
            } else if (id == 2131231075) {
                WhiteListActivity.this.finish();
            }
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.WhiteListActivity$i */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/WhiteListActivity$i.class */
    public class View$OnClickListenerC9130i implements View.OnClickListener {
        public View$OnClickListenerC9130i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            WhiteListActivity.this.m3353v();
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.WhiteListActivity$j */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/WhiteListActivity$j.class */
    public class View$OnClickListenerC9131j implements View.OnClickListener {
        public View$OnClickListenerC9131j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            WhiteListActivity.this.m3354u();
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.WhiteListActivity$k */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/WhiteListActivity$k.class */
    public class View$OnClickListenerC9132k implements View.OnClickListener {
        public View$OnClickListenerC9132k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            WhiteListActivity.this.m3359p();
            WhiteListActivity.this.f35558T.dismiss();
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.WhiteListActivity$l */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/WhiteListActivity$l.class */
    public class DialogInterface$OnClickListenerC9133l implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC9133l() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            WhiteListActivity.this.f35559U.dismiss();
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.WhiteListActivity$m */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/WhiteListActivity$m.class */
    public class DialogInterface$OnClickListenerC9134m implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f35583a;

        /* renamed from: com.netqin.cm.antiharass.ui.activity.WhiteListActivity$m$a */
        /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/WhiteListActivity$m$a.class */
        public class DialogInterface$OnClickListenerC9135a implements DialogInterface.OnClickListener {
            public DialogInterface$OnClickListenerC9135a(DialogInterface$OnClickListenerC9134m mVar) {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        }

        /* renamed from: com.netqin.cm.antiharass.ui.activity.WhiteListActivity$m$b */
        /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/WhiteListActivity$m$b.class */
        public class DialogInterface$OnClickListenerC9136b implements DialogInterface.OnClickListener {

            /* renamed from: a */
            public final /* synthetic */ BlackWhiteListModel f35585a;

            /* renamed from: b */
            public final /* synthetic */ List f35586b;

            public DialogInterface$OnClickListenerC9136b(BlackWhiteListModel blackWhiteListModel, List list) {
                this.f35585a = blackWhiteListModel;
                this.f35586b = list;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                BlackWhiteListModel blackWhiteListModel = this.f35585a;
                DialogInterface$OnClickListenerC9134m mVar = DialogInterface$OnClickListenerC9134m.this;
                C6741c.m19913a(blackWhiteListModel, mVar.f35583a, WhiteListActivity.this.f35549K);
                if (WhiteListActivity.this.f35549K.m19965a(this.f35585a)) {
                    List list = this.f35586b;
                    if (list == null || list.size() <= 0) {
                        new ArrayList().add(this.f35585a);
                        WhiteListActivity.this.f35551M = new C9141r(WhiteListActivity.this, null);
                        try {
                            WhiteListActivity.this.f35551M.m3194b(new Object[0]);
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                        WhiteListActivity.this.m3356s();
                        WhiteListActivity.this.f35559U.dismiss();
                    } else {
                        new ArrayList().add(this.f35585a);
                        WhiteListActivity.this.f35551M = new C9141r(WhiteListActivity.this, null);
                        try {
                            WhiteListActivity.this.f35551M.m3194b(new Object[0]);
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                        WhiteListActivity.this.m3356s();
                        WhiteListActivity.this.onResume();
                        WhiteListActivity.this.f35559U.dismiss();
                    }
                    C6741c.m19914a(WhiteListActivity.this.f35553O, "com.netqin.antiharass.refresh");
                } else {
                    WhiteListActivity.this.f35559U.dismiss();
                }
                dialogInterface.dismiss();
            }
        }

        public DialogInterface$OnClickListenerC9134m(int i) {
            this.f35583a = i;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            ArrayList arrayList = new ArrayList();
            BlackWhiteListModel blackWhiteListModel = new BlackWhiteListModel();
            String obj = WhiteListActivity.this.f35567z.getText().toString();
            String obj2 = WhiteListActivity.this.f35539A.getText().toString();
            if (!TextUtils.isEmpty(obj2)) {
                blackWhiteListModel.setAddress(obj2);
            }
            C6850i.m19579a("WhiteListActivity", "listenerAdd");
            if (TextUtils.isEmpty(obj)) {
                blackWhiteListModel.setName(WhiteListActivity.this.f35549K.m19955b(obj2));
            } else {
                blackWhiteListModel.setName(obj);
            }
            blackWhiteListModel.setType(this.f35583a);
            if (C6741c.m19911b(blackWhiteListModel, this.f35583a, WhiteListActivity.this.f35549K)) {
                arrayList.add(TextUtils.isEmpty(blackWhiteListModel.getName()) ? blackWhiteListModel.getAddress() : blackWhiteListModel.getName());
                C6843d.m19605a(WhiteListActivity.this, 2131558449, 2131558450, 2131558496, 2131558513, new DialogInterface$OnClickListenerC9135a(this), new DialogInterface$OnClickListenerC9136b(blackWhiteListModel, arrayList));
            } else if (WhiteListActivity.this.f35549K.m19965a(blackWhiteListModel)) {
                if (arrayList.size() > 0) {
                    new ArrayList().add(blackWhiteListModel);
                    WhiteListActivity.this.f35551M = new C9141r(WhiteListActivity.this, null);
                    try {
                        WhiteListActivity.this.f35551M.m3194b(new Object[0]);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    WhiteListActivity.this.m3356s();
                    WhiteListActivity.this.onResume();
                    WhiteListActivity.this.f35559U.dismiss();
                } else {
                    new ArrayList().add(blackWhiteListModel);
                    WhiteListActivity.this.f35551M = new C9141r(WhiteListActivity.this, null);
                    try {
                        WhiteListActivity.this.f35551M.m3194b(new Object[0]);
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                    WhiteListActivity.this.m3356s();
                    WhiteListActivity.this.f35559U.dismiss();
                }
                C6741c.m19914a(WhiteListActivity.this.f35553O, "com.netqin.antiharass.refresh");
            } else {
                WhiteListActivity.this.f35559U.dismiss();
            }
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.WhiteListActivity$n */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/WhiteListActivity$n.class */
    public class C9137n implements TextWatcher {
        public C9137n() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            C6843d.m19598a(WhiteListActivity.this.f35559U, editable.toString());
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.WhiteListActivity$o */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/WhiteListActivity$o.class */
    public class C9138o implements AdapterView.OnItemClickListener {
        public C9138o() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            WhiteListActivity.this.m3378b((BlackWhiteListModel) WhiteListActivity.this.f35564w.get(i));
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.WhiteListActivity$p */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/WhiteListActivity$p.class */
    public class View$OnClickListenerC9139p implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ BlackWhiteListModel f35590a;

        public View$OnClickListenerC9139p(BlackWhiteListModel blackWhiteListModel) {
            this.f35590a = blackWhiteListModel;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            WhiteListActivity.this.m3380a(this.f35590a);
            WhiteListActivity.this.f35558T.dismiss();
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.WhiteListActivity$q */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/WhiteListActivity$q.class */
    public class C9140q extends BroadcastReceiver {
        public C9140q() {
        }

        public /* synthetic */ C9140q(WhiteListActivity whiteListActivity, View$OnClickListenerC9129h hVar) {
            this();
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("com.netqin.antiharass.refresh".equals(intent.getAction())) {
                WhiteListActivity.this.m3356s();
            }
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.WhiteListActivity$r */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/WhiteListActivity$r.class */
    public class C9141r extends AsyncTask<Object, Object, Object> {
        public C9141r() {
        }

        public /* synthetic */ C9141r(WhiteListActivity whiteListActivity, View$OnClickListenerC9129h hVar) {
            this();
        }

        @Override // com.netqin.p525cm.utils.AsyncTask
        /* renamed from: a */
        public Object mo3198a(Object... objArr) {
            WhiteListActivity whiteListActivity = WhiteListActivity.this;
            whiteListActivity.f35564w = whiteListActivity.f35549K.m19975a(0);
            WhiteListActivity whiteListActivity2 = WhiteListActivity.this;
            whiteListActivity2.f35564w = whiteListActivity2.f35549K.m19961a(WhiteListActivity.this.f35564w);
            WhiteListActivity.this.f35550L = new C6773c(WhiteListActivity.this.f35553O, WhiteListActivity.this.f35564w, WhiteListActivity.this);
            return objArr;
        }

        @Override // com.netqin.p525cm.utils.AsyncTask
        /* renamed from: c */
        public void mo3193c() {
            if (WhiteListActivity.this.m3357r() > 0) {
                WhiteListActivity.this.m3349z();
            }
        }

        @Override // com.netqin.p525cm.utils.AsyncTask
        /* renamed from: c */
        public void mo3191c(Object obj) {
            WhiteListActivity whiteListActivity = WhiteListActivity.this;
            if (whiteListActivity.f35627s) {
                whiteListActivity.m3356s();
                WhiteListActivity.this.f35551M = null;
            }
        }
    }

    /* renamed from: A */
    public final void m3386A() {
        unregisterReceiver(this.f35552N);
    }

    /* renamed from: a */
    public void m3380a(BlackWhiteListModel blackWhiteListModel) {
        String name = !TextUtils.isEmpty(blackWhiteListModel.getName()) ? blackWhiteListModel.getName() : blackWhiteListModel.getAddress();
        DialogC6776a.C6777a aVar = new DialogC6776a.C6777a(this);
        if (1 == blackWhiteListModel.getType()) {
            aVar.m19831b(2131558497);
            aVar.m19834a(this.f35553O.getString(2131558451, name));
        } else {
            aVar.m19831b(2131558497);
            aVar.m19834a(this.f35553O.getString(2131558451, name));
        }
        aVar.m19836a(2131558513, new DialogInterface$OnClickListenerC9123b(blackWhiteListModel));
        aVar.m19830b(2131558496, new DialogInterface$OnClickListenerC9124c());
        aVar.m19838a().show();
    }

    /* renamed from: b */
    public final void m3378b(BlackWhiteListModel blackWhiteListModel) {
        DialogC6776a.C6777a aVar = new DialogC6776a.C6777a(this);
        aVar.m19829b(!TextUtils.isEmpty(blackWhiteListModel.getName()) ? blackWhiteListModel.getName() : blackWhiteListModel.getAddress());
        View inflate = LayoutInflater.from(this).inflate(2131427380, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(2131230915);
        this.f35543E = textView;
        textView.setText(getString(2131558497));
        TextView textView2 = (TextView) inflate.findViewById(2131230924);
        this.f35544F = textView2;
        textView2.setText(getString(2131558459));
        this.f35543E.setOnClickListener(new View$OnClickListenerC9139p(blackWhiteListModel));
        this.f35544F.setOnClickListener(new View$OnClickListenerC9122a(blackWhiteListModel));
        aVar.m19835a(inflate);
        DialogC6776a a = aVar.m19838a();
        this.f35558T = a;
        a.show();
    }

    /* renamed from: c */
    public final void m3377c(int i) {
        DialogC6776a.C6777a aVar = new DialogC6776a.C6777a(this);
        aVar.m19829b(getString(2131558449));
        View inflate = LayoutInflater.from(this).inflate(2131427374, (ViewGroup) null);
        this.f35567z = (EditText) inflate.findViewById(2131231067);
        this.f35539A = (EditText) inflate.findViewById(2131231086);
        aVar.m19835a(inflate);
        DialogInterface$OnClickListenerC9133l lVar = new DialogInterface$OnClickListenerC9133l();
        DialogInterface$OnClickListenerC9134m mVar = new DialogInterface$OnClickListenerC9134m(i);
        aVar.m19828b(getString(2131558496), lVar);
        aVar.m19833a(getString(2131558494), mVar);
        this.f35559U = aVar.m19838a();
        this.f35539A.addTextChangedListener(new C9137n());
        C6843d.m19598a(this.f35559U, this.f35539A.getText().toString());
        this.f35559U.show();
    }

    /* renamed from: c */
    public void m3375c(BlackWhiteListModel blackWhiteListModel) {
        String name = !TextUtils.isEmpty(blackWhiteListModel.getName()) ? blackWhiteListModel.getName() : blackWhiteListModel.getAddress();
        DialogC6776a.C6777a aVar = new DialogC6776a.C6777a(this);
        aVar.m19829b(getString(2131558459));
        View inflate = LayoutInflater.from(this).inflate(2131427402, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(2131231089);
        this.f35545G = textView;
        textView.setText(2131558460);
        EditText editText = (EditText) inflate.findViewById(2131231044);
        this.f35546H = editText;
        editText.setText(name);
        C6843d.m19599a(this.f35546H);
        EditText editText2 = (EditText) inflate.findViewById(2131231088);
        this.f35547I = editText2;
        editText2.setText(blackWhiteListModel.getAddress());
        aVar.m19835a(inflate);
        aVar.m19836a(2131558513, new DialogInterface$OnClickListenerC9125d(blackWhiteListModel));
        aVar.m19830b(2131558496, new DialogInterface$OnClickListenerC9126e());
        aVar.m19838a().show();
    }

    /* renamed from: d */
    public void m3374d(int i) {
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.addFlags(1082458112);
        intent.setData(Uri.parse("package:" + getPackageName()));
        startActivityForResult(intent, i);
        overridePendingTransition(0, 0);
    }

    /* renamed from: n */
    public final void m3363n() {
        if (this.f35549K.m19942e() <= 0) {
            Intent intent = new Intent(this.f35553O, EmptyAddFromActivity.class);
            intent.putExtra("black_white_list_type", 0);
            intent.putExtra("source_type", 1);
            startActivityForResult(intent, 0);
            return;
        }
        Intent intent2 = new Intent(this.f35553O, AddFromCallLogActivity.class);
        intent2.putExtra("black_white_list_type", 0);
        startActivityForResult(intent2, 0);
    }

    /* renamed from: o */
    public final void m3361o() {
        if (this.f35549K.m19939f() == null || this.f35549K.m19939f().getCount() <= 0) {
            Intent intent = new Intent(this.f35553O, EmptyAddFromActivity.class);
            intent.putExtra("black_white_list_type", 0);
            intent.putExtra("source_type", 2);
            startActivityForResult(intent, 0);
            return;
        }
        Intent intent2 = new Intent(this.f35553O, AddFromContactsActivity.class);
        intent2.putExtra("black_white_list_type", 0);
        startActivityForResult(intent2, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 111) {
            this.f35555Q = false;
            if (CBPermissionsHelper.m3287b()) {
                m3363n();
            }
            DialogC6776a aVar = this.f35558T;
            if (aVar != null) {
                aVar.dismiss();
            }
        } else if (i == 112) {
            this.f35556R = false;
            if (CBPermissionsHelper.m3293a()) {
                m3361o();
            }
            DialogC6776a aVar2 = this.f35558T;
            if (aVar2 != null) {
                aVar2.dismiss();
            }
        }
        if (i2 == -1 && i == 0 && intent != null && !"".equals(intent)) {
            ArrayList arrayList = (ArrayList) intent.getSerializableExtra("sign_extra_name");
            if (arrayList != null) {
                for (int i3 = 0; i3 < arrayList.size(); i3++) {
                    if (this.f35564w != null) {
                        for (int i4 = 0; i4 < this.f35564w.size(); i4++) {
                            if (!(this.f35564w.get(i4) == null || arrayList.get(i3) == null || !C6864a.m19519b(this.f35564w.get(i4).getAddress()).equals(C6864a.m19519b(((BlackWhiteListModel) arrayList.get(i3)).getAddress())))) {
                                this.f35564w.remove(i4);
                            }
                        }
                        this.f35564w.add(0, arrayList.get(i3));
                    }
                }
            }
            C6773c cVar = this.f35550L;
            if (cVar != null) {
                cVar.notifyDataSetChanged();
            }
            m3356s();
        }
    }

    @Override // com.netqin.p525cm.main.p529ui.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(2131427379);
        this.f35553O = getApplicationContext();
        this.f35554P = (ListView) findViewById(2131231036);
        this.f35549K = C6727b.m19968a(this.f35553O);
        m3355t();
        m3352w();
        m3351x();
        this.f35554P.setOnItemClickListener(this.f35560V);
        this.f35554P.setCacheColorHint(0);
    }

    @Override // com.netqin.p525cm.main.p529ui.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        m3386A();
    }

    @Override // com.netqin.p525cm.main.p529ui.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        C9141r rVar = new C9141r(this, null);
        this.f35551M = rVar;
        try {
            rVar.m3194b(new Object[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: p */
    public final void m3359p() {
        m3377c(0);
    }

    /* renamed from: q */
    public final void m3358q() {
        DialogC6778b bVar = this.f35565x;
        if (bVar != null) {
            bVar.dismiss();
        }
    }

    /* renamed from: r */
    public final int m3357r() {
        return this.f35549K.m19935g(0);
    }

    /* renamed from: s */
    public final void m3356s() {
        m3358q();
        if (this.f35561t != null && this.f35566y != null) {
            List<BlackWhiteListModel> list = this.f35564w;
            if (list == null || !list.isEmpty()) {
                this.f35561t.setVisibility(0);
                this.f35566y.setVisibility(8);
                ListView listView = this.f35562u;
                if (listView != null) {
                    listView.setAdapter((ListAdapter) this.f35550L);
                    return;
                }
                return;
            }
            this.f35561t.setVisibility(8);
            this.f35566y.setVisibility(0);
        }
    }

    /* renamed from: t */
    public final void m3355t() {
        this.f35552N = new C9140q(this, null);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.netqin.antiharass.delete");
        intentFilter.addAction("com.netqin.antiharass.insert");
        intentFilter.addAction("com.netqin.antiharass.refresh");
        registerReceiver(this.f35552N, intentFilter);
    }

    /* renamed from: u */
    public void m3354u() {
        if (CBPermissionsHelper.m3293a() || !CBPermissionsHelper.m3285c()) {
            CBPermissionsHelper.m3289a(this, new C9128g());
        } else if (!this.f35556R) {
            this.f35556R = true;
            m3374d(112);
        }
    }

    /* renamed from: v */
    public void m3353v() {
        if (CBPermissionsHelper.m3287b() || !CBPermissionsHelper.m3283e()) {
            CBPermissionsHelper.m3286b(this, new C9127f());
        } else if (!this.f35555Q) {
            this.f35555Q = true;
            m3374d(111);
        }
    }

    /* renamed from: w */
    public final void m3352w() {
        ((TextView) findViewById(2131230784)).setText(2131558476);
        ((RelativeLayout) findViewById(2131231075)).setOnClickListener(this.f35557S);
    }

    /* renamed from: x */
    public final void m3351x() {
        this.f35561t = (LinearLayout) findViewById(2131230841);
        this.f35562u = (ListView) findViewById(2131231036);
        ImageView imageView = (ImageView) findViewById(2131230988);
        this.f35548J = imageView;
        imageView.setVisibility(0);
        this.f35548J.setImageResource(2131165479);
        View findViewById = findViewById(2131230990);
        this.f35563v = findViewById;
        findViewById.setVisibility(0);
        this.f35563v.setOnClickListener(this.f35557S);
        ((FrameLayout) findViewById(2131231079)).setVisibility(0);
        ((LinearLayout) findViewById(2131231015)).setVisibility(0);
        TextView textView = (TextView) findViewById(2131231224);
        this.f35566y = textView;
        textView.setVisibility(0);
        this.f35566y.setText(2131558650);
    }

    /* renamed from: y */
    public final void m3350y() {
        DialogC6776a.C6777a aVar = new DialogC6776a.C6777a(this);
        aVar.m19831b(2131558449);
        View inflate = LayoutInflater.from(this).inflate(2131427368, (ViewGroup) null);
        this.f35540B = (TextView) inflate.findViewById(2131230864);
        this.f35541C = (TextView) inflate.findViewById(2131230898);
        this.f35542D = (TextView) inflate.findViewById(2131231280);
        this.f35540B.setOnClickListener(new View$OnClickListenerC9130i());
        this.f35541C.setOnClickListener(new View$OnClickListenerC9131j());
        this.f35542D.setOnClickListener(new View$OnClickListenerC9132k());
        aVar.m19835a(inflate);
        DialogC6776a a = aVar.m19838a();
        this.f35558T = a;
        a.show();
    }

    /* renamed from: z */
    public final void m3349z() {
        DialogC6778b bVar = new DialogC6778b(this);
        this.f35565x = bVar;
        bVar.setCancelable(false);
        this.f35565x.show();
    }
}
