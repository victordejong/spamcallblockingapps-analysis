package gogolook.callgogolook2.main.logselect;

import android.app.ActionBar;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageButton;
import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject;
import gogolook.callgogolook2.view.SizedTextView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import kotlin.Metadata;
import p459j.p460a.p463b0.p469v.AbstractC11398a;
import p459j.p460a.p463b0.p469v.AbstractC11399b;
import p459j.p460a.p463b0.p469v.C11403e;
import p459j.p460a.p463b0.p469v.C11408f;
import p459j.p460a.p582w0.C13935c1;
import p459j.p460a.p582w0.C14037j3;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.C14989s;
import p626l.p629c0.AbstractC14906i;
import p626l.p632u.C15021m;
import p626l.p632u.C15022n;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
import p660rx.functions.Action1;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0018�� \"2\u00020\u00012\u00020\u0002:\u0001\"B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\u0012\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0014J\b\u0010\u001c\u001a\u00020\u0019H\u0014J\b\u0010\u001d\u001a\u00020\u0019H\u0014J\u0016\u0010\u001e\u001a\u00020\u00192\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020!0 H\u0016R\u0018\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0007R\u001b\u0010\b\u001a\u00020\t8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\n\u0010\u000bR\u001b\u0010\u000e\u001a\u00020\u000f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\r\u001a\u0004\b\u0010\u0010\u0011R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e¢\u0006\u0002\n��¨\u0006#"}, m815d2 = {"Lgogolook/callgogolook2/main/logselect/LogSelectionActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "Lgogolook/callgogolook2/main/logselect/LogSelectionContract$View;", "()V", "excludeLogArray", "", "", "[Ljava/lang/String;", "logSelectionPresenter", "Lgogolook/callgogolook2/main/logselect/LogSelectionContract$Presenter;", "getLogSelectionPresenter", "()Lgogolook/callgogolook2/main/logselect/LogSelectionContract$Presenter;", "logSelectionPresenter$delegate", "Lkotlin/Lazy;", "logSelectionRecyclerViewAdapter", "Lgogolook/callgogolook2/main/logselect/LogSelectionRecyclerViewAdapter;", "getLogSelectionRecyclerViewAdapter", "()Lgogolook/callgogolook2/main/logselect/LogSelectionRecyclerViewAdapter;", "logSelectionRecyclerViewAdapter$delegate", "overFlowString", "subscription", "Lrx/Subscription;", "getViewContext", "Landroid/content/Context;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onResume", "onStart", "setItems", "logItems", "", "Lgogolook/callgogolook2/realm/obj/logsgroup/LogsGroupRealmObject;", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/main/logselect/LogSelectionActivity.class */
public final class LogSelectionActivity extends AppCompatActivity implements AbstractC11399b {

    /* renamed from: f */
    public static final /* synthetic */ AbstractC14906i[] f11159f;

    /* renamed from: g */
    public static final C4610a f11160g = new C4610a(null);

    /* renamed from: a */
    public final AbstractC14974f f11161a = C14975g.m662a(new C4611b());

    /* renamed from: b */
    public final AbstractC14974f f11162b = C14975g.m662a(C4612c.f11167a);

    /* renamed from: c */
    public String[] f11163c;

    /* renamed from: d */
    public String f11164d;

    /* renamed from: e */
    public HashMap f11165e;

    /* renamed from: gogolook.callgogolook2.main.logselect.LogSelectionActivity$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/main/logselect/LogSelectionActivity$a.class */
    public static final class C4610a {
        public C4610a() {
        }

        public /* synthetic */ C4610a(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final Intent m27791a(Context context, int i, int i2, int i3, int i4, String[] strArr) {
            C15149k.m377b(context, "context");
            Intent intent = new Intent(context, LogSelectionActivity.class);
            intent.putExtra("exclude_logs", strArr);
            intent.putExtra("title_res", i2);
            intent.putExtra("bottom_btn_string_res", i3);
            intent.putExtra("bottom_btn_color", i4);
            intent.putExtra("selection_type", i);
            return intent;
        }
    }

    /* renamed from: gogolook.callgogolook2.main.logselect.LogSelectionActivity$b */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/main/logselect/LogSelectionActivity$b.class */
    public static final class C4611b extends AbstractC15150l implements AbstractC15107a<C11403e> {
        public C4611b() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final C11403e invoke() {
            return new C11403e(LogSelectionActivity.this);
        }
    }

    /* renamed from: gogolook.callgogolook2.main.logselect.LogSelectionActivity$c */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/main/logselect/LogSelectionActivity$c.class */
    public static final class C4612c extends AbstractC15150l implements AbstractC15107a<C11408f> {

        /* renamed from: a */
        public static final C4612c f11167a = new C4612c();

        public C4612c() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final C11408f invoke() {
            return new C11408f();
        }
    }

    /* renamed from: gogolook.callgogolook2.main.logselect.LogSelectionActivity$d */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/main/logselect/LogSelectionActivity$d.class */
    public static final class View$OnClickListenerC4613d implements View.OnClickListener {
        public View$OnClickListenerC4613d() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            LogSelectionActivity.this.onBackPressed();
        }
    }

    /* renamed from: gogolook.callgogolook2.main.logselect.LogSelectionActivity$e */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/main/logselect/LogSelectionActivity$e.class */
    public static final class View$OnClickListenerC4614e implements View.OnClickListener {
        public View$OnClickListenerC4614e() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            HashSet<Integer> e = LogSelectionActivity.this.m27796E().m9663e();
            List<LogsGroupRealmObject> d = LogSelectionActivity.this.m27796E().m9664d();
            if (d != null) {
                String[] strArr = new String[e.size()];
                ArrayList arrayList = new ArrayList(C15022n.m555a(e, 10));
                int i = 0;
                for (Object obj : e) {
                    if (i >= 0) {
                        strArr[i] = d.get(((Number) obj).intValue()).getNumber();
                        arrayList.add(C14989s.f33022a);
                        i++;
                    } else {
                        C15021m.m558c();
                        throw null;
                    }
                }
                Intent intent = new Intent();
                intent.putExtra("selection_numbers", strArr);
                LogSelectionActivity.this.setResult(-1, intent);
                LogSelectionActivity.this.finish();
                return;
            }
            LogSelectionActivity.this.finish();
        }
    }

    /* renamed from: gogolook.callgogolook2.main.logselect.LogSelectionActivity$f */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/main/logselect/LogSelectionActivity$f.class */
    public static final class C4615f<T> implements Action1<Object> {
        public C4615f() {
        }

        @Override // p660rx.functions.Action1
        public final void call(Object obj) {
            C13935c1 c1Var;
            String str;
            if (obj instanceof C13935c1) {
                SizedTextView sizedTextView = (SizedTextView) LogSelectionActivity.this.m27792e(R$id.mTvOverFlow);
                C15149k.m383a((Object) sizedTextView, "mTvOverFlow");
                StringBuilder sb = new StringBuilder();
                sb.append(LogSelectionActivity.this.f11164d);
                sb.append(' ');
                if (((C13935c1) obj).f31318a > 0) {
                    str = " (" + c1Var.f31318a + ')';
                } else {
                    str = "";
                }
                sb.append(str);
                sizedTextView.setText(sb.toString());
            }
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(LogSelectionActivity.class), "logSelectionPresenter", "getLogSelectionPresenter()Lgogolook/callgogolook2/main/logselect/LogSelectionContract$Presenter;");
        C15131a0.m412a(sVar);
        C15157s sVar2 = new C15157s(C15131a0.m419a(LogSelectionActivity.class), "logSelectionRecyclerViewAdapter", "getLogSelectionRecyclerViewAdapter()Lgogolook/callgogolook2/main/logselect/LogSelectionRecyclerViewAdapter;");
        C15131a0.m412a(sVar2);
        f11159f = new AbstractC14906i[]{sVar, sVar2};
    }

    /* renamed from: a */
    public static final Intent m27795a(Context context, int i, int i2, int i3, int i4, String[] strArr) {
        return f11160g.m27791a(context, i, i2, i3, i4, strArr);
    }

    /* renamed from: D */
    public final AbstractC11398a m27797D() {
        AbstractC14974f fVar = this.f11161a;
        AbstractC14906i iVar = f11159f[0];
        return (AbstractC11398a) fVar.getValue();
    }

    /* renamed from: E */
    public final C11408f m27796E() {
        AbstractC14974f fVar = this.f11162b;
        AbstractC14906i iVar = f11159f[1];
        return (C11408f) fVar.getValue();
    }

    @Override // p459j.p460a.p463b0.p469v.AbstractC11399b
    /* renamed from: a */
    public void mo9689a(List<? extends LogsGroupRealmObject> list) {
        C15149k.m377b(list, "logItems");
        m27796E().m9667a(list);
    }

    /* renamed from: e */
    public View m27792e(int i) {
        if (this.f11165e == null) {
            this.f11165e = new HashMap();
        }
        View view = (View) this.f11165e.get(Integer.valueOf(i));
        View view2 = view;
        if (view == null) {
            view2 = findViewById(i);
            this.f11165e.put(Integer.valueOf(i), view2);
        }
        return view2;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.activity_log_selection);
        ActionBar actionBar = getActionBar();
        if (actionBar != null) {
            actionBar.hide();
        }
        RecyclerView recyclerView = (RecyclerView) m27792e(R$id.mRvSelectionLogs);
        if (recyclerView != null) {
            recyclerView.setLayoutManager(new LinearLayoutManager(this));
            recyclerView.setAdapter(m27796E());
        }
        ((ImageButton) m27792e(R$id.mIbBack)).setOnClickListener(new View$OnClickListenerC4613d());
        this.f11164d = getString(getIntent().getIntExtra("bottom_btn_string_res", 0));
        ((SizedTextView) m27792e(R$id.mTvTitle)).setText(getIntent().getIntExtra("title_res", 0));
        SizedTextView sizedTextView = (SizedTextView) m27792e(R$id.mTvOverFlow);
        C15149k.m383a((Object) sizedTextView, "mTvOverFlow");
        sizedTextView.setText(this.f11164d);
        ((SizedTextView) m27792e(R$id.mTvOverFlow)).setBackgroundColor(getIntent().getIntExtra("bottom_btn_color", -13451228));
        ((SizedTextView) m27792e(R$id.mTvOverFlow)).setOnClickListener(new View$OnClickListenerC4614e());
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        Intent intent = getIntent();
        if (intent != null) {
            if (!intent.hasExtra("exclude_logs")) {
                intent = null;
            }
            if (intent != null) {
                this.f11163c = intent.getStringArrayExtra("exclude_logs");
            }
        }
        m27797D().mo9677a(this.f11163c, getIntent().getIntExtra("selection_type", 3));
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        C14037j3.m2731a().mo2703a((Action1) new C4615f());
    }
}
