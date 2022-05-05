package gogolook.callgogolook2.main;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import androidx.appcompat.app.ActionBarDrawerToggle;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.appcompat.widget.Toolbar;
import androidx.core.app.NotificationCompat;
import androidx.core.content.ContextCompat;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.Lifecycle;
import androidx.media2.exoplayer.external.extractor.p007ts.TsExtractor;
import androidx.recyclerview.widget.RecyclerView;
import com.appsflyer.AppsFlyerLib;
import com.appsflyer.internal.referrer.Payload;
import com.google.android.material.tabs.TabLayout;
import com.google.firebase.perf.metrics.Trace;
import com.mopub.common.Constants;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$menu;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.block.TextSearchActivity;
import gogolook.callgogolook2.iap.p076ui.IapActivity;
import gogolook.callgogolook2.intro.iap.IapPromoActivity;
import gogolook.callgogolook2.main.calllog.CallLogsFragment;
import gogolook.callgogolook2.messaging.datamodel.action.SyncMessagesAction;
import gogolook.callgogolook2.offline.offlinedb.OfflineDbActivity;
import gogolook.callgogolook2.p074ad.AdConstant;
import gogolook.callgogolook2.p074ad.AdStatusController;
import gogolook.callgogolook2.p074ad.AdUnit;
import gogolook.callgogolook2.p074ad.AdUtils;
import gogolook.callgogolook2.phonebook.FavoriteActivity;
import gogolook.callgogolook2.util.control.VersionManager;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.Callable;
import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.Dispatchers;
import p081h.p160h.p161a.C6192e;
import p081h.p160h.p161a.EnumC6184a;
import p081h.p160h.p161a.p163i.C6214a;
import p081h.p160h.p161a.p167m.AbstractC6258b;
import p081h.p160h.p161a.p168n.C6260a;
import p081h.p160h.p161a.p169o.C6262a;
import p081h.p160h.p161a.p170p.C6268a;
import p081h.p203i.p325c.p379z.C10062a;
import p459j.p460a.p463b0.C11134j;
import p459j.p460a.p463b0.C11136k;
import p459j.p460a.p463b0.C11137l;
import p459j.p460a.p463b0.C11143o;
import p459j.p460a.p463b0.EnumC11144p;
import p459j.p460a.p463b0.p467t.AbstractC11332h;
import p459j.p460a.p463b0.p467t.C11346n;
import p459j.p460a.p463b0.p468u.C11397b;
import p459j.p460a.p463b0.p470w.C11454r;
import p459j.p460a.p518j.AbstractC12474a;
import p459j.p460a.p521j0.p522u.p523d.C12612g0;
import p459j.p460a.p549o0.C13297a;
import p459j.p460a.p568u.C13637b;
import p459j.p460a.p576w.p577n.C13760c;
import p459j.p460a.p582w0.C13878a3;
import p459j.p460a.p582w0.C13884a4;
import p459j.p460a.p582w0.C13918b4;
import p459j.p460a.p582w0.C13937c3;
import p459j.p460a.p582w0.C13938c4;
import p459j.p460a.p582w0.C13984e1;
import p459j.p460a.p582w0.C13999f1;
import p459j.p460a.p582w0.C14014g1;
import p459j.p460a.p582w0.C14016g3;
import p459j.p460a.p582w0.C14020h1;
import p459j.p460a.p582w0.C14021h2;
import p459j.p460a.p582w0.C14023h4;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14063l4;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14099o3;
import p459j.p460a.p582w0.C14123p4;
import p459j.p460a.p582w0.C14137r4;
import p459j.p460a.p582w0.C14169t1;
import p459j.p460a.p582w0.C14174u;
import p459j.p460a.p582w0.C14191v;
import p459j.p460a.p582w0.C14216x2;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.C14324z0;
import p459j.p460a.p582w0.p587d5.C13978e;
import p459j.p460a.p582w0.p590x4.C14247d;
import p459j.p460a.p582w0.p590x4.C14260e;
import p459j.p460a.p582w0.p590x4.C14261f;
import p459j.p460a.p582w0.p590x4.C14289m;
import p459j.p460a.p582w0.p594z4.C14330b;
import p459j.p460a.p582w0.p594z4.C14356f;
import p459j.p460a.p613z0.DialogC14618f;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.C14979k;
import p626l.C14986p;
import p626l.C14989s;
import p626l.p629c0.AbstractC14906i;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
import p660rx.Single;
import p660rx.Subscription;
import p660rx.functions.Action1;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u009e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u001b\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0016\u0018�� t2\u00020\u00012\u00020\u00022\u00020\u0003:\u0002tuB\u0005¢\u0006\u0002\u0010\u0004J\b\u00103\u001a\u000204H\u0002J\u0012\u00105\u001a\u00020\u00142\b\u00106\u001a\u0004\u0018\u000107H\u0002J\u0012\u00108\u001a\u00020\u00142\b\u00106\u001a\u0004\u0018\u000107H\u0002J\b\u00109\u001a\u000204H\u0002J\b\u0010:\u001a\u000204H\u0002J\b\u0010;\u001a\u000204H\u0016J\u0010\u0010<\u001a\u0002042\b\u0010=\u001a\u0004\u0018\u00010>J\u0012\u0010?\u001a\u00020\u00142\b\u0010@\u001a\u0004\u0018\u00010AH\u0002J&\u0010B\u001a\u00020\u00142\b\u0010C\u001a\u0004\u0018\u00010A2\b\u0010@\u001a\u0004\u0018\u00010A2\b\u0010D\u001a\u0004\u0018\u00010AH\u0002J\b\u0010E\u001a\u000204H\u0002J\b\u0010F\u001a\u000204H\u0002J\b\u0010G\u001a\u000204H\u0002J\b\u0010H\u001a\u000204H\u0002J\b\u0010I\u001a\u000204H\u0002J\b\u0010J\u001a\u000204H\u0016J\u0010\u0010K\u001a\u00020\u00142\u0006\u0010L\u001a\u00020MH\u0016J\u0012\u0010N\u001a\u0002042\b\u0010=\u001a\u0004\u0018\u00010>H\u0017J\u0010\u0010O\u001a\u00020\u00142\u0006\u0010P\u001a\u00020#H\u0016J\b\u0010Q\u001a\u000204H\u0014J\u0018\u0010R\u001a\u00020\u00142\u0006\u0010S\u001a\u00020-2\u0006\u0010T\u001a\u00020UH\u0016J\u0010\u0010V\u001a\u0002042\u0006\u00106\u001a\u000207H\u0014J\u0010\u0010W\u001a\u00020\u00142\u0006\u0010L\u001a\u00020MH\u0016J\b\u0010X\u001a\u000204H\u0014J\u0012\u0010Y\u001a\u0002042\b\u0010=\u001a\u0004\u0018\u00010>H\u0017J\b\u0010Z\u001a\u000204H\u0014J\u0010\u0010[\u001a\u00020\u00142\u0006\u0010P\u001a\u00020#H\u0016J\b\u0010\\\u001a\u000204H\u0015J\u0010\u0010]\u001a\u0002042\u0006\u0010^\u001a\u00020>H\u0014J\u0010\u0010_\u001a\u0002042\u0006\u0010`\u001a\u00020\u0006H\u0002J\b\u0010a\u001a\u000204H\u0002J\b\u0010b\u001a\u000204H\u0014J\b\u0010c\u001a\u000204H\u0014J\b\u0010d\u001a\u000204H\u0002J\b\u0010e\u001a\u000204H\u0002J\u0010\u0010f\u001a\u0002042\u0006\u0010`\u001a\u00020\u0006H\u0002J\u0010\u0010g\u001a\u0002042\u0006\u0010`\u001a\u00020\u0006H\u0002J\u0010\u0010h\u001a\u0002042\u0006\u0010`\u001a\u00020\u0006H\u0002J\u0010\u0010i\u001a\u0002042\u0006\u0010`\u001a\u00020\u0006H\u0002J\b\u0010j\u001a\u000204H\u0002J\u0010\u0010k\u001a\u0002042\u0006\u0010l\u001a\u00020\u0014H\u0016J\b\u0010m\u001a\u00020\u0014H\u0016J\b\u0010n\u001a\u000204H\u0002J\u0010\u0010o\u001a\u0002042\u0006\u0010p\u001a\u00020qH\u0002J\u0010\u0010r\u001a\u0002042\u0006\u0010p\u001a\u00020qH\u0002J\b\u0010s\u001a\u000204H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��R\u001b\u0010\u0007\u001a\u00020\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\nR\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n��R\u0016\u0010\u000f\u001a\u0004\u0018\u00010\u00108VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0015\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0018\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0019\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n��R\u001a\u0010\u001a\u001a\u00020\u00148BX\u0083\u0004¢\u0006\f\u0012\u0004\b\u001b\u0010\u0004\u001a\u0004\b\u001a\u0010\u001cR\u001b\u0010\u001d\u001a\u00020\u001e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b!\u0010\f\u001a\u0004\b\u001f\u0010 R\u0010\u0010\"\u001a\u0004\u0018\u00010#X\u0082\u000e¢\u0006\u0002\n��R\u001b\u0010$\u001a\u00020\b8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b&\u0010\f\u001a\u0004\b%\u0010\nR\u0010\u0010'\u001a\u0004\u0018\u00010(X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010)\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010*\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010+\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n��R\u001b\u0010,\u001a\u00020-8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b0\u0010\f\u001a\u0004\b.\u0010/R\u0010\u00101\u001a\u0004\u0018\u000102X\u0082\u000e¢\u0006\u0002\n��¨\u0006v"}, m815d2 = {"Lgogolook/callgogolook2/main/MainActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "Lgogolook/callgogolook2/app/ActivityNavigator;", "Lgogolook/callgogolook2/main/drawer/IMainActivityView;", "()V", "currentPage", "Lgogolook/callgogolook2/main/PageEnum;", "defaultScope", "Lkotlinx/coroutines/CoroutineScope;", "getDefaultScope", "()Lkotlinx/coroutines/CoroutineScope;", "defaultScope$delegate", "Lkotlin/Lazy;", "drawerController", "Lgogolook/callgogolook2/main/drawer/MainDrawerController;", "drawerRecyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "getDrawerRecyclerView", "()Landroidx/recyclerview/widget/RecyclerView;", "hasShownEnterAd", "", "hasShownOpenAppIapPromo", "hintManager", "Lgogolook/callgogolook2/main/MainActHintManager;", "isConsumed", "isMainActHintCheckingFinished", "isParent", "isParent$annotations", "()Z", "mainHandler", "Landroid/os/Handler;", "getMainHandler", "()Landroid/os/Handler;", "mainHandler$delegate", "mainMenu", "Landroid/view/Menu;", "mainScope", "getMainScope", "mainScope$delegate", "pageAdapter", "Lgogolook/callgogolook2/main/MainAdapter;", "selectedIapTabNotify", "shouldShowCallLogOverflow", "shouldShowSmsLogOverflow", "statusBarColor", "", "getStatusBarColor", "()I", "statusBarColor$delegate", "subscription", "Lrx/Subscription;", "asyncInitView", "", "checkFcm", Constants.INTENT_SCHEME, "Landroid/content/Intent;", "checkIntent", "checkOpenIapPromo", "checkReferrer", "doNavigation", "doParentOnCreate", "savedInstanceState", "Landroid/os/Bundle;", "handleAction", "action", "", "handleGoto", "goto", "from", "hideKeyboard", "initBottomTabs", "initDrawerController", "notifyDrawerChanged", "notifyIapTabChanged", "onBackPressed", "onContextItemSelected", "item", "Landroid/view/MenuItem;", "onCreate", "onCreateOptionsMenu", SupportMenuInflater.XML_MENU, "onDestroy", "onKeyDown", "keyCode", NotificationCompat.CATEGORY_EVENT, "Landroid/view/KeyEvent;", "onNewIntent", "onOptionsItemSelected", "onPause", "onPostCreate", "onPostResume", "onPrepareOptionsMenu", "onResume", "onSaveInstanceState", "b", "onSelectPage", "pageEnum", "onSetContentView", "onStart", "onStop", "refreshProtectionTab", "registerBus", "selectTab", "setMenuGroupVisibility", "setMenuOverflow", "setSelectedTab", "setView", "setupRedDotOnActionBar", "hasRedDot", "shouldNavigate", "syncIapStatus", "tryToLoadAd", "adUnit", "Lgogolook/callgogolook2/ad/AdUnit;", "tryToShowAd", "unregisterBus", "Companion", "OnClickFabListener", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/main/MainActivity.class */
public class MainActivity extends AppCompatActivity implements AbstractC12474a, AbstractC11332h {

    /* renamed from: s */
    public static final /* synthetic */ AbstractC14906i[] f11056s;

    /* renamed from: a */
    public Subscription f11059a;

    /* renamed from: b */
    public Menu f11060b;

    /* renamed from: c */
    public C11137l f11061c;

    /* renamed from: e */
    public C11346n f11063e;

    /* renamed from: g */
    public boolean f11065g;

    /* renamed from: h */
    public boolean f11066h;

    /* renamed from: i */
    public boolean f11067i;

    /* renamed from: j */
    public boolean f11068j;

    /* renamed from: k */
    public boolean f11069k;

    /* renamed from: l */
    public boolean f11070l;

    /* renamed from: m */
    public boolean f11071m;

    /* renamed from: r */
    public HashMap f11076r;

    /* renamed from: u */
    public static final C4578a f11058u = new C4578a(null);

    /* renamed from: t */
    public static final String f11057t = f11057t;

    /* renamed from: t */
    public static final String f11057t = f11057t;

    /* renamed from: d */
    public C11134j f11062d = new C11134j(this);

    /* renamed from: f */
    public EnumC11144p f11064f = EnumC11144p.CALLLOG;

    /* renamed from: n */
    public final AbstractC14974f f11072n = C14975g.m662a(C4588h.f11100a);

    /* renamed from: o */
    public final AbstractC14974f f11073o = C14975g.m662a(C4584d.f11095a);

    /* renamed from: p */
    public final AbstractC14974f f11074p = C14975g.m662a(new C4593m());

    /* renamed from: q */
    public final AbstractC14974f f11075q = C14975g.m662a(new C4587g());

    /* renamed from: gogolook.callgogolook2.main.MainActivity$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/main/MainActivity$a.class */
    public static final class C4578a {
        public C4578a() {
        }

        public /* synthetic */ C4578a(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final Intent m27836a(Context context, String str, String str2) {
            C15149k.m377b(context, "context");
            C15149k.m377b(str, "goto");
            C15149k.m377b(str2, "from");
            Intent intent = new Intent(context, MainActivity.class);
            intent.putExtra("goto", str);
            intent.putExtra("from", str2);
            return intent;
        }
    }

    /* renamed from: gogolook.callgogolook2.main.MainActivity$b */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/main/MainActivity$b.class */
    public interface AbstractC4579b {
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/main/MainActivity$asyncInitView$1", m472f = "MainActivity.kt", m471l = {TsExtractor.TS_PACKET_SIZE, 211, 212}, m470m = "invokeSuspend")
    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001*\u00020\u0002H\u008a@ø\u0001��¢\u0006\u0004\b\u0003\u0010\u0004"}, m815d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: gogolook.callgogolook2.main.MainActivity$c */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/main/MainActivity$c.class */
    public static final class C4580c extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {

        /* renamed from: a */
        public CoroutineScope f11077a;

        /* renamed from: b */
        public Object f11078b;

        /* renamed from: c */
        public Object f11079c;

        /* renamed from: d */
        public Object f11080d;

        /* renamed from: e */
        public Object f11081e;

        /* renamed from: f */
        public Object f11082f;

        /* renamed from: g */
        public Object f11083g;

        /* renamed from: h */
        public int f11084h;

        /* renamed from: gogolook.callgogolook2.main.MainActivity$c$a */
        /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/main/MainActivity$c$a.class */
        public static final class RunnableC4581a implements Runnable {

            /* renamed from: b */
            public final /* synthetic */ View f11087b;

            public RunnableC4581a(View view) {
                this.f11087b = view;
            }

            @Override // java.lang.Runnable
            public final void run() {
                C14216x2.m2208a("MainA:setContentView:+");
                MainActivity.this.setContentView(this.f11087b);
                C14216x2.m2208a("MainA:setContentView:-");
                C14216x2.m2208a("MainA:onSetContentView:+");
                MainActivity.this.m27873Q();
                C14216x2.m2208a("MainA:onSetContentView:-");
                C14216x2.m2209a();
            }
        }

        @AbstractC15070f(m473c = "gogolook/callgogolook2/main/MainActivity$asyncInitView$1$deferredMainAdapter$1", m472f = "MainActivity.kt", m471l = {202}, m470m = "invokeSuspend")
        /* renamed from: gogolook.callgogolook2.main.MainActivity$c$b */
        /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/main/MainActivity$c$b.class */
        public static final class C4582b extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C11137l>, Object> {

            /* renamed from: a */
            public CoroutineScope f11088a;

            /* renamed from: b */
            public int f11089b;

            /* renamed from: d */
            public final /* synthetic */ LayoutInflater f11091d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C4582b(LayoutInflater layoutInflater, AbstractC15044d dVar) {
                super(2, dVar);
                this.f11091d = layoutInflater;
            }

            @Override // p626l.p634w.p636k.p637a.AbstractC15065a
            public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
                C15149k.m377b(dVar, "completion");
                C4582b bVar = new C4582b(this.f11091d, dVar);
                bVar.f11088a = (CoroutineScope) obj;
                return bVar;
            }

            @Override // p626l.p641z.p642c.AbstractC15122p
            public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C11137l> dVar) {
                return ((C4582b) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
            }

            @Override // p626l.p634w.p636k.p637a.AbstractC15065a
            public final Object invokeSuspend(Object obj) {
                C15064c.m478a();
                if (this.f11089b != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else if (!(obj instanceof C14979k.C14981b)) {
                    C14216x2.m2208a("MainA:asyncInitView:MainAdapter:+");
                    FragmentManager supportFragmentManager = MainActivity.this.getSupportFragmentManager();
                    C15149k.m383a((Object) supportFragmentManager, "supportFragmentManager");
                    MainActivity mainActivity = MainActivity.this;
                    LayoutInflater layoutInflater = this.f11091d;
                    C15149k.m383a((Object) layoutInflater, "tabInflater");
                    C11137l lVar = new C11137l(supportFragmentManager, mainActivity, layoutInflater);
                    C14216x2.m2208a("MainA:asyncInitView:MainAdapter:-");
                    return lVar;
                } else {
                    throw ((C14979k.C14981b) obj).f33014a;
                }
            }
        }

        @AbstractC15070f(m473c = "gogolook/callgogolook2/main/MainActivity$asyncInitView$1$deferredMainView$1", m472f = "MainActivity.kt", m471l = {195}, m470m = "invokeSuspend")
        /* renamed from: gogolook.callgogolook2.main.MainActivity$c$c */
        /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/main/MainActivity$c$c.class */
        public static final class C4583c extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super View>, Object> {

            /* renamed from: a */
            public CoroutineScope f11092a;

            /* renamed from: b */
            public int f11093b;

            /* renamed from: c */
            public final /* synthetic */ LayoutInflater f11094c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C4583c(LayoutInflater layoutInflater, AbstractC15044d dVar) {
                super(2, dVar);
                this.f11094c = layoutInflater;
            }

            @Override // p626l.p634w.p636k.p637a.AbstractC15065a
            public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
                C15149k.m377b(dVar, "completion");
                C4583c cVar = new C4583c(this.f11094c, dVar);
                cVar.f11092a = (CoroutineScope) obj;
                return cVar;
            }

            @Override // p626l.p641z.p642c.AbstractC15122p
            public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super View> dVar) {
                return ((C4583c) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
            }

            @Override // p626l.p634w.p636k.p637a.AbstractC15065a
            public final Object invokeSuspend(Object obj) {
                C15064c.m478a();
                if (this.f11093b != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else if (!(obj instanceof C14979k.C14981b)) {
                    C14216x2.m2208a("MainA:asyncInitView:inflate:+");
                    View inflate = this.f11094c.inflate(R$layout.activity_main, (ViewGroup) null);
                    C14216x2.m2208a("MainA:asyncInitView:inflate:-");
                    return inflate;
                } else {
                    throw ((C14979k.C14981b) obj).f33014a;
                }
            }
        }

        public C4580c(AbstractC15044d dVar) {
            super(2, dVar);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C4580c cVar = new C4580c(dVar);
            cVar.f11077a = (CoroutineScope) obj;
            return cVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
            return ((C4580c) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            LayoutInflater layoutInflater;
            LayoutInflater layoutInflater2;
            LayoutInflater layoutInflater3;
            Deferred deferred;
            MainActivity mainActivity;
            Deferred deferred2;
            Object a = C15064c.m478a();
            int i = this.f11084h;
            if (i != 0) {
                if (i == 1) {
                    mainActivity = (MainActivity) this.f11083g;
                    deferred2 = (Deferred) this.f11082f;
                    deferred = (Deferred) this.f11081e;
                    layoutInflater3 = (LayoutInflater) this.f11080d;
                    layoutInflater2 = (LayoutInflater) this.f11079c;
                    layoutInflater = (LayoutInflater) this.f11078b;
                    if (obj instanceof C14979k.C14981b) {
                        throw ((C14979k.C14981b) obj).f33014a;
                    }
                } else if (i == 2) {
                    Deferred deferred3 = (Deferred) this.f11082f;
                    Deferred deferred4 = (Deferred) this.f11081e;
                    LayoutInflater layoutInflater4 = (LayoutInflater) this.f11080d;
                    LayoutInflater layoutInflater5 = (LayoutInflater) this.f11079c;
                    LayoutInflater layoutInflater6 = (LayoutInflater) this.f11078b;
                    if (obj instanceof C14979k.C14981b) {
                        throw ((C14979k.C14981b) obj).f33014a;
                    }
                    C14216x2.m2208a("MainA:asyncInitView:await:-");
                    MainActivity.this.m27881I().postAtFrontOfQueue(new RunnableC4581a((View) obj));
                    return C14989s.f33022a;
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else if (!(obj instanceof C14979k.C14981b)) {
                CoroutineScope coroutineScope = this.f11077a;
                layoutInflater = LayoutInflater.from(MainActivity.this);
                layoutInflater2 = layoutInflater.cloneInContext(MainActivity.this);
                layoutInflater3 = layoutInflater.cloneInContext(MainActivity.this);
                deferred = BuildersKt.async$default(coroutineScope, null, null, new C4583c(layoutInflater2, null), 3, null);
                deferred2 = BuildersKt.async$default(coroutineScope, null, null, new C4582b(layoutInflater3, null), 3, null);
                C14216x2.m2208a("MainA:asyncInitView:await:+");
                MainActivity mainActivity2 = MainActivity.this;
                this.f11078b = layoutInflater;
                this.f11079c = layoutInflater2;
                this.f11080d = layoutInflater3;
                this.f11081e = deferred;
                this.f11082f = deferred2;
                this.f11083g = mainActivity2;
                this.f11084h = 1;
                Object await = deferred2.await(this);
                if (await == a) {
                    return a;
                }
                mainActivity = mainActivity2;
                obj = await;
            } else {
                throw ((C14979k.C14981b) obj).f33014a;
            }
            mainActivity.f11061c = (C11137l) obj;
            this.f11078b = layoutInflater;
            this.f11079c = layoutInflater2;
            this.f11080d = layoutInflater3;
            this.f11081e = deferred;
            this.f11082f = deferred2;
            this.f11084h = 2;
            Object await2 = deferred.await(this);
            obj = await2;
            if (await2 == a) {
                return a;
            }
            C14216x2.m2208a("MainA:asyncInitView:await:-");
            MainActivity.this.m27881I().postAtFrontOfQueue(new RunnableC4581a((View) obj));
            return C14989s.f33022a;
        }
    }

    /* renamed from: gogolook.callgogolook2.main.MainActivity$d */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/main/MainActivity$d.class */
    public static final class C4584d extends AbstractC15150l implements AbstractC15107a<CoroutineScope> {

        /* renamed from: a */
        public static final C4584d f11095a = new C4584d();

        public C4584d() {
            super(0);
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final CoroutineScope invoke() {
            return CoroutineScopeKt.plus(CoroutineScopeKt.CoroutineScope(Dispatchers.getDefault()), new CoroutineName("MainActivity.Default"));
        }
    }

    /* renamed from: gogolook.callgogolook2.main.MainActivity$e */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/main/MainActivity$e.class */
    public static final class C4585e extends AbstractC15150l implements AbstractC15118l<EnumC11144p, C14989s> {

        /* renamed from: a */
        public final /* synthetic */ C11137l f11096a;

        /* renamed from: b */
        public final /* synthetic */ MainActivity f11097b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4585e(C11137l lVar, MainActivity mainActivity) {
            super(1);
            this.f11096a = lVar;
            this.f11097b = mainActivity;
        }

        /* renamed from: a */
        public final void m27835a(EnumC11144p pVar) {
            C15149k.m377b(pVar, "pageEnum");
            C11137l lVar = this.f11096a;
            int b = lVar.m10216b(EnumC11144p.SMS);
            Bundle bundle = new Bundle();
            bundle.putString("from", "tab");
            lVar.m10225a(b, bundle);
            this.f11097b.m27849b(pVar);
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ C14989s invoke(EnumC11144p pVar) {
            m27835a(pVar);
            return C14989s.f33022a;
        }
    }

    /* renamed from: gogolook.callgogolook2.main.MainActivity$f */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/main/MainActivity$f.class */
    public static final class C4586f implements DrawerLayout.DrawerListener {
        public C4586f() {
        }

        @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
        public void onDrawerClosed(View view) {
            C15149k.m377b(view, "drawerView");
            C11397b.m9690d();
        }

        @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
        public void onDrawerOpened(View view) {
            C15149k.m377b(view, "drawerView");
            MainActivity.this.m27879K();
            C11397b.m9691c();
        }

        @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
        public void onDrawerSlide(View view, float f) {
            C15149k.m377b(view, "drawerView");
        }

        @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
        public void onDrawerStateChanged(int i) {
        }
    }

    /* renamed from: gogolook.callgogolook2.main.MainActivity$g */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/main/MainActivity$g.class */
    public static final class C4587g extends AbstractC15150l implements AbstractC15107a<Handler> {
        public C4587g() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final Handler invoke() {
            return new Handler(MainActivity.this.getMainLooper());
        }
    }

    /* renamed from: gogolook.callgogolook2.main.MainActivity$h */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/main/MainActivity$h.class */
    public static final class C4588h extends AbstractC15150l implements AbstractC15107a<CoroutineScope> {

        /* renamed from: a */
        public static final C4588h f11100a = new C4588h();

        public C4588h() {
            super(0);
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final CoroutineScope invoke() {
            return CoroutineScopeKt.plus(CoroutineScopeKt.MainScope(), new CoroutineName("MainActivity.Main"));
        }
    }

    /* renamed from: gogolook.callgogolook2.main.MainActivity$i */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/main/MainActivity$i.class */
    public static final class RunnableC4589i implements Runnable {
        public RunnableC4589i() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            MainActivity.this.m27863a(AdUnit.ENTER);
        }
    }

    /* renamed from: gogolook.callgogolook2.main.MainActivity$j */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/main/MainActivity$j.class */
    public static final class DialogInterface$OnClickListenerC4590j implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public static final DialogInterface$OnClickListenerC4590j f11102a = new DialogInterface$OnClickListenerC4590j();

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            C14289m.m1897a((Integer) null, (Integer) null, (Integer) null, (Integer) 2, (Integer) 1, (Integer) null);
            C14330b.m1551b().m1554a(new C14020h1(true), (Object) null);
        }
    }

    /* renamed from: gogolook.callgogolook2.main.MainActivity$k */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/main/MainActivity$k.class */
    public static final class CallableC4591k<V> implements Callable<T> {
        public CallableC4591k() {
        }

        @Override // java.util.concurrent.Callable
        public final void call() {
            if (!MainActivity.this.isFinishing()) {
                C14216x2.m2208a("MainA:onPostCreate:AppsFlyer:+");
                AppsFlyerLib.getInstance().setDebugLog(false);
                AppsFlyerLib.getInstance().init(AdConstant.APPSFLYER_ID, null, MainActivity.this.getApplication());
                AppsFlyerLib.getInstance().setCustomerUserId(C14217x3.m2118p());
                AppsFlyerLib.getInstance().startTracking(MainActivity.this.getApplication());
                C14216x2.m2208a("MainA:onPostCreate:AppsFlyer:-");
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.main.MainActivity$l */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/main/MainActivity$l.class */
    public static final class C4592l<T> implements Action1<Object> {
        public C4592l() {
        }

        @Override // p660rx.functions.Action1
        public final void call(Object obj) {
            if (C14191v.m2262a((Activity) MainActivity.this)) {
                if (obj instanceof C13999f1) {
                    MainActivity.this.m27875O();
                } else if (obj instanceof C14014g1) {
                    C14014g1 g1Var = (C14014g1) obj;
                    EnumC11144p pVar = g1Var.f31450a;
                    if (pVar != null) {
                        int i = C11136k.f25013a[pVar.ordinal()];
                        if (i == 1) {
                            MainActivity.this.f11065g = g1Var.f31451b;
                        } else if (i == 2) {
                            MainActivity.this.f11066h = g1Var.f31451b;
                        }
                    }
                    if (g1Var.f31450a == MainActivity.this.f11064f) {
                        MainActivity.this.m27843d(g1Var.f31450a);
                    }
                } else if (obj instanceof C14324z0) {
                    MainActivity.this.m27874P();
                } else if (obj instanceof C13984e1) {
                    MainActivity.this.f11071m = true;
                    if (!((C13984e1) obj).f31397a) {
                        MainActivity.this.m27885E();
                    }
                } else if (obj instanceof C14169t1) {
                    MainActivity.this.m27872R();
                }
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.main.MainActivity$m */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/main/MainActivity$m.class */
    public static final class C4593m extends AbstractC15150l implements AbstractC15107a<Integer> {
        public C4593m() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [int, java.lang.Integer] */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final Integer invoke() {
            return ContextCompat.getColor(MainActivity.this, 2131100101);
        }
    }

    /* renamed from: gogolook.callgogolook2.main.MainActivity$n */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/main/MainActivity$n.class */
    public static final class C4594n implements AbstractC6258b {
        public C4594n() {
        }

        @Override // p081h.p160h.p161a.p167m.AbstractC6258b
        /* renamed from: a */
        public void mo5004a(String str) {
            C15149k.m377b(str, "adUnitName");
            C14261f.m1975a(str, AdUtils.m28811a(str));
            List<C6260a> a = C6268a.m23442a(str);
            if (a != null) {
                C14261f.m1972a(a);
            }
            if (C6214a.m23563c(str)) {
                C14247d.f31867v.m2033a(str, C6262a.EnumC6267e.AD_FILL.name());
                if (C15149k.m384a((Object) str, (Object) AdUnit.ENTER.m28821a())) {
                    MainActivity.this.m27854b(AdUnit.ENTER);
                    return;
                }
                return;
            }
            C14247d.f31867v.m2033a(str, C6192e.f15373p.m23592a(str).m23605b());
        }

        @Override // p081h.p160h.p161a.p167m.AbstractC6258b
        /* renamed from: b */
        public void mo5003b(String str) {
            C15149k.m377b(str, "adUnitName");
            C14247d.f31867v.m2034a(str);
            C14247d.f31867v.m2033a(str, C6262a.EnumC6267e.AD_REQUESTING.name());
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(MainActivity.class), "mainScope", "getMainScope()Lkotlinx/coroutines/CoroutineScope;");
        C15131a0.m412a(sVar);
        C15157s sVar2 = new C15157s(C15131a0.m419a(MainActivity.class), "defaultScope", "getDefaultScope()Lkotlinx/coroutines/CoroutineScope;");
        C15131a0.m412a(sVar2);
        C15157s sVar3 = new C15157s(C15131a0.m419a(MainActivity.class), "statusBarColor", "getStatusBarColor()I");
        C15131a0.m412a(sVar3);
        C15157s sVar4 = new C15157s(C15131a0.m419a(MainActivity.class), "mainHandler", "getMainHandler()Landroid/os/Handler;");
        C15131a0.m412a(sVar4);
        f11056s = new AbstractC14906i[]{sVar, sVar2, sVar3, sVar4};
    }

    /* renamed from: a */
    public static final Intent m27866a(Context context, String str, String str2) {
        return f11058u.m27836a(context, str, str2);
    }

    /* renamed from: D */
    public final void m27886D() {
        if (CoroutineScopeKt.isActive(m27882H())) {
            BuildersKt.launch$default(m27882H(), null, null, new C4580c(null), 3, null);
        }
    }

    /* renamed from: E */
    public final void m27885E() {
        if (this.f11071m && !this.f11068j && !this.f11069k && !this.f11062d.f25011c) {
            Lifecycle lifecycle = getLifecycle();
            C15149k.m383a((Object) lifecycle, "lifecycle");
            if (lifecycle.getCurrentState().isAtLeast(Lifecycle.State.RESUMED) && C14021h2.m2773m()) {
                C14191v.m2257a(this, IapPromoActivity.f10880c.m28042a(this, "open_app_v2"), null, 2, null);
                this.f11068j = true;
            }
        }
    }

    /* renamed from: F */
    public final void m27884F() {
        String a = C13978e.f31386a.m9458a("install_referrer_deep_link", (String) null);
        if (!(a == null || a.length() == 0)) {
            Intent a2 = C13297a.m4312a(this, Uri.parse(a), null, null, 0);
            if (a2 != null) {
                C14191v.m2257a(this, a2, null, 2, null);
            }
            C14016g3.m2837a();
            return;
        }
        String a3 = C13978e.f31386a.m9458a("install_referrer_goto", (String) null);
        if (!(a3 == null || a3.length() == 0)) {
            if (a3 != null && a3.hashCode() == 104024 && a3.equals("iap")) {
                C14191v.m2257a(this, IapActivity.C4488b.m28094a(IapActivity.f10799k, this, Payload.REFERRER, null, null, 12, null), null, 2, null);
            }
            C14016g3.m2837a();
            return;
        }
        String a4 = C13978e.f31386a.m9458a("install_referrer_action", (String) null);
        boolean z = true;
        if (a4 != null) {
            z = a4.length() == 0;
        }
        if (!z) {
            C14016g3.m2837a();
        }
    }

    /* renamed from: G */
    public void m27883G() {
        C13937c3.m3014a(this);
        finish();
    }

    /* renamed from: H */
    public final CoroutineScope m27882H() {
        AbstractC14974f fVar = this.f11073o;
        AbstractC14906i iVar = f11056s[1];
        return (CoroutineScope) fVar.getValue();
    }

    /* renamed from: I */
    public final Handler m27881I() {
        AbstractC14974f fVar = this.f11075q;
        AbstractC14906i iVar = f11056s[3];
        return (Handler) fVar.getValue();
    }

    /* renamed from: J */
    public final int m27880J() {
        AbstractC14974f fVar = this.f11074p;
        AbstractC14906i iVar = f11056s[2];
        return ((Number) fVar.getValue()).intValue();
    }

    /* renamed from: K */
    public final void m27879K() {
        View currentFocus = getCurrentFocus();
        if (currentFocus != null) {
            Object systemService = getSystemService("input_method");
            if (systemService != null) {
                ((InputMethodManager) systemService).hideSoftInputFromWindow(currentFocus.getWindowToken(), 0);
                return;
            }
            throw new C14986p("null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
        }
    }

    /* renamed from: L */
    public final void m27878L() {
        C11137l lVar = this.f11061c;
        if (lVar != null) {
            TabLayout tabLayout = (TabLayout) mo27842e(R$id.bottom_tab);
            C15149k.m383a((Object) tabLayout, "bottom_tab");
            lVar.m10222a(tabLayout, new C4585e(lVar, this));
        }
        m27840e(EnumC11144p.CALLLOG);
    }

    /* renamed from: M */
    public final void m27877M() {
        if (this.f11063e == null) {
            this.f11063e = new C11346n(this);
            C11346n nVar = this.f11063e;
            if (nVar != null) {
                nVar.m9745d();
            }
        }
        ((DrawerLayout) mo27842e(R$id.drawer_layout)).addDrawerListener(new C4586f());
    }

    /* renamed from: N */
    public final boolean m27876N() {
        Intent intent = getIntent();
        if (intent != null) {
            return intent.getBooleanExtra(f11057t, false);
        }
        return false;
    }

    /* renamed from: O */
    public final void m27875O() {
        C11346n nVar = this.f11063e;
        if (nVar != null) {
            nVar.m9743e();
        }
    }

    /* renamed from: P */
    public final void m27874P() {
        C11137l lVar = this.f11061c;
        if (lVar != null) {
            EnumC11144p pVar = EnumC11144p.IAP;
            TabLayout tabLayout = (TabLayout) mo27842e(R$id.bottom_tab);
            C15149k.m383a((Object) tabLayout, "bottom_tab");
            lVar.m10219a(pVar, tabLayout, this.f11064f == EnumC11144p.IAP);
        }
    }

    /* renamed from: Q */
    public final void m27873Q() {
        C14216x2.m2208a("MainA:onSetContentView:setView:+");
        m27870T();
        C14216x2.m2208a("MainA:onSetContentView:setView:-");
        C14216x2.m2208a("MainA:onSetContentView:registerBus:+");
        m27871S();
        C14216x2.m2208a("MainA:onSetContentView:registerBus:-");
        C14216x2.m2208a("MainA:onSetContentView:FirebaseDynamicLinksManager.checkDeepLink:+");
        C13637b bVar = C13637b.f30586a;
        Intent intent = getIntent();
        C15149k.m383a((Object) intent, Constants.INTENT_SCHEME);
        bVar.m3762a(this, intent);
        C14216x2.m2208a("MainA:onSetContentView:FirebaseDynamicLinksManager.checkDeepLink:-");
        C14216x2.m2208a("MainA:onSetContentView:checkIntent:+");
        this.f11069k = m27855b(getIntent());
        C14216x2.m2208a("MainA:onSetContentView:checkIntent:-");
        C14216x2.m2208a("MainA:onSetContentView:hintManager:+");
        this.f11062d.m10231c(getIntent(), !this.f11069k);
        C14216x2.m2208a("MainA:onSetContentView:hintManager:-");
        C14216x2.m2208a("MainA:onSetContentView:initDrawerController:+");
        m27877M();
        C14216x2.m2208a("MainA:onSetContentView:initDrawerController:-");
        C14216x2.m2208a("MainA:onSetContentView:notifyDrawerChanged:+");
        m27875O();
        C14216x2.m2208a("MainA:onSetContentView:notifyDrawerChanged:-");
    }

    /* renamed from: R */
    public final void m27872R() {
        C11137l lVar;
        if (C14063l4.m2642w()) {
            C11137l lVar2 = this.f11061c;
            if ((lVar2 == null || lVar2.m10211g() != C14063l4.m2639z()) && (lVar = this.f11061c) != null) {
                EnumC11144p pVar = EnumC11144p.OFFLINEDB;
                TabLayout tabLayout = (TabLayout) mo27842e(R$id.bottom_tab);
                C15149k.m383a((Object) tabLayout, "bottom_tab");
                lVar.m10219a(pVar, tabLayout, this.f11064f == EnumC11144p.OFFLINEDB);
            }
        }
    }

    /* renamed from: S */
    public final void m27871S() {
        this.f11059a = C14037j3.m2731a().mo2703a((Action1) new C4592l());
    }

    /* renamed from: T */
    public final void m27870T() {
        C14216x2.m2208a("MainA:onSetContentView:setView:init:+");
        ViewCompat.setElevation((Toolbar) mo27842e(R$id.toolbar), 0.0f);
        Toolbar toolbar = (Toolbar) mo27842e(R$id.toolbar);
        C15149k.m383a((Object) toolbar, "toolbar");
        toolbar.setTitle("");
        ((Toolbar) mo27842e(R$id.toolbar)).setLogo(R$drawable.icon_logo_whoscall);
        setSupportActionBar((Toolbar) mo27842e(R$id.toolbar));
        ActionBarDrawerToggle actionBarDrawerToggle = new ActionBarDrawerToggle(this, (DrawerLayout) mo27842e(R$id.drawer_layout), (Toolbar) mo27842e(R$id.toolbar), 0, 0);
        ((DrawerLayout) mo27842e(R$id.drawer_layout)).addDrawerListener(actionBarDrawerToggle);
        actionBarDrawerToggle.syncState();
        C14216x2.m2208a("MainA:onSetContentView:setView:init:-");
        C14216x2.m2208a("MainA:onSetContentView:setView:page_tab:+");
        DeactivatedViewPager deactivatedViewPager = (DeactivatedViewPager) mo27842e(R$id.pager);
        C15149k.m383a((Object) deactivatedViewPager, "pager");
        deactivatedViewPager.setAdapter(this.f11061c);
        DeactivatedViewPager deactivatedViewPager2 = (DeactivatedViewPager) mo27842e(R$id.pager);
        C15149k.m383a((Object) deactivatedViewPager2, "pager");
        C11137l lVar = this.f11061c;
        deactivatedViewPager2.setOffscreenPageLimit(lVar != null ? lVar.getCount() : 0);
        ((DeactivatedViewPager) mo27842e(R$id.pager)).m27902a(false);
        C14216x2.m2208a("MainA:onSetContentView:setView:page_tab:-");
        C14216x2.m2208a("MainA:onSetContentView:setView:initBottomTabs:+");
        m27878L();
        C14216x2.m2208a("MainA:onSetContentView:setView:initBottomTabs:-");
    }

    /* renamed from: U */
    public boolean m27869U() {
        return VersionManager.m25991e(4) || C13878a3.m3257E();
    }

    /* renamed from: V */
    public final void m27868V() {
        if (C14137r4.m2372f()) {
            C13760c.m3495a(C13760c.f30875d.m3487a(), mo9774z(), null, null, 6, null);
        }
    }

    /* renamed from: W */
    public final void m27867W() {
        Subscription subscription = this.f11059a;
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
    public final void m27864a(Bundle bundle) {
        super.onCreate(bundle);
    }

    /* renamed from: a */
    public final void m27863a(AdUnit adUnit) {
        C14247d.f31867v.m2040a(adUnit);
        if (AdStatusController.m28827c().m28830a(adUnit)) {
            if (C6214a.m23563c(adUnit.m28821a())) {
                C14247d.f31867v.m2037a(adUnit, C6262a.EnumC6267e.AD_EXIST.name());
                return;
            }
            C6192e a = C6192e.f15373p.m23592a(adUnit.m28821a());
            a.m23606a(AdUtils.m28803f());
            a.m23617a(EnumC6184a.AOTTER_TREK, false);
            a.m23617a(EnumC6184a.NATIVE, true);
            a.m23617a(EnumC6184a.BANNER, false);
            a.m23608a(new C4594n());
            a.m23619a(getApplicationContext());
        }
    }

    /* renamed from: a */
    public final void m27857a(EnumC11144p pVar) {
        C11137l lVar = this.f11061c;
        int b = lVar != null ? lVar.m10216b(pVar) : 0;
        m27840e(pVar);
        TabLayout tabLayout = (TabLayout) mo27842e(R$id.bottom_tab);
        if (tabLayout != null) {
            tabLayout.m31312a(b, 0.0f, true);
        }
        DeactivatedViewPager deactivatedViewPager = (DeactivatedViewPager) mo27842e(R$id.pager);
        if (deactivatedViewPager != null) {
            deactivatedViewPager.setCurrentItem(b, false);
        }
    }

    @Override // p459j.p460a.p463b0.p467t.AbstractC11332h
    /* renamed from: a */
    public void mo9776a(boolean z) {
        ((Toolbar) mo27842e(R$id.toolbar)).setNavigationIcon(z ? R$drawable.icon_hamburger_red_dot : R$drawable.icon_hamburger);
    }

    /* renamed from: a */
    public final boolean m27865a(Intent intent) {
        String stringExtra = intent != null ? intent.getStringExtra("n.link") : null;
        boolean z = false;
        if (intent == null) {
            return false;
        }
        if (stringExtra == null || stringExtra.length() == 0) {
            return false;
        }
        Uri parse = Uri.parse(stringExtra);
        if (parse == null) {
            return true;
        }
        String stringExtra2 = intent.getStringExtra("n.ext_browser");
        if (stringExtra2 != null) {
            z = Boolean.parseBoolean(stringExtra2);
        }
        int i = z ? 1 : 0;
        int i2 = z ? 1 : 0;
        Intent a = C13297a.m4312a(this, parse, null, null, i);
        if (a == null) {
            a = new Intent("android.intent.action.VIEW");
            a.setData(parse);
            a.setFlags(335544320);
        }
        C14191v.m2257a(this, a, null, 2, null);
        return true;
    }

    /* renamed from: a */
    public final boolean m27856a(String str, String str2, String str3) {
        if (str == null) {
            return false;
        }
        int hashCode = str.hashCode();
        if (hashCode != -898417845) {
            if (hashCode != 41600190) {
                if (hashCode != 548643878 || !str.equals("calllog")) {
                    return false;
                }
                m27849b(EnumC11144p.CALLLOG);
                return false;
            } else if (!str.equals("contactlist")) {
                return false;
            } else {
                m27849b(EnumC11144p.CONTACT);
                return false;
            }
        } else if (!str.equals("smslog")) {
            return false;
        } else {
            C11137l lVar = this.f11061c;
            if (lVar != null) {
                int b = lVar.m10216b(EnumC11144p.SMS);
                Bundle bundle = new Bundle();
                bundle.putString("from", str3);
                lVar.m10225a(b, bundle);
            }
            m27849b(EnumC11144p.SMS);
            return false;
        }
    }

    /* renamed from: b */
    public final void m27854b(AdUnit adUnit) {
        if (AdStatusController.m28827c().m28830a(adUnit) && C6214a.m23563c(adUnit.m28821a()) && adUnit == AdUnit.ENTER) {
            Lifecycle lifecycle = getLifecycle();
            C15149k.m383a((Object) lifecycle, "lifecycle");
            if (lifecycle.getCurrentState().isAtLeast(Lifecycle.State.RESUMED) && !this.f11067i) {
                this.f11067i = true;
                AdUtils.m28814a(this, adUnit);
            }
        }
    }

    /* renamed from: b */
    public final void m27849b(EnumC11144p pVar) {
        if (pVar != this.f11064f) {
            if (pVar == EnumC11144p.IAP) {
                if (!C14021h2.m2779g() && C14021h2.m2781e()) {
                    this.f11070l = true;
                    C13978e.f31386a.m9459a("click_promoting_iap_tab_first_time", (String) Long.valueOf(System.currentTimeMillis()));
                }
                C14191v.m2257a(this, IapActivity.C4488b.m28094a(IapActivity.f10799k, this, "main_tab", null, null, 12, null), null, 2, null);
            } else if (pVar == EnumC11144p.OFFLINEDB) {
                Intent a = OfflineDbActivity.m26782a(this, "tab");
                C15149k.m383a((Object) a, "OfflineDbActivity.create…flineDbActivity.FROM_TAB)");
                C14191v.m2257a(this, a, null, 2, null);
            } else {
                m27846c(pVar);
                this.f11064f = pVar;
                m27857a(this.f11064f);
            }
        }
    }

    /* renamed from: b */
    public final boolean m27855b(Intent intent) {
        boolean z = false;
        if (intent == null) {
            return false;
        }
        String stringExtra = intent.getStringExtra("from");
        String stringExtra2 = intent.getStringExtra("action");
        if (m27856a(intent.getStringExtra("goto"), stringExtra2, stringExtra) || m27845c(stringExtra2)) {
            z = true;
        }
        return z;
    }

    /* renamed from: c */
    public final void m27846c(EnumC11144p pVar) {
        int i = C11136k.f25014b[pVar.ordinal()];
        int i2 = i != 1 ? i != 2 ? i != 3 ? i != 4 ? -1 : R$id.menu_sms_group : R$id.menu_block_group : R$id.menu_contact_group : R$id.menu_call_log_group;
        Menu menu = this.f11060b;
        if (menu != null) {
            for (Integer num : new Integer[]{Integer.valueOf((int) R$id.menu_call_log_group), Integer.valueOf((int) R$id.menu_contact_group), Integer.valueOf((int) R$id.menu_block_group), Integer.valueOf((int) R$id.menu_sms_group)}) {
                int intValue = num.intValue();
                menu.setGroupVisible(intValue, intValue == i2);
            }
            m27843d(pVar);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: c */
    public final boolean m27845c(String str) {
        boolean z = true;
        if (str != null) {
            switch (str.hashCode()) {
                case -1828249767:
                    if (str.equals("invalid_deeplink_handle")) {
                        m27849b(EnumC11144p.CALLLOG);
                        C13938c4.m3008a(this, getString(R$string.deeplinknotsupport_general), getString(R$string.got_it));
                        break;
                    }
                    break;
                case -767403237:
                    if (str.equals("enable_call_confirm")) {
                        C12612g0.m5796a((Activity) this);
                        break;
                    }
                    break;
                case -60936364:
                    if (str.equals("customer_service")) {
                        Bundle bundle = new Bundle();
                        bundle.putInt("category_id", 9);
                        bundle.putInt("step", getIntent().getIntExtra("step", 1));
                        C13884a4.m3187a(this, 1, bundle, (C13884a4.AbstractC13890d) null);
                        break;
                    }
                    break;
                case 592684449:
                    if (str.equals("advanced_notify_dialog")) {
                        Bundle bundle2 = new Bundle();
                        bundle2.putBoolean("with_extra_info", false);
                        bundle2.putString("title_postfix", getString(R$string.aboutus_option_incallscreen));
                        bundle2.putBoolean("need_num_verified", false);
                        bundle2.putInt("category_id", 9);
                        bundle2.putInt("step", getIntent().getIntExtra("step", 1));
                        C13884a4.m3187a(this, 2, bundle2, (C13884a4.AbstractC13890d) null);
                        break;
                    }
                    break;
            }
            return z;
        }
        z = false;
        return z;
    }

    /* renamed from: d */
    public final void m27843d(EnumC11144p pVar) {
        MenuItem findItem;
        Menu menu;
        MenuItem findItem2;
        int i = C11136k.f25015c[pVar.ordinal()];
        if (i == 1) {
            Menu menu2 = this.f11060b;
            if (menu2 != null && (findItem = menu2.findItem(R$id.menu_call_log_toolbar_overflow)) != null) {
                findItem.setVisible(this.f11065g);
            }
        } else if (i == 2 && (menu = this.f11060b) != null && (findItem2 = menu.findItem(R$id.menu_sms_toolbar_overflow)) != null) {
            findItem2.setVisible(this.f11066h);
        }
    }

    /* renamed from: e */
    public View mo27842e(int i) {
        if (this.f11076r == null) {
            this.f11076r = new HashMap();
        }
        View view = (View) this.f11076r.get(Integer.valueOf(i));
        View view2 = view;
        if (view == null) {
            view2 = findViewById(i);
            this.f11076r.put(Integer.valueOf(i), view2);
        }
        return view2;
    }

    /* renamed from: e */
    public final void m27840e(EnumC11144p pVar) {
        C11137l lVar = this.f11061c;
        if (lVar != null) {
            TabLayout tabLayout = (TabLayout) mo27842e(R$id.bottom_tab);
            C15149k.m383a((Object) tabLayout, "bottom_tab");
            lVar.m10220a(pVar, tabLayout);
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        Fragment fragment;
        DrawerLayout drawerLayout = (DrawerLayout) mo27842e(R$id.drawer_layout);
        if (drawerLayout != null && drawerLayout.isDrawerOpen(GravityCompat.START)) {
            DrawerLayout drawerLayout2 = (DrawerLayout) mo27842e(R$id.drawer_layout);
            if (drawerLayout2 != null) {
                drawerLayout2.closeDrawer(GravityCompat.START);
            }
        } else if (this.f11061c != null && ((DeactivatedViewPager) mo27842e(R$id.pager)) != null) {
            C11137l lVar = this.f11061c;
            if (lVar != null) {
                DeactivatedViewPager deactivatedViewPager = (DeactivatedViewPager) mo27842e(R$id.pager);
                C15149k.m383a((Object) deactivatedViewPager, "pager");
                fragment = lVar.getItem(deactivatedViewPager.getCurrentItem());
            } else {
                fragment = null;
            }
            if ((fragment instanceof CallLogsFragment) && ((CallLogsFragment) fragment).m27834V()) {
                return;
            }
            if (!(fragment instanceof C11454r) || !((C11454r) fragment).m9587b0()) {
                EnumC11144p pVar = EnumC11144p.CALLLOG;
                if (pVar != this.f11064f) {
                    m27849b(pVar);
                } else {
                    finish();
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0031, code lost:
        if (r0.m10224a(r5, r0.getCurrentItem()) == true) goto L_0x0039;
     */
    @Override // android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onContextItemSelected(android.view.MenuItem r5) {
        /*
            r4 = this;
            r0 = r5
            java.lang.String r1 = "item"
            p626l.p641z.p643d.C15149k.m377b(r0, r1)
            r0 = r4
            j.a.b0.l r0 = r0.f11061c
            r6 = r0
            r0 = 1
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0037
            r0 = r4
            int r1 = gogolook.callgogolook2.R$id.pager
            android.view.View r0 = r0.mo27842e(r1)
            gogolook.callgogolook2.main.DeactivatedViewPager r0 = (gogolook.callgogolook2.main.DeactivatedViewPager) r0
            r8 = r0
            r0 = r8
            java.lang.String r1 = "pager"
            p626l.p641z.p643d.C15149k.m383a(r0, r1)
            r0 = r6
            r1 = r5
            r2 = r8
            int r2 = r2.getCurrentItem()
            boolean r0 = r0.m10224a(r1, r2)
            r1 = 1
            if (r0 != r1) goto L_0x0037
            goto L_0x0039
        L_0x0037:
            r0 = 0
            r7 = r0
        L_0x0039:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.main.MainActivity.onContextItemSelected(android.view.MenuItem):boolean");
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        Trace b = C10062a.m13512b("main_create_time");
        C14216x2.m2208a("MainA:onCreate:+");
        super.onCreate(bundle);
        C14216x2.m2208a("MainA:onCreate:overridePendingTransition:+");
        overridePendingTransition(17432576, 17432577);
        C14216x2.m2208a("MainA:onCreate:overridePendingTransition:-");
        C14216x2.m2208a("MainA:onCreate:shouldHandlePreloadTasks:+");
        if (C13937c3.m3014a(this)) {
            finish();
            b.stop();
            return;
        }
        C14216x2.m2208a("MainA:onCreate:shouldHandlePreloadTasks:-");
        C14216x2.m2208a("MainA:onCreate:checkFcm:+");
        if (m27865a(getIntent())) {
            finish();
            b.stop();
            return;
        }
        C14216x2.m2208a("MainA:onCreate:checkFcm:-");
        C14216x2.m2208a("MainA:onCreate:asyncInitView:+");
        m27886D();
        C14216x2.m2208a("MainA:onCreate:asyncInitView:-");
        C14216x2.m2208a("MainA:onCreate:tryToLoadAd:+");
        this.f11067i = false;
        m27881I().post(new RunnableC4589i());
        C14216x2.m2208a("MainA:onCreate:tryToLoadAd:-");
        C14216x2.m2208a("MainA:onCreate:-");
        b.stop();
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        C15149k.m377b(menu, SupportMenuInflater.XML_MENU);
        getMenuInflater().inflate(R$menu.activity_main_toolbar, menu);
        this.f11060b = menu;
        m27846c(this.f11064f);
        return super.onCreateOptionsMenu(menu);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        try {
            super.onDestroy();
        } catch (Exception e) {
            C14080m2.m2612a((Throwable) e);
        }
        CoroutineScopeKt.cancel$default(mo9774z(), null, 1, null);
        CoroutineScopeKt.cancel$default(m27882H(), null, 1, null);
        m27867W();
        this.f11063e = null;
        Application application = getApplication();
        if (application != null) {
            ((MyApplication) application).m29026c().m3470b();
            C6192e.f15373p.m23592a(AdUnit.ENTER.m28821a()).m23594h();
            C14247d.f31867v.m2031b(AdUnit.ENTER);
            return;
        }
        throw new C14986p("null cannot be cast to non-null type gogolook.callgogolook2.MyApplication");
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        C15149k.m377b(keyEvent, NotificationCompat.CATEGORY_EVENT);
        if (i == 82) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        C15149k.m377b(intent, Constants.INTENT_SCHEME);
        if (C14191v.m2262a((Activity) this)) {
            setIntent(intent);
            if (this.f11061c != null && ((TabLayout) mo27842e(R$id.bottom_tab)) != null) {
                this.f11069k = m27855b(intent) || m27865a(intent);
                C11134j jVar = this.f11062d;
                this.f11068j = false;
                jVar.m10233b(intent, !this.f11069k);
                C13637b bVar = C13637b.f30586a;
                Intent intent2 = getIntent();
                C15149k.m383a((Object) intent2, "getIntent()");
                bVar.m3762a(this, intent2);
            }
        }
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        C15149k.m377b(menuItem, "item");
        switch (menuItem.getItemId()) {
            case R$id.menu_block_toolbar_search /* 2131362828 */:
            case R$id.menu_call_log_toolbar_search /* 2131362833 */:
            case R$id.menu_contact_toolbar_search /* 2131362841 */:
            case R$id.menu_sms_toolbar_search /* 2131362880 */:
                startActivity(new Intent(this, TextSearchActivity.class));
                break;
            case R$id.menu_contact_toolbar_favorite /* 2131362840 */:
                startActivity(new Intent(this, FavoriteActivity.class));
                break;
            case R$id.menu_delete_all /* 2131362844 */:
                C14289m.m1897a((Integer) null, (Integer) null, (Integer) null, (Integer) 2, (Integer) null, (Integer) null);
                DialogC14618f fVar = new DialogC14618f(this);
                fVar.m995c(R$string.calllog_filter_deleteall_dialog);
                fVar.m990f(4);
                fVar.m999b(R$string.calllog_filter_deleteall_confirm, DialogInterface$OnClickListenerC4590j.f11102a);
                fVar.m993d(R$string.cancel);
                fVar.show();
                break;
            case R$id.menu_mark_as_read /* 2131362857 */:
            case R$id.menu_sms_select /* 2131362878 */:
                C11137l lVar = this.f11061c;
                if (lVar != null) {
                    DeactivatedViewPager deactivatedViewPager = (DeactivatedViewPager) mo27842e(R$id.pager);
                    C15149k.m383a((Object) deactivatedViewPager, "pager");
                    Fragment item = lVar.getItem(deactivatedViewPager.getCurrentItem());
                    if (item != null) {
                        if (!(item instanceof C11454r)) {
                            item = null;
                        }
                        if (item != null) {
                            item.onOptionsItemSelected(menuItem);
                            break;
                        }
                    }
                }
                break;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        DrawerLayout drawerLayout = (DrawerLayout) mo27842e(R$id.drawer_layout);
        if (drawerLayout != null) {
            drawerLayout.closeDrawers();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity
    public void onPostCreate(Bundle bundle) {
        Trace b = C10062a.m13512b("main_post_create_time");
        C14216x2.m2208a("MainA:onPostCreate:+");
        super.onPostCreate(bundle);
        C14216x2.m2208a("MainA:onPostCreate:checkReferrer:+");
        m27884F();
        C14216x2.m2208a("MainA:onPostCreate:checkReferrer:-");
        Single.fromCallable(new CallableC4591k()).subscribeOn(C14174u.m2303a()).subscribe();
        C14216x2.m2208a("MainA:onPostCreate:trackInventory:+");
        C14261f.m1970b();
        C14216x2.m2208a("MainA:onPostCreate:trackInventory:-");
        C14216x2.m2208a("MainA:onPostCreate:config:+");
        C14099o3.m2510n().m2547a();
        C14216x2.m2208a("MainA:onPostCreate:config:-");
        C14216x2.m2208a("MainA:onPostCreate:syncIapStatus:+");
        m27868V();
        C14216x2.m2208a("MainA:onPostCreate:syncIapStatus:-");
        C14216x2.m2208a("MainA:onPostCreate:-");
        b.stop();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPostResume() {
        C11143o b;
        C14216x2.m2208a("MainA:onPostResume:+");
        super.onPostResume();
        C14216x2.m2208a("MainA:onPostResume:gf:+");
        DeactivatedViewPager deactivatedViewPager = (DeactivatedViewPager) mo27842e(R$id.pager);
        int currentItem = deactivatedViewPager != null ? deactivatedViewPager.getCurrentItem() : 0;
        C11137l lVar = this.f11061c;
        if (((lVar == null || (b = lVar.m10217b(currentItem)) == null) ? null : b.m10192b()) == EnumC11144p.CALLLOG) {
            if (!m27876N()) {
                C14023h4.m2761a(true);
                C14023h4.m2766a(this);
            }
            C14260e.m2001a(this, CallLogsFragment.class);
            C14289m.m1897a((Integer) 1, (Integer) null, (Integer) null, (Integer) null, (Integer) null, (Integer) null);
        }
        C14216x2.m2208a("MainA:onPostResume:gf:-");
        C14216x2.m2208a("MainA:onPostResume:request_log_aggregate:+");
        C14356f.m1485a(7);
        C14216x2.m2208a("MainA:onPostResume:request_log_aggregate:-");
        C14216x2.m2208a("MainA:onPostResume:request_sms_aggregate:+");
        SyncMessagesAction.m27654z();
        C14216x2.m2208a("MainA:onPostResume:request_sms_aggregate:-");
        C14216x2.m2208a("MainA:onPostResume:tyToShowAd:+");
        m27854b(AdUnit.ENTER);
        C14216x2.m2208a("MainA:onPostResume:tyToShowAd:-");
        C14216x2.m2208a("MainA:onPostResume:checkOpenIapPromo:+");
        m27885E();
        C14216x2.m2208a("MainA:onPostResume:checkOpenIapPromo:-");
        C14216x2.m2208a("MainA:onPostResume:-");
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        C15149k.m377b(menu, SupportMenuInflater.XML_MENU);
        return true;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        Trace b = C10062a.m13512b("main_resume_time");
        C14216x2.m2208a("MainA:onResume:+");
        super.onResume();
        C14216x2.m2208a("MainA:onResume:navigation:+");
        if (m27869U()) {
            m27883G();
        }
        C14216x2.m2208a("MainA:onResume:navigation:-");
        C14216x2.m2208a("MainA:onResume:contact_group_info:+");
        if (!C13978e.f31386a.m9462a("prefTrackContactGroupAmount", (Boolean) false)) {
            C13918b4.m3040a();
        }
        C14216x2.m2208a("MainA:onResume:contact_group_info:-");
        C14216x2.m2208a("MainA:onResume:drawers:+");
        try {
            invalidateOptionsMenu();
            m27875O();
        } catch (Exception e) {
            C14080m2.m2612a((Throwable) e);
        }
        C14216x2.m2208a("MainA:onResume:drawers:-");
        if (!(this.f11061c == null || ((TabLayout) mo27842e(R$id.bottom_tab)) == null)) {
            C14216x2.m2208a("MainA:onResume:notifyIapTabChanged:+");
            if (this.f11070l) {
                m27874P();
                this.f11070l = false;
            }
            C14216x2.m2208a("MainA:onResume:notifyIapTabChanged:-");
            C14216x2.m2208a("MainA:onResume:refreshProtectionTab:+");
            m27872R();
            C14216x2.m2208a("MainA:onResume:refreshProtectionTab:-");
        }
        C14216x2.m2208a("MainA:onResume:HintManager.onResume:+");
        this.f11062d.m10241a();
        C14216x2.m2208a("MainA:onResume:HintManager.onResume:-");
        C14216x2.m2208a("MainA:onResume:-");
        b.stop();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        C15149k.m377b(bundle, "b");
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        C14216x2.m2208a("MainA:onStart:+");
        super.onStart();
        C14123p4.m2429b(getWindow(), m27880J());
        C14260e.m2001a(this, getClass());
        C14260e.m1993d(this);
        C14216x2.m2208a("MainA:onStart:-");
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        C14260e.m1995c(this);
    }

    @Override // p459j.p460a.p463b0.p467t.AbstractC11332h
    /* renamed from: t */
    public RecyclerView mo9775t() {
        return (RecyclerView) mo27842e(R$id.left_drawer);
    }

    @Override // p459j.p460a.p463b0.p467t.AbstractC11332h
    /* renamed from: z */
    public CoroutineScope mo9774z() {
        AbstractC14974f fVar = this.f11072n;
        AbstractC14906i iVar = f11056s[0];
        return (CoroutineScope) fVar.getValue();
    }
}
