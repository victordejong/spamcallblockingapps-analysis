package com.allinone.callerid.mvc.controller.recorder;

import android.database.Cursor;
import android.graphics.Typeface;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.provider.ContactsContract;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.content.C0586a;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$string;
import com.allinone.callerid.bean.ShortCut;
import com.allinone.callerid.bean.recorder.CustomRecord;
import com.allinone.callerid.main.BaseActivity;
import com.allinone.callerid.p136b.p139z.C2256a;
import com.allinone.callerid.p157f.p159k.C2643a;
import com.allinone.callerid.util.C3714b1;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/CustomAddActivity.class */
public class CustomAddActivity extends BaseActivity implements View.OnClickListener {

    /* renamed from: A */
    private RecyclerView f11147A;

    /* renamed from: B */
    private int f11148B;

    /* renamed from: C */
    private int f11149C;

    /* renamed from: u */
    private final String f11150u = "CustomAddActivity";

    /* renamed from: v */
    private C2256a f11151v;

    /* renamed from: w */
    private ImageView f11152w;

    /* renamed from: x */
    private TextView f11153x;

    /* renamed from: y */
    private ImageView f11154y;

    /* renamed from: z */
    private ImageView f11155z;

    /* renamed from: com.allinone.callerid.mvc.controller.recorder.CustomAddActivity$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/CustomAddActivity$a.class */
    public static class AsyncTaskC3476a extends AsyncTask<Void, Void, String> {

        /* renamed from: a */
        private WeakReference<CustomAddActivity> f11156a;

        AsyncTaskC3476a(CustomAddActivity customAddActivity) {
            this.f11156a = new WeakReference<>(customAddActivity);
        }

        /* renamed from: a */
        public String doInBackground(Void... voidArr) {
            CustomAddActivity customAddActivity = this.f11156a.get();
            if (customAddActivity == null || customAddActivity.isFinishing()) {
                return null;
            }
            try {
                if (customAddActivity.f11151v.m27787F() == null || customAddActivity.f11151v.m27787F().size() <= 0) {
                    return null;
                }
                Iterator<CustomRecord> it = customAddActivity.f11151v.m27787F().iterator();
                while (it.hasNext()) {
                    CustomRecord next = it.next();
                    if (next.isSelect()) {
                        next.setType(customAddActivity.f11148B);
                        next.setSelect(false);
                        C2643a.m26973c().m26975a(next);
                    }
                }
                return "addsuccess";
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            CustomAddActivity customAddActivity = this.f11156a.get();
            if (customAddActivity == null || customAddActivity.isFinishing() || !"addsuccess".equals(str)) {
                return;
            }
            Toast.makeText(customAddActivity, customAddActivity.getString(R$string.custom_addnumber_success), 0).show();
            customAddActivity.finish();
            customAddActivity.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.recorder.CustomAddActivity$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/CustomAddActivity$b.class */
    public static class AsyncTaskC3477b extends AsyncTask<Void, Void, ArrayList<CustomRecord>> {

        /* renamed from: a */
        private WeakReference<CustomAddActivity> f11157a;

        AsyncTaskC3477b(CustomAddActivity customAddActivity) {
            this.f11157a = new WeakReference<>(customAddActivity);
        }

        /* renamed from: a */
        public ArrayList<CustomRecord> doInBackground(Void... voidArr) {
            CustomAddActivity customAddActivity = this.f11157a.get();
            if (customAddActivity == null || customAddActivity.isFinishing()) {
                return null;
            }
            try {
                ArrayList<CustomRecord> arrayList = new ArrayList<>();
                Cursor query = customAddActivity.getContentResolver().query(C3714b1.m24450h(), new String[]{ShortCut.NUMBER, "type", ShortCut.NAME, "photo_id"}, null, null, "date DESC");
                if (query == null || query.getCount() <= 0) {
                    return null;
                }
                query.moveToFirst();
                ArrayList arrayList2 = new ArrayList();
                for (int i = 0; i < query.getCount(); i++) {
                    query.moveToPosition(i);
                    String string = query.getString(query.getColumnIndex(ShortCut.NUMBER));
                    String string2 = query.getString(query.getColumnIndex(ShortCut.NAME));
                    query.getInt(query.getColumnIndex("type"));
                    String string3 = Build.VERSION.SDK_INT >= 21 ? query.getString(query.getColumnIndex("photo_id")) : null;
                    if (string != null && !C3767h1.m24216w0(string) && !arrayList2.contains(string)) {
                        arrayList2.add(string);
                        CustomRecord customRecord = new CustomRecord();
                        customRecord.setName(string2);
                        customRecord.setPhone(string);
                        if (string3 != null && !string3.equals("")) {
                            customRecord.setContactId(string3);
                        }
                        arrayList.add(customRecord);
                    }
                }
                query.close();
                if (arrayList.size() <= 0) {
                    return null;
                }
                return arrayList;
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }

        /* renamed from: b */
        public void onPostExecute(ArrayList<CustomRecord> arrayList) {
            super.onPostExecute(arrayList);
            CustomAddActivity customAddActivity = this.f11157a.get();
            if (customAddActivity == null || customAddActivity.isFinishing() || arrayList == null || arrayList.size() <= 0) {
                return;
            }
            customAddActivity.f11151v.m27781A(arrayList, true);
            customAddActivity.f11151v.m31967i();
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.recorder.CustomAddActivity$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/CustomAddActivity$c.class */
    public static class AsyncTaskC3478c extends AsyncTask<Void, Void, ArrayList<CustomRecord>> {

        /* renamed from: a */
        private WeakReference<CustomAddActivity> f11158a;

        AsyncTaskC3478c(CustomAddActivity customAddActivity) {
            this.f11158a = new WeakReference<>(customAddActivity);
        }

        /* renamed from: a */
        public ArrayList<CustomRecord> doInBackground(Void... voidArr) {
            CustomAddActivity customAddActivity = this.f11158a.get();
            if (customAddActivity == null || customAddActivity.isFinishing()) {
                return null;
            }
            try {
                ArrayList<CustomRecord> arrayList = new ArrayList<>();
                Cursor query = customAddActivity.getContentResolver().query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, new String[]{"display_name", "sort_key", "contact_id", "data1", "photo_id"}, null, null, "sort_key");
                if (query != null && query.getCount() > 0) {
                    query.moveToFirst();
                    for (int i = 0; i < query.getCount(); i++) {
                        query.moveToPosition(i);
                        String string = query.getString(query.getColumnIndex("data1"));
                        String string2 = query.getString(query.getColumnIndex("display_name"));
                        query.getString(query.getColumnIndex("photo_id"));
                        int i2 = query.getInt(query.getColumnIndex("contact_id"));
                        CustomRecord customRecord = new CustomRecord();
                        customRecord.setName(string2);
                        customRecord.setContactId(i2 + "");
                        customRecord.setPhone(string);
                        arrayList.add(customRecord);
                    }
                    if (arrayList.size() > 0) {
                        return arrayList;
                    }
                }
                if (query == null) {
                    return null;
                }
                query.close();
                return null;
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }

        /* renamed from: b */
        public void onPostExecute(ArrayList<CustomRecord> arrayList) {
            super.onPostExecute(arrayList);
            CustomAddActivity customAddActivity = this.f11158a.get();
            if (customAddActivity == null || customAddActivity.isFinishing() || arrayList == null || arrayList.size() <= 0) {
                return;
            }
            customAddActivity.f11151v.m27781A(arrayList, true);
            customAddActivity.f11151v.m31967i();
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.recorder.CustomAddActivity$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/CustomAddActivity$d.class */
    public static class AsyncTaskC3479d extends AsyncTask<Void, Void, Void> {

        /* renamed from: a */
        private WeakReference<CustomAddActivity> f11159a;

        AsyncTaskC3479d(CustomAddActivity customAddActivity) {
            this.f11159a = new WeakReference<>(customAddActivity);
        }

        /* renamed from: a */
        public Void doInBackground(Void... voidArr) {
            CustomAddActivity customAddActivity = this.f11159a.get();
            if (customAddActivity == null || customAddActivity.isFinishing()) {
                return null;
            }
            try {
                ArrayList<CustomRecord> m27779C = customAddActivity.f11151v.m27779C();
                ArrayList<CustomRecord> m27787F = customAddActivity.f11151v.m27787F();
                if (m27779C == null || m27779C.size() <= 0 || m27787F == null) {
                    return null;
                }
                if (m27787F.size() >= m27779C.size()) {
                    Iterator<CustomRecord> it = m27779C.iterator();
                    while (it.hasNext()) {
                        it.next().setSelect(false);
                    }
                    m27787F.clear();
                    return null;
                }
                m27787F.clear();
                Iterator<CustomRecord> it2 = m27779C.iterator();
                while (it2.hasNext()) {
                    CustomRecord next = it2.next();
                    next.setSelect(true);
                    m27787F.add(next);
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
            CustomAddActivity customAddActivity = this.f11159a.get();
            if (customAddActivity == null || customAddActivity.isFinishing()) {
                return;
            }
            customAddActivity.f11151v.m31967i();
            customAddActivity.m25185f0();
        }
    }

    /* renamed from: Z */
    private void m25191Z() {
        new AsyncTaskC3476a(this).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    /* renamed from: a0 */
    private void m25190a0() {
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this);
        linearLayoutManager.m32114z2(1);
        this.f11147A.setLayoutManager(linearLayoutManager);
        C2256a c2256a = new C2256a(this, new ArrayList());
        this.f11151v = c2256a;
        this.f11147A.setAdapter(c2256a);
        if (this.f11149C == 1) {
            m25186e0();
        } else {
            m25187d0();
        }
    }

    /* renamed from: b0 */
    private void m25189b0() {
        this.f11152w.setOnClickListener(this);
        this.f11154y.setOnClickListener(this);
        this.f11155z.setOnClickListener(this);
    }

    /* renamed from: c0 */
    private void m25188c0() {
        Typeface m24359b = C3739f1.m24359b();
        this.f11152w = (ImageView) findViewById(R$id.custom_add_select_close);
        this.f11153x = (TextView) findViewById(R$id.custom_add_select_count);
        this.f11154y = (ImageView) findViewById(R$id.custom_add_select_all);
        this.f11155z = (ImageView) findViewById(R$id.custom_add_select_add);
        this.f11147A = (RecyclerView) findViewById(R$id.custom_add_rl);
        this.f11153x.setTypeface(m24359b);
    }

    /* renamed from: d0 */
    private void m25187d0() {
        if (C0586a.m33353a(getApplicationContext(), "android.permission.READ_CONTACTS") == 0) {
            new AsyncTaskC3478c(this).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
    }

    /* renamed from: e0 */
    private void m25186e0() {
        if (C0586a.m33353a(getApplicationContext(), "android.permission.READ_CALL_LOG") == 0) {
            new AsyncTaskC3477b(this).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
    }

    /* renamed from: g0 */
    private void m25184g0() {
        new AsyncTaskC3479d(this).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    /* renamed from: f0 */
    public void m25185f0() {
        if (this.f11151v.m27779C() == null || this.f11151v.m27779C().size() <= 0 || this.f11151v.m27787F() == null) {
            return;
        }
        TextView textView = this.f11153x;
        textView.setText(this.f11151v.m27787F().size() + "/" + this.f11151v.m27779C().size());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R$id.custom_add_select_add /* 2131296520 */:
                m25191Z();
                return;
            case R$id.custom_add_select_all /* 2131296521 */:
                m25184g0();
                return;
            case R$id.custom_add_select_close /* 2131296522 */:
                finish();
                overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                return;
            default:
                return;
        }
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.activity_custom_add);
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue() && Build.VERSION.SDK_INT >= 17) {
            getWindow().getDecorView().setLayoutDirection(1);
        }
        this.f11148B = getIntent().getIntExtra("customType", 0);
        this.f11149C = getIntent().getIntExtra("phoneDataType", 0);
        m25188c0();
        m25190a0();
        m25189b0();
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
