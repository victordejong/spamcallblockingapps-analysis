package com.allinone.callerid.mvc.controller;

import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.main.BaseActivity;
import com.allinone.callerid.mvc.controller.contactpdt.UnknownContactActivity;
import com.allinone.callerid.p136b.C2191j;
import com.allinone.callerid.p162i.p163a.p193w.AbstractC2986c;
import com.allinone.callerid.p162i.p163a.p193w.C2987d;
import com.allinone.callerid.search.CallLogBean;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/IdentifiedActivity.class */
public class IdentifiedActivity extends BaseActivity {

    /* renamed from: v */
    private ListView f10135v;

    /* renamed from: y */
    private C2191j f10138y;

    /* renamed from: u */
    private final String f10134u = "IdentifiedActivity";

    /* renamed from: w */
    private List<CallLogBean> f10136w = new ArrayList();

    /* renamed from: x */
    private HashMap<String, Integer> f10137x = new HashMap<>();

    /* renamed from: z */
    private List<String> f10139z = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.mvc.controller.IdentifiedActivity$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/IdentifiedActivity$a.class */
    public class RunnableC3134a implements Runnable {

        /* renamed from: com.allinone.callerid.mvc.controller.IdentifiedActivity$a$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/IdentifiedActivity$a$a.class */
        class View$OnClickListenerC3135a implements View.OnClickListener {
            View$OnClickListenerC3135a() {
                RunnableC3134a.this = r4;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                IdentifiedActivity.this.finish();
                IdentifiedActivity.this.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
            }
        }

        RunnableC3134a() {
            IdentifiedActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            TextView textView = (TextView) IdentifiedActivity.this.findViewById(R$id.tv_title);
            ImageView imageView = (ImageView) IdentifiedActivity.this.findViewById(R$id.header_left_about);
            if (C3767h1.m24250f0(IdentifiedActivity.this.getApplicationContext()).booleanValue()) {
                imageView.setImageResource(R$drawable.ic_back_oppo);
            }
            imageView.setOnClickListener(new View$OnClickListenerC3135a());
            textView.setTypeface(C3739f1.m24359b());
            IdentifiedActivity.this.m25852c0();
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.IdentifiedActivity$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/IdentifiedActivity$b.class */
    public class C3136b implements AdapterView.OnItemClickListener {
        C3136b() {
            IdentifiedActivity.this = r4;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            if (IdentifiedActivity.this.f10136w == null || IdentifiedActivity.this.f10136w.size() == 0) {
                return;
            }
            CallLogBean callLogBean = (CallLogBean) IdentifiedActivity.this.f10136w.get(i);
            Intent intent = new Intent(IdentifiedActivity.this, UnknownContactActivity.class);
            Bundle bundle = new Bundle();
            bundle.putParcelable("contact_tony", callLogBean);
            intent.putExtras(bundle);
            IdentifiedActivity.this.startActivity(intent);
            IdentifiedActivity.this.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.IdentifiedActivity$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/IdentifiedActivity$c.class */
    public class C3137c implements AbstractC2986c {
        C3137c() {
            IdentifiedActivity.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p193w.AbstractC2986c
        /* renamed from: a */
        public void mo25012a(List<CallLogBean> list, HashMap<String, Integer> hashMap) {
            IdentifiedActivity.this.m25851d0(list, hashMap);
            IdentifiedActivity.this.f10138y.notifyDataSetChanged();
        }
    }

    /* renamed from: b0 */
    private void m25853b0() {
        C2987d.m26306a(getApplicationContext(), this.f10136w, this.f10139z, this.f10137x, new C3137c());
    }

    /* renamed from: c0 */
    public void m25852c0() {
        this.f10135v = (ListView) findViewById(R$id.ob_listview);
        ArrayList arrayList = new ArrayList();
        this.f10136w = arrayList;
        m25851d0(arrayList, this.f10137x);
        this.f10135v.setOnItemClickListener(new C3136b());
        m25853b0();
    }

    /* renamed from: d0 */
    public void m25851d0(List<CallLogBean> list, HashMap<String, Integer> hashMap) {
        C2191j c2191j = new C2191j(this, list, hashMap, this.f10135v, null, null, null);
        this.f10138y = c2191j;
        this.f10135v.setAdapter((ListAdapter) c2191j);
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.activity_identified);
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue() && Build.VERSION.SDK_INT >= 17) {
            getWindow().getDecorView().setLayoutDirection(1);
        }
        getWindow().getDecorView().post(new RunnableC3134a());
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
