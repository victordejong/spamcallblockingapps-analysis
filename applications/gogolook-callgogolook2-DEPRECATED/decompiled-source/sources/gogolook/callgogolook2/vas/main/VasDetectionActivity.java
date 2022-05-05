package gogolook.callgogolook2.vas.main;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Observer;
import com.google.android.material.appbar.AppBarLayout;
import com.mopub.common.Constants;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$menu;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.phone.SettingResultActivity;
import gogolook.callgogolook2.vas.main.adapter.VasMessageItem;
import java.util.ArrayList;
import java.util.HashMap;
import kotlin.Metadata;
import p459j.p460a.p521j0.p529x.C12810o;
import p459j.p460a.p550p.AbstractC13298a;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14197v4;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.p590x4.C14289m;
import p459j.p460a.p604y0.p608d.C14507a;
import p459j.p460a.p604y0.p608d.C14508b;
import p459j.p460a.p604y0.p608d.C14519c;
import p459j.p460a.p604y0.p608d.C14523d;
import p459j.p460a.p604y0.p608d.C14527e;
import p459j.p460a.p604y0.p608d.C14532f;
import p459j.p460a.p604y0.p608d.C14535g;
import p459j.p460a.p604y0.p611f.C14588a;
import p626l.C14976h;
import p626l.C14978j;
import p626l.C14986p;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u0018�� !2\u00020\u0001:\u0001!B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0007\u001a\u00020\bH\u0002J\b\u0010\t\u001a\u00020\bH\u0002J\b\u0010\n\u001a\u00020\bH\u0002J\u0006\u0010\u000b\u001a\u00020\fJ\u0012\u0010\r\u001a\u00020\b2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0014J\u0012\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\u0012\u0010\u0014\u001a\u00020\b2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0014J\u0012\u0010\u0017\u001a\u00020\u00112\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\b\u0010\u001a\u001a\u00020\bH\u0002J\b\u0010\u001b\u001a\u00020\bH\u0002J\b\u0010\u001c\u001a\u00020\bH\u0002J\b\u0010\u001d\u001a\u00020\bH\u0002J\b\u0010\u001e\u001a\u00020\bH\u0002J\b\u0010\u001f\u001a\u00020\bH\u0002J\b\u0010 \u001a\u00020\bH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.¢\u0006\u0002\n��¨\u0006\""}, m815d2 = {"Lgogolook/callgogolook2/vas/main/VasDetectionActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "()V", "sourceFrom", "", "viewDataBinding", "Lgogolook/callgogolook2/databinding/ActivityVasDetectionBinding;", "appendAppBarBehavior", "", "fetchGFValue", "hideStatusBar", "obtainViewModel", "Lgogolook/callgogolook2/vas/main/SharedVasViewModel;", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onCreateOptionsMenu", "", SupportMenuInflater.XML_MENU, "Landroid/view/Menu;", "onNewIntent", Constants.INTENT_SCHEME, "Landroid/content/Intent;", "onOptionsItemSelected", "item", "Landroid/view/MenuItem;", "removeAppBarBehavior", "setupActionBar", "setupFragment", "setupViewModel", "setupViews", "showStatusBar", "trackShareEvent", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/vas/main/VasDetectionActivity.class */
public final class VasDetectionActivity extends AppCompatActivity {

    /* renamed from: d */
    public static String f12987d;

    /* renamed from: e */
    public static String f12988e;

    /* renamed from: f */
    public static final C5262a f12989f = new C5262a(null);

    /* renamed from: a */
    public AbstractC13298a f12990a;

    /* renamed from: b */
    public int f12991b = 3;

    /* renamed from: c */
    public HashMap f12992c;

    /* renamed from: gogolook.callgogolook2.vas.main.VasDetectionActivity$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/vas/main/VasDetectionActivity$a.class */
    public static final class C5262a {
        public C5262a() {
        }

        public /* synthetic */ C5262a(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final String m25954a() {
            return VasDetectionActivity.f12987d;
        }

        /* renamed from: b */
        public final String m25953b() {
            return VasDetectionActivity.f12988e;
        }
    }

    /* renamed from: gogolook.callgogolook2.vas.main.VasDetectionActivity$b */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/vas/main/VasDetectionActivity$b.class */
    public static final class C5263b<T> implements Observer<Void> {
        public C5263b() {
        }

        /* renamed from: a */
        public final void onChanged(Void r8) {
            if (!C12810o.m5233l()) {
                SettingResultActivity.m26752a(VasDetectionActivity.this, 1002);
                return;
            }
            VasDetectionActivity.this.m25969F();
            VasDetectionActivity vasDetectionActivity = VasDetectionActivity.this;
            C14588a.m1054a(vasDetectionActivity, R$id.fragment_container, C14535g.f32478c.m1154a(0L, vasDetectionActivity.f12991b));
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��$\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0003\u0010��\u001a\u00020\u00012F\u0010\u0002\u001aB\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\b\u0012\u0004\u0012\u00020\u0005`\u0006\u0012\u0004\u0012\u00020\u0007 \b* \u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\b\u0012\u0004\u0012\u00020\u0005`\u0006\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\t¨\u0006\n"}, m815d2 = {"<anonymous>", "", "pair", "Lkotlin/Pair;", "Ljava/util/ArrayList;", "Lgogolook/callgogolook2/vas/main/adapter/VasMessageItem;", "Lkotlin/collections/ArrayList;", "Lgogolook/callgogolook2/vas/main/MiscParameters;", "kotlin.jvm.PlatformType", "onChanged", "gogolook/callgogolook2/vas/main/VasDetectionActivity$setupViewModel$1$2"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: gogolook.callgogolook2.vas.main.VasDetectionActivity$c */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/vas/main/VasDetectionActivity$c.class */
    public static final class C5264c<T> implements Observer<C14978j<? extends ArrayList<VasMessageItem>, ? extends C14507a>> {

        /* renamed from: gogolook.callgogolook2.vas.main.VasDetectionActivity$c$a */
        /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/vas/main/VasDetectionActivity$c$a.class */
        public static final class RunnableC5265a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ C14978j f12995a;

            /* renamed from: b */
            public final /* synthetic */ C5264c f12996b;

            public RunnableC5265a(C14978j jVar, C5264c cVar) {
                this.f12995a = jVar;
                this.f12996b = cVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                if (!VasDetectionActivity.this.isFinishing()) {
                    C14519c cVar = null;
                    C14507a aVar = (C14507a) this.f12995a.m658d();
                    long a = aVar.m1212a();
                    if (a == 0) {
                        cVar = C14519c.f32450c.m1169a(VasDetectionActivity.this.f12991b);
                    } else if (a == 1) {
                        cVar = C14527e.f32462e.m1161a(new C14978j<>(this.f12995a.m659c(), aVar));
                    } else if (a == 2) {
                        cVar = C14532f.f32472e.m1157a(new C14978j<>(this.f12995a.m659c(), aVar));
                    }
                    VasDetectionActivity.this.m25962M();
                    VasDetectionActivity vasDetectionActivity = VasDetectionActivity.this;
                    if (cVar == null) {
                        cVar = C14519c.f32450c.m1169a(vasDetectionActivity.f12991b);
                    }
                    C14588a.m1054a(vasDetectionActivity, R$id.fragment_container, cVar);
                }
            }
        }

        public C5264c() {
        }

        /* renamed from: a */
        public final void onChanged(C14978j<? extends ArrayList<VasMessageItem>, C14507a> jVar) {
            if (jVar != null) {
                new Handler().postDelayed(new RunnableC5265a(jVar, this), 1500L);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.vas.main.VasDetectionActivity$d */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/vas/main/VasDetectionActivity$d.class */
    public static final class C5266d<T> implements Observer<Void> {
        public C5266d() {
        }

        /* renamed from: a */
        public final void onChanged(Void r8) {
            if (!C12810o.m5233l()) {
                SettingResultActivity.m26752a(VasDetectionActivity.this, 1002);
                return;
            }
            VasDetectionActivity.this.m25969F();
            VasDetectionActivity vasDetectionActivity = VasDetectionActivity.this;
            C14588a.m1054a(vasDetectionActivity, R$id.fragment_container, C14535g.f32478c.m1154a(1L, vasDetectionActivity.f12991b));
        }
    }

    static {
        f12987d = C14017g4.m2835A() ? "0,0" : "0.0";
        f12988e = C14017g4.m2835A() ? "0,00" : "0.00";
    }

    /* renamed from: D */
    public final void m25971D() {
        FrameLayout frameLayout = (FrameLayout) m25955e(R$id.fragment_container);
        C15149k.m383a((Object) frameLayout, "fragment_container");
        ViewGroup.LayoutParams layoutParams = frameLayout.getLayoutParams();
        if (layoutParams != null) {
            ((CoordinatorLayout.LayoutParams) layoutParams).setBehavior(new AppBarLayout.ScrollingViewBehavior());
            return;
        }
        throw new C14986p("null cannot be cast to non-null type androidx.coordinatorlayout.widget.CoordinatorLayout.LayoutParams");
    }

    /* renamed from: E */
    public final void m25970E() {
        Intent intent = getIntent();
        if (intent != null) {
            this.f12991b = intent.getIntExtra("vas_gf_source", 3);
            if (this.f12991b == 1) {
                C14289m.m1842l(11);
            }
        }
    }

    /* renamed from: F */
    public final void m25969F() {
        m25967H();
        C14197v4.m2250a(getWindow());
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.hide();
        }
        AppBarLayout appBarLayout = (AppBarLayout) m25955e(R$id.app_bar);
        C15149k.m383a((Object) appBarLayout, "app_bar");
        appBarLayout.setVisibility(8);
    }

    /* renamed from: G */
    public final C14508b m25968G() {
        return (C14508b) C14588a.m1053a(this, C14508b.class);
    }

    /* renamed from: H */
    public final void m25967H() {
        FrameLayout frameLayout = (FrameLayout) m25955e(R$id.fragment_container);
        C15149k.m383a((Object) frameLayout, "fragment_container");
        ViewGroup.LayoutParams layoutParams = frameLayout.getLayoutParams();
        if (layoutParams != null) {
            ((CoordinatorLayout.LayoutParams) layoutParams).setBehavior(null);
            return;
        }
        throw new C14986p("null cannot be cast to non-null type androidx.coordinatorlayout.widget.CoordinatorLayout.LayoutParams");
    }

    /* renamed from: I */
    public final void m25966I() {
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayHomeAsUpEnabled(true);
            supportActionBar.setHomeAsUpIndicator(R$drawable.actionbar_back_btn);
            supportActionBar.setTitle(getString(R$string.vas_result_subscription_header));
        }
    }

    /* renamed from: J */
    public final void m25965J() {
        Fragment fragment;
        boolean b = C13915b3.m3059b("vas_first_scan");
        if (b) {
            m25969F();
            fragment = C14523d.f32456c.m1165a(this.f12991b);
        } else if (!b) {
            m25962M();
            fragment = C14527e.f32462e.m1161a(new C14978j<>(new ArrayList(), new C14507a(2L, 0L, null, this.f12991b, 6, null)));
        } else {
            throw new C14976h();
        }
        C14588a.m1054a(this, R$id.fragment_container, fragment);
    }

    /* renamed from: K */
    public final void m25964K() {
        ViewDataBinding contentView = DataBindingUtil.setContentView(this, R$layout.activity_vas_detection);
        C15149k.m383a((Object) contentView, "DataBindingUtil.setConte…t.activity_vas_detection)");
        this.f12990a = (AbstractC13298a) contentView;
        AbstractC13298a aVar = this.f12990a;
        if (aVar != null) {
            C14508b G = m25968G();
            G.m1199b().observe(this, new C5263b());
            G.m1191f().observe(this, new C5264c());
            G.m1192e().observe(this, new C5266d());
            aVar.mo4307a(G);
            return;
        }
        C15149k.m373d("viewDataBinding");
        throw null;
    }

    /* renamed from: L */
    public final void m25963L() {
        setSupportActionBar((Toolbar) m25955e(R$id.toolbar));
        m25966I();
    }

    /* renamed from: M */
    public final void m25962M() {
        m25971D();
        C14197v4.m2246c(getWindow());
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.show();
        }
        AppBarLayout appBarLayout = (AppBarLayout) m25955e(R$id.app_bar);
        C15149k.m383a((Object) appBarLayout, "app_bar");
        appBarLayout.setVisibility(0);
    }

    /* renamed from: N */
    public final void m25961N() {
        Fragment findFragmentById = getSupportFragmentManager().findFragmentById(R$id.fragment_container);
        if (findFragmentById instanceof C14527e) {
            C14289m.m1842l(12);
        } else if (findFragmentById instanceof C14532f) {
            C14289m.m1842l(14);
        } else if (findFragmentById instanceof C14519c) {
            C14289m.m1842l(13);
        }
    }

    /* renamed from: e */
    public View m25955e(int i) {
        if (this.f12992c == null) {
            this.f12992c = new HashMap();
        }
        View view = (View) this.f12992c.get(Integer.valueOf(i));
        View view2 = view;
        if (view == null) {
            view2 = findViewById(i);
            this.f12992c.put(Integer.valueOf(i), view2);
        }
        return view2;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        m25970E();
        m25964K();
        m25963L();
        m25965J();
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R$menu.activity_vas_detection, menu);
        return true;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        m25970E();
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        Integer valueOf = menuItem != null ? Integer.valueOf(menuItem.getItemId()) : null;
        if (valueOf == null || valueOf.intValue() != 2131362876) {
            return super.onOptionsItemSelected(menuItem);
        }
        Intent intent = new Intent("android.intent.action.SEND");
        intent.putExtra("android.intent.extra.TEXT", C14206w4.m2225a((int) R$string.vas_sharing_text));
        intent.setType("text/plain");
        startActivity(Intent.createChooser(intent, C14206w4.m2225a((int) R$string.share_tag_title)));
        m25961N();
        return true;
    }
}
