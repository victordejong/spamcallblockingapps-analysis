package gogolook.callgogolook2.block;

import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.view.MenuItem;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.app.WhoscallCompatActivity;
import p459j.p460a.p521j0.p529x.C12810o;
import p459j.p460a.p533l.C12895f;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p590x4.C14308w;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.schedulers.Schedulers;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/block/BlockManageActivity.class */
public class BlockManageActivity extends WhoscallCompatActivity {

    /* renamed from: b */
    public C12895f f10675b;

    /* renamed from: gogolook.callgogolook2.block.BlockManageActivity$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/block/BlockManageActivity$a.class */
    public class C4426a implements Single.OnSubscribe<Object> {
        public C4426a() {
        }

        /* renamed from: a */
        public void call(SingleSubscriber<? super Object> singleSubscriber) {
            Intent intent = BlockManageActivity.this.getIntent();
            boolean z = false;
            if (intent.getIntExtra("unblock_kind", 0) == 2) {
                z = true;
            }
            if (z) {
                String stringExtra = intent.getStringExtra("unblock_number");
                if (!C14217x3.m2160b(stringExtra)) {
                    String a = C12810o.m5253a(stringExtra);
                    if (!C14217x3.m2160b(a)) {
                        String c = C14308w.m1622c(a);
                        C14308w wVar = C14308w.f32062d;
                        wVar.m1624a(c, "type", 1);
                        wVar.m1625a(c, -2);
                    }
                }
            }
            singleSubscriber.onSuccess(null);
        }
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
    }

    @Override // android.app.Activity
    public boolean onContextItemSelected(MenuItem menuItem) {
        C12895f fVar = this.f10675b;
        return fVar == null ? super.onContextItemSelected(menuItem) : fVar.onContextItemSelected(menuItem);
    }

    @Override // gogolook.callgogolook2.app.WhoscallCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.activity_fragment_container);
        findViewById(R$id.fragment_container).setBackgroundColor(Color.parseColor("#f8f8f8"));
        if (bundle == null || this.f10675b == null) {
            this.f10675b = C12895f.m5040f(0);
            getSupportFragmentManager().beginTransaction().add(R$id.fragment_container, this.f10675b).commit();
        }
        m28675F().setTitle(R$string.block_title);
        Single.create(new C4426a()).subscribeOn(Schedulers.m0io()).subscribe();
    }
}
