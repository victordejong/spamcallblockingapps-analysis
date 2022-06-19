package com.allinone.callerid.mvc.controller.recorder;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.bean.recorder.RecordCall;
import com.allinone.callerid.main.BaseActivity;
import com.allinone.callerid.p136b.p139z.C2274f;
import com.allinone.callerid.p157f.p159k.C2645b;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3771i;
import com.allinone.callerid.util.C3772i0;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;
import p020b.p067p.p068a.C1764a;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/RecordListActivity.class */
public class RecordListActivity extends BaseActivity implements View.OnClickListener {

    /* renamed from: u */
    private final String f11160u = "RecordListActivity";

    /* renamed from: v */
    private String f11161v = "";

    /* renamed from: w */
    private String f11162w;

    /* renamed from: x */
    private C2274f f11163x;

    /* renamed from: y */
    private UpdateViewReceiver f11164y;

    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/RecordListActivity$UpdateViewReceiver.class */
    public class UpdateViewReceiver extends BroadcastReceiver {
        public UpdateViewReceiver() {
            RecordListActivity.this = r4;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("com.allinone.callerid.UPDATERECORDLIST".equals(intent.getAction())) {
                RecordListActivity.this.m25171b0();
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.recorder.RecordListActivity$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/RecordListActivity$a.class */
    public class RunnableC3480a implements Runnable {

        /* renamed from: com.allinone.callerid.mvc.controller.recorder.RecordListActivity$a$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/RecordListActivity$a$a.class */
        class RunnableC3481a implements Runnable {

            /* renamed from: d */
            final /* synthetic */ ArrayList f11167d;

            RunnableC3481a(ArrayList arrayList) {
                RunnableC3480a.this = r4;
                this.f11167d = arrayList;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (this.f11167d.size() > 0) {
                    RecordListActivity.this.f11163x.m27781A(this.f11167d, true);
                    RecordListActivity.this.f11163x.m31967i();
                }
            }
        }

        RunnableC3480a() {
            RecordListActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            ArrayList arrayList = (ArrayList) C2645b.m26967d().m26965f(RecordListActivity.this.f11161v);
            if (arrayList == null || arrayList.size() <= 0) {
                return;
            }
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MMM dd", Locale.getDefault());
            SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("mm:ss", Locale.getDefault());
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                RecordCall recordCall = (RecordCall) it.next();
                recordCall.setRecordtime(simpleDateFormat.format(new Date(recordCall.getStarttime())));
                recordCall.setRecordtimems(C3771i.m24197m(new Date(recordCall.getStarttime())));
                recordCall.setTimespanstring(simpleDateFormat2.format(new Date(recordCall.getTimespan())));
            }
            RecordListActivity.this.runOnUiThread(new RunnableC3481a(arrayList));
        }
    }

    /* renamed from: a0 */
    private void m25172a0() {
        ImageView imageView = (ImageView) findViewById(R$id.recordlist_header_left);
        TextView textView = (TextView) findViewById(R$id.recordlist_tv_title);
        RecyclerView recyclerView = (RecyclerView) findViewById(R$id.recordlist_rv);
        textView.setTypeface(C3739f1.m24359b());
        String str = this.f11162w;
        if (str == null || "".equals(str)) {
            textView.setText(this.f11161v);
        } else {
            textView.setText(this.f11162w);
        }
        imageView.setOnClickListener(this);
        this.f11163x = new C2274f(this, new ArrayList());
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this);
        linearLayoutManager.m32114z2(1);
        recyclerView.setLayoutManager(linearLayoutManager);
        recyclerView.setAdapter(this.f11163x);
        m25171b0();
        this.f11164y = new UpdateViewReceiver();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.allinone.callerid.UPDATERECORDLIST");
        C1764a.m28939b(getApplicationContext()).m28938c(this.f11164y, intentFilter);
    }

    /* renamed from: b0 */
    public void m25171b0() {
        C3772i0.m24190a().f12015b.execute(new RunnableC3480a());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() != 2131297445) {
            return;
        }
        finish();
        overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.activity_recordlist);
        this.f11161v = getIntent().getStringExtra("recordnumber");
        this.f11162w = getIntent().getStringExtra("recordname");
        m25172a0();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        if (this.f11164y != null) {
            C1764a.m28939b(getApplicationContext()).m28936e(this.f11164y);
        }
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
