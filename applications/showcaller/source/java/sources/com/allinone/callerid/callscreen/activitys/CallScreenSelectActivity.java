package com.allinone.callerid.callscreen.activitys;

import android.content.Intent;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.callscreen.bean.PersonaliseContact;
import com.allinone.callerid.customview.BaseEditText;
import com.allinone.callerid.customview.SideBar;
import com.allinone.callerid.main.BaseActivity;
import com.allinone.callerid.p144d.p145a.C2453a;
import com.allinone.callerid.p144d.p150e.C2542b;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3810q;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenSelectActivity.class */
public class CallScreenSelectActivity extends BaseActivity implements View.OnClickListener {

    /* renamed from: A */
    private FrameLayout f8284A;

    /* renamed from: B */
    private ImageView f8285B;

    /* renamed from: C */
    private BaseEditText f8286C;

    /* renamed from: D */
    private SideBar f8287D;

    /* renamed from: E */
    private ArrayList<PersonaliseContact> f8288E;

    /* renamed from: F */
    private C2453a f8289F;

    /* renamed from: G */
    private ListView f8290G;

    /* renamed from: I */
    private ArrayList<PersonaliseContact> f8292I;

    /* renamed from: K */
    private String f8294K;

    /* renamed from: L */
    private boolean f8295L;

    /* renamed from: M */
    private ImageView f8296M;

    /* renamed from: N */
    private boolean f8297N;

    /* renamed from: O */
    private TextWatcher f8298O;

    /* renamed from: v */
    private Typeface f8301v;

    /* renamed from: w */
    private FrameLayout f8302w;

    /* renamed from: z */
    private RelativeLayout f8305z;

    /* renamed from: u */
    private final String f8300u = "CallScreenSelectActivity";

    /* renamed from: x */
    private ArrayList<PersonaliseContact> f8303x = new ArrayList<>();

    /* renamed from: y */
    private Handler f8304y = new Handler();

    /* renamed from: H */
    private ArrayList<PersonaliseContact> f8291H = new ArrayList<>();

    /* renamed from: J */
    private HandlerC2382i f8293J = new HandlerC2382i(this);

    /* renamed from: P */
    private Runnable f8299P = new RunnableC2377d();

    /* renamed from: com.allinone.callerid.callscreen.activitys.CallScreenSelectActivity$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenSelectActivity$a.class */
    class RunnableC2374a implements Runnable {
        RunnableC2374a() {
            CallScreenSelectActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            CallScreenSelectActivity.this.f8301v = C3739f1.m24359b();
            CallScreenSelectActivity.this.m27547u0();
            CallScreenSelectActivity.this.m27549s0();
        }
    }

    /* renamed from: com.allinone.callerid.callscreen.activitys.CallScreenSelectActivity$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenSelectActivity$b.class */
    public class C2375b implements C2453a.AbstractC2455b {
        C2375b() {
            CallScreenSelectActivity.this = r4;
        }

        @Override // com.allinone.callerid.p144d.p145a.C2453a.AbstractC2455b
        /* renamed from: a */
        public void mo27308a(View view, int i, List<PersonaliseContact> list) {
            CallScreenSelectActivity.this.f8303x.clear();
            CallScreenSelectActivity.this.f8303x.addAll(list);
            CallScreenSelectActivity.this.f8302w.setEnabled(list.size() > 0);
        }
    }

    /* renamed from: com.allinone.callerid.callscreen.activitys.CallScreenSelectActivity$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenSelectActivity$c.class */
    public class View$OnClickListenerC2376c implements View.OnClickListener {
        View$OnClickListenerC2376c() {
            CallScreenSelectActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CallScreenSelectActivity.this.m27544x0();
        }
    }

    /* renamed from: com.allinone.callerid.callscreen.activitys.CallScreenSelectActivity$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenSelectActivity$d.class */
    class RunnableC2377d implements Runnable {
        RunnableC2377d() {
            CallScreenSelectActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                CallScreenSelectActivity.this.m27548t0();
                CallScreenSelectActivity.this.m27546v0();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.callscreen.activitys.CallScreenSelectActivity$e */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenSelectActivity$e.class */
    public class C2378e implements C2542b.AbstractC2543a {
        C2378e() {
            CallScreenSelectActivity.this = r4;
        }

        @Override // com.allinone.callerid.p144d.p150e.C2542b.AbstractC2543a
        /* renamed from: a */
        public void mo27145a(ArrayList<PersonaliseContact> arrayList) {
            CallScreenSelectActivity.this.f8292I = new ArrayList();
            CallScreenSelectActivity.this.f8292I.addAll(arrayList);
            CallScreenSelectActivity.this.f8293J.sendEmptyMessage(777);
        }

        @Override // com.allinone.callerid.p144d.p150e.C2542b.AbstractC2543a
        /* renamed from: b */
        public void mo27144b() {
            try {
                CallScreenSelectActivity.this.f8305z.setVisibility(0);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.callscreen.activitys.CallScreenSelectActivity$f */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenSelectActivity$f.class */
    public class View$OnClickListenerC2379f implements View.OnClickListener {
        View$OnClickListenerC2379f() {
            CallScreenSelectActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CallScreenSelectActivity.this.f8286C.setText("");
            try {
                ((InputMethodManager) view.getContext().getSystemService("input_method")).hideSoftInputFromWindow(view.getWindowToken(), 0);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.callscreen.activitys.CallScreenSelectActivity$g */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenSelectActivity$g.class */
    public class C2380g implements TextWatcher {
        C2380g() {
            CallScreenSelectActivity.this = r4;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            String obj = CallScreenSelectActivity.this.f8286C.getText().toString();
            if ("".equals(obj)) {
                CallScreenSelectActivity.this.f8285B.setVisibility(4);
            } else {
                CallScreenSelectActivity.this.f8285B.setVisibility(0);
            }
            if (obj.length() > 0) {
                CallScreenSelectActivity callScreenSelectActivity = CallScreenSelectActivity.this;
                callScreenSelectActivity.f8291H = (ArrayList) callScreenSelectActivity.m27545w0(obj);
                CallScreenSelectActivity.this.f8289F.m27309d(CallScreenSelectActivity.this.f8291H);
                C3810q.m24071b().m24070c("contact_search");
            } else {
                CallScreenSelectActivity.this.f8291H.clear();
                CallScreenSelectActivity.this.f8289F.m27309d(CallScreenSelectActivity.this.f8288E);
            }
            CallScreenSelectActivity.this.f8290G.setSelection(0);
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    /* renamed from: com.allinone.callerid.callscreen.activitys.CallScreenSelectActivity$h */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenSelectActivity$h.class */
    public class C2381h implements SideBar.AbstractC2441a {
        C2381h() {
            CallScreenSelectActivity.this = r4;
        }

        @Override // com.allinone.callerid.customview.SideBar.AbstractC2441a
        /* renamed from: a */
        public void mo25305a(String str) {
            int positionForSection = CallScreenSelectActivity.this.f8289F.getPositionForSection(str.charAt(0));
            if (positionForSection == -1) {
                CallScreenSelectActivity.this.f8290G.setSelection(positionForSection);
            } else if (positionForSection == 0) {
                CallScreenSelectActivity.this.f8290G.setSelection(positionForSection);
            } else {
                CallScreenSelectActivity.this.f8290G.setSelection(positionForSection + 1);
            }
            if (str.equals("☆")) {
                CallScreenSelectActivity.this.f8290G.setSelection(0);
            }
        }
    }

    /* renamed from: com.allinone.callerid.callscreen.activitys.CallScreenSelectActivity$i */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenSelectActivity$i.class */
    private static class HandlerC2382i extends Handler {

        /* renamed from: a */
        private WeakReference<CallScreenSelectActivity> f8314a;

        HandlerC2382i(CallScreenSelectActivity callScreenSelectActivity) {
            this.f8314a = new WeakReference<>(callScreenSelectActivity);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            CallScreenSelectActivity callScreenSelectActivity = this.f8314a.get();
            if (callScreenSelectActivity == null || message.what != 777) {
                return;
            }
            try {
                if (callScreenSelectActivity.f8292I != null && callScreenSelectActivity.f8292I.size() > 0) {
                    callScreenSelectActivity.f8305z.setVisibility(8);
                    callScreenSelectActivity.f8284A.setVisibility(0);
                    callScreenSelectActivity.f8288E.clear();
                    callScreenSelectActivity.f8288E.addAll(callScreenSelectActivity.f8292I);
                }
                callScreenSelectActivity.f8289F.m27309d(callScreenSelectActivity.f8288E);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: s0 */
    public void m27549s0() {
        this.f8304y.post(this.f8299P);
    }

    /* renamed from: t0 */
    public void m27548t0() {
        this.f8285B.setOnClickListener(new View$OnClickListenerC2379f());
        C2380g c2380g = new C2380g();
        this.f8298O = c2380g;
        this.f8286C.addTextChangedListener(c2380g);
        this.f8287D.setOnTouchingLetterChangedListener(new C2381h());
    }

    /* renamed from: u0 */
    public void m27547u0() {
        ImageView imageView = (ImageView) findViewById(R$id.iv_back);
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue()) {
            imageView.setImageResource(R$drawable.ic_back_oppo);
        }
        TextView textView = (TextView) findViewById(R$id.tv_title);
        ImageView imageView2 = (ImageView) findViewById(R$id.iv_selete);
        this.f8296M = imageView2;
        imageView2.setOnClickListener(this);
        this.f8305z = (RelativeLayout) findViewById(R$id.rl_no_calllog);
        ((TextView) findViewById(R$id.tv_no_calllog)).setTypeface(this.f8301v);
        this.f8284A = (FrameLayout) findViewById(R$id.fl_search);
        this.f8285B = (ImageView) findViewById(R$id.ivClearText_top);
        this.f8286C = (BaseEditText) findViewById(R$id.et_search_top);
        this.f8287D = (SideBar) findViewById(R$id.sidrbar);
        this.f8287D.setTextView((TextView) findViewById(R$id.dialog));
        this.f8290G = (ListView) findViewById(R$id.ob_listview);
        this.f8288E = new ArrayList<>();
        C2453a c2453a = new C2453a(this, this.f8288E);
        this.f8289F = c2453a;
        this.f8290G.setAdapter((ListAdapter) c2453a);
        this.f8289F.m27310c(new C2375b());
        this.f8302w = (FrameLayout) findViewById(R$id.fl_setting);
        imageView.setOnClickListener(this);
        textView.setTypeface(this.f8301v);
        ((TextView) findViewById(R$id.tv_setting)).setTypeface(this.f8301v);
        this.f8302w.setOnClickListener(new View$OnClickListenerC2376c());
    }

    /* renamed from: v0 */
    public void m27546v0() {
        C2542b.m27146a(this.f8295L, this.f8294K, new C2378e());
    }

    /* renamed from: w0 */
    public List<PersonaliseContact> m27545w0(String str) {
        ArrayList arrayList = new ArrayList();
        if (str.matches("^([0-9]|[/+]).*")) {
            String replaceAll = str.replaceAll("\\-|\\s", "");
            Iterator<PersonaliseContact> it = this.f8288E.iterator();
            while (it.hasNext()) {
                PersonaliseContact next = it.next();
                if (next.getNumber() != null && next.getName() != null && (next.getNumber().replaceAll("\\-|\\s", "").contains(replaceAll) || next.getName().contains(str))) {
                    if (!arrayList.contains(next)) {
                        arrayList.add(next);
                    }
                }
            }
        } else {
            Iterator<PersonaliseContact> it2 = this.f8288E.iterator();
            while (it2.hasNext()) {
                PersonaliseContact next2 = it2.next();
                if (next2.getNumber() != null && next2.getName() != null && (next2.getName().toLowerCase(Locale.CHINESE).contains(str.toLowerCase(Locale.CHINESE)) || next2.sortKey.toLowerCase(Locale.CHINESE).replace(" ", "").contains(str.toLowerCase(Locale.CHINESE)) || next2.sortToken.f8654d.toLowerCase(Locale.CHINESE).contains(str.toLowerCase(Locale.CHINESE)) || next2.sortToken.f8655e.toLowerCase(Locale.CHINESE).contains(str.toLowerCase(Locale.CHINESE)))) {
                    if (!arrayList.contains(next2)) {
                        arrayList.add(next2);
                    }
                }
            }
        }
        return arrayList;
    }

    /* renamed from: x0 */
    public void m27544x0() {
        Intent intent = new Intent();
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("selected_contacts", this.f8303x);
        intent.putExtras(bundle);
        setResult(9898, intent);
        finish();
        overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == 2131296951) {
            setResult(9898);
            finish();
            overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        } else if (id == 2131297046) {
            if (this.f8297N) {
                this.f8297N = false;
                ArrayList<PersonaliseContact> arrayList = this.f8292I;
                if (arrayList != null && arrayList.size() > 0) {
                    for (int i = 0; i < this.f8292I.size(); i++) {
                        this.f8292I.get(i).setIsselect(false);
                    }
                }
                this.f8303x.clear();
            } else {
                this.f8297N = true;
                ArrayList<PersonaliseContact> arrayList2 = this.f8292I;
                if (arrayList2 != null && arrayList2.size() > 0) {
                    for (int i2 = 0; i2 < this.f8292I.size(); i2++) {
                        this.f8292I.get(i2).setIsselect(true);
                    }
                    this.f8303x.clear();
                    this.f8303x.addAll(this.f8292I);
                }
            }
            C2453a c2453a = this.f8289F;
            if (c2453a == null) {
                return;
            }
            c2453a.notifyDataSetChanged();
        }
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            setContentView(R$layout.activity_callscreen_select);
            if (C3767h1.m24250f0(getApplicationContext()).booleanValue() && Build.VERSION.SDK_INT >= 17) {
                getWindow().getDecorView().setLayoutDirection(1);
            }
            this.f8294K = getIntent().getStringExtra("theme_name");
            this.f8295L = getIntent().getBooleanExtra("is_default", false);
            getWindow().getDecorView().post(new RunnableC2374a());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        try {
            this.f8286C.removeTextChangedListener(this.f8298O);
            this.f8298O = null;
            this.f8286C.setOnEditorActionListener(null);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            setResult(9898);
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
