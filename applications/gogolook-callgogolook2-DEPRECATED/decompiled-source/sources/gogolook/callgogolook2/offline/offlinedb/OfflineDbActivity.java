package gogolook.callgogolook2.offline.offlinedb;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProviders;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.airbnb.lottie.LottieAnimationView;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.offline.offlinedb.OfflineDbActivity;
import gogolook.callgogolook2.p074ad.AdDialog;
import gogolook.callgogolook2.p074ad.AdStatusController;
import gogolook.callgogolook2.p074ad.AdUnit;
import gogolook.callgogolook2.p074ad.OnAdRequestToLoadCallback;
import gogolook.callgogolook2.phone.call.dialog.CallUtils;
import gogolook.callgogolook2.util.control.VersionManager;
import gogolook.callgogolook2.view.SimpleInAppDialog;
import p081h.p160h.p161a.C6192e;
import p081h.p160h.p161a.p163i.C6214a;
import p459j.p460a.p463b0.p466s.C11238c;
import p459j.p460a.p515i0.p516a.C12425g;
import p459j.p460a.p515i0.p516a.C12431j;
import p459j.p460a.p515i0.p516a.C12433k;
import p459j.p460a.p515i0.p516a.EnumC12429h;
import p459j.p460a.p515i0.p516a.p517n.C12447c;
import p459j.p460a.p515i0.p516a.p517n.C12470h;
import p459j.p460a.p518j.AbstractC12474a;
import p459j.p460a.p518j.AbstractC12475b;
import p459j.p460a.p576w.C13748f;
import p459j.p460a.p582w0.C13878a3;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C13937c3;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14063l4;
import p459j.p460a.p582w0.C14097o1;
import p459j.p460a.p582w0.C14117p1;
import p459j.p460a.p582w0.C14123p4;
import p459j.p460a.p582w0.C14167t;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p583a5.C13891a;
import p459j.p460a.p582w0.p583a5.p584e.AbstractC13908b;
import p459j.p460a.p582w0.p583a5.p584e.C13909c;
import p459j.p460a.p582w0.p585b5.C13929c;
import p459j.p460a.p582w0.p585b5.C13930d;
import p459j.p460a.p582w0.p590x4.C14289m;
import p660rx.Subscription;
import p660rx.functions.Action1;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/offline/offlinedb/OfflineDbActivity.class */
public class OfflineDbActivity extends AppCompatActivity implements C13930d.AbstractC13931a, AbstractC12474a, AbstractC12475b, OnAdRequestToLoadCallback {

    /* renamed from: a */
    public AdDialog f12077a;

    /* renamed from: c */
    public String f12079c;

    /* renamed from: i */
    public Subscription f12085i;
    @BindView(R$id.fl_updating)
    public View mFlUpdating;
    @BindView(R$id.fragment_container)
    public View mFragmentContainer;
    @BindView(R$id.iv_background)
    public ImageView mIvBackground;
    @BindView(R$id.iv_close)
    public ImageView mIvClose;
    @BindView(R$id.iv_bg_end)
    public ImageView mIvEnd;
    @BindView(R$id.iv_bg_start)
    public ImageView mIvStart;
    @BindView(R$id.iv_theme_bottom_end)
    public ImageView mIvThemeBottomEnd;
    @BindView(R$id.iv_theme_bottom_start)
    public ImageView mIvThemeBottomStart;
    @BindView(R$id.lav_update_anim)
    public LottieAnimationView mLavUpdateAnim;
    @BindView(R$id.mrl_ad_view)
    public RelativeLayout mRlAdView;
    @BindView(R$id.rl_updating)
    public View mRlUpdating;
    @BindView(R$id.rl_whole)
    public RelativeLayout mRlWhole;
    @BindView(R$id.tv_result_content)
    public TextView mTvResultContent;
    @BindView(R$id.tv_result_title)
    public TextView mTvResultTitle;
    @BindView(R$id.tv_update_progress)
    public TextView mTvUpdateProgress;
    @BindView(R$id.tb_offlinedb)
    public Toolbar toolbar;

    /* renamed from: b */
    public final C12425g f12078b = new C12425g(this);

    /* renamed from: d */
    public boolean f12080d = false;

    /* renamed from: e */
    public boolean f12081e = false;

    /* renamed from: f */
    public ValueAnimator f12082f = null;

    /* renamed from: g */
    public ValueAnimator f12083g = null;

    /* renamed from: h */
    public boolean f12084h = false;

    /* renamed from: j */
    public final C13929c f12086j = new C13929c(this, false);

    /* renamed from: k */
    public C12433k f12087k = null;

    /* renamed from: l */
    public final Animator.AnimatorListener f12088l = new C4911h();

    /* renamed from: gogolook.callgogolook2.offline.offlinedb.OfflineDbActivity$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/offline/offlinedb/OfflineDbActivity$a.class */
    public class View$OnClickListenerC4904a implements View.OnClickListener {
        public View$OnClickListenerC4904a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            OfflineDbActivity.this.finish();
        }
    }

    /* renamed from: gogolook.callgogolook2.offline.offlinedb.OfflineDbActivity$b */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/offline/offlinedb/OfflineDbActivity$b.class */
    public class View$OnClickListenerC4905b implements View.OnClickListener {
        public View$OnClickListenerC4905b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            OfflineDbActivity.this.m26804E();
        }
    }

    /* renamed from: gogolook.callgogolook2.offline.offlinedb.OfflineDbActivity$c */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/offline/offlinedb/OfflineDbActivity$c.class */
    public class View$OnClickListenerC4906c implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ SimpleInAppDialog f12091a;

        public View$OnClickListenerC4906c(OfflineDbActivity offlineDbActivity, SimpleInAppDialog simpleInAppDialog) {
            this.f12091a = simpleInAppDialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C14217x3.m2194a(this.f12091a);
        }
    }

    /* renamed from: gogolook.callgogolook2.offline.offlinedb.OfflineDbActivity$d */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/offline/offlinedb/OfflineDbActivity$d.class */
    public class C4907d implements ValueAnimator.AnimatorUpdateListener {
        public C4907d() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            if (intValue >= 100) {
                OfflineDbActivity.this.f12081e = true;
            }
            OfflineDbActivity offlineDbActivity = OfflineDbActivity.this;
            if (offlineDbActivity.mTvUpdateProgress != null && C14217x3.m2196a((Activity) offlineDbActivity)) {
                OfflineDbActivity.this.mTvUpdateProgress.setText(String.format(C14206w4.m2225a((int) R$string.db_update_progress), Integer.valueOf(intValue)));
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.offline.offlinedb.OfflineDbActivity$e */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/offline/offlinedb/OfflineDbActivity$e.class */
    public class C4908e extends AnimatorListenerAdapter {
        public C4908e() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            OfflineDbActivity offlineDbActivity = OfflineDbActivity.this;
            if (offlineDbActivity.mTvUpdateProgress != null && C14217x3.m2196a((Activity) offlineDbActivity)) {
                OfflineDbActivity.this.mTvUpdateProgress.setVisibility(0);
                OfflineDbActivity.this.mTvUpdateProgress.setAlpha(1.0f);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.offline.offlinedb.OfflineDbActivity$f */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/offline/offlinedb/OfflineDbActivity$f.class */
    public class C4909f implements ValueAnimator.AnimatorUpdateListener {
        public C4909f() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            if (floatValue <= 1.0f) {
                OfflineDbActivity.this.mTvUpdateProgress.setAlpha(1.0f - floatValue);
                return;
            }
            float f = floatValue - 1.0f;
            OfflineDbActivity.this.mTvUpdateProgress.setVisibility(8);
            OfflineDbActivity.this.mTvResultTitle.setVisibility(0);
            OfflineDbActivity.this.mTvResultContent.setVisibility(0);
            OfflineDbActivity.this.mIvClose.setVisibility(0);
            OfflineDbActivity.this.mTvResultContent.setAlpha(f);
            OfflineDbActivity.this.mTvResultTitle.setAlpha(f);
            OfflineDbActivity.this.mIvClose.setAlpha(f);
        }
    }

    /* renamed from: gogolook.callgogolook2.offline.offlinedb.OfflineDbActivity$g */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/offline/offlinedb/OfflineDbActivity$g.class */
    public class C4910g extends AnimatorListenerAdapter {
        public C4910g(OfflineDbActivity offlineDbActivity) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    /* renamed from: gogolook.callgogolook2.offline.offlinedb.OfflineDbActivity$h */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/offline/offlinedb/OfflineDbActivity$h.class */
    public class C4911h implements Animator.AnimatorListener {

        /* renamed from: gogolook.callgogolook2.offline.offlinedb.OfflineDbActivity$h$a */
        /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/offline/offlinedb/OfflineDbActivity$h$a.class */
        public class RunnableC4912a implements Runnable {
            public RunnableC4912a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (!C14217x3.m2196a((Activity) OfflineDbActivity.this)) {
                    return;
                }
                if (OfflineDbActivity.this.f12087k == null || !OfflineDbActivity.this.f12087k.m6180c()) {
                    OfflineDbActivity.this.mLavUpdateAnim.m37035a(EnumC4914j.COMPLETE.toString());
                    OfflineDbActivity.this.mLavUpdateAnim.m37029b(false);
                    OfflineDbActivity.this.mLavUpdateAnim.m37026e();
                    return;
                }
                OfflineDbActivity.this.mLavUpdateAnim.setBackgroundResource(R$drawable.ic_dbupdate_fail);
            }
        }

        public C4911h() {
        }

        /* renamed from: a */
        public /* synthetic */ void m26768a() {
            C14123p4.m2442a(OfflineDbActivity.this.getWindow(), C13909c.m3071b().mo3080s());
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (!OfflineDbActivity.this.f12080d && OfflineDbActivity.this.f12081e) {
                boolean z = true;
                OfflineDbActivity.this.f12080d = true;
                OfflineDbActivity.this.mLavUpdateAnim.post(new RunnableC4912a());
                OfflineDbActivity offlineDbActivity = OfflineDbActivity.this;
                if (offlineDbActivity.f12087k == null || !OfflineDbActivity.this.f12087k.m6180c()) {
                    z = false;
                }
                offlineDbActivity.m26771c(z);
                int m = C13909c.m3071b().mo3086m();
                C11238c.m9966b(OfflineDbActivity.this.mIvStart, m);
                C11238c.m9969a(OfflineDbActivity.this.mIvEnd, m);
                C11238c.m9966b(OfflineDbActivity.this.mIvThemeBottomStart, m);
                C11238c.m9969a(OfflineDbActivity.this.mIvThemeBottomEnd, m);
                new Handler().postDelayed(new Runnable() { // from class: j.a.i0.a.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        OfflineDbActivity.C4911h.this.m26768a();
                    }
                }, m);
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
            if (OfflineDbActivity.this.f12081e) {
                OfflineDbActivity.this.mLavUpdateAnim.m37029b(false);
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    /* renamed from: gogolook.callgogolook2.offline.offlinedb.OfflineDbActivity$i */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/offline/offlinedb/OfflineDbActivity$i.class */
    public static /* synthetic */ class C4913i {

        /* renamed from: a */
        public static final /* synthetic */ int[] f12097a = new int[EnumC12429h.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            try {
                f12097a[EnumC12429h.STATUS_REFRESHED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f12097a[EnumC12429h.DOWNLOAD_END.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f12097a[EnumC12429h.DOWNLOAD_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f12097a[EnumC12429h.ERROR_NO_NETWORK.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.offline.offlinedb.OfflineDbActivity$j */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/offline/offlinedb/OfflineDbActivity$j.class */
    public enum EnumC4914j {
        LOADING("anim_loading.json"),
        COMPLETE("anim_complete.json");
        

        /* renamed from: a */
        public final String f12101a;

        EnumC4914j(String str) {
            this.f12101a = str;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.f12101a;
        }
    }

    /* renamed from: a */
    public static Intent m26782a(Context context, String str) {
        return m26781a(context, str, null);
    }

    /* renamed from: a */
    public static Intent m26781a(Context context, String str, Bundle bundle) {
        Intent intent = new Intent(context, OfflineDbActivity.class);
        if (!TextUtils.isEmpty(str)) {
            intent.putExtra("from", str);
        }
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        return intent;
    }

    /* renamed from: D */
    public final void m26805D() {
        this.f12078b.m6188d(AdUnit.AFTER_DB_UPDATE);
        C6192e.m23607a(AdUnit.AFTER_DB_UPDATE.m28821a()).m23594h();
        this.f12078b.m6197a(AdUnit.OFFLINE_DB_UPDATE);
    }

    /* renamed from: E */
    public final void m26804E() {
        m26795N();
        this.f12078b.m6188d(AdUnit.OFFLINE_DB_UPDATE);
        this.f12078b.m6197a(AdUnit.OFFLINE_DB_UPDATE);
        m26788U();
        this.toolbar.setVisibility(0);
        this.mFlUpdating.setVisibility(8);
        this.mTvResultTitle.setVisibility(8);
        this.mTvResultContent.setVisibility(8);
        this.mRlAdView.removeAllViews();
        this.mRlAdView.setVisibility(8);
        this.mIvClose.setVisibility(8);
        this.mLavUpdateAnim.m37042a();
        this.mLavUpdateAnim.m37031b(this.f12088l);
        ValueAnimator valueAnimator = this.f12082f;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.f12082f.removeAllUpdateListeners();
            this.f12082f.removeAllListeners();
            this.f12082f = null;
        }
        ValueAnimator valueAnimator2 = this.f12083g;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
            this.f12083g.removeAllUpdateListeners();
            this.f12083g.removeAllListeners();
            this.f12083g = null;
        }
        m26785X();
        this.mIvBackground.setVisibility(C13909c.m3071b().mo3099J() ? 0 : 8);
        this.mIvStart.setVisibility(0);
        this.mIvStart.setAlpha(1.0f);
        this.mIvEnd.setVisibility(8);
        this.mIvThemeBottomStart.setVisibility(0);
        this.mIvThemeBottomStart.setAlpha(1.0f);
        this.mIvThemeBottomEnd.setVisibility(8);
        m26793P();
    }

    /* renamed from: F */
    public final void m26803F() {
        int random = (int) (Math.random() * 8.0d);
        this.f12082f = ValueAnimator.ofInt(0, 100);
        this.f12082f.setInterpolator(m26800I());
        this.f12082f.addUpdateListener(new C4907d());
        this.f12082f.addListener(new C4908e());
        this.f12082f.setDuration((random + 8) * 1000);
        this.f12082f.start();
    }

    /* renamed from: G */
    public void m26802G() {
        C13937c3.m3014a(this);
        finish();
    }

    /* renamed from: H */
    public final int m26801H() {
        return C14167t.m2315a(C14063l4.m2639z() ? 2131100078 : 2131100077);
    }

    /* renamed from: I */
    public final TimeInterpolator m26800I() {
        float random = ((float) (Math.random() * 1.100000023841858d)) + 0.5f;
        return Math.random() > 0.5d ? new AccelerateInterpolator(random) : new DecelerateInterpolator(random);
    }

    /* renamed from: J */
    public final void m26799J() {
        C14123p4.m2442a(getWindow(), C13909c.m3071b().mo3075x());
        this.mFragmentContainer.setVisibility(8);
    }

    /* renamed from: K */
    public final void m26798K() {
        if (getSupportFragmentManager().findFragmentById(R$id.fragment_container) == null) {
            getSupportFragmentManager().beginTransaction().add(R$id.fragment_container, C12447c.m6132a0()).commit();
            C12470h.m6078a(this.f12079c);
        }
    }

    /* renamed from: L */
    public final boolean m26797L() {
        return this.mFlUpdating.getVisibility() == 0 && this.f12080d;
    }

    /* renamed from: M */
    public final boolean m26796M() {
        return this.mFlUpdating.getVisibility() == 0 && !this.f12080d;
    }

    /* renamed from: N */
    public void m26795N() {
        AbstractC13908b b = C13909c.m3071b();
        this.mIvBackground.setVisibility(b.mo3099J() ? 0 : 8);
        ViewCompat.setBackground(this.mIvStart, b.mo3085n());
        ViewCompat.setBackground(this.mIvEnd, b.mo3082q());
        ViewCompat.setBackground(this.mIvThemeBottomStart, b.mo3084o());
        ViewCompat.setBackground(this.mIvThemeBottomEnd, b.mo3081r());
        m26798K();
    }

    /* renamed from: O */
    public final void m26794O() {
        this.f12085i = C14037j3.m2731a().mo2703a(new Action1() { // from class: j.a.i0.a.c
            @Override // p660rx.functions.Action1
            public final void call(Object obj) {
                OfflineDbActivity.this.m26776a(obj);
            }
        });
    }

    /* renamed from: P */
    public final void m26793P() {
        int x = C13909c.m3071b().mo3075x();
        if (this.mFragmentContainer.getVisibility() == 0) {
            x = m26801H();
        } else if (m26796M()) {
            x = C13909c.m3071b().mo3083p();
        } else if (m26797L()) {
            x = C13909c.m3071b().mo3080s();
        }
        C14123p4.m2442a(getWindow(), x);
    }

    /* renamed from: Q */
    public final void m26792Q() {
        C14123p4.m2442a(getWindow(), m26801H());
    }

    /* renamed from: R */
    public boolean m26791R() {
        return VersionManager.m25991e(4) || C13878a3.m3257E();
    }

    /* renamed from: S */
    public void m26790S() {
        C14123p4.m2442a(getWindow(), C13909c.m3071b().mo3075x());
        C14063l4.m2678a(true);
        this.f12078b.m6190c(AdUnit.AFTER_DB_UPDATE);
        this.f12078b.m6190c(AdUnit.OFFLINE_DB_UPDATE);
        this.f12078b.m6193b(AdUnit.AFTER_DB_UPDATE);
        this.f12080d = false;
        this.f12081e = false;
        m26799J();
        this.mFlUpdating.setVisibility(0);
        this.toolbar.setVisibility(8);
        this.mIvBackground.setVisibility(8);
        this.mFragmentContainer.setVisibility(8);
        this.mLavUpdateAnim.setBackgroundResource(0);
        this.mLavUpdateAnim.m37035a(EnumC4914j.LOADING.toString());
        this.mLavUpdateAnim.m37040a(this.f12088l);
        this.mLavUpdateAnim.m37029b(true);
        this.mLavUpdateAnim.m37026e();
        m26803F();
        C14123p4.m2442a(getWindow(), C13909c.m3071b().mo3083p());
    }

    /* renamed from: T */
    public final void m26789T() {
        if (this.mFlUpdating.getVisibility() == 0) {
            this.f12084h = true;
            return;
        }
        this.f12084h = false;
        if (C13915b3.m3062a("offlinedb_page_default_phone_promoted", false)) {
            return;
        }
        if (CallUtils.m26530n() || CallUtils.m26531m()) {
            C13915b3.m3055b("offlinedb_page_default_phone_promoted", true);
            CallUtils.m26590a((Context) this, (Integer) 5);
        }
    }

    /* renamed from: U */
    public final void m26788U() {
        m26792Q();
        this.mFragmentContainer.setVisibility(0);
    }

    /* renamed from: V */
    public final void m26787V() {
        if (this.mFlUpdating.getVisibility() == 0) {
            this.f12078b.m6190c(AdUnit.OFFLINE_DB_UPDATE);
        }
    }

    /* renamed from: W */
    public final void m26786W() {
        if (this.mFlUpdating.getVisibility() == 0) {
            this.f12078b.m6188d(AdUnit.OFFLINE_DB_UPDATE);
        }
    }

    /* renamed from: X */
    public final void m26785X() {
        AdUnit adUnit = AdUnit.AFTER_DB_UPDATE;
        if (AdStatusController.m28827c().m28830a(adUnit) && C6214a.m23563c(adUnit.m28821a())) {
            Lifecycle lifecycle = getLifecycle();
            AdDialog adDialog = this.f12077a;
            if (adDialog != null) {
                lifecycle.removeObserver(adDialog);
                this.f12077a = null;
            }
            this.f12077a = new AdDialog(this, adUnit);
            lifecycle.addObserver(this.f12077a);
            this.f12077a.show();
        }
    }

    /* renamed from: Y */
    public final void m26784Y() {
        Subscription subscription = this.f12085i;
        if (subscription != null && !subscription.isUnsubscribed()) {
            this.f12085i.unsubscribe();
        }
    }

    /* renamed from: Z */
    public final void m26783Z() {
        if (C14217x3.m2111v()) {
            m26790S();
        }
        this.f12087k.m6179d();
        this.f12078b.m6198a();
        this.f12078b.m6196a(AdUnit.OFFLINE_DB_UPDATE, this.mRlAdView);
    }

    /* renamed from: a */
    public final void m26780a(Intent intent) {
        if (intent != null) {
            this.f12079c = intent.getStringExtra("from");
        }
    }

    @Override // gogolook.callgogolook2.p074ad.OnAdRequestToLoadCallback
    /* renamed from: a */
    public void mo6135a(AdUnit adUnit, ViewGroup viewGroup) {
        this.f12078b.m6194b();
        this.f12078b.m6196a(adUnit, viewGroup);
    }

    /* renamed from: a */
    public /* synthetic */ void m26777a(EnumC12429h hVar) {
        int i = C4913i.f12097a[hVar.ordinal()];
        if (i == 1) {
            C14063l4.m2691K();
        } else if (i == 2 || i == 3) {
            C14037j3.m2731a().mo2704a(new C14097o1());
            m26793P();
        } else if (i == 4) {
            Toast.makeText(this, (int) R$string.error_code_nointernet, 1).show();
        }
    }

    /* renamed from: a */
    public /* synthetic */ void m26776a(Object obj) {
        if (obj instanceof C14117p1) {
            m26783Z();
        }
    }

    /* renamed from: c */
    public final void m26771c(boolean z) {
        String str;
        String str2;
        ViewCompat.setElevation(this.toolbar, 0.0f);
        if (z) {
            str2 = getString(R$string.offlinedb_resultpage_failed_title);
            str = getString(R$string.offlinedb_resultpage_failed_content);
        } else {
            int l = C14063l4.m2653l();
            int q = C14063l4.m2648q();
            int p = C14063l4.m2649p();
            str2 = String.format(getString(R$string.offlinedb_resultpage_title), String.valueOf(l));
            str = String.format(getString(R$string.offlinedb_resultpage_content), String.valueOf(q), String.valueOf(p));
        }
        this.mTvResultTitle.setText(str2);
        this.mTvResultContent.setText(str);
        this.f12083g = ValueAnimator.ofFloat(0.0f, 2.0f);
        this.f12083g.addUpdateListener(new C4909f());
        this.f12083g.addListener(new C4910g(this));
        this.f12083g.setDuration(700L);
        this.f12083g.start();
        if (this.f12084h) {
            m26789T();
        }
    }

    @Override // p459j.p460a.p518j.AbstractC12475b
    /* renamed from: e */
    public Context mo6072e() {
        return this;
    }

    /* renamed from: e */
    public final void m26769e(int i) {
        this.toolbar.setTitleTextColor(i);
        Drawable overflowIcon = this.toolbar.getOverflowIcon();
        if (overflowIcon != null) {
            Drawable wrap = DrawableCompat.wrap(overflowIcon);
            DrawableCompat.setTint(wrap, i);
            this.toolbar.setOverflowIcon(wrap);
        }
        Drawable navigationIcon = this.toolbar.getNavigationIcon();
        if (navigationIcon != null) {
            Drawable wrap2 = DrawableCompat.wrap(navigationIcon);
            DrawableCompat.setTint(wrap2, i);
            this.toolbar.setNavigationIcon(wrap2);
        }
    }

    @Override // p459j.p460a.p582w0.p585b5.C13930d.AbstractC13931a
    /* renamed from: g */
    public void mo3016g() {
        C12431j.m6184b(this.f12079c);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.mFlUpdating.getVisibility() == 0) {
            m26804E();
        } else {
            super.onBackPressed();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!C13891a.m3155g()) {
            Toast.makeText(this, (int) R$string.offflinedb_not_available_toast, 1).show();
            finish();
        }
        ((NotificationManager) getSystemService("notification")).cancel(1993);
        setContentView(R$layout.offlinedb_activity);
        ButterKnife.bind(this);
        m26780a(getIntent());
        m26794O();
        setSupportActionBar(this.toolbar);
        if (getSupportActionBar() != null) {
            getSupportActionBar().setTitle(R$string.db_title);
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
            getSupportActionBar().setDisplayShowHomeEnabled(true);
            getSupportActionBar().setHomeButtonEnabled(true);
            getSupportActionBar().setBackgroundDrawable(new ColorDrawable(-1));
            this.toolbar.setNavigationOnClickListener(new View$OnClickListenerC4904a());
            m26769e(C14167t.m2312d());
            ViewCompat.setElevation(this.toolbar, 0.0f);
        }
        this.mRlAdView.setVisibility(8);
        this.mIvClose.setOnClickListener(new View$OnClickListenerC4905b());
        m26795N();
        if (C13915b3.m3062a("premium_offlinedb_enabled", false)) {
            SimpleInAppDialog simpleInAppDialog = new SimpleInAppDialog(this);
            simpleInAppDialog.m25858e(R$string.offlinedb_beta_disclaim_dialog_msg);
            simpleInAppDialog.mo2915b(R$string.offlinedb_beta_disclaim_dialog_ok, new View$OnClickListenerC4906c(this, simpleInAppDialog));
            simpleInAppDialog.m25869a(true);
            simpleInAppDialog.show();
            C13915b3.m3055b("premium_offlinedb_enabled", false);
        }
        C13748f.m3541c();
        m26789T();
        this.f12087k = (C12433k) ViewModelProviders.m37503of(this).get(C12433k.class);
        this.f12087k.m6183a().observe(this, new Observer() { // from class: j.a.i0.a.b
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                OfflineDbActivity.this.m26777a((EnumC12429h) obj);
            }
        });
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        if (this.f12077a != null) {
            getLifecycle().removeObserver(this.f12077a);
        }
        m26784Y();
        m26805D();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        this.f12086j.m3029c(false);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.f12086j.m3029c(true);
        m26793P();
        if (m26791R()) {
            m26802G();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        m26795N();
        m26787V();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        m26786W();
    }

    @Override // p459j.p460a.p582w0.p585b5.C13930d.AbstractC13931a
    /* renamed from: r */
    public void mo3015r() {
        C14289m.m1892a("protection", this.f12086j.m3022b());
        C12431j.m6186a();
    }
}
