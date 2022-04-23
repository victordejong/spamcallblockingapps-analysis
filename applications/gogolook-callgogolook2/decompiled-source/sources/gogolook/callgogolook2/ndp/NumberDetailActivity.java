package gogolook.callgogolook2.ndp;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.ColorInt;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.appcompat.widget.Toolbar;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.media2.exoplayer.external.text.ttml.TtmlNode;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import androidx.viewpager.widget.ViewPager;
import com.aotter.net.trek.model.Entity;
import com.flurry.sdk.C3104fm;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.google.android.material.tabs.TabLayout;
import com.mopub.common.Constants;
import gogolook.callgogolook2.R$dimen;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$menu;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.detailpage.DetailPageActionViewHolder;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.gson.UserProfile;
import gogolook.callgogolook2.myprofile.FlagActivity;
import gogolook.callgogolook2.p074ad.AdUnit;
import gogolook.callgogolook2.util.control.VersionManager;
import gogolook.callgogolook2.view.MetaphorBadgeLayout;
import gogolook.callgogolook2.view.RecycleSafeImageView;
import gogolook.callgogolook2.view.RoundImageView;
import gogolook.callgogolook2.view.SizedTextView;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import p459j.p460a.p461a0.C11052i;
import p459j.p460a.p461a0.C11086o;
import p459j.p460a.p461a0.EnumC11047e;
import p459j.p460a.p503e0.AbstractC12326j;
import p459j.p460a.p503e0.AbstractC12327k;
import p459j.p460a.p503e0.C12266b;
import p459j.p460a.p503e0.C12268c;
import p459j.p460a.p503e0.C12295e;
import p459j.p460a.p503e0.C12317g;
import p459j.p460a.p503e0.C12324h;
import p459j.p460a.p503e0.C12328l;
import p459j.p460a.p503e0.C12330n;
import p459j.p460a.p503e0.EnumC12325i;
import p459j.p460a.p518j.AbstractC12474a;
import p459j.p460a.p533l.C12928g;
import p459j.p460a.p533l.C12942i;
import p459j.p460a.p536l0.C13008c;
import p459j.p460a.p582w0.C13878a3;
import p459j.p460a.p582w0.C13937c3;
import p459j.p460a.p582w0.C13938c4;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14020h1;
import p459j.p460a.p582w0.C14035j1;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14046k1;
import p459j.p460a.p582w0.C14059l1;
import p459j.p460a.p582w0.C14063l4;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14123p4;
import p459j.p460a.p582w0.C14132r;
import p459j.p460a.p582w0.C14137r4;
import p459j.p460a.p582w0.C14148s0;
import p459j.p460a.p582w0.C14167t;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p590x4.C14260e;
import p459j.p460a.p582w0.p590x4.C14300r;
import p459j.p460a.p613z0.p617p.C14687h;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.C14986p;
import p626l.p629c0.AbstractC14906i;
import p626l.p632u.C15021m;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
import p660rx.Single;
import p660rx.Subscription;
import p660rx.android.schedulers.AndroidSchedulers;
import p660rx.functions.Action1;
import p660rx.functions.Func1;
import p660rx.schedulers.Schedulers;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010��\n\u0002\b\u0013\u0018�� O2\u00020\u00012\u00020\u0002:\u0003OPQB\u0005¢\u0006\u0002\u0010\u0003J\b\u0010'\u001a\u00020(H\u0016J\b\u0010)\u001a\u00020\u000eH\u0002J\b\u0010*\u001a\u0004\u0018\u00010+J\u0010\u0010,\u001a\u00020(2\u0006\u0010-\u001a\u00020\u0005H\u0002J\u0012\u0010.\u001a\u00020(2\b\u0010/\u001a\u0004\u0018\u000100H\u0014J\u0010\u00101\u001a\u00020\u001e2\u0006\u00102\u001a\u000203H\u0016J\b\u00104\u001a\u00020(H\u0014J\u0010\u00105\u001a\u00020(2\u0006\u00106\u001a\u000207H\u0014J\u0010\u00108\u001a\u00020\u001e2\u0006\u00109\u001a\u00020:H\u0016J\b\u0010;\u001a\u00020(H\u0014J\u0010\u0010<\u001a\u00020\u001e2\u0006\u00102\u001a\u000203H\u0016J\u0010\u0010=\u001a\u00020(2\u0006\u0010>\u001a\u00020?H\u0002J\b\u0010@\u001a\u00020(H\u0014J\b\u0010A\u001a\u00020(H\u0015J\b\u0010B\u001a\u00020(H\u0015J\b\u0010C\u001a\u00020\u001eH\u0016J\u0010\u0010D\u001a\u00020(2\u0006\u0010E\u001a\u000207H\u0002J\u000e\u0010F\u001a\u00020(2\u0006\u0010G\u001a\u00020\u001eJ\b\u0010H\u001a\u00020(H\u0002J\u000e\u0010I\u001a\u00020(2\u0006\u0010J\u001a\u00020\u0011J\b\u0010K\u001a\u00020(H\u0002J\b\u0010L\u001a\u00020(H\u0002J\b\u0010M\u001a\u00020\u001eH\u0016J\b\u0010N\u001a\u00020(H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n��R\u001a\u0010\b\u001a\u00020\t8BX\u0083\u0004¢\u0006\f\u0012\u0004\b\n\u0010\u0003\u001a\u0004\b\u000b\u0010\fR\u0012\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u000fR\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0016\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n��R\u001b\u0010\u0017\u001a\u00020\u00188BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u0019\u0010\u001aR\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u000e¢\u0006\u0002\n��R\u0012\u0010\u001f\u001a\u00020\u000e8\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n��R\u0010\u0010 \u001a\u0004\u0018\u00010!X\u0082\u000e¢\u0006\u0002\n��R\u001b\u0010\"\u001a\u00020#8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b&\u0010\u001c\u001a\u0004\b$\u0010%¨\u0006R"}, m815d2 = {"Lgogolook/callgogolook2/ndp/NumberDetailActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "Lgogolook/callgogolook2/app/ActivityNavigator;", "()V", "actionBarState", "Lgogolook/callgogolook2/ndp/NumberDetailContract$ActionBarScrollState;", "actionViewHolder", "Lgogolook/callgogolook2/detailpage/DetailPageActionViewHolder;", "adUnit", "Lgogolook/callgogolook2/ad/AdUnit;", "adUnit$annotations", "getAdUnit", "()Lgogolook/callgogolook2/ad/AdUnit;", "clickSection", "", "Ljava/lang/Integer;", "fromActivity", "", "lastUpdateTime", "", "model", "Lgogolook/callgogolook2/ndp/NumberDetailContract$NumberDetailModel;", "openedTabId", "presenter", "Lgogolook/callgogolook2/ndp/NumberDetailContract$INumberDetailHeaderPresenter;", "getPresenter", "()Lgogolook/callgogolook2/ndp/NumberDetailContract$INumberDetailHeaderPresenter;", "presenter$delegate", "Lkotlin/Lazy;", "showSnWarningMsg", "", "statusBarColor", "subscription", "Lrx/Subscription;", "uiUpdater", "Lgogolook/callgogolook2/loader/UIUpdater;", "getUiUpdater", "()Lgogolook/callgogolook2/loader/UIUpdater;", "uiUpdater$delegate", "doNavigation", "", "getCallFromActivity", "getNumberInfo", "Lgogolook/callgogolook2/gson/NumberInfo;", "onActionBarStateChanged", "newState", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onCreateOptionsMenu", SupportMenuInflater.XML_MENU, "Landroid/view/Menu;", "onDestroy", "onNewIntent", "newIntent", "Landroid/content/Intent;", "onOptionsItemSelected", "item", "Landroid/view/MenuItem;", "onPause", "onPrepareOptionsMenu", "onReceiveEvent", NotificationCompat.CATEGORY_EVENT, "", "onResume", "onStart", "onStop", "onSupportNavigateUp", "parseIntent", Constants.INTENT_SCHEME, "refresh", "clearCache", "registerBus", "setActionBarTitle", "title", "setupComponents", "setupFullScreen", "shouldNavigate", "unregisterBus", "Companion", "NdpPagerAdapter", "TabConfig", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/ndp/NumberDetailActivity.class */
public final class NumberDetailActivity extends AppCompatActivity implements AbstractC12474a {

    /* renamed from: m */
    public static final /* synthetic */ AbstractC14906i[] f12013m;

    /* renamed from: n */
    public static final C4873a f12014n = new C4873a(null);

    /* renamed from: b */
    public String f12016b;

    /* renamed from: c */
    public Integer f12017c;

    /* renamed from: d */
    public C12328l f12018d;

    /* renamed from: e */
    public DetailPageActionViewHolder f12019e;

    /* renamed from: f */
    public int f12020f;

    /* renamed from: g */
    public long f12021g;
    @ColorInt

    /* renamed from: i */
    public int f12023i;

    /* renamed from: k */
    public Subscription f12025k;

    /* renamed from: l */
    public HashMap f12026l;

    /* renamed from: a */
    public final AbstractC14974f f12015a = C14975g.m662a(new C4876d());

    /* renamed from: h */
    public EnumC12325i f12022h = EnumC12325i.EXPANDED;

    /* renamed from: j */
    public final AbstractC14974f f12024j = C14975g.m662a(new C4886l());

    /* renamed from: gogolook.callgogolook2.ndp.NumberDetailActivity$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/ndp/NumberDetailActivity$a.class */
    public static final class C4873a {
        public C4873a() {
        }

        public /* synthetic */ C4873a(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public static /* synthetic */ Intent m26840a(C4873a aVar, Context context, String str, String str2, Bundle bundle, String str3, int i, Object obj) {
            if ((i & 8) != 0) {
                bundle = null;
            }
            if ((i & 16) != 0) {
                str3 = null;
            }
            return aVar.m26841a(context, str, str2, bundle, str3);
        }

        /* renamed from: a */
        public final Intent m26841a(Context context, String str, String str2, Bundle bundle, String str3) {
            C15149k.m377b(context, "context");
            Intent intent = new Intent(context, NumberDetailActivity.class);
            if (str3 != null) {
                intent.putExtra(ActivityChooserModel.ATTRIBUTE_ACTIVITY, str3);
            }
            intent.putExtra("number", str);
            if (str2 == null) {
                str2 = C14108o4.m2474l(str);
            }
            intent.putExtra("e164", str2);
            if (bundle != null) {
                intent.putExtras(bundle);
            }
            return intent;
        }
    }

    /* renamed from: gogolook.callgogolook2.ndp.NumberDetailActivity$b */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/ndp/NumberDetailActivity$b.class */
    public static final class C4874b extends FragmentPagerAdapter {

        /* renamed from: a */
        public final List<C4875c> f12027a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4874b(FragmentManager fragmentManager, List<C4875c> list) {
            super(fragmentManager);
            C15149k.m377b(fragmentManager, C3104fm.f5016a);
            C15149k.m377b(list, "configList");
            this.f12027a = list;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return this.f12027a.size();
        }

        @Override // androidx.fragment.app.FragmentPagerAdapter
        public Fragment getItem(int i) {
            return this.f12027a.get(i).m26839a().invoke();
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public CharSequence getPageTitle(int i) {
            return this.f12027a.get(i).m26838b();
        }
    }

    /* renamed from: gogolook.callgogolook2.ndp.NumberDetailActivity$c */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/ndp/NumberDetailActivity$c.class */
    public static final class C4875c {

        /* renamed from: a */
        public final String f12028a;

        /* renamed from: b */
        public final AbstractC15107a<Fragment> f12029b;

        /* JADX WARN: Multi-variable type inference failed */
        public C4875c(String str, AbstractC15107a<? extends Fragment> aVar) {
            C15149k.m377b(str, "title");
            C15149k.m377b(aVar, "getFragmentInstance");
            this.f12028a = str;
            this.f12029b = aVar;
        }

        /* renamed from: a */
        public final AbstractC15107a<Fragment> m26839a() {
            return this.f12029b;
        }

        /* renamed from: b */
        public final String m26838b() {
            return this.f12028a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C4875c)) {
                return false;
            }
            C4875c cVar = (C4875c) obj;
            return C15149k.m384a((Object) this.f12028a, (Object) cVar.f12028a) && C15149k.m384a(this.f12029b, cVar.f12029b);
        }

        public int hashCode() {
            String str = this.f12028a;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            AbstractC15107a<Fragment> aVar = this.f12029b;
            if (aVar != null) {
                i = aVar.hashCode();
            }
            return (hashCode * 31) + i;
        }

        public String toString() {
            return "TabConfig(title=" + this.f12028a + ", getFragmentInstance=" + this.f12029b + ")";
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m815d2 = {"<anonymous>", "Lgogolook/callgogolook2/ndp/NumberDetailHeaderPresenter;", "invoke"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: gogolook.callgogolook2.ndp.NumberDetailActivity$d */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/ndp/NumberDetailActivity$d.class */
    public static final class C4876d extends AbstractC15150l implements AbstractC15107a<C12330n> {

        @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��O\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003*\u0001��\b\n\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\n\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\b\u0010\b\u001a\u00020\tH\u0016J\n\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\n\u0010\f\u001a\u0004\u0018\u00010\rH\u0016J\n\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\n\u0010\u0010\u001a\u0004\u0018\u00010\u000bH\u0016J\b\u0010\u0011\u001a\u00020\u0007H\u0016J\n\u0010\u0012\u001a\u0004\u0018\u00010\u000fH\u0016J\n\u0010\u0013\u001a\u0004\u0018\u00010\u000fH\u0016J\b\u0010\u0014\u001a\u00020\u0015H\u0016J\u0010\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0010\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u001a\u001a\u00020\u0007H\u0016J\u001a\u0010\u001b\u001a\u00020\u00152\u0006\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u0018H\u0016J\u0010\u0010\u001f\u001a\u00020\u00152\u0006\u0010\u001c\u001a\u00020\u001dH\u0016¨\u0006 "}, m815d2 = {"gogolook/callgogolook2/ndp/NumberDetailActivity$presenter$2$1", "Lgogolook/callgogolook2/ndp/NumberDetailContract$INumberHeaderView;", "getActionBarState", "Lgogolook/callgogolook2/ndp/NumberDetailContract$ActionBarScrollState;", "getActionViewHolder", "Lgogolook/callgogolook2/detailpage/DetailPageActionViewHolder;", "getCallFrom", "", "getContext", "Landroid/app/Activity;", "getCoverView", "Landroid/widget/ImageView;", "getMetaphorView", "Lgogolook/callgogolook2/view/RoundImageView;", "getSecondaryView", "Landroid/widget/TextView;", "getSpamIconView", "getStatusBarColor", "getTagView", "getTertiaryView", "invalidateOptionsMenu", "", "setActionBarTitle", "title", "", "setStatusBarColor", TtmlNode.ATTR_TTS_COLOR, "setupCoverView", "hasCover", "", "coverUrl", "updateActionBarView", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
        /* renamed from: gogolook.callgogolook2.ndp.NumberDetailActivity$d$a */
        /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/ndp/NumberDetailActivity$d$a.class */
        public static final class C4877a implements AbstractC12327k {

            /* renamed from: gogolook.callgogolook2.ndp.NumberDetailActivity$d$a$a */
            /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/ndp/NumberDetailActivity$d$a$a.class */
            public static final class RunnableC4878a implements Runnable {
                public RunnableC4878a() {
                }

                @Override // java.lang.Runnable
                public final void run() {
                    NumberDetailActivity.this.invalidateOptionsMenu();
                }
            }

            public C4877a() {
            }

            @Override // p459j.p460a.p503e0.AbstractC12327k
            /* renamed from: a */
            public RoundImageView mo6389a() {
                return ((MetaphorBadgeLayout) NumberDetailActivity.this.m26845e(R$id.mbl_metaphor)).m25911b();
            }

            @Override // p459j.p460a.p503e0.AbstractC12327k
            /* renamed from: a */
            public void mo6388a(int i) {
                C14123p4.m2429b(NumberDetailActivity.this.getWindow(), i);
                NumberDetailActivity.this.f12023i = i;
            }

            @Override // p459j.p460a.p503e0.AbstractC12327k
            /* renamed from: a */
            public void mo6387a(String str) {
                C15149k.m377b(str, "title");
                NumberDetailActivity.this.m26848c(str);
            }

            @Override // p459j.p460a.p503e0.AbstractC12327k
            /* renamed from: a */
            public void mo6386a(boolean z) {
                ActionBar supportActionBar = NumberDetailActivity.this.getSupportActionBar();
                if (supportActionBar != null) {
                    supportActionBar.setHomeAsUpIndicator((NumberDetailActivity.this.f12022h != EnumC12325i.EXPANDED || !z) ? R$drawable.ic_actionbar_back : R$drawable.ic_actionbar_back_dark);
                }
            }

            @Override // p459j.p460a.p503e0.AbstractC12327k
            /* renamed from: a */
            public void mo6385a(boolean z, String str) {
                RecycleSafeImageView recycleSafeImageView = (RecycleSafeImageView) NumberDetailActivity.this.m26845e(R$id.rsiv_cover_photo);
                if (recycleSafeImageView != null) {
                    if (!z) {
                        recycleSafeImageView.setVisibility(4);
                        View e = NumberDetailActivity.this.m26845e(R$id.mask_cover);
                        C15149k.m383a((Object) e, "mask_cover");
                        e.setVisibility(8);
                        ViewGroup.LayoutParams layoutParams = recycleSafeImageView.getLayoutParams();
                        Context context = recycleSafeImageView.getContext();
                        C15149k.m383a((Object) context, "context");
                        layoutParams.height = context.getResources().getDimensionPixelSize(R$dimen.ndp_empty_cover_photo_height);
                        recycleSafeImageView.requestLayout();
                    } else {
                        boolean z2 = false;
                        recycleSafeImageView.setVisibility(0);
                        View e2 = NumberDetailActivity.this.m26845e(R$id.mask_cover);
                        C15149k.m383a((Object) e2, "mask_cover");
                        e2.setVisibility(0);
                        ViewGroup.LayoutParams layoutParams2 = recycleSafeImageView.getLayoutParams();
                        Context context2 = recycleSafeImageView.getContext();
                        C15149k.m383a((Object) context2, "context");
                        layoutParams2.height = context2.getResources().getDimensionPixelSize(R$dimen.ndp_cover_photo_height);
                        recycleSafeImageView.setBackgroundColor(6710887);
                        if (str != null) {
                            if (str.length() > 0) {
                                z2 = true;
                            }
                            if (z2) {
                                C13008c.m4814a(recycleSafeImageView, str);
                            }
                        }
                        recycleSafeImageView.setImageResource(R$drawable.cover_photo_default);
                    }
                }
                CollapsingToolbarLayout collapsingToolbarLayout = (CollapsingToolbarLayout) NumberDetailActivity.this.m26845e(R$id.collapsing_toolbar_layout);
                if (collapsingToolbarLayout != null) {
                    collapsingToolbarLayout.m31582b((int) NumberDetailActivity.this.getResources().getDimension(z ? R$dimen.ndp_cover_title_expanded_margin_top_card : R$dimen.ndp_cover_title_expanded_margin_top_no_card));
                }
            }

            @Override // p459j.p460a.p503e0.AbstractC12327k
            /* renamed from: c */
            public ImageView mo6384c() {
                return ((MetaphorBadgeLayout) NumberDetailActivity.this.m26845e(R$id.mbl_metaphor)).m25913a();
            }

            @Override // p459j.p460a.p503e0.AbstractC12327k
            /* renamed from: d */
            public DetailPageActionViewHolder mo6383d() {
                return NumberDetailActivity.this.f12019e;
            }

            @Override // p459j.p460a.p503e0.AbstractC12327k
            /* renamed from: e */
            public EnumC12325i mo6382e() {
                return NumberDetailActivity.this.f12022h;
            }

            @Override // p459j.p460a.p503e0.AbstractC12327k
            /* renamed from: f */
            public int mo6381f() {
                return NumberDetailActivity.this.m26867F();
            }

            @Override // p459j.p460a.p503e0.AbstractC12327k
            /* renamed from: g */
            public ImageView mo6380g() {
                return (RecycleSafeImageView) NumberDetailActivity.this.m26845e(R$id.rsiv_cover_photo);
            }

            @Override // p459j.p460a.p503e0.AbstractC12327k
            public Activity getContext() {
                return NumberDetailActivity.this;
            }

            @Override // p459j.p460a.p503e0.AbstractC12327k
            /* renamed from: h */
            public TextView mo6379h() {
                return (TextView) NumberDetailActivity.this.m26845e(R$id.tv_tertiary);
            }

            @Override // p459j.p460a.p503e0.AbstractC12327k
            /* renamed from: i */
            public void mo6378i() {
                ((AppBarLayout) NumberDetailActivity.this.m26845e(R$id.app_bar)).post(new RunnableC4878a());
            }

            @Override // p459j.p460a.p503e0.AbstractC12327k
            /* renamed from: j */
            public TextView mo6377j() {
                return (SizedTextView) NumberDetailActivity.this.m26845e(R$id.tv_name_tag);
            }

            @Override // p459j.p460a.p503e0.AbstractC12327k
            /* renamed from: k */
            public TextView mo6376k() {
                return (TextView) NumberDetailActivity.this.m26845e(R$id.tv_secondary);
            }
        }

        public C4876d() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final C12330n invoke() {
            return new C12330n(new C4877a());
        }
    }

    /* renamed from: gogolook.callgogolook2.ndp.NumberDetailActivity$e */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/ndp/NumberDetailActivity$e.class */
    public static final class C4879e<T> implements Action1<Object> {
        public C4879e() {
        }

        @Override // p660rx.functions.Action1
        public final void call(Object obj) {
            NumberDetailActivity numberDetailActivity = NumberDetailActivity.this;
            C15149k.m383a(obj, NotificationCompat.CATEGORY_EVENT);
            numberDetailActivity.m26851a(obj);
        }
    }

    /* renamed from: gogolook.callgogolook2.ndp.NumberDetailActivity$f */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/ndp/NumberDetailActivity$f.class */
    public static final class C4880f extends AbstractC15150l implements AbstractC15107a<C12295e> {

        /* renamed from: a */
        public final /* synthetic */ String f12034a;

        /* renamed from: b */
        public final /* synthetic */ String f12035b;

        /* renamed from: c */
        public final /* synthetic */ NumberDetailActivity f12036c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4880f(String str, String str2, NumberDetailActivity numberDetailActivity) {
            super(0);
            this.f12034a = str;
            this.f12035b = str2;
            this.f12036c = numberDetailActivity;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final C12295e invoke() {
            C12295e.C12296a aVar = C12295e.f27747e;
            String str = this.f12034a;
            String str2 = this.f12035b;
            C12328l lVar = this.f12036c.f12018d;
            return aVar.m6438a(str, str2, lVar != null ? lVar.m6363g() : false, this.f12036c.m26868E());
        }
    }

    /* renamed from: gogolook.callgogolook2.ndp.NumberDetailActivity$g */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/ndp/NumberDetailActivity$g.class */
    public static final class C4881g extends AbstractC15150l implements AbstractC15107a<C12268c> {

        /* renamed from: a */
        public final /* synthetic */ String f12037a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4881g(String str) {
            super(0);
            this.f12037a = str;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final C12268c invoke() {
            return C12268c.f27705d.m6501a(this.f12037a);
        }
    }

    /* renamed from: gogolook.callgogolook2.ndp.NumberDetailActivity$h */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/ndp/NumberDetailActivity$h.class */
    public static final class C4882h implements ViewPager.OnPageChangeListener {

        /* renamed from: a */
        public final /* synthetic */ C4874b f12038a;

        public C4882h(C4874b bVar) {
            this.f12038a = bVar;
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i, float f, int i2) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            Fragment item = this.f12038a.getItem(i);
            if (item instanceof C12295e) {
                C12266b.f27703b.m6511c(TtmlNode.TAG_INFORMATION);
            } else if (item instanceof C12268c) {
                C12266b.f27703b.m6511c("history");
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.ndp.NumberDetailActivity$i */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/ndp/NumberDetailActivity$i.class */
    public static final class C4883i implements SwipeRefreshLayout.OnRefreshListener {
        public C4883i() {
        }

        @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
        public final void onRefresh() {
            NumberDetailActivity.this.m26847c(true);
        }
    }

    /* renamed from: gogolook.callgogolook2.ndp.NumberDetailActivity$j */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/ndp/NumberDetailActivity$j.class */
    public static final class C4884j implements AppBarLayout.AbstractC3594c {
        public C4884j() {
        }

        @Override // com.google.android.material.appbar.AppBarLayout.AbstractC3593b
        /* renamed from: a */
        public final void mo26837a(AppBarLayout appBarLayout, int i) {
            EnumC12325i iVar;
            if (i == 0) {
                iVar = EnumC12325i.EXPANDED;
            } else {
                C15149k.m383a((Object) appBarLayout, "appBar");
                iVar = i == (-appBarLayout.m31632f()) ? EnumC12325i.COLLAPSED : EnumC12325i.SCROLLING;
            }
            NumberDetailActivity.this.m26852a(iVar);
        }
    }

    /* renamed from: gogolook.callgogolook2.ndp.NumberDetailActivity$k */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/ndp/NumberDetailActivity$k.class */
    public static final class C4885k implements DetailPageActionViewHolder.AbstractC4463b {
        public C4885k() {
        }

        @Override // gogolook.callgogolook2.detailpage.DetailPageActionViewHolder.AbstractC4463b
        /* renamed from: a */
        public void mo26836a(String str) {
            C15149k.m377b(str, "e164");
            NumberDetailActivity.this.m26866G().mo6357a();
            C12266b.m6510d(NotificationCompat.CATEGORY_CALL);
        }

        @Override // gogolook.callgogolook2.detailpage.DetailPageActionViewHolder.AbstractC4463b
        /* renamed from: a */
        public void mo26835a(String str, String str2) {
            C15149k.m377b(str, "number");
            NumberDetailActivity.this.m26866G().mo6350f();
            C12266b.m6510d(Entity.ENTITY_FAV_KEY);
        }

        @Override // gogolook.callgogolook2.detailpage.DetailPageActionViewHolder.AbstractC4463b
        /* renamed from: a */
        public void mo26834a(String str, String str2, String str3, String str4) {
            C15149k.m377b(str, "number");
            NumberDetailActivity.this.m26866G().mo6354b();
            C12266b.m6510d("block");
        }

        @Override // gogolook.callgogolook2.detailpage.DetailPageActionViewHolder.AbstractC4463b
        /* renamed from: b */
        public void mo26833b(String str) {
            C15149k.m377b(str, "e164");
            NumberDetailActivity.this.m26866G().mo6353c();
            C12266b.m6510d("message");
        }

        @Override // gogolook.callgogolook2.detailpage.DetailPageActionViewHolder.AbstractC4463b
        /* renamed from: c */
        public void mo26832c(String str) {
            C15149k.m377b(str, "e164");
            NumberDetailActivity.this.m26866G().mo6351e();
            C12266b.m6510d("report");
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\t\n��\n\u0002\b\u0003*\u0001\u0001\u0010��\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, m815d2 = {"<anonymous>", "gogolook/callgogolook2/ndp/NumberDetailActivity$uiUpdater$2$1", "invoke", "()Lgogolook/callgogolook2/ndp/NumberDetailActivity$uiUpdater$2$1;"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: gogolook.callgogolook2.ndp.NumberDetailActivity$l */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/ndp/NumberDetailActivity$l.class */
    public static final class C4886l extends AbstractC15150l implements AbstractC15107a<C4887a> {

        @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001d\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��*\u0001��\b\n\u0018��2\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016¨\u0006\b"}, m815d2 = {"gogolook/callgogolook2/ndp/NumberDetailActivity$uiUpdater$2$1", "Lgogolook/callgogolook2/loader/UIUpdater;", "update", "", "number", "", "numberInfo", "Lgogolook/callgogolook2/gson/NumberInfo;", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
        /* renamed from: gogolook.callgogolook2.ndp.NumberDetailActivity$l$a */
        /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/ndp/NumberDetailActivity$l$a.class */
        public static final class C4887a extends C11086o {

            /* renamed from: gogolook.callgogolook2.ndp.NumberDetailActivity$l$a$a */
            /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/ndp/NumberDetailActivity$l$a$a.class */
            public static final class C4888a<T, R> implements Func1<T, Single<? extends R>> {

                /* renamed from: a */
                public final /* synthetic */ NumberDetailActivity f12044a;

                /* renamed from: b */
                public final /* synthetic */ String f12045b;

                public C4888a(NumberDetailActivity numberDetailActivity, C4887a aVar, String str, NumberInfo numberInfo) {
                    this.f12044a = numberDetailActivity;
                    this.f12045b = str;
                }

                /* renamed from: a */
                public final Single<C12328l> call(C12942i iVar) {
                    C15149k.m383a((Object) iVar, "it");
                    boolean d = iVar.m4960d();
                    String str = this.f12045b;
                    if (str != null) {
                        return Single.just(new C12328l(null, null, false, d, C14132r.m2397c(str), C14217x3.m2146e(this.f12044a, this.f12045b), C14063l4.m2667c(this.f12045b), iVar.m4968a(), 4, null));
                    }
                    C15149k.m378b();
                    throw null;
                }
            }

            /* renamed from: gogolook.callgogolook2.ndp.NumberDetailActivity$l$a$b */
            /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/ndp/NumberDetailActivity$l$a$b.class */
            public static final class C4889b<T> implements Action1<C12328l> {

                /* renamed from: a */
                public final /* synthetic */ C12328l f12046a;

                /* renamed from: b */
                public final /* synthetic */ C4887a f12047b;

                /* renamed from: c */
                public final /* synthetic */ NumberInfo f12048c;

                public C4889b(C12328l lVar, C4887a aVar, String str, NumberInfo numberInfo) {
                    this.f12046a = lVar;
                    this.f12047b = aVar;
                    this.f12048c = numberInfo;
                }

                /* renamed from: a */
                public final void call(C12328l lVar) {
                    this.f12046a.m6371a(lVar.m6362h());
                    this.f12046a.m6369b(lVar.m6361i());
                    this.f12046a.m6372a(lVar.m6370b());
                    this.f12046a.m6367c(lVar.m6360j());
                    this.f12046a.m6374a(lVar.m6375a());
                    this.f12046a.m6373a(this.f12048c);
                    C14037j3.m2731a().mo2704a(new C14035j1(this.f12046a));
                    NumberDetailActivity.this.m26866G().mo6355a(this.f12046a);
                    ((AppBarLayout) NumberDetailActivity.this.m26845e(R$id.app_bar)).requestLayout();
                    if (NumberDetailActivity.this.f12022h == EnumC12325i.COLLAPSED) {
                        ((AppBarLayout) NumberDetailActivity.this.m26845e(R$id.app_bar)).m31641a(false, false);
                    } else if (NumberDetailActivity.this.f12022h == EnumC12325i.COLLAPSED) {
                        ((AppBarLayout) NumberDetailActivity.this.m26845e(R$id.app_bar)).m31641a(true, false);
                    }
                    SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) NumberDetailActivity.this.m26845e(R$id.swipe_container);
                    C15149k.m383a((Object) swipeRefreshLayout, "swipe_container");
                    swipeRefreshLayout.setRefreshing(false);
                }
            }

            public C4887a() {
            }

            @Override // p459j.p460a.p461a0.C11040b
            /* renamed from: b */
            public void mo1836b(String str, NumberInfo numberInfo) {
                NumberInfo.ErrorReason o;
                C12328l lVar = NumberDetailActivity.this.f12018d;
                if (lVar != null) {
                    NumberDetailActivity numberDetailActivity = NumberDetailActivity.this;
                    if (C14217x3.m2196a((Activity) numberDetailActivity)) {
                        if (!(str == null || str.length() == 0) && !(!C15149k.m384a((Object) lVar.m6368c(), (Object) str)) && numberInfo != null) {
                            if (numberInfo.m28298r0() || numberInfo.m28296s0()) {
                                if (numberInfo.m28298r0() && (o = numberInfo.m28305o()) != null) {
                                    int i = C12324h.f27810a[o.ordinal()];
                                    if (i == 1) {
                                        C14687h.m862a(numberDetailActivity, (int) R$string.error_code_nointernet, 0).m858c();
                                    } else if (i == 2) {
                                        C14687h.m862a(numberDetailActivity, (int) R$string.error_code_server_fail, 0).m858c();
                                    }
                                }
                                C12928g.m5000a().m4979c(numberDetailActivity.getApplicationContext(), str, "", 3).observeOn(Schedulers.m0io()).flatMap(new C4888a(numberDetailActivity, this, str, numberInfo)).subscribeOn(Schedulers.m0io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C4889b(lVar, this, str, numberInfo));
                            }
                        }
                    }
                }
            }
        }

        public C4886l() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final C4887a invoke() {
            return new C4887a();
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(NumberDetailActivity.class), "presenter", "getPresenter()Lgogolook/callgogolook2/ndp/NumberDetailContract$INumberDetailHeaderPresenter;");
        C15131a0.m412a(sVar);
        C15157s sVar2 = new C15157s(C15131a0.m419a(NumberDetailActivity.class), "uiUpdater", "getUiUpdater()Lgogolook/callgogolook2/loader/UIUpdater;");
        C15131a0.m412a(sVar2);
        f12013m = new AbstractC14906i[]{sVar, sVar2};
    }

    public NumberDetailActivity() {
        C14167t.m2315a(2131100101);
    }

    /* renamed from: a */
    public static final Intent m26859a(Context context, String str, String str2, Bundle bundle) {
        return C4873a.m26840a(f12014n, context, str, str2, bundle, null, 16, null);
    }

    /* renamed from: a */
    public static final Intent m26858a(Context context, String str, String str2, Bundle bundle, String str3) {
        return f12014n.m26841a(context, str, str2, bundle, str3);
    }

    /* renamed from: D */
    public void m26869D() {
        C13937c3.m3014a(this);
        finish();
    }

    /* renamed from: E */
    public final AdUnit m26868E() {
        return C15149k.m384a((Object) this.f12016b, (Object) "FROM_CAll_End_Ndp") ? AdUnit.CALL_END_NDP : AdUnit.NDP;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x00d1, code lost:
        if (r0.equals("FROM_Smslog") != false) goto L_0x0153;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00ee, code lost:
        if (r0.equals("FROM_BLOCK_HISTORY") != false) goto L_0x0193;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0136, code lost:
        if (r0.equals("FROM_Contact") != false) goto L_0x019c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0143, code lost:
        if (r0.equals("FROM_Map") != false) goto L_0x019c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0150, code lost:
        if (r0.equals("FROM_Calllog") != false) goto L_0x0153;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0153, code lost:
        r5 = 19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0190, code lost:
        if (r0.equals("FROM_BLOCK_RULE") != false) goto L_0x0193;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0193, code lost:
        r5 = 17;
     */
    /* renamed from: F */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m26867F() {
        /*
            Method dump skipped, instructions count: 414
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.ndp.NumberDetailActivity.m26867F():int");
    }

    /* renamed from: G */
    public final AbstractC12326j m26866G() {
        AbstractC14974f fVar = this.f12015a;
        AbstractC14906i iVar = f12013m[0];
        return (AbstractC12326j) fVar.getValue();
    }

    /* renamed from: H */
    public final C11086o m26865H() {
        AbstractC14974f fVar = this.f12024j;
        AbstractC14906i iVar = f12013m[1];
        return (C11086o) fVar.getValue();
    }

    /* renamed from: I */
    public final void m26864I() {
        this.f12025k = C14037j3.m2731a().mo2703a((Action1) new C4879e());
    }

    /* renamed from: J */
    public final void m26863J() {
        C12328l lVar;
        String d;
        C12328l lVar2;
        String c;
        setSupportActionBar((Toolbar) m26845e(R$id.ndp_toolbar));
        m26848c("");
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setHomeButtonEnabled(true);
            supportActionBar.setDisplayHomeAsUpEnabled(true);
        }
        ViewPager viewPager = (ViewPager) m26845e(R$id.view_pager);
        if (!(viewPager == null || (lVar = this.f12018d) == null || (d = lVar.m6366d()) == null || (lVar2 = this.f12018d) == null || (c = lVar2.m6368c()) == null)) {
            FragmentManager supportFragmentManager = getSupportFragmentManager();
            C15149k.m383a((Object) supportFragmentManager, "supportFragmentManager");
            String a = C14217x3.m2200a((int) R$string.ndp_tab_info);
            C15149k.m383a((Object) a, "getSyncString(R.string.ndp_tab_info)");
            C4875c cVar = new C4875c(a, new C4880f(d, c, this));
            String a2 = C14217x3.m2200a((int) R$string.ndp_tab_history);
            C15149k.m383a((Object) a2, "getSyncString(R.string.ndp_tab_history)");
            C4874b bVar = new C4874b(supportFragmentManager, C15021m.m557c(cVar, new C4875c(a2, new C4881g(d))));
            viewPager.addOnPageChangeListener(new C4882h(bVar));
            viewPager.setAdapter(bVar);
            viewPager.setCurrentItem(this.f12020f);
        }
        TabLayout tabLayout = (TabLayout) m26845e(R$id.tab_layout);
        if (tabLayout != null) {
            tabLayout.m31304a((ViewPager) m26845e(R$id.view_pager));
            tabLayout.m31310a(C14167t.m2311e(), C14167t.m2312d());
            tabLayout.m31279e(C14167t.m2312d());
        }
        SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) m26845e(R$id.swipe_container);
        if (swipeRefreshLayout != null) {
            swipeRefreshLayout.setOnRefreshListener(new C4883i());
        }
        SwipeRefreshLayout swipeRefreshLayout2 = (SwipeRefreshLayout) m26845e(R$id.swipe_container);
        if (swipeRefreshLayout2 != null) {
            swipeRefreshLayout2.setColorSchemeResources(2131100157);
        }
        AppBarLayout appBarLayout = (AppBarLayout) m26845e(R$id.app_bar);
        if (appBarLayout != null) {
            appBarLayout.m31643a((AppBarLayout.AbstractC3594c) new C4884j());
        }
        this.f12019e = new DetailPageActionViewHolder((LinearLayout) m26845e(R$id.ll_action_buttons), new C4885k());
    }

    /* renamed from: K */
    public final void m26862K() {
        if (C14017g4.m2805s()) {
            Window window = getWindow();
            C15149k.m383a((Object) window, "window");
            View decorView = window.getDecorView();
            C15149k.m383a((Object) decorView, "window.decorView");
            decorView.setSystemUiVisibility(1280);
            int n = C14217x3.m2122n();
            Toolbar toolbar = (Toolbar) m26845e(R$id.ndp_toolbar);
            C15149k.m383a((Object) toolbar, "ndp_toolbar");
            if (toolbar.getLayoutParams() instanceof FrameLayout.LayoutParams) {
                Toolbar toolbar2 = (Toolbar) m26845e(R$id.ndp_toolbar);
                C15149k.m383a((Object) toolbar2, "ndp_toolbar");
                ViewGroup.LayoutParams layoutParams = toolbar2.getLayoutParams();
                if (layoutParams != null) {
                    ((FrameLayout.LayoutParams) layoutParams).setMargins(0, n, 0, 0);
                } else {
                    throw new C14986p("null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
                }
            }
            if (C14217x3.m2134i(this)) {
                View e = m26845e(R$id.l_ndp_header);
                C15149k.m383a((Object) e, "l_ndp_header");
                if (e.getLayoutParams() instanceof FrameLayout.LayoutParams) {
                    View e2 = m26845e(R$id.l_ndp_header);
                    C15149k.m383a((Object) e2, "l_ndp_header");
                    ViewGroup.LayoutParams layoutParams2 = e2.getLayoutParams();
                    if (layoutParams2 != null) {
                        ((FrameLayout.LayoutParams) layoutParams2).setMargins(0, n / 2, 0, 0);
                    } else {
                        throw new C14986p("null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
                    }
                }
            }
        }
        C14123p4.m2429b(getWindow(), 0);
    }

    /* renamed from: L */
    public boolean m26861L() {
        return VersionManager.m25991e(4) || C13878a3.m3257E();
    }

    /* renamed from: M */
    public final void m26860M() {
        Subscription subscription = this.f12025k;
        if (subscription != null) {
            if (!(!subscription.isUnsubscribed())) {
                subscription = null;
            }
            if (subscription != null) {
                subscription.unsubscribe();
            }
        }
    }

    /* renamed from: a */
    public final void m26857a(Intent intent) {
        String a = C12317g.f27803a.m6395a(intent);
        boolean z = true;
        if (a != null) {
            if (!(a.length() > 0)) {
                a = null;
            }
            if (a != null) {
                intent.putExtra("number", a);
            }
        }
        String stringExtra = intent.getStringExtra("number");
        if (stringExtra == null) {
            stringExtra = "";
        }
        String stringExtra2 = intent.getStringExtra("e164");
        if (stringExtra2 == null) {
            stringExtra2 = "";
        }
        boolean booleanExtra = intent.getBooleanExtra("show_sn_warning", false);
        if (!(stringExtra2.length() > 0)) {
            if (stringExtra.length() <= 0) {
                z = false;
            }
            stringExtra2 = "";
            if (z) {
                String l = C14108o4.m2474l(stringExtra);
                stringExtra2 = "";
                if (l != null) {
                    stringExtra2 = l;
                }
            }
        }
        this.f12018d = new C12328l(stringExtra, stringExtra2, booleanExtra, false, false, null, false, 0, 248, null);
        this.f12020f = intent.getBooleanExtra("show_history", false) ? 1 : 0;
        this.f12016b = intent.getStringExtra(ActivityChooserModel.ATTRIBUTE_ACTIVITY);
        Bundle extras = intent.getExtras();
        if (extras != null) {
            this.f12017c = Integer.valueOf(extras.getInt("key_dialer_section", 30));
            extras.getBoolean("show_sn_warning", false);
        }
        this.f12021g = UserProfile.m28126p();
    }

    /* renamed from: a */
    public final void m26852a(EnumC12325i iVar) {
        if (iVar != this.f12022h) {
            this.f12022h = iVar;
            SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) m26845e(R$id.swipe_container);
            C15149k.m383a((Object) swipeRefreshLayout, "swipe_container");
            swipeRefreshLayout.setEnabled(this.f12022h == EnumC12325i.EXPANDED);
            SizedTextView sizedTextView = (SizedTextView) m26845e(R$id.tv_primary);
            C15149k.m383a((Object) sizedTextView, "tv_primary");
            m26848c(sizedTextView.getText().toString());
            m26866G().mo6349g();
        }
    }

    /* renamed from: a */
    public final void m26851a(Object obj) {
        if (obj instanceof C14059l1) {
            m26847c(((C14059l1) obj).f31512a);
            return;
        }
        if (obj instanceof C14148s0) {
            C14148s0 s0Var = (C14148s0) obj;
            if (s0Var.f31652b == 0) {
                int i = s0Var.f31651a;
                if (i == 0 || i == 1 || i == 2 || i == 3) {
                    m26847c(true);
                    return;
                } else if (i == 4) {
                    m26847c(false);
                    return;
                } else {
                    return;
                }
            }
        }
        if ((obj instanceof C14020h1) && ((C14020h1) obj).f31456a) {
            C14037j3.AbstractC14039b a = C14037j3.m2731a();
            C12328l lVar = this.f12018d;
            a.mo2704a(new C14046k1(lVar != null ? lVar.m6366d() : null));
        }
    }

    /* renamed from: c */
    public final void m26848c(String str) {
        C15149k.m377b(str, "title");
        SizedTextView sizedTextView = (SizedTextView) m26845e(R$id.tv_primary);
        C15149k.m383a((Object) sizedTextView, "tv_primary");
        sizedTextView.setText(str);
        if (this.f12022h == EnumC12325i.EXPANDED) {
            CollapsingToolbarLayout collapsingToolbarLayout = (CollapsingToolbarLayout) m26845e(R$id.collapsing_toolbar_layout);
            if (collapsingToolbarLayout != null) {
                collapsingToolbarLayout.m31586a("");
            }
            ActionBar supportActionBar = getSupportActionBar();
            if (supportActionBar != null) {
                supportActionBar.setTitle("");
            }
            SizedTextView sizedTextView2 = (SizedTextView) m26845e(R$id.tv_primary);
            C15149k.m383a((Object) sizedTextView2, "tv_primary");
            sizedTextView2.setVisibility(0);
            SizedTextView sizedTextView3 = (SizedTextView) m26845e(R$id.tv_primary);
            C15149k.m383a((Object) sizedTextView3, "tv_primary");
            sizedTextView3.setAlpha(1.0f);
            return;
        }
        CollapsingToolbarLayout collapsingToolbarLayout2 = (CollapsingToolbarLayout) m26845e(R$id.collapsing_toolbar_layout);
        if (collapsingToolbarLayout2 != null) {
            collapsingToolbarLayout2.m31586a(str);
        }
        ActionBar supportActionBar2 = getSupportActionBar();
        if (supportActionBar2 != null) {
            supportActionBar2.setTitle(str);
        }
        SizedTextView sizedTextView4 = (SizedTextView) m26845e(R$id.tv_primary);
        C15149k.m383a((Object) sizedTextView4, "tv_primary");
        sizedTextView4.setAlpha(0.0f);
    }

    /* renamed from: c */
    public final void m26847c(boolean z) {
        String c;
        C12328l lVar;
        C12328l lVar2 = this.f12018d;
        if (lVar2 != null && (c = lVar2.m6368c()) != null && (lVar = this.f12018d) != null && lVar.m6366d() != null) {
            SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) m26845e(R$id.swipe_container);
            C15149k.m383a((Object) swipeRefreshLayout, "swipe_container");
            swipeRefreshLayout.setRefreshing(true);
            C11052i e = C11052i.m10328e();
            e.m10344a(c);
            e.m10341a(c, m26865H(), z ? C11052i.f24871h : 0, C11052i.f24869f, EnumC11047e.Ndp);
        }
    }

    /* renamed from: e */
    public View m26845e(int i) {
        if (this.f12026l == null) {
            this.f12026l = new HashMap();
        }
        View view = (View) this.f12026l.get(Integer.valueOf(i));
        View view2 = view;
        if (view == null) {
            view2 = findViewById(i);
            this.f12026l.put(Integer.valueOf(i), view2);
        }
        return view2;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        C15149k.m383a((Object) intent, Constants.INTENT_SCHEME);
        C14300r.m1652b("NumberDetailActivity", intent);
        setContentView(R$layout.ndp_activity);
        Intent intent2 = getIntent();
        if (intent2 != null) {
            m26857a(intent2);
        }
        m26863J();
        m26862K();
        m26847c(false);
        m26864I();
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        C15149k.m377b(menu, SupportMenuInflater.XML_MENU);
        getMenuInflater().inflate(R$menu.option_ndp2, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        m26860M();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        C15149k.m377b(intent, "newIntent");
        super.onNewIntent(intent);
        m26857a(intent);
        setIntent(intent);
        m26847c(false);
        C14037j3.AbstractC14039b a = C14037j3.m2731a();
        C12328l lVar = this.f12018d;
        a.mo2704a(new C14046k1(lVar != null ? lVar.m6366d() : null));
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        String c;
        String d;
        C15149k.m377b(menuItem, "item");
        int itemId = menuItem.getItemId();
        C12328l lVar = this.f12018d;
        if (lVar == null || (c = lVar.m6368c()) == null || (d = lVar.m6366d()) == null) {
            return false;
        }
        switch (itemId) {
            case R$id.menu_add /* 2131362815 */:
            case R$id.menu_remove /* 2131362867 */:
                m26866G().mo6350f();
                C12266b.m6510d("overflow_favorite");
                break;
            case R$id.menu_block /* 2131362820 */:
            case R$id.menu_unblock /* 2131362887 */:
                C12317g.m6396a(this, d, c, lVar.m6365e(), lVar.m6362h());
                C12266b.m6510d("overflow_block");
                break;
            case R$id.menu_claim_owner /* 2131362837 */:
                C12317g.m6402a(this, d);
                C12266b.m6510d("overflow_claim_number_ownership");
                break;
            case R$id.menu_flag /* 2131362853 */:
                FlagActivity.m26920a(this, d, c, String.valueOf(lVar.m6365e()), false);
                C12266b.m6510d("overflow_report");
                break;
            case R$id.menu_my_memo /* 2131362860 */:
                m26866G().mo6352d();
                C12266b.m6510d("overflow_my_memos");
                break;
            case R$id.menu_share /* 2131362876 */:
                C12317g.m6401a(this, c, lVar.m6365e());
                C12266b.m6510d("share");
                break;
            case R$id.menu_tele_report /* 2131362886 */:
                C13938c4.m3010a(this, c);
                C12266b.m6510d("overflow_report_carrier");
                break;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        C12266b.f27703b.m6515a();
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        C15149k.m377b(menu, SupportMenuInflater.XML_MENU);
        m26866G().mo6356a(menu);
        return super.onPrepareOptionsMenu(menu);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        String c;
        super.onResume();
        if (m26861L()) {
            m26869D();
        }
        C12266b bVar = C12266b.f27703b;
        bVar.m6514a(bVar.m6513a(this.f12016b));
        C12328l lVar = this.f12018d;
        if (lVar != null && (c = lVar.m6368c()) != null) {
            if (C15149k.m384a((Object) c, (Object) C14137r4.m2374d()) && this.f12021g != UserProfile.m28126p()) {
                m26847c(false);
            }
            ViewPager viewPager = (ViewPager) m26845e(R$id.view_pager);
            Integer valueOf = viewPager != null ? Integer.valueOf(viewPager.getCurrentItem()) : null;
            if (valueOf != null && valueOf.intValue() == 0) {
                C12266b.f27703b.m6511c(TtmlNode.TAG_INFORMATION);
            } else if (valueOf != null && valueOf.intValue() == 1) {
                C12266b.f27703b.m6511c("history");
            }
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    @CallSuper
    public void onStart() {
        super.onStart();
        C14260e.m2001a(this, NumberDetailActivity.class);
        C14260e.m1993d(this);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    @CallSuper
    public void onStop() {
        super.onStop();
        C14260e.m1995c(this);
    }

    @Override // androidx.appcompat.app.AppCompatActivity
    public boolean onSupportNavigateUp() {
        onBackPressed();
        return true;
    }

    /* renamed from: p */
    public final NumberInfo m26842p() {
        C12328l lVar = this.f12018d;
        return lVar != null ? lVar.m6365e() : null;
    }
}
