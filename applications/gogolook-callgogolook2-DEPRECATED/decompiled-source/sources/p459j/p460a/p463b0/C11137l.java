package p459j.p460a.p463b0;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentStatePagerAdapter;
import com.flurry.sdk.C3104fm;
import com.google.android.material.tabs.TabLayout;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.main.calllog.CallLogsFragment;
import java.util.ArrayList;
import kotlin.Metadata;
import p081h.p450p.AbstractC10834a;
import p459j.p460a.p463b0.p465r.C11214c;
import p459j.p460a.p463b0.p470w.C11454r;
import p459j.p460a.p533l.C12895f;
import p459j.p460a.p582w0.C14021h2;
import p459j.p460a.p582w0.C14063l4;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.p583a5.C13891a;
import p626l.C14976h;
import p626l.C14986p;
import p626l.C14989s;
import p626l.p632u.C15013i;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0010\r\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\u0018�� Q2\u00020\u00012\u00020\u0002:\u0002QRB\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\u0010\u0010'\u001a\u00020\u000b2\u0006\u0010(\u001a\u00020)H\u0002J\b\u0010*\u001a\u00020+H\u0016J\u0010\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020+H\u0002J\u0010\u0010/\u001a\u00020+2\u0006\u00100\u001a\u00020+H\u0016J\u0010\u00101\u001a\u00020\u00172\u0006\u00102\u001a\u00020+H\u0016J\u0010\u00103\u001a\u00020+2\u0006\u00104\u001a\u000205H\u0016J\u000e\u00106\u001a\u00020\u000b2\u0006\u00100\u001a\u00020+J\u000e\u00107\u001a\u00020+2\u0006\u0010(\u001a\u00020)J\u0012\u00108\u001a\u0004\u0018\u0001092\u0006\u00100\u001a\u00020+H\u0016J1\u0010:\u001a\u00020;2\u0006\u0010<\u001a\u00020=2!\u0010>\u001a\u001d\u0012\u0013\u0012\u00110)¢\u0006\f\b@\u0012\b\bA\u0012\u0004\b\b((\u0012\u0004\u0012\u00020;0?J\u0013\u0010B\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0013H\u0002¢\u0006\u0002\u0010CJ\u0016\u0010D\u001a\u00020\u001c2\u0006\u0010E\u001a\u00020F2\u0006\u00100\u001a\u00020+J\u001e\u0010G\u001a\u00020;2\u0006\u0010(\u001a\u00020)2\u0006\u0010<\u001a\u00020=2\u0006\u0010H\u001a\u00020\u001cJ\u0016\u0010I\u001a\u00020;2\u0006\u00102\u001a\u00020+2\u0006\u0010J\u001a\u00020KJ\u0016\u0010L\u001a\u00020;2\u0006\u0010M\u001a\u00020)2\u0006\u0010<\u001a\u00020=J\"\u0010N\u001a\u00020;2\b\u0010O\u001a\u0004\u0018\u00010\u00142\u0006\u0010P\u001a\u00020\u000b2\u0006\u0010H\u001a\u00020\u001cH\u0002R\u0014\u0010\n\u001a\u00020\u000b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u0014\u0010\u000e\u001a\u00020\u000b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\rR\u0014\u0010\u0010\u001a\u00020\u000b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\rR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��R\u0016\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0015R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u0016\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00170\u0013X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0018R\u0014\u0010\u0019\u001a\u00020\u000b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\rR\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n��R$\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001b\u001a\u00020\u001c@BX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\u0014\u0010!\u001a\u00020\u000b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\"\u0010\rR\u0016\u0010#\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0013X\u0082\u000e¢\u0006\u0004\n\u0002\u0010$R\u0014\u0010%\u001a\u00020\u000b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b&\u0010\r¨\u0006S"}, m815d2 = {"Lgogolook/callgogolook2/main/MainAdapter;", "Landroidx/fragment/app/FragmentStatePagerAdapter;", "Lcom/viewpagerindicator/IconPagerAdapter;", C3104fm.f5016a, "Landroidx/fragment/app/FragmentManager;", "context", "Landroid/content/Context;", "inflater", "Landroid/view/LayoutInflater;", "(Landroidx/fragment/app/FragmentManager;Landroid/content/Context;Landroid/view/LayoutInflater;)V", "blockConfig", "Lgogolook/callgogolook2/main/PageConfig;", "getBlockConfig", "()Lgogolook/callgogolook2/main/PageConfig;", "callLogConfig", "getCallLogConfig", "contactConfig", "getContactConfig", "customViews", "", "Landroid/view/View;", "[Landroid/view/View;", "fragments", "Landroidx/fragment/app/Fragment;", "[Landroidx/fragment/app/Fragment;", "iapConfig", "getIapConfig", "<set-?>", "", "isProtectionDbExpired", "()Z", "setProtectionDbExpired", "(Z)V", "offlineDBConfig", "getOfflineDBConfig", "pageConfigs", "[Lgogolook/callgogolook2/main/PageConfig;", "smsConfig", "getSmsConfig", "createPageConfig", "pageEnum", "Lgogolook/callgogolook2/main/PageEnum;", "getCount", "", "getFragmentTag", "", "pos", "getIconResId", "index", "getItem", "position", "getItemPosition", "object", "", "getPageConfig", "getPageConfigIndex", "getPageTitle", "", "initTabs", "", "tabLayout", "Lcom/google/android/material/tabs/TabLayout;", "onTabClickListener", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "loadPageConfigs", "()[Lgogolook/callgogolook2/main/PageConfig;", "onContextItemSelected", "item", "Landroid/view/MenuItem;", "reloadPageConfig", "isSelected", "setArgumentToFragment", "bundle", "Landroid/os/Bundle;", "setSelectedTab", "selectedPageEnum", "updateTabView", "view", "config", "Companion", "TabViewHolder", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.b0.l */
/* loaded from: classes2-dex2jar.jar:j/a/b0/l.class */
public final class C11137l extends FragmentStatePagerAdapter implements AbstractC10834a {

    /* renamed from: a */
    public C11143o[] f25016a = m10210h();

    /* renamed from: b */
    public Fragment[] f25017b;

    /* renamed from: c */
    public View[] f25018c;

    /* renamed from: d */
    public boolean f25019d;

    /* renamed from: e */
    public final FragmentManager f25020e;

    /* renamed from: f */
    public final Context f25021f;

    /* renamed from: g */
    public final LayoutInflater f25022g;

    /* renamed from: j.a.b0.l$a */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/l$a.class */
    public static final class C11138a {
        public C11138a() {
        }

        public /* synthetic */ C11138a(C15145g gVar) {
            this();
        }
    }

    /* renamed from: j.a.b0.l$b */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/l$b.class */
    public final class C11139b {

        /* renamed from: a */
        public final ImageView f25023a;

        /* renamed from: b */
        public final ImageView f25024b;

        /* renamed from: c */
        public final TextView f25025c;

        public C11139b(C11137l lVar, View view) {
            C15149k.m377b(view, "view");
            View findViewById = view.findViewById(R$id.iv_tab_icon);
            C15149k.m383a((Object) findViewById, "view.findViewById(R.id.iv_tab_icon)");
            this.f25023a = (ImageView) findViewById;
            View findViewById2 = view.findViewById(R$id.iv_red_icon);
            C15149k.m383a((Object) findViewById2, "view.findViewById(R.id.iv_red_icon)");
            this.f25024b = (ImageView) findViewById2;
            View findViewById3 = view.findViewById(R$id.tv_tab_text);
            C15149k.m383a((Object) findViewById3, "view.findViewById(R.id.tv_tab_text)");
            this.f25025c = (TextView) findViewById3;
        }

        /* renamed from: a */
        public final ImageView m10209a() {
            return this.f25024b;
        }

        /* renamed from: b */
        public final ImageView m10208b() {
            return this.f25023a;
        }

        /* renamed from: c */
        public final TextView m10207c() {
            return this.f25025c;
        }
    }

    /* renamed from: j.a.b0.l$c */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/l$c.class */
    public static final class View$OnClickListenerC11140c implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ C11143o f25026a;

        /* renamed from: b */
        public final /* synthetic */ AbstractC15118l f25027b;

        public View$OnClickListenerC11140c(C11143o oVar, C11137l lVar, TabLayout tabLayout, AbstractC15118l lVar2) {
            this.f25026a = oVar;
            this.f25027b = lVar2;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f25027b.invoke(this.f25026a.m10192b());
        }
    }

    static {
        new C11138a(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11137l(FragmentManager fragmentManager, Context context, LayoutInflater layoutInflater) {
        super(fragmentManager);
        C15149k.m377b(fragmentManager, C3104fm.f5016a);
        C15149k.m377b(context, "context");
        C15149k.m377b(layoutInflater, "inflater");
        this.f25020e = fragmentManager;
        this.f25021f = context;
        this.f25022g = layoutInflater;
        Fragment[] fragmentArr = new Fragment[this.f25016a.length];
        int length = fragmentArr.length;
        for (int i = 0; i < length; i++) {
            Fragment findFragmentByTag = this.f25020e.findFragmentByTag(m10226a(i));
            findFragmentByTag = findFragmentByTag == null ? this.f25016a[i].m10193a() : findFragmentByTag;
            if (findFragmentByTag == null) {
                findFragmentByTag = new Fragment();
            }
            fragmentArr[i] = findFragmentByTag;
        }
        this.f25017b = fragmentArr;
        View[] viewArr = new View[this.f25016a.length];
        int length2 = viewArr.length;
        for (int i2 = 0; i2 < length2; i2++) {
            View inflate = this.f25022g.inflate(R$layout.bottom_custom_tab, (ViewGroup) null);
            C15149k.m383a((Object) inflate, "this");
            inflate.setTag(new C11139b(this, inflate));
            viewArr[i2] = inflate;
        }
        this.f25018c = viewArr;
    }

    /* renamed from: a */
    public final C11143o m10227a() {
        EnumC11144p pVar = EnumC11144p.BLOCK;
        Bundle bundle = new Bundle();
        bundle.putInt("EXTRA_ENTRY", 1);
        return new C11143o(pVar, C12895f.class, R$drawable.icon_bottom_block_selected, R$drawable.icon_bottom_block, R$string.maintab_blocklist, bundle, false, 64, null);
    }

    /* renamed from: a */
    public final C11143o m10221a(EnumC11144p pVar) {
        C11143o oVar;
        switch (C11141m.f25028a[pVar.ordinal()]) {
            case 1:
                oVar = m10218b();
                break;
            case 2:
                oVar = m10215c();
                break;
            case 3:
                oVar = m10227a();
                break;
            case 4:
                oVar = m10212f();
                break;
            case 5:
                oVar = m10214d();
                break;
            case 6:
                oVar = m10213e();
                break;
            default:
                throw new C14976h();
        }
        return oVar;
    }

    /* renamed from: a */
    public final String m10226a(int i) {
        return "main:pager:2131362965:" + i;
    }

    /* renamed from: a */
    public final void m10225a(int i, Bundle bundle) {
        C15149k.m377b(bundle, "bundle");
        try {
            Fragment fragment = (Fragment) C15013i.m585a(this.f25017b, i);
            if (fragment != null) {
                Bundle arguments = fragment.getArguments();
                Bundle bundle2 = bundle;
                if (arguments != null) {
                    arguments.putAll(bundle);
                    bundle2 = bundle;
                    if (arguments != null) {
                        bundle2 = arguments;
                    }
                }
                fragment.setArguments(bundle2);
            }
        } catch (IllegalStateException e) {
            C14080m2.m2612a((Throwable) e);
        }
    }

    /* renamed from: a */
    public final void m10223a(View view, C11143o oVar, boolean z) {
        Object tag = view != null ? view.getTag() : null;
        Object obj = tag;
        if (!(tag instanceof C11139b)) {
            obj = null;
        }
        C11139b bVar = (C11139b) obj;
        if (bVar != null) {
            bVar.m10208b().setImageResource(z ? oVar.m10191c() : oVar.m10190d());
            bVar.m10207c().setText(this.f25021f.getString(oVar.m10189e()));
            bVar.m10207c().setTextColor(ContextCompat.getColor(this.f25021f, z ? 2131100113 : 2131100114));
            bVar.m10209a().setVisibility(oVar.m10188f() ? 0 : 8);
        }
    }

    /* renamed from: a */
    public final void m10222a(TabLayout tabLayout, AbstractC15118l<? super EnumC11144p, C14989s> lVar) {
        C15149k.m377b(tabLayout, "tabLayout");
        C15149k.m377b(lVar, "onTabClickListener");
        C11143o[] oVarArr = this.f25016a;
        int length = oVarArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            C11143o oVar = oVarArr[i];
            View view = this.f25018c[i2];
            m10223a(view, oVar, false);
            TabLayout.C3646g k = tabLayout.m31267k();
            k.m31251a(view);
            C15149k.m383a((Object) k, "tabLayout.newTab().setCustomView(customView)");
            ViewParent parent = view.getParent();
            ViewParent viewParent = parent;
            if (!(parent instanceof View)) {
                viewParent = null;
            }
            View view2 = (View) viewParent;
            if (view2 != null) {
                view2.setOnClickListener(new View$OnClickListenerC11140c(oVar, this, tabLayout, lVar));
            }
            tabLayout.m31299a(k);
            i++;
            i2++;
        }
    }

    /* renamed from: a */
    public final void m10220a(EnumC11144p pVar, TabLayout tabLayout) {
        C15149k.m377b(pVar, "selectedPageEnum");
        C15149k.m377b(tabLayout, "tabLayout");
        int g = tabLayout.m31274g();
        for (int i = 0; i < g; i++) {
            TabLayout.C3646g c = tabLayout.m31285c(i);
            if (c != null) {
                C11143o oVar = this.f25016a[i];
                C15149k.m383a((Object) c, "it");
                m10223a(c.m31254a(), oVar, pVar == oVar.m10192b());
            }
        }
    }

    /* renamed from: a */
    public final void m10219a(EnumC11144p pVar, TabLayout tabLayout, boolean z) {
        C15149k.m377b(pVar, "pageEnum");
        C15149k.m377b(tabLayout, "tabLayout");
        int b = m10216b(pVar);
        C11143o a = m10221a(pVar);
        this.f25016a[b] = a;
        TabLayout.C3646g c = tabLayout.m31285c(b);
        if (c != null) {
            C15149k.m383a((Object) c, "it");
            m10223a(c.m31254a(), a, z);
        }
    }

    /* renamed from: a */
    public final boolean m10224a(MenuItem menuItem, int i) {
        C15149k.m377b(menuItem, "item");
        return this.f25017b[i].onContextItemSelected(menuItem);
    }

    /* renamed from: b */
    public final int m10216b(EnumC11144p pVar) {
        C15149k.m377b(pVar, "pageEnum");
        C11143o[] oVarArr = this.f25016a;
        int length = oVarArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                i = -1;
                break;
            }
            if (oVarArr[i].m10192b() == pVar) {
                break;
            }
            i++;
        }
        return Math.max(0, i);
    }

    /* renamed from: b */
    public final C11143o m10218b() {
        return new C11143o(EnumC11144p.CALLLOG, CallLogsFragment.class, R$drawable.ic_calllog_select, R$drawable.ic_calllog_unselect, R$string.maintab_calllog, null, false, 96, null);
    }

    /* renamed from: b */
    public final C11143o m10217b(int i) {
        return this.f25016a[i];
    }

    /* renamed from: c */
    public final C11143o m10215c() {
        return new C11143o(EnumC11144p.CONTACT, C11214c.class, R$drawable.icon_bottom_contact_selected, R$drawable.icon_bottom_contact, R$string.maintab_contact, null, false, 96, null);
    }

    /* renamed from: d */
    public final C11143o m10214d() {
        int d = C14021h2.m2782d();
        return new C11143o(EnumC11144p.IAP, Fragment.class, d, d, R$string.maintab_premium, null, false, 96, null);
    }

    /* renamed from: e */
    public final C11143o m10213e() {
        this.f25019d = C14063l4.m2639z();
        return new C11143o(EnumC11144p.OFFLINEDB, Fragment.class, this.f25019d ? R$drawable.ic_protection_dangerous_select : R$drawable.ic_protection_safe_select, this.f25019d ? R$drawable.ic_protection_dangerous_unselect : R$drawable.ic_protection_safe_unselect, R$string.maintab_protection, null, this.f25019d);
    }

    /* renamed from: f */
    public final C11143o m10212f() {
        return new C11143o(EnumC11144p.SMS, C11454r.class, R$drawable.icon_bottom_sms_select, R$drawable.icon_bottom_sms, R$string.maintab_smslog, null, false, 96, null);
    }

    /* renamed from: g */
    public final boolean m10211g() {
        return this.f25019d;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        return this.f25016a.length;
    }

    @Override // androidx.fragment.app.FragmentStatePagerAdapter
    public Fragment getItem(int i) {
        return this.f25017b[i];
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getItemPosition(Object obj) {
        C15149k.m377b(obj, "object");
        return -2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x001d, code lost:
        if (r5 != null) goto L_0x0027;
     */
    @Override // androidx.viewpager.widget.PagerAdapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.CharSequence getPageTitle(int r4) {
        /*
            r3 = this;
            r0 = r3
            j.a.b0.o[] r0 = r0.f25016a
            r1 = r4
            java.lang.Object r0 = p626l.p632u.C15013i.m585a(r0, r1)
            j.a.b0.o r0 = (p459j.p460a.p463b0.C11143o) r0
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0023
            r0 = r3
            android.content.Context r0 = r0.f25021f
            r1 = r5
            int r1 = r1.m10189e()
            java.lang.String r0 = r0.getString(r1)
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0023
            goto L_0x0027
        L_0x0023:
            java.lang.String r0 = ""
            r5 = r0
        L_0x0027:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p463b0.C11137l.getPageTitle(int):java.lang.CharSequence");
    }

    /* renamed from: h */
    public final C11143o[] m10210h() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(m10218b());
        arrayList.add(m10212f());
        if (C14063l4.m2642w()) {
            arrayList.add(m10213e());
        }
        if (C13891a.m3154h()) {
            arrayList.add(m10227a());
        }
        if (C13891a.m3153i()) {
            arrayList.add(m10215c());
        }
        arrayList.add(m10214d());
        Object[] array = arrayList.toArray(new C11143o[0]);
        if (array != null) {
            return (C11143o[]) array;
        }
        throw new C14986p("null cannot be cast to non-null type kotlin.Array<T>");
    }
}
