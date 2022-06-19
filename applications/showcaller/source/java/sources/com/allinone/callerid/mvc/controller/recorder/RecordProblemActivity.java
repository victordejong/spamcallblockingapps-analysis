package com.allinone.callerid.mvc.controller.recorder;

import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.main.BaseActivity;
import com.allinone.callerid.p136b.p139z.C2269e;
import com.allinone.callerid.p157f.p159k.C2647c;
import com.allinone.callerid.util.C3739f1;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/RecordProblemActivity.class */
public class RecordProblemActivity extends BaseActivity implements View.OnClickListener {

    /* renamed from: u */
    private final String f11169u = "RecordProblemActivity";

    /* renamed from: v */
    private C2269e f11170v;

    /* renamed from: com.allinone.callerid.mvc.controller.recorder.RecordProblemActivity$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/RecordProblemActivity$a.class */
    public class RunnableC3482a implements Runnable {

        /* renamed from: com.allinone.callerid.mvc.controller.recorder.RecordProblemActivity$a$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/recorder/RecordProblemActivity$a$a.class */
        class RunnableC3483a implements Runnable {

            /* renamed from: d */
            final /* synthetic */ ArrayList f11172d;

            RunnableC3483a(ArrayList arrayList) {
                RunnableC3482a.this = r4;
                this.f11172d = arrayList;
            }

            @Override // java.lang.Runnable
            public void run() {
                ArrayList arrayList = this.f11172d;
                if (arrayList == null || arrayList.size() <= 0) {
                    return;
                }
                RecordProblemActivity.this.f11170v.m27781A(this.f11172d, true);
                RecordProblemActivity.this.f11170v.m31967i();
            }
        }

        RunnableC3482a() {
            RecordProblemActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            RecordProblemActivity.this.runOnUiThread(new RunnableC3483a((ArrayList) C2647c.m26958b().m26957c()));
        }
    }

    /* renamed from: Y */
    private void m25169Y() {
        ImageView imageView = (ImageView) findViewById(R$id.recordissue_header_left);
        TextView textView = (TextView) findViewById(R$id.recordissue_tv_title);
        TextView textView2 = (TextView) findViewById(R$id.recordissue_tv_referral_title);
        TextView textView3 = (TextView) findViewById(R$id.recordissue_tv_referral_content1);
        TextView textView4 = (TextView) findViewById(R$id.recordissue_tv_referral_content2);
        RecyclerView recyclerView = (RecyclerView) findViewById(R$id.recordissue_rv);
        textView.setTypeface(C3739f1.m24359b());
        textView2.setTypeface(C3739f1.m24359b());
        textView3.setTypeface(C3739f1.m24359b());
        textView4.setTypeface(C3739f1.m24359b());
        imageView.setOnClickListener(this);
        this.f11170v = new C2269e(this, new ArrayList());
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this);
        linearLayoutManager.m32114z2(1);
        recyclerView.setLayoutManager(linearLayoutManager);
        recyclerView.setAdapter(this.f11170v);
        m25168Z();
    }

    /* renamed from: Z */
    private void m25168Z() {
        new Thread(new RunnableC3482a()).start();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() != 2131297439) {
            return;
        }
        finish();
        overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.activity_record_problem);
        m25169Y();
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
