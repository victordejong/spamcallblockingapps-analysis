package gogolook.callgogolook2.block.category;

import android.graphics.Color;
import android.os.Bundle;
import android.util.Pair;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.block.category.CategoryBlockAdapter;
import java.util.ArrayList;
import java.util.List;
import p459j.p460a.p533l.p535o.C12998a;
import p459j.p460a.p567t0.C13625a;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14123p4;
import p459j.p460a.p582w0.C14130q3;
import p459j.p460a.p582w0.C14167t;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p590x4.C14289m;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/block/category/CategoryBlockActivity.class */
public class CategoryBlockActivity extends AppCompatActivity {

    /* renamed from: a */
    public CategoryBlockAdapter f10708a;
    @BindView(R$id.rv_block_log)
    public RecyclerView mRvBlockLog;
    @BindView(2131363304)
    public Toolbar mToolbar;
    @BindView(R$id.toolbar_title)
    public TextView mTvTitle;

    /* renamed from: gogolook.callgogolook2.block.category.CategoryBlockActivity$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/block/category/CategoryBlockActivity$a.class */
    public class View$OnClickListenerC4441a implements View.OnClickListener {
        public View$OnClickListenerC4441a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CategoryBlockActivity.this.finish();
        }
    }

    /* renamed from: gogolook.callgogolook2.block.category.CategoryBlockActivity$b */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/block/category/CategoryBlockActivity$b.class */
    public class C4442b implements CategoryBlockAdapter.AbstractC4446d {

        /* renamed from: a */
        public final /* synthetic */ int f10710a;

        public C4442b(CategoryBlockActivity categoryBlockActivity, int i) {
            this.f10710a = i;
        }

        @Override // gogolook.callgogolook2.block.category.CategoryBlockAdapter.AbstractC4446d
        /* renamed from: a */
        public void mo28624a(String str, boolean z) {
            int i = this.f10710a;
            if (i == 0) {
                C14289m.m1865c(str, z);
            } else if (i == 1) {
                C14289m.m1888a(str, z);
            }
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        List<String> list;
        super.onCreate(bundle);
        setContentView(R$layout.block_recyclerview_activity);
        if (!(getIntent() == null || getIntent().getIntExtra("extra_cate_type", -1) == -1)) {
            ButterKnife.bind(this);
            setSupportActionBar(this.mToolbar);
            if (getSupportActionBar() != null) {
                getSupportActionBar().setHomeButtonEnabled(true);
                getSupportActionBar().setDisplayHomeAsUpEnabled(true);
                getSupportActionBar().setTitle("");
            }
            this.mToolbar.setTitleTextColor(Color.parseColor("#ffffff"));
            this.mToolbar.setNavigationIcon(R$drawable.icon_back);
            C14123p4.m2442a(getWindow(), C14123p4.m2448a(C14167t.m2310f(), 0.8f));
            View$OnClickListenerC4441a aVar = new View$OnClickListenerC4441a();
            if (C14017g4.m2805s()) {
                this.mToolbar.setElevation(C14217x3.m2201a(8.0f));
            }
            this.mToolbar.setNavigationOnClickListener(aVar);
            int intExtra = getIntent().getIntExtra("extra_cate_type", -1);
            List<C12998a.C12999a> list2 = null;
            if (intExtra == 0) {
                list2 = C12998a.m4832k().m4836h();
                list = C12998a.m4832k().m4842e();
                this.mTvTitle.setText(R$string.blocklist_menu_telecom);
            } else if (intExtra == 1) {
                list2 = C12998a.m4832k().m4853a();
                list = C12998a.m4832k().m4848b();
                this.mTvTitle.setText(R$string.blocklist_menu_bank);
            } else {
                list = null;
            }
            ArrayList arrayList = new ArrayList();
            if (list2 != null) {
                for (C12998a.C12999a aVar2 : list2) {
                    arrayList.add(new Pair(aVar2.m4830b(), Boolean.valueOf(list.contains(aVar2.m4830b()))));
                }
            }
            this.f10708a = new CategoryBlockAdapter(this, arrayList, new C4442b(this, intExtra));
            this.mRvBlockLog.setLayoutManager(new LinearLayoutManager(this));
            this.mRvBlockLog.setAdapter(this.f10708a);
            this.mRvBlockLog.addItemDecoration(new C14130q3());
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        C13625a.m3821a(MyApplication.m29013o(), 2);
    }
}
