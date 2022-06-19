package com.allinone.callerid.mvc.controller.contactslist;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.customview.BaseEditText;
import com.allinone.callerid.customview.MyListView;
import com.allinone.callerid.customview.SideBar;
import com.allinone.callerid.main.BaseActivity;
import com.allinone.callerid.mvc.controller.contactpdt.ContactActivity;
import com.allinone.callerid.p136b.C2187i;
import com.allinone.callerid.p136b.C2206m;
import com.allinone.callerid.p162i.p163a.p188r.AbstractC2956c;
import com.allinone.callerid.p162i.p163a.p188r.AbstractC2958e;
import com.allinone.callerid.p162i.p163a.p188r.AbstractC2959f;
import com.allinone.callerid.p162i.p163a.p188r.AbstractC2960g;
import com.allinone.callerid.p162i.p163a.p188r.C2942a;
import com.allinone.callerid.p162i.p163a.p188r.C2949b;
import com.allinone.callerid.search.CallLogBean;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3810q;
import com.hzy.lib7z.ErrorCode;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import p020b.p067p.p068a.C1764a;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactslist/ContactsListActivity.class */
public class ContactsListActivity extends BaseActivity {

    /* renamed from: A */
    private C2206m f10918A;

    /* renamed from: B */
    private C3416n f10919B;

    /* renamed from: C */
    private SideBar f10920C;

    /* renamed from: D */
    private ArrayList<CallLogBean> f10921D;

    /* renamed from: F */
    private C2187i f10923F;

    /* renamed from: G */
    private LinearLayout f10924G;

    /* renamed from: H */
    private TextView f10925H;

    /* renamed from: J */
    private ArrayList<CallLogBean> f10927J;

    /* renamed from: K */
    private ArrayList<CallLogBean> f10928K;

    /* renamed from: L */
    private LinearLayout f10929L;

    /* renamed from: M */
    private RelativeLayout f10930M;

    /* renamed from: O */
    private FrameLayout f10932O;

    /* renamed from: P */
    private ImageView f10933P;

    /* renamed from: Q */
    private BaseEditText f10934Q;

    /* renamed from: R */
    private int f10935R;

    /* renamed from: S */
    private TextWatcher f10936S;

    /* renamed from: U */
    private Typeface f10938U;

    /* renamed from: y */
    private ListView f10945y;

    /* renamed from: z */
    private MyListView f10946z;

    /* renamed from: u */
    private final String f10941u = "ContactsListActivity";

    /* renamed from: v */
    public List<String> f10942v = new ArrayList();

    /* renamed from: w */
    public ArrayList<CallLogBean> f10943w = new ArrayList<>();

    /* renamed from: x */
    public List<CallLogBean> f10944x = new ArrayList();

    /* renamed from: E */
    private ArrayList<CallLogBean> f10922E = new ArrayList<>();

    /* renamed from: I */
    private List<String> f10926I = new ArrayList();

    /* renamed from: N */
    private HandlerC3415m f10931N = new HandlerC3415m(this);

    /* renamed from: T */
    public List<CallLogBean> f10937T = new ArrayList();

    /* renamed from: V */
    private Handler f10939V = new Handler();

    /* renamed from: W */
    private Runnable f10940W = new RunnableC3401a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.mvc.controller.contactslist.ContactsListActivity$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$a.class */
    public class RunnableC3401a implements Runnable {

        /* renamed from: com.allinone.callerid.mvc.controller.contactslist.ContactsListActivity$a$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$a$a.class */
        class C3402a implements AdapterView.OnItemClickListener {
            C3402a() {
                RunnableC3401a.this = r4;
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                try {
                    if (ContactsListActivity.this.f10922E != null && ContactsListActivity.this.f10922E.size() > 0) {
                        CallLogBean callLogBean = (CallLogBean) ContactsListActivity.this.f10922E.get(i);
                        Intent intent = new Intent();
                        Bundle bundle = new Bundle();
                        bundle.putParcelable("contact_tony", callLogBean);
                        intent.putExtras(bundle);
                        intent.setClass(ContactsListActivity.this, ContactActivity.class);
                        ContactsListActivity.this.startActivity(intent);
                        ContactsListActivity.this.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                    } else if (ContactsListActivity.this.f10921D == null || ContactsListActivity.this.f10921D.size() <= 0) {
                    } else {
                        CallLogBean callLogBean2 = (CallLogBean) ContactsListActivity.this.f10921D.get(i);
                        Intent intent2 = new Intent();
                        Bundle bundle2 = new Bundle();
                        bundle2.putParcelable("contact_tony", callLogBean2);
                        intent2.putExtras(bundle2);
                        intent2.setClass(ContactsListActivity.this, ContactActivity.class);
                        if (C3718c0.f11914a) {
                            C3718c0.m24436a("favtest", "联系人：" + callLogBean2.toString());
                        }
                        ContactsListActivity.this.startActivity(intent2);
                        ContactsListActivity.this.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        /* renamed from: com.allinone.callerid.mvc.controller.contactslist.ContactsListActivity$a$b */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$a$b.class */
        class C3403b implements AbsListView.OnScrollListener {
            C3403b() {
                RunnableC3401a.this = r4;
            }

            @Override // android.widget.AbsListView.OnScrollListener
            public void onScroll(AbsListView absListView, int i, int i2, int i3) {
                try {
                    if (i > ContactsListActivity.this.f10935R) {
                        ((InputMethodManager) absListView.getContext().getSystemService("input_method")).hideSoftInputFromWindow(absListView.getWindowToken(), 0);
                    } else {
                        int unused = ContactsListActivity.this.f10935R;
                    }
                    ContactsListActivity.this.f10935R = i;
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }

            @Override // android.widget.AbsListView.OnScrollListener
            public void onScrollStateChanged(AbsListView absListView, int i) {
                if (ContactsListActivity.this.f10934Q == null || !ContactsListActivity.this.f10934Q.isCursorVisible()) {
                    return;
                }
                ContactsListActivity.this.f10934Q.setCursorVisible(false);
            }
        }

        RunnableC3401a() {
            ContactsListActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            ContactsListActivity.this.m25344K0();
            ContactsListActivity.this.f10945y.setOnItemClickListener(new C3402a());
            ContactsListActivity.this.f10945y.setOnScrollListener(new C3403b());
            try {
                ContactsListActivity.this.f10919B = new C3416n(ContactsListActivity.this, null);
                C1764a.m28939b(ContactsListActivity.this.getApplicationContext()).m28938c(ContactsListActivity.this.f10919B, new IntentFilter("com.allinone.callerid.STARRED_DATA"));
                C3767h1.m24285G0(ContactsListActivity.this);
                ContactsListActivity.this.m25342M0();
                ContactsListActivity.this.m25347G0();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.contactslist.ContactsListActivity$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$b.class */
    public class C3404b implements AbstractC2958e {
        C3404b() {
            ContactsListActivity.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p188r.AbstractC2958e
        /* renamed from: a */
        public void mo25301a(List<CallLogBean> list) {
            ContactsListActivity.this.f10928K.addAll(list);
            ContactsListActivity.this.f10931N.sendEmptyMessage(ErrorCode.ERROR_CODE_PATH_ERROR);
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.contactslist.ContactsListActivity$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$c.class */
    public class C3405c implements AbstractC2956c {
        C3405c() {
            ContactsListActivity.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p188r.AbstractC2956c
        /* renamed from: a */
        public void mo25309a(List<String> list, List<String> list2, List<CallLogBean> list3) {
            ContactsListActivity.this.f10926I = list2;
            ContactsListActivity contactsListActivity = ContactsListActivity.this;
            contactsListActivity.f10942v = list;
            contactsListActivity.f10944x = list3;
            contactsListActivity.f10931N.sendEmptyMessage(2222);
        }

        @Override // com.allinone.callerid.p162i.p163a.p188r.AbstractC2956c
        /* renamed from: b */
        public void mo25308b() {
            ContactsListActivity.this.f10931N.sendEmptyMessage(3333);
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.contactslist.ContactsListActivity$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$d.class */
    class C3406d implements AbstractC2959f {
        C3406d() {
            ContactsListActivity.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p188r.AbstractC2959f
        /* renamed from: a */
        public void mo25304a(boolean z) {
            if (z) {
                ContactsListActivity.this.f10925H.setVisibility(8);
                ContactsListActivity.this.m25347G0();
                return;
            }
            ArrayList<CallLogBean> arrayList = ContactsListActivity.this.f10943w;
            if (arrayList != null && arrayList.size() > 0) {
                ContactsListActivity.this.f10943w.clear();
                ContactsListActivity.this.f10918A.notifyDataSetChanged();
            }
            ContactsListActivity.this.m25341N0();
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.contactslist.ContactsListActivity$e */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$e.class */
    public class RunnableC3407e implements Runnable {
        RunnableC3407e() {
            ContactsListActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            ContactsListActivity.this.f10938U = C3739f1.m24359b();
            ContactsListActivity contactsListActivity = ContactsListActivity.this;
            contactsListActivity.f10945y = (ListView) contactsListActivity.findViewById(R$id.ob_listview);
            ContactsListActivity.this.m25343L0();
            ContactsListActivity.this.f10939V.post(ContactsListActivity.this.f10940W);
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.contactslist.ContactsListActivity$f */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$f.class */
    public class View$OnClickListenerC3408f implements View.OnClickListener {
        View$OnClickListenerC3408f() {
            ContactsListActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ContactsListActivity.this.finish();
            ContactsListActivity.this.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.contactslist.ContactsListActivity$g */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$g.class */
    public class C3409g implements AbstractC2960g {
        C3409g() {
            ContactsListActivity.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p188r.AbstractC2960g
        /* renamed from: a */
        public void mo25307a(ArrayList<CallLogBean> arrayList) {
            ContactsListActivity.this.f10927J = new ArrayList();
            ContactsListActivity.this.f10927J.addAll(arrayList);
            ContactsListActivity.this.f10931N.sendEmptyMessage(777);
        }

        @Override // com.allinone.callerid.p162i.p163a.p188r.AbstractC2960g
        /* renamed from: b */
        public void mo25306b() {
            try {
                ContactsListActivity.this.f10930M.setVisibility(0);
                ContactsListActivity.this.f10924G.setVisibility(8);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.contactslist.ContactsListActivity$h */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$h.class */
    public class View$OnClickListenerC3410h implements View.OnClickListener {
        View$OnClickListenerC3410h() {
            ContactsListActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                ContactsListActivity.this.f10934Q.setText("");
                ((InputMethodManager) view.getContext().getSystemService("input_method")).hideSoftInputFromWindow(view.getWindowToken(), 0);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.contactslist.ContactsListActivity$i */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$i.class */
    public class C3411i implements TextWatcher {
        C3411i() {
            ContactsListActivity.this = r4;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            try {
                if (ContactsListActivity.this.f10934Q == null) {
                    return;
                }
                String obj = ContactsListActivity.this.f10934Q.getText().toString();
                if ("".equals(obj)) {
                    ContactsListActivity.this.f10933P.setVisibility(4);
                } else {
                    ContactsListActivity.this.f10933P.setVisibility(0);
                }
                if (obj.length() > 0) {
                    ContactsListActivity contactsListActivity = ContactsListActivity.this;
                    contactsListActivity.f10922E = (ArrayList) contactsListActivity.m25340O0(obj);
                    ContactsListActivity.this.f10924G.setVisibility(8);
                    ContactsListActivity.this.f10923F.m27869c(ContactsListActivity.this.f10922E, obj);
                    C3810q.m24071b().m24070c("contact_search");
                } else {
                    ContactsListActivity.this.f10922E.clear();
                    ContactsListActivity.this.f10924G.setVisibility(0);
                    ContactsListActivity.this.f10923F.m27869c(ContactsListActivity.this.f10921D, "");
                    ContactsListActivity.this.f10934Q.setCursorVisible(false);
                }
                ContactsListActivity.this.f10945y.setSelection(0);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.contactslist.ContactsListActivity$j */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$j.class */
    public class View$OnTouchListenerC3412j implements View.OnTouchListener {
        View$OnTouchListenerC3412j() {
            ContactsListActivity.this = r4;
        }

        @Override // android.view.View.OnTouchListener
        @SuppressLint({"ClickableViewAccessibility"})
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0) {
                ContactsListActivity.this.f10934Q.setCursorVisible(true);
                return false;
            }
            return false;
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.contactslist.ContactsListActivity$k */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$k.class */
    public class C3413k implements SideBar.AbstractC2441a {
        C3413k() {
            ContactsListActivity.this = r4;
        }

        @Override // com.allinone.callerid.customview.SideBar.AbstractC2441a
        /* renamed from: a */
        public void mo25305a(String str) {
            int positionForSection = ContactsListActivity.this.f10923F.getPositionForSection(str.charAt(0));
            if (positionForSection == -1) {
                ContactsListActivity.this.f10945y.setSelection(positionForSection);
            } else if (positionForSection == 0) {
                ContactsListActivity.this.f10945y.setSelection(positionForSection);
            } else {
                ContactsListActivity.this.f10945y.setSelection(positionForSection + 1);
            }
            if (str.equals("☆")) {
                ContactsListActivity.this.f10945y.setSelection(0);
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.contactslist.ContactsListActivity$l */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$l.class */
    public class View$OnClickListenerC3414l implements View.OnClickListener {
        View$OnClickListenerC3414l() {
            ContactsListActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ContactsListActivity.this.startActivityForResult(new Intent(ContactsListActivity.this, EditFavActivity.class), 703);
            ContactsListActivity.this.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
            C3810q.m24071b().m24070c("tv_edit");
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.contactslist.ContactsListActivity$m */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$m.class */
    private static class HandlerC3415m extends Handler {

        /* renamed from: a */
        private WeakReference<ContactsListActivity> f10961a;

        public HandlerC3415m(ContactsListActivity contactsListActivity) {
            this.f10961a = new WeakReference<>(contactsListActivity);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            ContactsListActivity contactsListActivity = this.f10961a.get();
            if (contactsListActivity != null) {
                int i = message.what;
                if (i == 666) {
                    try {
                        contactsListActivity.f10930M.setVisibility(0);
                        contactsListActivity.f10924G.setVisibility(8);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                } else if (i == 777) {
                    try {
                        if (contactsListActivity.f10927J != null && contactsListActivity.f10927J.size() > 0) {
                            contactsListActivity.f10930M.setVisibility(8);
                            contactsListActivity.f10932O.setVisibility(0);
                            contactsListActivity.f10924G.setVisibility(0);
                            contactsListActivity.f10921D.clear();
                            contactsListActivity.f10921D.addAll(contactsListActivity.f10927J);
                        }
                        contactsListActivity.f10923F.m27870b(contactsListActivity.f10921D);
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                } else if (i == 999) {
                    try {
                        if (contactsListActivity.f10928K == null || contactsListActivity.f10928K.size() <= 0) {
                            contactsListActivity.m25341N0();
                        } else {
                            contactsListActivity.f10925H.setVisibility(8);
                            contactsListActivity.f10929L.setVisibility(8);
                            contactsListActivity.f10943w.clear();
                            contactsListActivity.f10943w.addAll(contactsListActivity.f10928K);
                            if (contactsListActivity.f10918A != null) {
                                contactsListActivity.f10918A.m27855b(contactsListActivity.f10943w);
                            } else {
                                contactsListActivity.f10918A = new C2206m(contactsListActivity, contactsListActivity.f10943w);
                                contactsListActivity.f10946z.setAdapter((ListAdapter) contactsListActivity.f10918A);
                            }
                        }
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                } else if (i != 2222) {
                    if (i != 3333) {
                        return;
                    }
                    try {
                        contactsListActivity.f10946z.setVisibility(8);
                        contactsListActivity.f10929L.setVisibility(0);
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                } else {
                    try {
                        List<CallLogBean> list = contactsListActivity.f10944x;
                        if (list == null || list.size() <= 0) {
                            contactsListActivity.f10946z.setVisibility(8);
                            contactsListActivity.f10929L.setVisibility(0);
                            return;
                        }
                        contactsListActivity.f10944x.get(0).m24877q0(0);
                        contactsListActivity.f10943w.clear();
                        contactsListActivity.f10943w.add(contactsListActivity.f10944x.get(0));
                        if (contactsListActivity.f10918A != null) {
                            contactsListActivity.f10918A.m27855b(contactsListActivity.f10943w);
                        } else {
                            contactsListActivity.f10918A = new C2206m(contactsListActivity, contactsListActivity.f10943w);
                            contactsListActivity.f10946z.setAdapter((ListAdapter) contactsListActivity.f10918A);
                        }
                        if (contactsListActivity.f10943w.size() != 0) {
                            contactsListActivity.f10925H.setVisibility(0);
                            contactsListActivity.f10929L.setVisibility(8);
                            contactsListActivity.f10946z.setVisibility(0);
                            return;
                        }
                        contactsListActivity.f10925H.setVisibility(8);
                        contactsListActivity.f10946z.setVisibility(8);
                        contactsListActivity.f10929L.setVisibility(0);
                    } catch (Exception e5) {
                        e5.printStackTrace();
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.mvc.controller.contactslist.ContactsListActivity$n */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$n.class */
    public class C3416n extends BroadcastReceiver {

        /* renamed from: com.allinone.callerid.mvc.controller.contactslist.ContactsListActivity$n$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$n$a.class */
        class C3417a implements AbstractC2959f {
            C3417a() {
                C3416n.this = r4;
            }

            @Override // com.allinone.callerid.p162i.p163a.p188r.AbstractC2959f
            /* renamed from: a */
            public void mo25304a(boolean z) {
                if (!z) {
                    ContactsListActivity.this.m25341N0();
                    return;
                }
                ContactsListActivity.this.f10925H.setVisibility(8);
                ContactsListActivity.this.m25347G0();
            }
        }

        private C3416n() {
            ContactsListActivity.this = r4;
        }

        /* synthetic */ C3416n(ContactsListActivity contactsListActivity, RunnableC3401a runnableC3401a) {
            this();
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("com.allinone.callerid.STARRED_DATA".equals(intent.getAction())) {
                C2942a.m26375f(new C3417a());
            }
        }
    }

    /* renamed from: G0 */
    public void m25347G0() {
        this.f10928K = new ArrayList<>();
        C2949b.m26353e(getApplicationContext(), new C3404b());
    }

    /* renamed from: H0 */
    private void m25346H0() {
        getWindow().getDecorView().post(new RunnableC3407e());
    }

    /* renamed from: I0 */
    private void m25345I0() {
        View inflate = LayoutInflater.from(this).inflate(R$layout.contact_list_head, (ViewGroup) null);
        this.f10924G = (LinearLayout) inflate.findViewById(R$id.ll_headview);
        m25339P0(inflate);
        this.f10945y.addHeaderView(inflate, null, false);
    }

    /* renamed from: K0 */
    public void m25344K0() {
        this.f10933P.setOnClickListener(new View$OnClickListenerC3410h());
        C3411i c3411i = new C3411i();
        this.f10936S = c3411i;
        this.f10934Q.addTextChangedListener(c3411i);
        this.f10934Q.setOnTouchListener(new View$OnTouchListenerC3412j());
        this.f10920C.setOnTouchingLetterChangedListener(new C3413k());
    }

    /* renamed from: L0 */
    public void m25343L0() {
        ImageView imageView = (ImageView) findViewById(R$id.header_left_about);
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue()) {
            imageView.setImageResource(R$drawable.ic_back_oppo);
        }
        imageView.setOnClickListener(new View$OnClickListenerC3408f());
        this.f10930M = (RelativeLayout) findViewById(R$id.rl_no_calllog);
        ((TextView) findViewById(R$id.tv_no_calllog)).setTypeface(this.f10938U);
        this.f10932O = (FrameLayout) findViewById(R$id.fl_search);
        this.f10933P = (ImageView) findViewById(R$id.ivClearText_top);
        this.f10934Q = (BaseEditText) findViewById(R$id.et_search_top);
        this.f10920C = (SideBar) findViewById(R$id.sidrbar);
        this.f10920C.setTextView((TextView) findViewById(R$id.dialog));
        m25345I0();
        this.f10921D = new ArrayList<>();
        C2187i c2187i = new C2187i(this, this.f10921D, this.f10945y);
        this.f10923F = c2187i;
        this.f10945y.setAdapter((ListAdapter) c2187i);
    }

    /* renamed from: M0 */
    public void m25342M0() {
        C2949b.m26352f(this, new C3409g());
    }

    /* renamed from: N0 */
    public void m25341N0() {
        C2949b.m26349i(this.f10942v, this.f10926I, this.f10944x, new C3405c());
    }

    /* renamed from: O0 */
    public List<CallLogBean> m25340O0(String str) {
        String str2;
        String str3;
        String str4;
        ArrayList arrayList = new ArrayList();
        try {
            if (str.matches("^([0-9]|[/+]).*")) {
                String replaceAll = str.replaceAll("\\-|\\s", "");
                Iterator<CallLogBean> it = this.f10921D.iterator();
                while (it.hasNext()) {
                    CallLogBean next = it.next();
                    if (next.m24880o() != null && next.m24884m() != null && (next.m24880o().replaceAll("\\-|\\s", "").contains(replaceAll) || next.m24884m().contains(str))) {
                        if (!arrayList.contains(next)) {
                            arrayList.add(next);
                        }
                    }
                }
            } else {
                Iterator<CallLogBean> it2 = this.f10921D.iterator();
                while (it2.hasNext()) {
                    CallLogBean next2 = it2.next();
                    if (next2.m24880o() != null && next2.m24884m() != null && (next2.m24884m().toLowerCase(Locale.CHINESE).contains(str.toLowerCase(Locale.CHINESE)) || (((str2 = next2.f11533u) != null && str2.toLowerCase(Locale.CHINESE).replace(" ", "").contains(str.toLowerCase(Locale.CHINESE))) || (((str3 = next2.f11516h0.f8654d) != null && str3.toLowerCase(Locale.CHINESE).contains(str.toLowerCase(Locale.CHINESE))) || ((str4 = next2.f11516h0.f8655e) != null && str4.toLowerCase(Locale.CHINESE).contains(str.toLowerCase(Locale.CHINESE))))))) {
                        if (!arrayList.contains(next2)) {
                            arrayList.add(next2);
                        }
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return arrayList;
    }

    /* renamed from: P0 */
    private void m25339P0(View view) {
        Typeface m24360a = C3739f1.m24360a();
        TextView textView = (TextView) view.findViewById(R$id.tv_your_fav);
        this.f10925H = (TextView) view.findViewById(R$id.tv_fav_tip);
        this.f10929L = (LinearLayout) view.findViewById(R$id.ll_no_fav_tip);
        ((TextView) view.findViewById(R$id.tv_no_fav_tip1)).setTypeface(this.f10938U);
        ((TextView) view.findViewById(R$id.tv_no_fav_tip2)).setTypeface(m24360a);
        ((TextView) view.findViewById(R$id.tv_no_fav_tip3)).setTypeface(this.f10938U);
        TextView textView2 = (TextView) view.findViewById(R$id.tv_edit);
        textView.setTypeface(m24360a);
        this.f10925H.setTypeface(this.f10938U);
        textView2.setTypeface(m24360a);
        this.f10946z = (MyListView) view.findViewById(R$id.list_contact_fav);
        C2206m c2206m = new C2206m(this, this.f10943w);
        this.f10918A = c2206m;
        this.f10946z.setAdapter((ListAdapter) c2206m);
        textView2.setOnClickListener(new View$OnClickListenerC3414l());
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 703 && i2 == 700) {
            try {
                C2942a.m26375f(new C3406d());
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.activity_contactslist);
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue() && Build.VERSION.SDK_INT >= 17) {
            getWindow().getDecorView().setLayoutDirection(1);
        }
        m25346H0();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        try {
            if (this.f10919B != null) {
                C1764a.m28939b(getApplicationContext()).m28936e(this.f10919B);
            }
            this.f10931N.removeCallbacksAndMessages(null);
            this.f10934Q.removeTextChangedListener(this.f10936S);
            this.f10936S = null;
            this.f10934Q.setOnEditorActionListener(null);
        } catch (Exception e) {
            e.printStackTrace();
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

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }
}
