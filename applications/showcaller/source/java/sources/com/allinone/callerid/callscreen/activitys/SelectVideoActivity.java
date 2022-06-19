package com.allinone.callerid.callscreen.activitys;

import android.content.Intent;
import android.database.Cursor;
import android.os.Build;
import android.os.Bundle;
import android.provider.MediaStore;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewStub;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$string;
import com.allinone.callerid.callscreen.bean.HomeInfo;
import com.allinone.callerid.customview.MyGridLayoutManager;
import com.allinone.callerid.main.BaseActivity;
import com.allinone.callerid.p144d.p145a.C2468d;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3772i0;
import com.allinone.callerid.util.C3810q;
import com.hzy.lib7z.ErrorCode;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/SelectVideoActivity.class */
public class SelectVideoActivity extends BaseActivity {

    /* renamed from: u */
    private final String f8413u = "SelectVideoActivity";

    /* renamed from: v */
    private RecyclerView f8414v;

    /* renamed from: w */
    private C2468d f8415w;

    /* renamed from: x */
    private ViewStub f8416x;

    /* renamed from: y */
    private boolean f8417y;

    /* renamed from: com.allinone.callerid.callscreen.activitys.SelectVideoActivity$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/SelectVideoActivity$a.class */
    public class RunnableC2411a implements Runnable {

        /* renamed from: d */
        private ArrayList<HomeInfo> f8418d;

        /* renamed from: com.allinone.callerid.callscreen.activitys.SelectVideoActivity$a$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/SelectVideoActivity$a$a.class */
        class RunnableC2412a implements Runnable {
            RunnableC2412a() {
                RunnableC2411a.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (RunnableC2411a.this.f8418d == null || RunnableC2411a.this.f8418d.size() <= 0) {
                    SelectVideoActivity.this.m27476c0();
                    C3810q.m24071b().m24070c("callscreen_no_video");
                    return;
                }
                SelectVideoActivity.this.f8415w.m27281A(RunnableC2411a.this.f8418d, true);
                SelectVideoActivity.this.f8415w.m31967i();
                SelectVideoActivity.this.f8416x.setVisibility(8);
            }
        }

        RunnableC2411a() {
            SelectVideoActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            Cursor query = SelectVideoActivity.this.getApplicationContext().getContentResolver().query(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, null, null, null, null);
            if (query != null) {
                this.f8418d = new ArrayList<>();
                while (query.moveToNext()) {
                    int i = query.getInt(query.getColumnIndexOrThrow("_id"));
                    String string = query.getString(query.getColumnIndexOrThrow("title"));
                    query.getString(query.getColumnIndexOrThrow("album"));
                    query.getString(query.getColumnIndexOrThrow("artist"));
                    query.getString(query.getColumnIndexOrThrow("_display_name"));
                    query.getString(query.getColumnIndexOrThrow("mime_type"));
                    String string2 = query.getString(query.getColumnIndexOrThrow("_data"));
                    query.getInt(query.getColumnIndexOrThrow("duration"));
                    query.getLong(query.getColumnIndexOrThrow("_size"));
                    HomeInfo homeInfo = new HomeInfo();
                    homeInfo.setPath(string2);
                    homeInfo.setData_id(i + "");
                    homeInfo.setName(string);
                    homeInfo.setIsdiy(true);
                    this.f8418d.add(homeInfo);
                }
                query.close();
            }
            SelectVideoActivity.this.runOnUiThread(new RunnableC2412a());
        }
    }

    /* renamed from: com.allinone.callerid.callscreen.activitys.SelectVideoActivity$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/SelectVideoActivity$b.class */
    public class View$OnClickListenerC2413b implements View.OnClickListener {
        View$OnClickListenerC2413b() {
            SelectVideoActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SelectVideoActivity.this.finish();
            SelectVideoActivity.this.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        }
    }

    /* renamed from: com.allinone.callerid.callscreen.activitys.SelectVideoActivity$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/SelectVideoActivity$c.class */
    public class C2414c implements C2468d.AbstractC2470b {
        C2414c() {
            SelectVideoActivity.this = r4;
        }

        @Override // com.allinone.callerid.p144d.p145a.C2468d.AbstractC2470b
        /* renamed from: a */
        public void mo27284a(HomeInfo homeInfo) {
            try {
                Intent intent = new Intent(SelectVideoActivity.this.getApplicationContext(), CallScreenDiyPdtActivity.class);
                intent.putExtra("homeinfo", homeInfo);
                SelectVideoActivity.this.startActivityForResult(intent, ErrorCode.ERROR_CODE_PATH_ERROR);
                SelectVideoActivity.this.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: a0 */
    private void m27478a0() {
        C3772i0.m24190a().f12015b.execute(new RunnableC2411a());
    }

    /* renamed from: b0 */
    private void m27477b0() {
        TextView textView = (TextView) findViewById(R$id.tv_title);
        this.f8416x = (ViewStub) findViewById(R$id.vs_no_data);
        ImageView imageView = (ImageView) findViewById(R$id.header_left_about);
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue()) {
            imageView.setImageResource(R$drawable.ic_back_oppo);
        }
        imageView.setOnClickListener(new View$OnClickListenerC2413b());
        textView.setTypeface(C3739f1.m24359b());
        this.f8414v = (RecyclerView) findViewById(R$id.recycleview);
        MyGridLayoutManager myGridLayoutManager = new MyGridLayoutManager(getApplicationContext(), 4);
        myGridLayoutManager.m32114z2(1);
        myGridLayoutManager.m27382f3(true);
        this.f8414v.setLayoutManager(myGridLayoutManager);
        C2468d c2468d = new C2468d(this);
        this.f8415w = c2468d;
        this.f8414v.setAdapter(c2468d);
        this.f8415w.m27285D(new C2414c());
    }

    /* renamed from: c0 */
    public void m27476c0() {
        try {
            TextView textView = (TextView) ((RelativeLayout) this.f8416x.inflate()).findViewById(R$id.tv_no_calllog);
            textView.setText(getResources().getString(R$string.no_video));
            textView.setTypeface(C3739f1.m24359b());
        } catch (Exception e) {
            this.f8416x.setVisibility(0);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 999 && i2 == 888) {
            if (this.f8417y) {
                startActivity(new Intent(getApplicationContext(), ManageDiyActivity.class));
                overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
            }
            finish();
            overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        }
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.activity_select_video);
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue() && Build.VERSION.SDK_INT >= 17) {
            getWindow().getDecorView().setLayoutDirection(1);
        }
        this.f8417y = getIntent().getBooleanExtra("is_from_main", false);
        m27477b0();
        m27478a0();
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
