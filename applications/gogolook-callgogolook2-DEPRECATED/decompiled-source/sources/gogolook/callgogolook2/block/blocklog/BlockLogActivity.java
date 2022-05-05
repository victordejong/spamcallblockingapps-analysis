package gogolook.callgogolook2.block.blocklog;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.flurry.sdk.C3104fm;
import com.google.android.material.tabs.TabLayout;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$menu;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.util.control.VersionManager;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import p459j.p460a.p518j.AbstractC12474a;
import p459j.p460a.p521j0.p529x.C12810o;
import p459j.p460a.p533l.p534n.C12952c;
import p459j.p460a.p533l.p534n.C12979j;
import p459j.p460a.p582w0.C13878a3;
import p459j.p460a.p582w0.C13912b0;
import p459j.p460a.p582w0.C13937c3;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14167t;
import p459j.p460a.p582w0.C14206w4;
import p626l.p632u.C15020l;
import p626l.p632u.C15021m;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p660rx.Subscription;
import p660rx.functions.Action1;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018�� \u001f2\u00020\u00012\u00020\u0002:\u0002\u001e\u001fB\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u0012H\u0017J\u0012\u0010\u0013\u001a\u00020\u000f2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0014J\u0012\u0010\u0016\u001a\u00020\n2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\u0010\u0010\u0019\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u001a\u001a\u00020\u000fH\u0014J\b\u0010\u001b\u001a\u00020\u000fH\u0014J\b\u0010\u001c\u001a\u00020\u000fH\u0014J\b\u0010\u001d\u001a\u00020\nH\u0016R\u0016\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n��¨\u0006 "}, m815d2 = {"Lgogolook/callgogolook2/block/blocklog/BlockLogActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "Lgogolook/callgogolook2/app/ActivityNavigator;", "()V", "fragmentList", "", "Landroidx/fragment/app/Fragment;", "initTabIndex", "", "isShowCallMenu", "", "isShowSmsMenu", "subscription", "Lrx/Subscription;", "doNavigation", "", "onContextItemSelected", "item", "Landroid/view/MenuItem;", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onCreateOptionsMenu", SupportMenuInflater.XML_MENU, "Landroid/view/Menu;", "onOptionsItemSelected", "onResume", "onStart", "onStop", "shouldNavigate", "BlockLogPagerAdapter", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/block/blocklog/BlockLogActivity.class */
public final class BlockLogActivity extends AppCompatActivity implements AbstractC12474a {

    /* renamed from: g */
    public static final C4438b f10698g = new C4438b(null);

    /* renamed from: a */
    public List<? extends Fragment> f10699a;

    /* renamed from: b */
    public Subscription f10700b;

    /* renamed from: c */
    public boolean f10701c;

    /* renamed from: d */
    public boolean f10702d;

    /* renamed from: e */
    public int f10703e;

    /* renamed from: f */
    public HashMap f10704f;

    /* renamed from: gogolook.callgogolook2.block.blocklog.BlockLogActivity$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/block/blocklog/BlockLogActivity$a.class */
    public static final class C4437a extends FragmentPagerAdapter {

        /* renamed from: a */
        public final List<Fragment> f10705a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C4437a(FragmentManager fragmentManager, List<? extends Fragment> list) {
            super(fragmentManager);
            C15149k.m377b(fragmentManager, C3104fm.f5016a);
            C15149k.m377b(list, "fragmentList");
            this.f10705a = list;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return this.f10705a.size();
        }

        @Override // androidx.fragment.app.FragmentPagerAdapter
        public Fragment getItem(int i) {
            return this.f10705a.get(i);
        }
    }

    /* renamed from: gogolook.callgogolook2.block.blocklog.BlockLogActivity$b */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/block/blocklog/BlockLogActivity$b.class */
    public static final class C4438b {
        public C4438b() {
        }

        public /* synthetic */ C4438b(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final Intent m28626a(Context context, Bundle bundle, int i) {
            C15149k.m377b(context, "context");
            Intent intent = new Intent(context, BlockLogActivity.class);
            intent.putExtra("tab_index", i);
            if (bundle != null) {
                intent.putExtras(bundle);
            }
            return intent;
        }
    }

    /* renamed from: gogolook.callgogolook2.block.blocklog.BlockLogActivity$c */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/block/blocklog/BlockLogActivity$c.class */
    public static final class C4439c implements ViewPager.OnPageChangeListener {
        public C4439c() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i, float f, int i2) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            BlockLogActivity.this.invalidateOptionsMenu();
        }
    }

    /* renamed from: gogolook.callgogolook2.block.blocklog.BlockLogActivity$d */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/block/blocklog/BlockLogActivity$d.class */
    public static final class C4440d<T> implements Action1<Object> {
        public C4440d() {
        }

        @Override // p660rx.functions.Action1
        public final void call(Object obj) {
            if (obj instanceof C13912b0) {
                C13912b0 b0Var = (C13912b0) obj;
                int i = b0Var.f31279a;
                boolean z = false;
                boolean z2 = false;
                if (i == 0) {
                    Boolean valueOf = Boolean.valueOf(BlockLogActivity.this.f10702d);
                    if (valueOf.booleanValue() != b0Var.f31280b) {
                        z2 = true;
                    }
                    if (!z2) {
                        valueOf = null;
                    }
                    if (valueOf != null) {
                        valueOf.booleanValue();
                        BlockLogActivity.this.f10702d = b0Var.f31280b;
                        BlockLogActivity.this.invalidateOptionsMenu();
                    }
                } else if (1 == i) {
                    Boolean valueOf2 = Boolean.valueOf(BlockLogActivity.this.f10701c);
                    if (valueOf2.booleanValue() != b0Var.f31280b) {
                        z = true;
                    }
                    if (!z) {
                        valueOf2 = null;
                    }
                    if (valueOf2 != null) {
                        valueOf2.booleanValue();
                        BlockLogActivity.this.f10701c = b0Var.f31280b;
                        BlockLogActivity.this.invalidateOptionsMenu();
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public static final Intent m28632a(Context context, Bundle bundle, int i) {
        return f10698g.m28626a(context, bundle, i);
    }

    /* renamed from: D */
    public void m28634D() {
        C13937c3.m3014a(this);
        finish();
    }

    /* renamed from: E */
    public boolean m28633E() {
        return VersionManager.m25991e(4) || C13878a3.m3257E();
    }

    /* renamed from: e */
    public View m28627e(int i) {
        if (this.f10704f == null) {
            this.f10704f = new HashMap();
        }
        View view = (View) this.f10704f.get(Integer.valueOf(i));
        View view2 = view;
        if (view == null) {
            view2 = findViewById(i);
            this.f10704f.put(Integer.valueOf(i), view2);
        }
        return view2;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0049  */
    @Override // android.app.Activity
    @android.annotation.TargetApi(19)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onContextItemSelected(android.view.MenuItem r4) {
        /*
            r3 = this;
            r0 = r4
            java.lang.String r1 = "item"
            p626l.p641z.p643d.C15149k.m377b(r0, r1)
            r0 = r3
            java.util.List<? extends androidx.fragment.app.Fragment> r0 = r0.f10699a
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x003e
            r0 = r3
            int r1 = gogolook.callgogolook2.R$id.view_pager
            android.view.View r0 = r0.m28627e(r1)
            androidx.viewpager.widget.ViewPager r0 = (androidx.viewpager.widget.ViewPager) r0
            r6 = r0
            r0 = r6
            java.lang.String r1 = "view_pager"
            p626l.p641z.p643d.C15149k.m383a(r0, r1)
            r0 = r5
            r1 = r6
            int r1 = r1.getCurrentItem()
            java.lang.Object r0 = r0.get(r1)
            androidx.fragment.app.Fragment r0 = (androidx.fragment.app.Fragment) r0
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x003e
            r0 = r5
            r1 = r4
            boolean r0 = r0.onContextItemSelected(r1)
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            r4 = r0
            goto L_0x0040
        L_0x003e:
            r0 = 0
            r4 = r0
        L_0x0040:
            r0 = r4
            if (r0 == 0) goto L_0x0049
            r0 = r4
            boolean r0 = r0.booleanValue()
            return r0
        L_0x0049:
            p626l.p641z.p643d.C15149k.m378b()
            r0 = 0
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.block.blocklog.BlockLogActivity.onContextItemSelected(android.view.MenuItem):boolean");
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        int i;
        super.onCreate(bundle);
        setContentView(R$layout.blocklog_activity);
        setSupportActionBar((Toolbar) m28627e(R$id.blockLogToolBar));
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setTitle(C14206w4.m2225a((int) R$string.blocklist));
            supportActionBar.setDisplayHomeAsUpEnabled(true);
            supportActionBar.setDisplayShowHomeEnabled(false);
            supportActionBar.setDisplayShowTitleEnabled(true);
        }
        this.f10703e = getIntent().getIntExtra("tab_index", 0);
        ViewPager viewPager = (ViewPager) m28627e(R$id.view_pager);
        if (viewPager != null) {
            this.f10699a = C12810o.m5230o() ? C15021m.m557c(C12952c.f29305e.m4932a(), C12979j.f29359f.m4878a()) : C15020l.m567a(C12952c.f29305e.m4932a());
            FragmentManager supportFragmentManager = getSupportFragmentManager();
            C15149k.m383a((Object) supportFragmentManager, "supportFragmentManager");
            List<? extends Fragment> list = this.f10699a;
            if (list != null) {
                viewPager.setAdapter(new C4437a(supportFragmentManager, list));
                viewPager.setCurrentItem(this.f10703e);
                viewPager.addOnPageChangeListener(new C4439c());
            } else {
                C15149k.m378b();
                throw null;
            }
        }
        TabLayout tabLayout = (TabLayout) m28627e(R$id.tab_layout);
        if (tabLayout != null) {
            if (C12810o.m5230o()) {
                tabLayout.m31304a((ViewPager) m28627e(R$id.view_pager));
                tabLayout.m31279e(C14167t.m2310f());
                TabLayout.C3646g c = tabLayout.m31285c(0);
                if (c != null) {
                    c.m31247b(R$drawable.ic_block_call);
                }
                TabLayout.C3646g c2 = tabLayout.m31285c(1);
                i = 0;
                if (c2 != null) {
                    c2.m31247b(R$drawable.ic_block_sms);
                    i = 0;
                }
            } else {
                i = 8;
            }
            tabLayout.setVisibility(i);
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        ViewPager viewPager = (ViewPager) m28627e(R$id.view_pager);
        C15149k.m383a((Object) viewPager, "view_pager");
        int currentItem = viewPager.getCurrentItem();
        getMenuInflater().inflate(R$menu.block_history_menu, menu);
        MenuItem menuItem = null;
        MenuItem findItem = menu != null ? menu.findItem(R$id.menu_overflow) : null;
        boolean z = false;
        if (findItem != null) {
            findItem.setVisible((currentItem == 0 && this.f10702d) || (currentItem == 1 && this.f10701c));
        }
        MenuItem findItem2 = menu != null ? menu.findItem(R$id.menu_delete_call) : null;
        if (menu != null) {
            menuItem = menu.findItem(R$id.menu_delete_sms);
        }
        if (findItem2 != null) {
            findItem2.setVisible(currentItem == 0);
        }
        if (menuItem != null) {
            if (currentItem == 1) {
                z = true;
            }
            menuItem.setVisible(z);
        }
        return super.onCreateOptionsMenu(menu);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x005b  */
    @Override // android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onOptionsItemSelected(android.view.MenuItem r4) {
        /*
            r3 = this;
            r0 = r4
            java.lang.String r1 = "item"
            p626l.p641z.p643d.C15149k.m377b(r0, r1)
            r0 = 16908332(0x102002c, float:2.3877352E-38)
            r1 = r4
            int r1 = r1.getItemId()
            if (r0 != r1) goto L_0x0018
            r0 = r3
            p459j.p460a.p582w0.C14217x3.m2167b(r0)
            r0 = 1
            return r0
        L_0x0018:
            r0 = r3
            java.util.List<? extends androidx.fragment.app.Fragment> r0 = r0.f10699a
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0050
            r0 = r3
            int r1 = gogolook.callgogolook2.R$id.view_pager
            android.view.View r0 = r0.m28627e(r1)
            androidx.viewpager.widget.ViewPager r0 = (androidx.viewpager.widget.ViewPager) r0
            r6 = r0
            r0 = r6
            java.lang.String r1 = "view_pager"
            p626l.p641z.p643d.C15149k.m383a(r0, r1)
            r0 = r5
            r1 = r6
            int r1 = r1.getCurrentItem()
            java.lang.Object r0 = r0.get(r1)
            androidx.fragment.app.Fragment r0 = (androidx.fragment.app.Fragment) r0
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0050
            r0 = r6
            r1 = r4
            boolean r0 = r0.onOptionsItemSelected(r1)
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            r4 = r0
            goto L_0x0052
        L_0x0050:
            r0 = 0
            r4 = r0
        L_0x0052:
            r0 = r4
            if (r0 == 0) goto L_0x005b
            r0 = r4
            boolean r0 = r0.booleanValue()
            return r0
        L_0x005b:
            p626l.p641z.p643d.C15149k.m378b()
            r0 = 0
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.block.blocklog.BlockLogActivity.onOptionsItemSelected(android.view.MenuItem):boolean");
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (m28633E()) {
            m28634D();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        this.f10700b = C14037j3.m2731a().mo2703a((Action1) new C4440d());
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        Subscription subscription = this.f10700b;
        if (subscription != null) {
            subscription.unsubscribe();
        }
    }
}
