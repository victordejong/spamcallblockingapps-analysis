package com.mglab.scm;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.FragmentManager;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Process;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.widget.RunnableC0198a1;
import androidx.appcompat.widget.Toolbar;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.fragment.app.AbstractC0397a0;
import androidx.fragment.app.C0396a;
import androidx.fragment.app.DialogInterface$OnCancelListenerC0444l;
import androidx.fragment.app.Fragment;
import ba.AbstractC0762k;
import ba.C0748b;
import com.android.billingclient.api.AbstractC0869a;
import com.applovin.sdk.AppLovinEventTypes;
import com.applovin.sdk.AppLovinPrivacySettings;
import com.google.ads.mediation.adcolony.AdColonyMediationAdapter;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.interstitial.InterstitialAd;
import com.google.android.gms.ads.interstitial.InterstitialAdLoadCallback;
import com.google.android.gms.internal.consent_sdk.zzd;
import com.google.android.gms.internal.consent_sdk.zzk;
import com.google.android.material.navigation.NavigationView;
import com.mglab.scm.intro.IntroActivity;
import com.mglab.scm.visual.FragmentBlackList;
import com.mglab.scm.visual.FragmentBuyPro;
import com.mglab.scm.visual.FragmentLanguage;
import com.mglab.scm.visual.FragmentPin;
import com.mglab.scm.visual.FragmentPreferences;
import com.mglab.scm.visual.FragmentSocial;
import com.mglab.scm.visual.FragmentStat;
import com.mglab.scm.visual.FragmentWhiteList;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Objects;
import org.greenrobot.eventbus.ThreadMode;
import org.json.JSONObject;
import p007a6.C0028d;
import p066d0.C2134a;
import p068d2.C2227e4;
import p068d2.C2267f4;
import p068d2.C2357l;
import p078e2.View$OnClickListenerC2530g;
import p085ea.AbstractC2633b;
import p085ea.C2632a;
import p086f.ActivityC2651j;
import p086f.C2640c;
import p089f2.View$OnClickListenerC2716b;
import p095f8.C2768a;
import p095f8.C2774b;
import p095f8.C2779g;
import p095f8.C2780h;
import p095f8.C2784l;
import p095f8.C2786n;
import p106g8.C2914d;
import p108h.C2987d;
import p117h8.C3043q;
import p122i2.C3072h;
import p149k8.C3383a0;
import p149k8.C3384b;
import p149k8.C3385b0;
import p149k8.C3388d;
import p149k8.C3392h;
import p149k8.C3399o;
import p149k8.C3402r;
import p149k8.C3403s;
import p149k8.C3404t;
import p149k8.C3405u;
import p149k8.C3406v;
import p149k8.C3407w;
import p149k8.C3408x;
import p149k8.C3409y;
import p149k8.C3410z;
import p193o8.C3964q;
import p193o8.C3965r;
import p231s4.AbstractC4290c;
import p231s4.C4293d;
import p241t4.C4398d;
import p293y2.C4995l;
import p303z2.C5051l;
import p303z2.C5053n;
/* loaded from: classes2-dex2jar.jar:com/mglab/scm/MainActivity.class */
public class MainActivity extends ActivityC2651j implements NavigationView.AbstractC1795a, View$OnClickListenerC2716b.AbstractC2724h {

    /* renamed from: v */
    public static final /* synthetic */ int f7270v = 0;

    /* renamed from: n */
    public int f7271n;

    /* renamed from: o */
    public FrameLayout f7272o;

    /* renamed from: p */
    public AdView f7273p;

    /* renamed from: q */
    public InterstitialAd f7274q;

    /* renamed from: r */
    public AbstractC4290c f7275r;

    /* renamed from: s */
    public final AbstractC2633b f7276s = new C1978b();

    /* renamed from: t */
    public final AbstractC2633b f7277t = new C1979c(this);

    /* renamed from: u */
    public final AbstractC2633b f7278u = new C1981e();

    /* renamed from: com.mglab.scm.MainActivity$a */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/MainActivity$a.class */
    public class C1977a extends C2640c {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1977a(Activity activity, DrawerLayout drawerLayout, Toolbar toolbar, int i, int i2) {
            super(activity, drawerLayout, toolbar, i, i2);
            MainActivity.this = r8;
        }

        @Override // androidx.drawerlayout.widget.DrawerLayout.AbstractC0337d
        @SuppressLint({"SetTextI18n"})
        /* renamed from: c */
        public void mo3976c(View view) {
            m3372e(1.0f);
            if (this.f9075e) {
                this.f9071a.mo3309d(this.f9077g);
            }
            Context applicationContext = MainActivity.this.getApplicationContext();
            ((TextView) MainActivity.this.findViewById(2131297197)).setText(C2779g.m3099p(applicationContext));
            TextView textView = (TextView) MainActivity.this.findViewById(2131297183);
            int i = 0;
            if (C2780h.m3025t(applicationContext) == 0) {
                textView.setText("");
            } else {
                textView.setText(((Object) MainActivity.this.getText(2131820828)) + " " + C2779g.m3095t(applicationContext, C2780h.m3025t(applicationContext)));
                textView.setVisibility(0);
            }
            boolean m3079J = C2780h.m3079J(applicationContext);
            TextView textView2 = (TextView) MainActivity.this.findViewById(2131297182);
            textView2.setText(applicationContext.getString(2131820691, String.valueOf(C3043q.m2703s())));
            if (!m3079J) {
                i = 8;
            }
            textView2.setVisibility(i);
            MainActivity mainActivity = MainActivity.this;
            int i2 = MainActivity.f7270v;
            mainActivity.m3983A();
        }
    }

    /* renamed from: com.mglab.scm.MainActivity$b */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/MainActivity$b.class */
    public class C1978b implements AbstractC2633b {
        public C1978b() {
            MainActivity.this = r4;
        }

        @Override // p085ea.AbstractC2633b
        /* renamed from: a */
        public void mo3379a() {
        }

        @Override // p085ea.AbstractC2633b
        /* renamed from: b */
        public void mo3378b() {
            new C3043q().m2723B(MainActivity.this.getApplicationContext(), false);
            C2779g.m3130C(MainActivity.this.getApplicationContext());
            MainActivity.this.onResume();
            C0748b.m7409b().m7404g(new C3402r(1));
        }
    }

    /* renamed from: com.mglab.scm.MainActivity$c */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/MainActivity$c.class */
    public class C1979c implements AbstractC2633b {
        public C1979c(MainActivity mainActivity) {
        }

        @Override // p085ea.AbstractC2633b
        /* renamed from: a */
        public void mo3379a() {
        }

        @Override // p085ea.AbstractC2633b
        /* renamed from: b */
        public void mo3378b() {
            C0748b.m7409b().m7404g(new C3402r(2));
        }
    }

    /* renamed from: com.mglab.scm.MainActivity$d */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/MainActivity$d.class */
    public class C1980d extends InterstitialAdLoadCallback {
        public C1980d() {
            MainActivity.this = r4;
        }

        @Override // com.google.android.gms.ads.AdLoadCallback
        public void onAdFailedToLoad(LoadAdError loadAdError) {
            Log.i("MainActivity", loadAdError.getMessage());
            MainActivity.this.f7274q = null;
        }

        @Override // com.google.android.gms.ads.AdLoadCallback
        public void onAdLoaded(InterstitialAd interstitialAd) {
            MainActivity.this.f7274q = interstitialAd;
            Log.i("MainActivity", "onAdLoaded");
            MainActivity.this.f7274q.setFullScreenContentCallback(new C1982a(this));
        }
    }

    /* renamed from: com.mglab.scm.MainActivity$e */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/MainActivity$e.class */
    public class C1981e implements AbstractC2633b {
        public C1981e() {
            MainActivity.this = r4;
        }

        @Override // p085ea.AbstractC2633b
        /* renamed from: a */
        public void mo3379a() {
            MainActivity mainActivity = MainActivity.this;
            int i = MainActivity.f7270v;
            mainActivity.moveTaskToBack(true);
            Process.killProcess(Process.myPid());
            System.exit(1);
        }

        @Override // p085ea.AbstractC2633b
        /* renamed from: b */
        public void mo3378b() {
        }
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [int[], int[][]] */
    /* renamed from: A */
    public final void m3983A() {
        String str;
        NavigationView navigationView = (NavigationView) findViewById(2131296864);
        Context applicationContext = getApplicationContext();
        boolean m3081H = C2780h.m3081H(applicationContext);
        navigationView.setItemTextColor(new ColorStateList(new int[]{new int[]{16842912}, new int[]{16842910}}, new int[]{m3081H ? C2134a.m3845b(applicationContext, 2131099742) : C2134a.m3845b(applicationContext, 2131099739), m3081H ? C2134a.m3845b(applicationContext, 2131099739) : C2134a.m3845b(applicationContext, 2131099735)}));
        Menu menu = navigationView.getMenu();
        menu.findItem(2131296859).setVisible(C2780h.m3079J(getApplicationContext()));
        menu.findItem(2131296858).setVisible(C2780h.m3079J(getApplicationContext()));
        int m2698x = C3043q.m2698x();
        MenuItem findItem = menu.findItem(2131296865);
        StringBuilder sb = new StringBuilder();
        sb.append((Object) getText(2131820583));
        if (m2698x != 0) {
            str = " [" + m2698x + "]";
        } else {
            str = "";
        }
        sb.append(str);
        findItem.setTitle(sb.toString());
        int m2708n = C3043q.m2708n();
        MenuItem findItem2 = menu.findItem(2131296857);
        StringBuilder sb2 = new StringBuilder();
        sb2.append((Object) getText(2131820574));
        String str2 = "";
        if (m2708n != 0) {
            str2 = " [" + m2708n + "]";
        }
        sb2.append(str2);
        findItem2.setTitle(sb2.toString());
    }

    @Override // android.view.ContextThemeWrapper
    public void applyOverrideConfiguration(Configuration configuration) {
        if (configuration != null) {
            try {
                int i = configuration.uiMode;
                configuration.setTo(getBaseContext().getResources().getConfiguration());
                configuration.uiMode = i;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        super.applyOverrideConfiguration(configuration);
    }

    @Override // p086f.ActivityC2651j, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public void attachBaseContext(Context context) {
        String m3075N = C2780h.m3075N(context);
        Configuration configuration = context.getResources().getConfiguration();
        int i = Build.VERSION.SDK_INT;
        Locale locale = i >= 24 ? configuration.getLocales().get(0) : configuration.locale;
        if (!m3075N.equals("") && !locale.getLanguage().equals(m3075N)) {
            Locale locale2 = new Locale(m3075N);
            Locale.setDefault(locale2);
            if (i >= 24) {
                configuration.setLocale(locale2);
            } else {
                configuration.locale = locale2;
            }
        }
        super.attachBaseContext(new C2786n(context.createConfigurationContext(configuration)));
    }

    @Override // p089f2.View$OnClickListenerC2716b.AbstractC2724h
    /* renamed from: f */
    public void mo3198f(View$OnClickListenerC2716b view$OnClickListenerC2716b) {
        if (this.f7271n == 3) {
            C2780h.m3049g0(getApplicationContext(), "psetnotifusecustomtextcolor", false);
            C0748b.m7409b().m7404g(new C3392h(0));
        }
    }

    @Override // p089f2.View$OnClickListenerC2716b.AbstractC2724h
    /* renamed from: g */
    public void mo3197g(View$OnClickListenerC2716b view$OnClickListenerC2716b, int i) {
        int i2 = this.f7271n;
        if (i2 < 1 || i2 > 3) {
            return;
        }
        if (i2 != 3) {
            C2780h.m3043j0(getBaseContext(), this.f7271n == 1 ? "setsimcolor1" : "setsimcolor2", Integer.valueOf(i));
            C2779g.m3126G(getApplicationContext(), getResources());
            C0748b.m7409b().m7404g(new C3405u("true"));
            return;
        }
        this.f7271n = 999;
        C2780h.m3049g0(getApplicationContext(), "psetnotifusecustomtextcolor", true);
        C2780h.m3043j0(getApplicationContext(), "psetnotifcustomtextcolor", Integer.valueOf(i));
        C0748b.m7409b().m7404g(new C3392h(0));
        C2779g.m3119N(getApplicationContext());
    }

    @Override // androidx.fragment.app.ActivityC0455o, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        Objects.toString(intent);
        super.onActivityResult(i, i2, intent);
        if (i == 530 || i != 7007 || i2 == 0) {
            return;
        }
        C0748b.m7409b().m7404g(new C3402r(3));
        C0028d.m8914f(77, C0748b.m7409b());
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        DrawerLayout drawerLayout = (DrawerLayout) findViewById(2131296571);
        drawerLayout.m8276n(8388611);
        if (drawerLayout.m8276n(8388611)) {
            drawerLayout.m8288b(8388611);
            return;
        }
        AbstractC0397a0 m8094o = m8094o();
        Fragment m8198H = m8094o.m8198H(2131296638);
        if ((m8198H instanceof FragmentPin) || (m8198H instanceof FragmentStat)) {
            m3982u();
            this.f209f.m8739b();
            return;
        }
        boolean z = m8198H instanceof C3964q;
        if (z && C3964q.f12466b.canGoBack()) {
            C3964q.f12466b.goBack();
            return;
        }
        ArrayList<C0396a> arrayList = m8094o.f1701d;
        if ((arrayList != null ? arrayList.size() : 0) <= 0) {
            this.f209f.m8739b();
        } else if ((m8198H instanceof C3965r) || (m8198H instanceof FragmentSocial) || z || (m8198H instanceof FragmentBuyPro) || (m8198H instanceof FragmentLanguage)) {
            m8094o.m8205A(new AbstractC0397a0.C0411m(null, -1, 0), false);
        } else {
            m3982u();
            ((NavigationView) findViewById(2131296864)).getMenu().getItem(0).setChecked(true);
        }
    }

    @Override // androidx.fragment.app.ActivityC0455o, androidx.activity.ComponentActivity, p026c0.ActivityC0787g, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Context applicationContext = getApplicationContext();
        if (C2780h.m3022w(applicationContext, "appinsd") == 0) {
            C2780h.m3041k0(applicationContext, "appinsd", System.currentTimeMillis());
        }
        boolean m3052f = C2780h.m3052f(applicationContext, "needinitnotificationchannels", true);
        if (m3052f) {
            C2780h.m3049g0(applicationContext, "needinitnotificationchannels", false);
        }
        if (m3052f && Build.VERSION.SDK_INT >= 26) {
            NotificationManager notificationManager = (NotificationManager) applicationContext.getSystemService("notification");
            NotificationChannel notificationChannel = new NotificationChannel("SCM_SERVICE", applicationContext.getString(2131820930), 3);
            notificationChannel.setDescription(applicationContext.getString(2131820931));
            notificationChannel.setShowBadge(false);
            notificationChannel.setSound(null, null);
            notificationChannel.setLockscreenVisibility(-1);
            notificationChannel.enableVibration(false);
            notificationManager.createNotificationChannel(notificationChannel);
            NotificationChannel notificationChannel2 = new NotificationChannel("SCM_BLOCKED", applicationContext.getString(2131820926), 3);
            notificationChannel2.setDescription(applicationContext.getString(2131820927));
            notificationChannel2.setShowBadge(true);
            notificationChannel2.setSound(null, null);
            notificationChannel2.enableVibration(false);
            notificationManager.createNotificationChannel(notificationChannel2);
            NotificationChannel notificationChannel3 = new NotificationChannel("SCM_DEFAULT", applicationContext.getString(2131820928), 3);
            notificationChannel3.setDescription(applicationContext.getString(2131820928));
            notificationChannel3.setShowBadge(true);
            notificationChannel3.enableVibration(true);
            notificationManager.createNotificationChannel(notificationChannel3);
        }
        if (!C0748b.m7409b().m7405f(this)) {
            C0748b.m7409b().m7400k(this);
        }
        C2780h.m3043j0(applicationContext, "show_filter", 0);
        int parseInt = Integer.parseInt(C2779g.m3109f());
        if (parseInt > C2780h.m3028r(applicationContext, "bvc", 0).intValue()) {
            C2780h.m3043j0(applicationContext, "pcode", 0);
            C2780h.m3043j0(applicationContext, "bvc", Integer.valueOf(parseInt));
            new C2774b().m3136a();
        }
        if (C2780h.m3081H(applicationContext)) {
            setTheme(2131886381);
        }
        setContentView(2131492893);
        C2768a.f9468a = getApplicationContext();
        C2768a.m3142g();
        C2780h.m3052f(applicationContext, "fstart", true);
        if (!C2780h.m3052f(applicationContext, "fstart", true)) {
            C2779g.m3093v(applicationContext);
            C2779g.m3119N(applicationContext);
            m3366r().mo3314y((Toolbar) findViewById(2131297159));
            if (C2780h.m3071R(applicationContext)) {
                m3979x(new FragmentPin());
                return;
            } else {
                m3978y();
                return;
            }
        }
        TelephonyManager telephonyManager = (TelephonyManager) applicationContext.getSystemService("phone");
        telephonyManager.getNetworkCountryIso().toUpperCase();
        String upperCase = telephonyManager.getNetworkCountryIso().toUpperCase();
        String str = upperCase;
        if (upperCase.isEmpty()) {
            str = telephonyManager.getSimCountryIso();
        }
        C2780h.m3033o0(applicationContext, "CC", str == null ? "" : str.toUpperCase());
        new C2774b().m3136a();
        C2780h.m3035n0(applicationContext, C2914d.f9817a);
        Intent intent = new Intent(this, IntroActivity.class);
        intent.setFlags(67108864);
        startActivity(intent);
        finish();
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(2131558404, menu);
        return true;
    }

    @Override // p086f.ActivityC2651j, androidx.fragment.app.ActivityC0455o, android.app.Activity
    public void onDestroy() {
        AdView adView = this.f7273p;
        if (adView != null) {
            adView.destroy();
        }
        if (C0748b.m7409b().m7405f(this)) {
            C0748b.m7409b().m7398m(this);
        }
        if (C2768a.f9469b.mo7225c()) {
            C2768a.f9469b.mo7226b();
        }
        super.onDestroy();
    }

    @AbstractC0762k(threadMode = ThreadMode.MAIN)
    public void onMessageEventBackStack(C3384b c3384b) {
        NavigationView navigationView = (NavigationView) findViewById(2131296864);
        navigationView.setNavigationItemSelectedListener(this);
        navigationView.getMenu().getItem(0).setChecked(true);
        m3983A();
        m3982u();
        recreate();
    }

    @AbstractC0762k(threadMode = ThreadMode.MAIN)
    public void onMessageEventColorDialog(C3388d c3388d) {
        this.f7271n = c3388d.f11434a;
        View$OnClickListenerC2716b.C2723g c2723g = new View$OnClickListenerC2716b.C2723g(this, 2131820709);
        c2723g.f9365g = false;
        c2723g.f9360b = 2131820943;
        c2723g.f9362d = 2131820654;
        c2723g.f9361c = 2131820795;
        c2723g.f9363e = 2131820707;
        c2723g.f9364f = 2131820708;
        c2723g.f9366h = false;
        AbstractC0397a0 m8094o = m8094o();
        View$OnClickListenerC2716b view$OnClickListenerC2716b = new View$OnClickListenerC2716b();
        Bundle bundle = new Bundle();
        bundle.putSerializable("builder", c2723g);
        view$OnClickListenerC2716b.setArguments(bundle);
        Objects.requireNonNull(view$OnClickListenerC2716b.m3209c());
        Fragment m8197I = m8094o.m8197I("[MD_COLOR_CHOOSER]");
        if (m8197I != null) {
            ((DialogInterface$OnCancelListenerC0444l) m8197I).dismiss();
            C0396a c0396a = new C0396a(m8094o);
            c0396a.m8206o(m8197I);
            c0396a.mo8097c();
        }
        view$OnClickListenerC2716b.show(m8094o, "[MD_COLOR_CHOOSER]");
    }

    @AbstractC0762k(threadMode = ThreadMode.MAIN)
    public void onMessageEventGetPermission(C3399o c3399o) {
        int i = c3399o.f11442a;
        if (i == 1) {
            C2632a.m3381b(getApplicationContext());
            C2632a.m3382a(this, new String[]{"android.permission.READ_CONTACTS"}, this.f7276s);
        } else if (i != 4) {
        } else {
            C2632a.m3381b(getApplicationContext());
            C2632a.m3382a(this, new String[]{"android.permission.WRITE_CALL_LOG"}, this.f7277t);
        }
    }

    @AbstractC0762k(threadMode = ThreadMode.MAIN)
    public void onMessageEventProStatusChanged(C3403s c3403s) {
        try {
            this.f7272o.setVisibility(C2779g.m3090y() ? 8 : 0);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (!C2779g.m3090y()) {
            m3981v();
        }
    }

    @AbstractC0762k(threadMode = ThreadMode.MAIN)
    public void onMessageEventShowInterstitialAd(C3404t c3404t) {
        if (C2779g.m3090y()) {
            return;
        }
        int m3135b = (int) new C2774b().m3135b("video_ads_repeat_interval_min");
        int i = m3135b;
        if (m3135b == 0) {
            Bundle bundle = new Bundle();
            bundle.putInt("VIDEO_ADS_REPEAT_INTERVAL_MIN", 0);
            C2779g.m3089z(getApplicationContext(), "VIDEO_ADS", bundle);
            i = 180;
        }
        if (C2780h.m3022w(getApplicationContext(), "valshown") + (i * 60000) > System.currentTimeMillis()) {
            return;
        }
        InterstitialAd interstitialAd = this.f7274q;
        if (interstitialAd != null) {
            interstitialAd.show(this);
        } else {
            m3980w();
        }
    }

    @AbstractC0762k(threadMode = ThreadMode.MAIN)
    public void onMessageEventStartBuyPro(C3406v c3406v) {
        if (!C2768a.m3141h() || ((HashMap) C2768a.f9470c).isEmpty()) {
            C2779g.m3121L(this, null, "ERROR: Google Play billing N/A");
        } else {
            m3979x(new FragmentBuyPro());
        }
    }

    @AbstractC0762k(threadMode = ThreadMode.MAIN)
    public void onMessageEventStartHelp(C3407w c3407w) {
        m3977z(c3407w.f11446a);
    }

    @AbstractC0762k(threadMode = ThreadMode.MAIN)
    public void onMessageEventStartLanguage(C3408x c3408x) {
        m3979x(new FragmentLanguage());
    }

    @AbstractC0762k(threadMode = ThreadMode.MAIN)
    public void onMessageEventStartMain(C3409y c3409y) {
        m3982u();
        m3978y();
    }

    @AbstractC0762k(threadMode = ThreadMode.MAIN)
    public void onMessageEventStartPreset(C3410z c3410z) {
        Bundle bundle = new Bundle();
        bundle.putInt("no", c3410z.f11447a);
        C3965r c3965r = new C3965r();
        c3965r.setArguments(bundle);
        m3979x(c3965r);
    }

    @AbstractC0762k(threadMode = ThreadMode.MAIN)
    public void onMessageEventStartPurchaseFlow(C3383a0 c3383a0) {
        ArrayList arrayList;
        String str = c3383a0.f11430a;
        if (!C2768a.m3141h()) {
            C2779g.m3121L(this, null, "Google Play billing client not ready");
            return;
        }
        String str2 = c3383a0.f11430a;
        FragmentManager fragmentManager = getFragmentManager();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(str2);
        String str3 = "subs";
        if ((C2768a.f9475h.contains(str2) ? "subs" : C2768a.f9472e.contains(str2) ? "inapp" : "null").equals("inapp")) {
            arrayList = new ArrayList(arrayList2);
            str3 = "inapp";
        } else {
            arrayList = new ArrayList(arrayList2);
        }
        AbstractC0869a abstractC0869a = C2768a.f9469b;
        C3072h c3072h = new C3072h();
        c3072h.f10406a = str3;
        c3072h.f10407b = arrayList;
        abstractC0869a.mo7223e(c3072h, new C5053n(this, fragmentManager, 3));
    }

    @AbstractC0762k(threadMode = ThreadMode.MAIN)
    public void onMessageEventStartSocial(C3385b0 c3385b0) {
        Bundle bundle = new Bundle();
        bundle.putString("number", c3385b0.f11432b);
        bundle.putBoolean("openFeedback", c3385b0.f11431a);
        FragmentSocial fragmentSocial = new FragmentSocial();
        fragmentSocial.setArguments(bundle);
        m3979x(fragmentSocial);
    }

    @Override // android.app.Activity
    @SuppressLint({"NonConstantResourceId"})
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        Activity activity;
        switch (menuItem.getItemId()) {
            case 2131296318:
                m3977z("faq");
                return true;
            case 2131296319:
                Fragment m8198H = m8094o().m8198H(2131296638);
                if (m8198H instanceof C3964q) {
                    return false;
                }
                m3977z(m8198H instanceof FragmentStat ? "main" : m8198H instanceof FragmentBlackList ? "blacklist" : m8198H instanceof FragmentWhiteList ? "whitelist" : m8198H instanceof FragmentPreferences ? "settings" : m8198H instanceof FragmentSocial ? "feedbacks" : m8198H instanceof C3965r ? "presets" : m8198H instanceof FragmentPin ? "pin" : "");
                return true;
            case 2131296326:
                Intent action = new Intent().setAction("android.intent.action.SEND");
                action.putExtra("androidx.core.app.EXTRA_CALLING_PACKAGE", getPackageName());
                action.putExtra("android.support.v4.app.EXTRA_CALLING_PACKAGE", getPackageName());
                action.addFlags(524288);
                Context context = this;
                while (true) {
                    Context context2 = context;
                    if (!(context2 instanceof ContextWrapper)) {
                        activity = null;
                    } else if (context2 instanceof Activity) {
                        activity = (Activity) context2;
                    } else {
                        context = ((ContextWrapper) context2).getBaseContext();
                    }
                }
                if (activity != null) {
                    ComponentName componentName = activity.getComponentName();
                    action.putExtra("androidx.core.app.EXTRA_CALLING_ACTIVITY", componentName);
                    action.putExtra("android.support.v4.app.EXTRA_CALLING_ACTIVITY", componentName);
                }
                action.putExtra("android.intent.extra.TEXT", (CharSequence) getResources().getString(2131820774));
                action.setType("text/plain");
                String string = getResources().getString(2131820773);
                action.setAction("android.intent.action.SEND");
                action.removeExtra("android.intent.extra.STREAM");
                action.setClipData(null);
                action.setFlags(action.getFlags() & (-2));
                startActivity(Intent.createChooser(action, string));
                return true;
            default:
                return super.onOptionsItemSelected(menuItem);
        }
    }

    @Override // androidx.fragment.app.ActivityC0455o, android.app.Activity
    public void onPause() {
        AdView adView = this.f7273p;
        if (adView != null) {
            adView.pause();
        }
        super.onPause();
    }

    @Override // androidx.fragment.app.ActivityC0455o, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        C2632a.m3380c(i, iArr);
    }

    @Override // android.app.Activity
    public void onRestart() {
        super.onRestart();
    }

    @Override // androidx.fragment.app.ActivityC0455o, android.app.Activity
    public void onResume() {
        int i = Build.VERSION.SDK_INT;
        if (i >= 23) {
            C2632a.m3381b(getApplicationContext());
            if (i >= 26) {
                C2632a.m3382a(this, new String[]{"android.permission.ANSWER_PHONE_CALLS", "android.permission.CALL_PHONE", "android.permission.READ_PHONE_STATE", "android.permission.READ_CALL_LOG"}, this.f7278u);
            } else {
                C2632a.m3382a(this, new String[]{"android.permission.CALL_PHONE", "android.permission.READ_PHONE_STATE", "android.permission.READ_CALL_LOG"}, this.f7278u);
            }
        }
        super.onResume();
        if (C2768a.m3141h()) {
            C2768a.m3140i();
        }
        AdView adView = this.f7273p;
        if (adView != null) {
            adView.resume();
        }
        String m3055d0 = C2780h.m3055d0(this, "pmessage", "");
        if (m3055d0.equals("")) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(m3055d0);
            int i2 = jSONObject.getInt(FacebookAdapter.KEY_ID);
            int i3 = jSONObject.getInt("type");
            String string = jSONObject.getString("expire");
            Date m3117P = C2779g.m3117P(string, "yyyy-MM-dd");
            if (i2 > C2780h.m3028r(this, "pmessagelsid", -1).intValue() && (m3117P == null || !new Date().after(m3117P))) {
                C2780h.m3043j0(this, "pmessagelsid", Integer.valueOf(i2));
                int i4 = 2131099793;
                int i5 = 2131099699;
                if (i3 == 1) {
                    String string2 = jSONObject.getString("percent");
                    C2780h.m3043j0(this, "dispercent", Integer.valueOf(Integer.parseInt(string2)));
                    C2780h.m3033o0(this, "disexpdate", string);
                    if (!C2779g.m3091x()) {
                        View$OnClickListenerC2530g.C2531a c2531a = new View$OnClickListenerC2530g.C2531a(this);
                        c2531a.f8851b = getString(2131820746);
                        c2531a.m3463l(2131099739);
                        if (C2780h.m3081H(this)) {
                            i5 = 2131099742;
                        }
                        c2531a.m3472c(i5);
                        if (!C2780h.m3081H(this)) {
                            i4 = 2131099742;
                        }
                        c2531a.m3474a(i4);
                        c2531a.m3470e(2131230958);
                        c2531a.m3473b(getString(2131820745, string2, C2779g.m3096s(this, m3117P)));
                        c2531a.f8874y = false;
                        c2531a.f8875z = false;
                        c2531a.m3466i(2131820643);
                        View$OnClickListenerC2530g.C2531a m3468g = c2531a.m3468g(2131820654);
                        m3468g.f8870u = C5051l.f15331g;
                        m3468g.m3465j();
                    }
                } else if (i3 == 2) {
                    String string3 = jSONObject.getString(AppLovinEventTypes.USER_VIEWED_CONTENT);
                    String string4 = jSONObject.getString("title");
                    View$OnClickListenerC2530g.C2531a c2531a2 = new View$OnClickListenerC2530g.C2531a(this);
                    c2531a2.f8851b = string4;
                    c2531a2.m3463l(2131099739);
                    if (C2780h.m3081H(this)) {
                        i5 = 2131099742;
                    }
                    c2531a2.m3472c(i5);
                    if (!C2780h.m3081H(this)) {
                        i4 = 2131099742;
                    }
                    c2531a2.m3474a(i4);
                    c2531a2.m3470e(2131230958);
                    c2531a2.m3473b(string3);
                    c2531a2.f8874y = false;
                    c2531a2.f8875z = false;
                    c2531a2.m3466i(2131820943);
                    c2531a2.m3465j();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // p086f.ActivityC2651j, androidx.fragment.app.ActivityC0455o, android.app.Activity
    public void onStart() {
        super.onStart();
        if (!C0748b.m7409b().m7405f(this)) {
            C0748b.m7409b().m7400k(this);
        }
    }

    @Override // p086f.ActivityC2651j, androidx.fragment.app.ActivityC0455o, android.app.Activity
    public void onStop() {
        super.onStop();
    }

    /* renamed from: u */
    public final void m3982u() {
        m8094o().m8182X(null, -1, 1);
    }

    /* renamed from: v */
    public final void m3981v() {
        if (C2779g.m3090y()) {
            return;
        }
        AdView adView = new AdView(this);
        this.f7273p = adView;
        adView.setAdUnitId(getString(2131820584));
        this.f7272o.removeAllViews();
        this.f7272o.addView(this.f7273p);
        Display defaultDisplay = getWindowManager().getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        float f = displayMetrics.density;
        float width = this.f7272o.getWidth();
        float f2 = width;
        if (width == 0.0f) {
            f2 = displayMetrics.widthPixels;
        }
        this.f7273p.setAdSize(AdSize.getPortraitAnchoredAdaptiveBannerAdSize(this, (int) (f2 / f)));
        this.f7273p.loadAd(new AdRequest.Builder().build());
        m3980w();
    }

    /* renamed from: w */
    public final void m3980w() {
        if (C2779g.m3090y()) {
            return;
        }
        int m3135b = (int) new C2774b().m3135b("video_ads_show_after_block_calls");
        int i = m3135b;
        if (m3135b == 0) {
            Bundle bundle = new Bundle();
            bundle.putInt("VIDEO_ADS_SHOW_AFTER_BLOCK_CALLS", 0);
            C2779g.m3089z(getApplicationContext(), "VIDEO_ADS", bundle);
            i = 30;
        }
        if (C2780h.m3062a(getApplicationContext()) < i) {
            return;
        }
        InterstitialAd.load(this, getString(2131820794), new AdRequest.Builder().build(), new C1980d());
    }

    /* renamed from: x */
    public final void m3979x(Fragment fragment) {
        String simpleName = fragment.getClass().getSimpleName();
        AbstractC0397a0 m8094o = m8094o();
        if (m8094o.m8182X(simpleName, -1, 0) || m8094o.m8197I(simpleName) != null) {
            return;
        }
        C0396a c0396a = new C0396a(m8094o);
        c0396a.m8095e(2131296638, fragment, simpleName);
        c0396a.f1827f = 0;
        if (!c0396a.f1829h) {
            throw new IllegalStateException("This FragmentTransaction is not allowed to be added to the back stack.");
        }
        c0396a.f1828g = true;
        c0396a.f1830i = simpleName;
        c0396a.mo8097c();
    }

    /* renamed from: y */
    public final void m3978y() {
        if (!C2779g.m3090y()) {
            C2357l appOptions = AdColonyMediationAdapter.getAppOptions();
            Objects.requireNonNull(appOptions);
            StringBuilder sb = new StringBuilder();
            Locale locale = Locale.ENGLISH;
            sb.append("GDPR".toLowerCase(locale));
            sb.append("_required");
            C2227e4.m3739n(appOptions.f8370d, sb.toString(), true);
            C2267f4 c2267f4 = appOptions.f8370d;
            C2227e4.m3744i(c2267f4, "GDPR".toLowerCase(locale) + "_consent_string", "1");
            AppLovinPrivacySettings.setHasUserConsent(true, getApplicationContext());
        }
        MobileAds.initialize(this, C2784l.f9504a);
        MobileAds.setRequestConfiguration(new RequestConfiguration.Builder().setTestDeviceIds(Collections.singletonList("6EE0D80236FC86BAF026B28CF4FE37A8")).build());
        FrameLayout frameLayout = (FrameLayout) findViewById(2131296333);
        this.f7272o = frameLayout;
        frameLayout.post(new RunnableC0198a1(this, 3));
        Fragment m8198H = m8094o().m8198H(2131296638);
        FragmentStat fragmentStat = new FragmentStat();
        if (!(m8198H instanceof FragmentStat)) {
            C0396a c0396a = new C0396a(m8094o());
            c0396a.m8095e(2131296638, fragmentStat, "FragmentStat");
            c0396a.mo8097c();
        }
        Toolbar toolbar = (Toolbar) findViewById(2131297159);
        m3366r().mo3314y(toolbar);
        DrawerLayout drawerLayout = (DrawerLayout) findViewById(2131296571);
        C1977a c1977a = new C1977a(this, drawerLayout, toolbar, 2131820920, 2131820919);
        Objects.requireNonNull(drawerLayout);
        if (drawerLayout.f1550t == null) {
            drawerLayout.f1550t = new ArrayList();
        }
        drawerLayout.f1550t.add(c1977a);
        if (c1977a.f9072b.m8276n(8388611)) {
            c1977a.m3372e(1.0f);
        } else {
            c1977a.m3372e(0.0f);
        }
        if (c1977a.f9075e) {
            C2987d c2987d = c1977a.f9073c;
            int i = c1977a.f9072b.m8276n(8388611) ? c1977a.f9077g : c1977a.f9076f;
            if (!c1977a.f9078h && !c1977a.f9071a.mo3311b()) {
                Log.w("ActionBarDrawerToggle", "DrawerToggle may not show up because NavigationIcon is not visible. You may need to call actionbar.setDisplayHomeAsUpEnabled(true);");
                c1977a.f9078h = true;
            }
            c1977a.f9071a.mo3312a(c2987d, i);
        }
        NavigationView navigationView = (NavigationView) findViewById(2131296864);
        navigationView.setNavigationItemSelectedListener(this);
        navigationView.getMenu().getItem(0).setChecked(true);
        m3983A();
        if (C2779g.m3090y()) {
            return;
        }
        C4293d.C4294a c4294a = new C4293d.C4294a();
        c4294a.f13458a = false;
        C4293d c4293d = new C4293d(c4294a);
        zzk zzb = zzd.zza(this).zzb();
        this.f7275r = zzb;
        zzb.requestConsentInfoUpdate(this, c4293d, new C4995l(this, 8), C4398d.f13706h);
    }

    /* renamed from: z */
    public void m3977z(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("page", str);
        C3964q c3964q = new C3964q();
        c3964q.setArguments(bundle);
        m3979x(c3964q);
    }
}
