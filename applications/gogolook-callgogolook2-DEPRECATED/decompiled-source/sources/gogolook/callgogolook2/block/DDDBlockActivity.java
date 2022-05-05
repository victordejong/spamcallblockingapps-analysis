package gogolook.callgogolook2.block;

import android.app.Activity;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.block.DDDBlockActivity;
import gogolook.callgogolook2.ndp.WrappedLinearLayoutManager;
import p459j.p460a.p567t0.C13625a;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14073m;
import p459j.p460a.p582w0.C14116p0;
import p459j.p460a.p582w0.C14123p4;
import p459j.p460a.p582w0.C14130q3;
import p459j.p460a.p582w0.C14167t;
import p459j.p460a.p582w0.C14191v;
import p459j.p460a.p582w0.C14217x3;
import p660rx.Subscription;
import p660rx.functions.Action1;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/block/DDDBlockActivity.class */
public class DDDBlockActivity extends AppCompatActivity {

    /* renamed from: a */
    public DDDBlockAdapter f10677a;

    /* renamed from: b */
    public Subscription f10678b = null;
    @BindView(R$id.rv_block_log)
    public RecyclerView rv_block_log;
    @BindView(2131363304)
    public Toolbar toolbar;
    @BindView(R$id.toolbar_title)
    public TextView tvTitle;

    /* renamed from: gogolook.callgogolook2.block.DDDBlockActivity$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/block/DDDBlockActivity$a.class */
    public class View$OnClickListenerC4427a implements View.OnClickListener {
        public View$OnClickListenerC4427a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DDDBlockActivity.this.finish();
        }
    }

    /* renamed from: D */
    public /* synthetic */ void m28645D() {
        this.f10677a.m28636a(C14073m.m2627b());
    }

    /* renamed from: E */
    public final void m28644E() {
        if (this.f10678b == null) {
            this.f10678b = C14037j3.m2731a().mo2703a(new Action1() { // from class: j.a.l.c
                @Override // p660rx.functions.Action1
                public final void call(Object obj) {
                    DDDBlockActivity.this.m28642a(obj);
                }
            });
        }
    }

    /* renamed from: F */
    public final void m28643F() {
        Subscription subscription = this.f10678b;
        if (subscription != null && !subscription.isUnsubscribed()) {
            this.f10678b.unsubscribe();
        }
        this.f10678b = null;
    }

    /* renamed from: a */
    public /* synthetic */ void m28642a(Object obj) {
        if ((obj instanceof C14116p0) && C14191v.m2262a((Activity) this) && this.f10677a != null) {
            runOnUiThread(new Runnable() { // from class: j.a.l.b
                @Override // java.lang.Runnable
                public final void run() {
                    DDDBlockActivity.this.m28645D();
                }
            });
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.block_recyclerview_activity);
        ButterKnife.bind(this);
        setSupportActionBar(this.toolbar);
        if (getSupportActionBar() != null) {
            getSupportActionBar().setHomeButtonEnabled(true);
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
            getSupportActionBar().setTitle("");
        }
        this.toolbar.setTitleTextColor(Color.parseColor("#ffffff"));
        this.toolbar.setNavigationIcon(R$drawable.icon_back);
        C14123p4.m2442a(getWindow(), C14123p4.m2448a(C14167t.m2310f(), 0.8f));
        View$OnClickListenerC4427a aVar = new View$OnClickListenerC4427a();
        if (Build.VERSION.SDK_INT >= 21) {
            this.toolbar.setElevation(C14217x3.m2201a(8.0f));
        }
        this.toolbar.setNavigationOnClickListener(aVar);
        this.tvTitle.setText(R$string.blocklist_sepcific_ddd_actionbar);
        this.f10677a = new DDDBlockAdapter(this, C14073m.m2627b());
        this.rv_block_log.setLayoutManager(new WrappedLinearLayoutManager(this));
        this.rv_block_log.setAdapter(this.f10677a);
        this.rv_block_log.addItemDecoration(new C14130q3());
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.f10677a.notifyDataSetChanged();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        m28644E();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        m28643F();
        this.f10677a.m28641a();
        C13625a.m3821a(MyApplication.m29013o(), 2);
    }
}
