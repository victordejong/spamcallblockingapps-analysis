package com.allinone.callerid.mvc.controller.contactslist;

import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.core.content.C0586a;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.main.BaseActivity;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.p136b.C2182h;
import com.allinone.callerid.p162i.p163a.p188r.AbstractC2958e;
import com.allinone.callerid.p162i.p163a.p188r.C2949b;
import com.allinone.callerid.search.CallLogBean;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactslist/EditFavActivity.class */
public class EditFavActivity extends BaseActivity {

    /* renamed from: u */
    private final String f10964u = "EditFavActivity";

    /* renamed from: v */
    public List<CallLogBean> f10965v = new ArrayList();

    /* renamed from: w */
    private C2182h f10966w;

    /* renamed from: com.allinone.callerid.mvc.controller.contactslist.EditFavActivity$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactslist/EditFavActivity$a.class */
    class View$OnClickListenerC3418a implements View.OnClickListener {
        View$OnClickListenerC3418a() {
            EditFavActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            EditFavActivity.this.finish();
            EditFavActivity.this.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.contactslist.EditFavActivity$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactslist/EditFavActivity$b.class */
    public class C3419b implements AbstractC2958e {
        C3419b() {
            EditFavActivity.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p188r.AbstractC2958e
        /* renamed from: a */
        public void mo25301a(List<CallLogBean> list) {
            EditFavActivity editFavActivity = EditFavActivity.this;
            editFavActivity.f10965v = list;
            editFavActivity.f10966w.m27872a(EditFavActivity.this.f10965v, true);
            EditFavActivity.this.f10966w.notifyDataSetChanged();
        }
    }

    /* renamed from: Y */
    private void m25302Y() {
        if (C0586a.m33353a(EZCallApplication.m26146c(), "android.permission.READ_CONTACTS") == 0) {
            C2949b.m26354d(this.f10965v, new C3419b());
        }
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.activity_edit_fav);
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue() && Build.VERSION.SDK_INT >= 17) {
            getWindow().getDecorView().setLayoutDirection(1);
        }
        ((TextView) findViewById(R$id.edit_tip)).setTypeface(C3739f1.m24359b());
        ((TextView) findViewById(R$id.tv_edit_title)).setTypeface(C3739f1.m24359b());
        ImageView imageView = (ImageView) findViewById(R$id.header_left_about);
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue()) {
            imageView.setImageResource(R$drawable.ic_back_oppo);
        }
        imageView.setOnClickListener(new View$OnClickListenerC3418a());
        ListView listView = (ListView) findViewById(R$id.list_contact_fav);
        C2182h c2182h = new C2182h(this);
        this.f10966w = c2182h;
        listView.setAdapter((ListAdapter) c2182h);
        m25302Y();
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
