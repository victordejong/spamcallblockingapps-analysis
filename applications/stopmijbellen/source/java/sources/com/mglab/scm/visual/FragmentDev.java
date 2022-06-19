package com.mglab.scm.visual;

import android.annotation.SuppressLint;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.provider.Settings;
import android.support.p012v4.media.C0082b;
import android.telephony.TelephonyManager;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import ba.AbstractC0762k;
import ba.C0748b;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import butterknife.Unbinder;
import com.google.android.material.navigation.NavigationView;
import com.raizlabs.android.dbflow.config.FlowManager;
import java.lang.reflect.Field;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import org.greenrobot.eventbus.ThreadMode;
import p007a6.C0028d;
import p034c9.AbstractC0859f;
import p074d9.AbstractC2490c;
import p074d9.C2497h;
import p078e2.View$OnClickListenerC2530g;
import p086f.AbstractC2635a;
import p086f.ActivityC2651j;
import p095f8.C2768a;
import p095f8.C2774b;
import p095f8.C2779g;
import p095f8.C2780h;
import p095f8.RunnableC2775c;
import p106g8.C2914d;
import p117h8.C3024a;
import p117h8.C3026c;
import p117h8.C3028e;
import p117h8.C3030g;
import p117h8.C3033i;
import p117h8.C3035k;
import p117h8.C3036l;
import p117h8.C3037m;
import p117h8.C3043q;
import p117h8.C3044r;
import p117h8.C3047u;
import p117h8.C3050w;
import p149k8.C3389e;
import p149k8.C3403s;
import p149k8.C3404t;
import p149k8.C3406v;
import p241t4.C4398d;
import p278w8.C4775f;
import p278w8.C4776g;
import p278w8.C4778i;
import p278w8.C4788o;
import p278w8.C4790q;
import p289x8.AbstractC4932a;
import p303z2.C5051l;
import p303z2.C5054o;
import p303z2.C5055p;
@SuppressLint({"NonConstantResourceId"})
/* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentDev.class */
public class FragmentDev extends Fragment {

    /* renamed from: b */
    public static final /* synthetic */ int f7408b = 0;

    /* renamed from: a */
    public Unbinder f7409a;
    @BindView
    public Button buttonShowButtons;
    @BindView
    public LinearLayout buttonsLL;
    @BindView
    public TextView header;

    @SuppressLint({"HardwareIds"})
    /* renamed from: a */
    public static String m3949a(Context context, boolean z) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        Field[] fields;
        int i7;
        StringBuilder sb = new StringBuilder("*** DEBUG ***");
        sb.append("\n\n*** ADS ***");
        try {
            String string = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.getString("com.google.android.gms.ads.APPLICATION_ID");
            sb.append("\nGOOGLE ADS APPLICATION_ID: ");
            sb.append(string);
            sb.append(" [");
            sb.append(string.equals("ca-app-pub-1274344974707798~8720585367") ? "OK]" : "ERROR");
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        sb.append("\nInterstitial_ADS_REPEAT_INTERVAL_MIN: ");
        sb.append(new C2774b().m3135b("video_ads_repeat_interval_min"));
        sb.append("\nInterstitial_ADS_SHOW_AFTER_BLOCK_CALLS: ");
        sb.append(new C2774b().m3135b("video_ads_show_after_block_calls"));
        sb.append("\nInterstitialAdsLastShown: ");
        sb.append(C2779g.m3095t(context, C2780h.m3022w(context, "valshown")));
        sb.append("\n\n*** APP STATS ***");
        sb.append("\nAppInstallDate: ");
        sb.append(C2779g.m3095t(context, C2780h.m3022w(context, "appinsd")));
        sb.append("\nAppBlockedCalls: ");
        sb.append(C2780h.m3062a(context));
        sb.append("\nChecked today/total: ");
        sb.append(C2780h.m3050g(context));
        sb.append("/");
        sb.append(C2780h.m3048h(context));
        sb.append("\nBlocked today/total: ");
        sb.append(C2780h.m3056d(context));
        sb.append("/");
        sb.append(C2780h.m3054e(context));
        sb.append("\n\n*** DB ***");
        sb.append("\nDB LAST CHECK: ");
        sb.append(C2779g.m3095t(context, C2780h.m3025t(context)));
        sb.append("\nMAIN COUNT[MAX ID]: ");
        sb.append(C3043q.m2703s());
        sb.append("[");
        sb.append(C3043q.m2700v());
        sb.append("]");
        sb.append("\nLOG: ");
        try {
            i = (int) new C4776g(new C4788o(C4778i.m476k(new AbstractC4932a[0])), C3036l.class).m482c();
        } catch (Exception e2) {
            e2.printStackTrace();
            i = 0;
        }
        sb.append(i);
        sb.append("\nCACHE: ");
        try {
            i2 = (int) new C4776g(new C4788o(C4778i.m476k(new AbstractC4932a[0])), C3030g.class).m482c();
        } catch (Exception e3) {
            e3.printStackTrace();
            i2 = 0;
        }
        sb.append(i2);
        sb.append("\nBL: ");
        sb.append(C3043q.m2708n());
        sb.append("\nWL: ");
        sb.append(C3043q.m2698x());
        sb.append("\nCONTACTS: ");
        try {
            i3 = (int) new C4776g(new C4788o(C4778i.m476k(new AbstractC4932a[0])), C3033i.class).m482c();
        } catch (Exception e4) {
            e4.printStackTrace();
            i3 = 0;
        }
        sb.append(i3);
        sb.append("\nBILLING: ");
        try {
            i4 = (int) new C4776g(new C4788o(C4778i.m476k(new AbstractC4932a[0])), C3028e.class).m482c();
        } catch (Exception e5) {
            e5.printStackTrace();
            i4 = 0;
        }
        sb.append(i4);
        sb.append("\nADATA: ");
        try {
            i5 = (int) new C4776g(new C4788o(C4778i.m476k(new AbstractC4932a[0])), C3024a.class).m482c();
        } catch (Exception e6) {
            e6.printStackTrace();
            i5 = 0;
        }
        sb.append(i5);
        sb.append("\nSETTINGS: ");
        try {
            i6 = (int) new C4776g(new C4788o(C4778i.m476k(new AbstractC4932a[0])), C3047u.class).m482c();
        } catch (Exception e7) {
            e7.printStackTrace();
            i6 = 0;
        }
        sb.append(i6);
        sb.append("\n\n*** DB DELAYS, INTERVALS, VALUES ***");
        sb.append("\nSEND_USER_CALLLOG_BL: ");
        sb.append(C2780h.m3040l(context));
        sb.append("\nLAST_SEND_BL_ID: ");
        sb.append(C2780h.m3024u(context));
        sb.append("\nLAST_SEND_CALLLOG_ID: ");
        sb.append(C2780h.m3023v(context));
        sb.append("\nLAST_DEL_ID: ");
        sb.append(C2780h.m3038m(context));
        sb.append("\nCONTACTS LAST_TIME_SYNC: ");
        sb.append(C2779g.m3095t(context, C2780h.m3044j(context)));
        sb.append("\nSYNC_CONTACTS NOT_UPDATE_AFTER_CALL_INTERVAL: 3 sec");
        sb.append("\nCLEAR_CACHE_INTERVAL: ");
        sb.append(C2914d.f9818b.longValue() / 86400000);
        sb.append(" days");
        sb.append("\nMAX_LOG_RECORDS: 300");
        sb.append("\nMAX_CALL_LOG_RECORDS: 200");
        C0082b.m8749m(sb, "\nMAX_PRESETS_COUNT: 10", "\nCALL_LOG_TIME_DIFFERENCE: 1 min", "\nCALL_LOG_CHECK_DELAY: 3 sec", "\n\n*** CONTACTS CONTENT OBSERVER ***");
        C0028d.m8911i(sb, "\nCALL_THRESHOLD_TIME: ", 2000L, " sec");
        C0028d.m8911i(sb, "\nONCHANGE_THRESHOLD_TIME: ", 5L, " sec");
        sb.append("\nContactsSyncScheduleStarted: ");
        sb.append(C2780h.m3052f(context, "contactssyncschedulestarted", false) ? "TRUE" : "FALSE");
        sb.append("\n\n*** SYSTEM ***");
        sb.append("\nANDROID_ID (DEVICE_ID): ");
        sb.append(Settings.Secure.getString(context.getContentResolver(), "android_id"));
        sb.append("\nPHONE_MANUFACTURER: ");
        sb.append(Build.MANUFACTURER);
        sb.append("\nPHONE_MODEL: ");
        sb.append(Build.MODEL);
        sb.append("\nFIRST_SIM_NO: ");
        sb.append(C2780h.m3059b0(context));
        sb.append("\nTELEPHONY_COUNTRY_CODE: ");
        sb.append(C2780h.m3042k(context));
        sb.append("\nSIM_OPERATOR_COUNTRY_CODE: ");
        sb.append(((TelephonyManager) context.getSystemService("phone")).getSimCountryIso().toUpperCase());
        sb.append("\nSYSTEM_LANGUAGE:");
        sb.append(Locale.getDefault().getLanguage());
        sb.append("\nBUILD_FINGERPRINT: ");
        sb.append(Build.FINGERPRINT);
        sb.append("\nBUILD_NUMBER: ");
        sb.append(Build.DISPLAY);
        sb.append("\nANDROID_VERSION_SDK_INT: ");
        sb.append(Build.VERSION.SDK_INT);
        sb.append("\nANDROID_VERSION_CODENAME: ");
        String str = "";
        for (Field field : Build.VERSION_CODES.class.getFields()) {
            String name = field.getName();
            try {
                i7 = field.getInt(new Object());
            } catch (Exception e8) {
                e8.printStackTrace();
                i7 = -1;
            }
            if (i7 == Build.VERSION.SDK_INT) {
                str = name;
            }
        }
        sb.append(str);
        sb.append("\nANDROID_VERSION_RELEASE: ");
        sb.append(Build.VERSION.RELEASE);
        sb.append("\nAPP_VERSION_CODE: " + C2779g.m3109f());
        sb.append("\nAPP_VERSION_NAME: 2.3.21");
        sb.append("\nFONT SCALE: ");
        sb.append(context.getResources().getConfiguration().fontScale);
        sb.append("\n\nBOOTBR_LAST_START: ");
        sb.append(C2779g.m3095t(context, C2780h.m3022w(context, "bootbrlaststart")));
        sb.append("\n\n*** GOOGLE APP UPDATE ***");
        sb.append("\nAPP_UPDATE_REPEAT_INTERVAL_HRS: ");
        sb.append(new C2774b().m3135b("app_update_repeat_interval_hrs"));
        sb.append("\nNOTIFICATION_LAST_START: ");
        sb.append(C2779g.m3095t(context, C2780h.m3034o(context)));
        sb.append("\n\n*** PERMISSIONS ***");
        sb.append("\nCALL_PHONE: ");
        sb.append(context.checkCallingOrSelfPermission("android.permission.CALL_PHONE") == 0 ? "true" : "false");
        sb.append("\nREAD_PHONE_STATE: ");
        sb.append(context.checkCallingOrSelfPermission("android.permission.READ_PHONE_STATE") == 0 ? "true" : "false");
        sb.append("\nREAD_CALL_LOG: ");
        sb.append(context.checkCallingOrSelfPermission("android.permission.READ_CALL_LOG") == 0 ? "true" : "false");
        sb.append("\nWRITE_CALL_LOG: ");
        sb.append(C2779g.m3113b(context) ? "true" : "false");
        sb.append("\nREAD_CONTACTS: ");
        sb.append(C2779g.m3114a(context) ? "true" : "false");
        sb.append("\nINTERNET: ");
        sb.append(context.checkCallingOrSelfPermission("android.permission.INTERNET") == 0 ? "true" : "false");
        sb.append("\nWAKE_LOCK: ");
        sb.append(context.checkCallingOrSelfPermission("android.permission.WAKE_LOCK") == 0 ? "true" : "false");
        sb.append("\nRECEIVE_BOOT_COMPLETED: ");
        sb.append(context.checkCallingOrSelfPermission("android.permission.RECEIVE_BOOT_COMPLETED") == 0 ? "true" : "false");
        sb.append("\nANSWER_PHONE_CALLS: ");
        sb.append(context.checkCallingOrSelfPermission("android.permission.ANSWER_PHONE_CALLS") == 0 ? "true" : "false");
        sb.append("\nDEFAULT_PHONE_APP: ");
        sb.append(C2779g.m3092w(context) ? "true" : "false");
        sb.append("\n\n*** ALARMS ***");
        sb.append("\nALARM_LAST_START: ");
        sb.append(C2779g.m3095t(context, C2780h.m3022w(context, "lastalrmcheck")));
        if (!z) {
            StringBuilder m8752j = C0082b.m8752j("\nAJIS_INTERVAL_DEFAULT_HRS: ");
            m8752j.append(new C2774b().m3134c("AJIS_interval_default_hrs"));
            sb.append(m8752j.toString());
            sb.append("\nINTERVAL_SHORT_MIN: " + new C2774b().m3134c("AJIS_interval_short_min"));
            sb.append("\nAJIS_NEED_START_NOW_INTERVAL_HRS: " + new C2774b().m3134c("AJIS_need_start_now_interval_hrs"));
        }
        sb.append("\n\n*** API INTERVALS ***");
        sb.append("\nAPI_REQUEST_TIMEOUT: 10 sec");
        sb.append("\nGET_FEED_TIMEOUT: ");
        sb.append(15);
        sb.append(" sec");
        sb.append("\nPOST_FEED_TIMEOUT: ");
        sb.append(10);
        sb.append(" sec");
        sb.append("\nPOST_VOTE_TIMEOUT: ");
        sb.append(5);
        sb.append(" sec");
        sb.append("\n\n*** APP INTERVALS ***");
        C0082b.m8749m(sb, "\nNEW_VERSION_NOTIFICATION_REPEAT_INTERVAL = 7 days", "\nUPDATE_DISABLE_REPEAT_INTERVAL = 1 days", "\nRATE_US_NOTIFICATION_BLOCKED_CALLS: 100", "\nRATE_US_100_BLOCKED_CALLS: 10");
        sb.append("\nRATE_US_100_REMIND_INTERVAL: 3 days");
        sb.append("\nPREVENT_FROM_UNLOAD_REMIND_INTERVAL: 3 hours");
        sb.append("\n\n*** PREINIT ***");
        if (!z) {
            sb.append("\n");
            StringBuilder m8752j2 = C0082b.m8752j("PREINIT_COUNT: ");
            m8752j2.append(C2780h.m3085D(context));
            m8752j2.append("\n");
            StringBuilder sb2 = new StringBuilder(m8752j2.toString());
            sb2.append("LAST_USED: ");
            sb2.append(C2780h.m3086C(context));
            sb2.append("\n");
            sb2.append("LAST_USED_URL: ");
            sb2.append(C2780h.m3087B(context));
            sb2.append("\n");
            for (int i8 = 0; i8 < C2780h.m3085D(context).intValue(); i8++) {
                sb2.append("SRV");
                sb2.append(String.valueOf(i8));
                sb2.append(": ");
                sb2.append(C2780h.m3088A(context, i8));
                sb2.append("\n");
            }
            sb2.append("PREINIT_LIFITIME: 24 hours\nPREINIT_MAX_ERROR_COUNT: 1\nPREINIT_ERROR_COUNT: ");
            sb2.append(C2780h.m3019z(context));
            sb.append(sb2.toString());
            sb.append("\nPREINIT_CODE: ");
            sb.append(C2780h.m3020y(context));
            sb.append("\nNEW_VERSION_NOTIFICATION_REPEAT_INTERVAL: 7days");
            sb.append("\nUPDATE_DISABLE_REPEAT_INTERVAL: 1days");
            sb.append("\nPREINIT_MESSAGE: ");
            sb.append(C2780h.m3055d0(context, "pmessage", ""));
            sb.append("\nPREINIT_MESSAGE_LAST_SHOWN_ID: ");
            sb.append(C2780h.m3028r(context, "pmessagelsid", -1).intValue());
        }
        sb.append("\nPREINIT_COMMAND_ID: ");
        sb.append(C2780h.m3046i(context));
        sb.append("\n\n*** INIT ***");
        if (!z) {
            sb.append("\nINIT_URL: ");
            sb.append(C2780h.m3030q(context));
            sb.append("\nINIT_MAX_ERROR_COUNT: 3");
        }
        sb.append("\nINIT_ERROR_COUNT: ");
        sb.append(C2780h.m3032p(context));
        sb.append("\n\n*** SETTINGS ***");
        sb.append("\nAPP_ON_OFF [INCOMING CALLS BLOCKING]: ");
        sb.append(C2780h.m3084E(context));
        sb.append("\nBLOCK METHOD: ");
        sb.append(C2780h.m3083F(context));
        sb.append("\nUSE DEFAULT PHONE APP: ");
        sb.append(C2780h.m3064Y(context));
        sb.append("\nUSE DND: ");
        sb.append(C2780h.m3065X(context));
        sb.append("\nUSE SYSTEM SETTINGS: ");
        sb.append(C2780h.m3063Z(context));
        sb.append("\n\n*** ADVANCED SETTINGS ***");
        sb.append("\nFOREGROUND SERVICE: ");
        sb.append(C2780h.m3078K(context));
        sb.append("\nFOREGROUND SERVICE ICON: ");
        sb.append(C2780h.m3077L(context));
        sb.append("\nPIN CODE ENTRY: ");
        sb.append(C2780h.m3071R(context));
        sb.append("\nLOAD FEEDBACKS NAMES: ");
        sb.append(C2780h.m3074O(context));
        sb.append("\nBLOCK SECOND CALL: ");
        sb.append(C2780h.m3082G(context));
        sb.append("\nSHOW SIM: ");
        sb.append(C2780h.m3069T(context));
        sb.append("\nALTERNATIVE CONTACS NAMES: ");
        sb.append(C2780h.m3066W(context));
        sb.append("\nHIDE CLEAR BUTTON: ");
        sb.append(C2780h.m3076M(context));
        sb.append("\nDARK THEME: ");
        sb.append(C2780h.m3081H(context));
        sb.append("\nNOTIFICATION_USE_CUSTOM_TEXT_COLOR: ");
        sb.append(C2780h.m3072Q(context) ? "true" : "false");
        sb.append("\nNOTIFICATION_CUSTOM_TEXT_COLOR: ");
        sb.append(C2780h.m3073P(context));
        sb.append("\nLANGUAGE: ");
        sb.append(C2780h.m3075N(context));
        sb.append("\n\n*** SETTINGS - PRESETS ***");
        List<TModel> mo456l = new C4776g(new C4788o(new AbstractC4932a[0]), C3047u.class).mo456l();
        int i9 = 0;
        while (i9 < mo456l.size()) {
            sb.append(i9 == 0 ? "\n" : "\n\n");
            C3047u c3047u = (C3047u) mo456l.get(i9);
            Objects.requireNonNull(c3047u);
            StringBuilder sb3 = new StringBuilder();
            sb3.append("id=");
            sb3.append(c3047u.f10322b);
            sb3.append("; active=");
            sb3.append(c3047u.f10324d);
            sb3.append("; name=");
            sb3.append(c3047u.f10323c);
            sb3.append("; priority=");
            sb3.append(c3047u.f10325e);
            sb3.append("; useSim1=");
            sb3.append(c3047u.f10326f);
            sb3.append("; useSim2=");
            sb3.append(c3047u.f10327g);
            sb3.append("; useDB=");
            sb3.append(c3047u.f10328h);
            sb3.append("; useBL=");
            sb3.append(c3047u.f10329i);
            sb3.append("; useWL=");
            sb3.append(c3047u.f10330j);
            sb3.append("; useContacts=");
            sb3.append(c3047u.f10331k);
            sb3.append("; blockAllExceptContacts=");
            sb3.append(c3047u.f10332l);
            sb3.append("; blockAllExceptWL=");
            sb3.append(c3047u.f10333m);
            sb3.append("; blockHidden=");
            sb3.append(c3047u.f10334n);
            sb3.append("; blockForeign=");
            sb3.append(c3047u.f10335o);
            sb3.append("; deleteBlocked=");
            sb3.append(c3047u.f10336p);
            sb3.append("; showNotifications=");
            sb3.append(c3047u.f10337q);
            sb3.append("; useCalendar=");
            sb3.append(c3047u.f10338r);
            sb3.append("; days=");
            sb3.append(c3047u.f10339s ? "1" : "0");
            sb3.append(c3047u.f10340t ? "1" : "0");
            sb3.append(c3047u.f10341u ? "1" : "0");
            sb3.append(c3047u.f10342v ? "1" : "0");
            sb3.append(c3047u.f10343w ? "1" : "0");
            sb3.append(c3047u.f10344x ? "1" : "0");
            String str2 = "0";
            if (c3047u.f10345y) {
                str2 = "1";
            }
            sb3.append(str2);
            sb3.append("; time=");
            sb3.append(c3047u.f10346z);
            sb3.append(" - ");
            sb3.append(c3047u.f10321A);
            sb.append(sb3.toString());
            i9++;
        }
        if (!z) {
            sb.append("\n\n*** OTHER URL's ***");
            sb.append("\nFEEDBACKS_URL: ");
            sb.append(C2779g.m3111d("hy#Ut*PkU@385%d2", C2780h.m3057c0(context)));
            sb.append("\nHELP_URL: ");
            sb.append(C2779g.m3111d("01htP*PkU@3d2KuP", C2780h.m3055d0(context, "hurl", "http://127.0.0.1")));
            sb.append("\nBILLING_URL: ");
            sb.append(C2780h.m3067V(context));
            sb.append("\n\n*** ADATA ***");
            List<TModel> mo456l2 = new C4776g(new C4788o(new AbstractC4932a[0]), C3024a.class).mo456l();
            for (int i10 = 0; i10 < mo456l2.size(); i10++) {
                sb.append("\n");
                sb.append(((C3024a) mo456l2.get(i10)).f10143c);
                sb.append(" : ");
                sb.append(((C3024a) mo456l2.get(i10)).f10144d);
            }
            Date m3053e0 = C2780h.m3053e0(context);
            sb.append("\nUN_BAN_DATE: ");
            sb.append(m3053e0 == null ? "null" : C2779g.m3096s(context, C2780h.m3053e0(context)));
        }
        sb.append("\n\n*** PURCHASES ***");
        sb.append("\nisPro: ");
        sb.append(C2779g.m3090y() ? "true" : "false");
        sb.append("\nisLifetimePro: ");
        sb.append(C2779g.m3091x() ? "true" : "false");
        sb.append("\ndiscountPercent: ");
        sb.append(C2780h.m3028r(context, "dispercent", 1).intValue());
        sb.append("\ndiscountExpireDate: ");
        sb.append(C2780h.m3055d0(context, "disexpdate", "0"));
        sb.append("\n");
        for (Bundle bundle : ((HashMap) C2768a.f9471d).values()) {
            StringBuilder m8752j3 = C0082b.m8752j("\n");
            m8752j3.append(bundle.getString("SKU"));
            m8752j3.append(": isAcknowledged=");
            m8752j3.append(bundle.getBoolean("isAcknowledged"));
            m8752j3.append("; PurchaseState=");
            m8752j3.append(bundle.getInt("PurchaseState"));
            m8752j3.append("; OrderId=");
            m8752j3.append(bundle.getString("OrderId"));
            sb.append(m8752j3.toString());
            sb.append("\n" + bundle.getString("OriginalJson") + "\n");
        }
        return sb.toString();
    }

    /* renamed from: c */
    public final void m3948c() {
        this.header.setText(m3949a(requireContext(), false));
    }

    @OnClick
    public void firstTimeStart() {
        C2780h.m3049g0(getContext(), "fstart", true);
        new C4776g(new C4775f(), C3036l.class).mo458i();
        new C4776g(new C4775f(), C3044r.class).mo458i();
        new C4776g(new C4775f(), C3030g.class).mo458i();
        C2780h.m3049g0(getContext(), "psetcreatebasepresets", true);
        m3948c();
        View$OnClickListenerC2530g.C2531a c2531a = new View$OnClickListenerC2530g.C2531a(requireContext());
        c2531a.f8851b = "First time start enabled";
        c2531a.m3463l(2131099739);
        c2531a.m3474a(C2780h.m3081H(getContext()) ? 2131099793 : 2131099742);
        c2531a.m3470e(17301569);
        c2531a.m3472c(2131099739);
        c2531a.m3473b("Logs, Main, Cache tables cleared\nPlease restart application");
        c2531a.f8874y = true;
        c2531a.f8875z = true;
        c2531a.m3466i(2131820943);
        c2531a.m3465j();
    }

    @OnClick
    public void onButton01Click() {
        new Thread(new RunnableC2775c(requireContext(), 1)).start();
    }

    @OnClick
    public void onButton03Click() {
        ((ClipboardManager) requireContext().getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("DEVICE_ID", C2779g.m3104k(requireContext())));
        C2779g.m3121L(getContext(), getView(), "DEVICE_ID copied to buffer");
    }

    @OnClick
    public void onButton04Click() {
        C2780h.m3045i0(getContext(), 3);
        C2780h.m3039l0(getContext(), 1);
        C2780h.m3043j0(getContext(), "pmessagelsid", -1);
        C2779g.m3123J(getContext(), "MAX ERROR COUNTS", "PREINIT_ERROR_COUNT = 1\nINIT_ERROR_COUNT = 3\nPreInitMessageLastShownId = -1");
        m3948c();
    }

    @OnClick
    public void onButton05Click() {
        new C4790q(C3036l.class).m460a(C3037m.f10294n.m236e(0)).mo458i();
        C2779g.m3121L(getContext(), getView(), "Call Log Uncleared");
    }

    @OnClick
    public void onButton06Click() {
        Context context = getContext();
        boolean m3081H = C2780h.m3081H(context);
        int m3036n = C2780h.m3036n(context);
        if (m3036n != 0) {
            int i = 2131099699;
            int i2 = 2131099793;
            if (m3036n == 1) {
                C2779g.m3121L(getContext(), getView(), "UPDATE_DISABLE\nUPDATE_DISABLE_REPEAT_INTERVAL = 1 days");
                View$OnClickListenerC2530g.C2531a c2531a = new View$OnClickListenerC2530g.C2531a(requireContext());
                c2531a.f8851b = getString(2131820594);
                c2531a.m3463l(2131099739);
                if (!m3081H) {
                    i2 = 2131099742;
                }
                c2531a.m3474a(i2);
                if (m3081H) {
                    i = 2131099742;
                }
                c2531a.m3472c(i);
                c2531a.m3470e(2131230958);
                c2531a.m3473b(getString(2131820595));
                c2531a.f8874y = false;
                c2531a.f8875z = false;
                c2531a.m3466i(2131820943);
                c2531a.m3465j();
            } else if (m3036n == 2) {
                C2779g.m3121L(getContext(), getView(), "BLOCK_APP");
                View$OnClickListenerC2530g.C2531a c2531a2 = new View$OnClickListenerC2530g.C2531a(requireContext());
                c2531a2.f8851b = getString(2131820588);
                c2531a2.m3463l(2131099739);
                if (!m3081H) {
                    i2 = 2131099742;
                }
                c2531a2.m3474a(i2);
                if (m3081H) {
                    i = 2131099742;
                }
                c2531a2.m3472c(i);
                c2531a2.m3470e(2131230958);
                c2531a2.m3473b(getString(2131820589));
                c2531a2.f8874y = false;
                c2531a2.f8875z = false;
                c2531a2.m3466i(2131820943);
                c2531a2.f8870u = C5054o.f15348g;
                c2531a2.m3465j();
            } else if (m3036n == 3) {
                C2779g.m3121L(getContext(), getView(), "BAN_APP");
                Date m3053e0 = C2780h.m3053e0(getContext());
                View$OnClickListenerC2530g.C2531a c2531a3 = new View$OnClickListenerC2530g.C2531a(requireContext());
                c2531a3.f8851b = getString(2131820586);
                c2531a3.m3463l(2131099739);
                if (!m3081H) {
                    i2 = 2131099742;
                }
                c2531a3.m3474a(i2);
                if (m3081H) {
                    i = 2131099742;
                }
                c2531a3.m3472c(i);
                c2531a3.m3470e(2131230958);
                c2531a3.m3473b(getString(2131820587, m3053e0 == null ? "null" : C2779g.m3096s(context, C2780h.m3053e0(context))));
                c2531a3.f8874y = false;
                c2531a3.f8875z = false;
                c2531a3.m3466i(2131820943);
                c2531a3.f8870u = C5055p.f15356g;
                c2531a3.m3465j();
            }
        } else {
            C2779g.m3121L(getContext(), getView(), "NEW_VERSION_AVAILABLE\nNEW_VERSION_NOTIFICATION_REPEAT_INTERVAL = 7 days");
            MGNotification.m3933c(getContext());
        }
        C2780h.m3043j0(context, "devshowpcode", Integer.valueOf(C2780h.m3036n(context) >= 3 ? 0 : C2780h.m3036n(context) + 1));
    }

    @OnClick
    public void onButton13Click() {
        C3043q.m2711k(getContext(), true);
        C2779g.m3121L(getContext(), null, "Presets disabled!");
    }

    @OnClick
    public void onButton15Click() {
        C2780h.m3045i0(getContext(), C2780h.m3032p(getContext()).intValue() + 1);
        Context context = getContext();
        StringBuilder m8752j = C0082b.m8752j("INIT_ERROR_COUNT = ");
        m8752j.append(C2780h.m3032p(getContext()));
        C2779g.m3123J(context, "++INIT_ERROR_COUNT", m8752j.toString());
        m3948c();
    }

    @OnClick
    public void onButton17Click() {
        C2779g.m3121L(getContext(), getView(), "N/A");
    }

    @OnClick
    public void onButton18Click() {
        C3036l c3036l = new C3036l();
        c3036l.f10267i = new java.sql.Date(System.currentTimeMillis());
        c3036l.f10265g = 1;
        c3036l.f10261c = "6505551212";
        c3036l.f10268j = 1;
        c3036l.f10269k = 43;
        c3036l.f10270l = "US";
        c3036l.f10263e = c3036l.f10267i;
        c3036l.f10266h = null;
        c3036l.f10280v = C3043q.m2705q("6505551212");
        c3036l.mo7416a();
        C2779g.m3121L(getContext(), getView(), "number 6505551212 added");
    }

    @OnClick
    public void onButton19Click() {
        C0748b.m7409b().m7404g(new C3406v());
    }

    @OnClick
    public void onButton20Click() {
        C2780h.m3049g0(getContext(), "psetdev", false);
        Menu menu = ((NavigationView) requireActivity().findViewById(2131296864)).getMenu();
        menu.findItem(2131296859).setVisible(false);
        menu.findItem(2131296858).setVisible(false);
        C2779g.m3121L(getContext(), null, "Dev stuffs hidden");
    }

    @OnClick
    public void onButton21Click() {
        int m3135b = (int) new C2774b().m3135b("video_ads_show_after_block_calls");
        C2780h.m3043j0(getContext(), "appblc", Integer.valueOf(m3135b));
        C2780h.m3043j0(getContext(), "psbt", Integer.valueOf(m3135b));
        C2780h.m3041k0(getContext(), "valshown", 0L);
        Context context = getContext();
        C2779g.m3121L(context, null, "BlockedTotal set to " + m3135b + "\nVideoAdsLastShown cleared");
        m3948c();
        C0748b.m7409b().m7404g(new C3404t());
    }

    @OnClick
    public void onButton22Click() {
        new C3043q().m2723B(requireContext(), false);
        m3949a(requireContext(), false);
    }

    @OnClick
    public void onButton23Click() {
        final int m2703s = C3043q.m2703s();
        final int m2700v = C3043q.m2700v();
        C2497h.C2498a c2498a = new C2497h.C2498a(new AbstractC2490c() { // from class: h8.n
            @Override // p074d9.AbstractC2490c
            /* renamed from: c */
            public final void mo98c(AbstractC0859f abstractC0859f) {
                int i = m2700v;
                int i2 = m2703s;
                for (int i3 = i + 1; i3 < i + i2; i3++) {
                    C3044r c3044r = new C3044r();
                    c3044r.f10315b = i3;
                    c3044r.f10316c = String.valueOf(i3);
                    c3044r.mo7416a();
                }
            }
        }, FlowManager.m3909d(C3035k.class));
        c2498a.f8751d = C5051l.f15332h;
        c2498a.f8750c = C4398d.f13707i;
        new C2497h(c2498a).m3513a();
        m3949a(requireContext(), false);
    }

    @OnClick
    public void onButtonTest2Click() {
        new C4776g(new C4775f(), C3036l.class).mo458i();
        new C4776g(new C4775f(), C3026c.class).mo458i();
        new C4776g(new C4775f(), C3050w.class).mo458i();
        long currentTimeMillis = System.currentTimeMillis() - 172800000;
        C3036l c3036l = new C3036l();
        c3036l.f10267i = new java.sql.Date(currentTimeMillis);
        c3036l.f10265g = 1;
        c3036l.f10261c = "+1234567890";
        c3036l.f10268j = 1;
        c3036l.f10269k = 43;
        c3036l.f10270l = "RU";
        c3036l.f10263e = c3036l.f10267i;
        c3036l.f10266h = "Такси";
        c3036l.f10280v = C3043q.m2705q("+1234567890");
        c3036l.mo7416a();
        long j = currentTimeMillis + 2280000;
        C3036l c3036l2 = new C3036l();
        c3036l2.f10267i = new java.sql.Date(j);
        c3036l2.f10265g = 1;
        c3036l2.f10261c = "+9234567895";
        c3036l2.f10268j = 1;
        c3036l2.f10269k = 0;
        c3036l2.f10270l = "RU";
        c3036l2.f10263e = c3036l2.f10267i;
        c3036l2.f10262d = 10;
        c3036l2.f10264f = -1;
        c3036l2.mo7416a();
        long j2 = j + 8280000;
        C3036l c3036l3 = new C3036l();
        c3036l3.f10267i = new java.sql.Date(j2);
        c3036l3.f10265g = 1;
        c3036l3.f10261c = "+1234567892";
        c3036l3.f10268j = 3;
        c3036l3.f10269k = 0;
        c3036l3.f10266h = "";
        c3036l3.f10270l = "RU";
        c3036l3.f10263e = c3036l3.f10267i;
        c3036l3.f10262d = 25;
        c3036l3.f10264f = 0;
        c3036l3.mo7416a();
        long j3 = j2 + 70500000;
        C3036l c3036l4 = new C3036l();
        c3036l4.f10267i = new java.sql.Date(j3);
        c3036l4.f10265g = 1;
        c3036l4.f10261c = "+1234567897";
        c3036l4.f10266h = "Работа";
        c3036l4.f10268j = 1;
        c3036l4.f10269k = 355;
        c3036l4.f10270l = "RU";
        c3036l4.f10263e = c3036l4.f10267i;
        c3036l4.f10262d = 0;
        c3036l4.f10280v = C3043q.m2705q("+1234567897");
        c3036l4.f10264f = -1;
        c3036l4.mo7416a();
        long j4 = j3 + 600000;
        C3036l c3036l5 = new C3036l();
        c3036l5.f10267i = new java.sql.Date(j4);
        c3036l5.f10265g = 1;
        c3036l5.f10261c = "+1234567897";
        c3036l5.f10268j = 1;
        c3036l5.f10266h = "Работа";
        c3036l5.f10280v = C3043q.m2705q("+1234567897");
        c3036l5.f10269k = 298;
        c3036l5.f10270l = "RU";
        c3036l5.f10263e = c3036l5.f10267i;
        c3036l5.f10262d = 0;
        c3036l5.f10264f = -1;
        c3036l5.mo7416a();
        C3036l c3036l6 = new C3036l();
        c3036l6.f10267i = new java.sql.Date(j4 + 300000);
        c3036l6.f10265g = 1;
        c3036l6.f10261c = "+1234567897";
        c3036l6.f10268j = 1;
        c3036l6.f10266h = "Работа";
        c3036l6.f10280v = C3043q.m2705q("+1234567897");
        c3036l6.f10269k = 0;
        c3036l6.f10270l = "RU";
        c3036l6.f10263e = c3036l6.f10267i;
        c3036l6.f10262d = 20;
        c3036l6.f10264f = -1;
        c3036l6.mo7416a();
        long currentTimeMillis2 = System.currentTimeMillis();
        C3036l c3036l7 = new C3036l();
        c3036l7.f10267i = new java.sql.Date(currentTimeMillis2);
        c3036l7.f10265g = 1;
        c3036l7.f10261c = "-2";
        c3036l7.f10268j = 1;
        c3036l7.f10269k = 0;
        c3036l7.f10270l = "RU";
        c3036l7.f10263e = c3036l7.f10267i;
        c3036l7.f10262d = 1;
        c3036l7.f10264f = -1;
        c3036l7.mo7416a();
        C3036l c3036l8 = new C3036l();
        c3036l8.f10267i = new java.sql.Date(currentTimeMillis2 + 5880000);
        c3036l8.f10265g = 1;
        c3036l8.f10261c = "+1234567890";
        c3036l8.f10266h = "Такси";
        c3036l8.f10268j = 1;
        c3036l8.f10269k = 34;
        c3036l8.f10280v = C3043q.m2705q("+1234567890");
        c3036l8.f10270l = "RU";
        c3036l8.f10263e = c3036l8.f10267i;
        c3036l8.f10262d = 0;
        c3036l8.f10264f = -1;
        c3036l8.mo7416a();
        C2780h.m3043j0(getContext(), "psbt", 15);
        C2780h.m3043j0(getContext(), "psbtd", 1);
        C2780h.m3043j0(getContext(), "psctd", 2);
        C2780h.m3043j0(getContext(), "psct", 85);
        C2780h.m3033o0(getContext(), "psbtdd", C2779g.m3103l(new Date()));
        C2780h.m3033o0(getContext(), "psctdd", C2779g.m3103l(new Date()));
        C3026c c3026c = new C3026c();
        c3026c.f10151d = "Работа";
        c3026c.f10153f = 0;
        c3026c.f10152e = C3043q.m2705q("+1234567897");
        c3026c.f10150c = "+1234567897";
        c3026c.mo7416a();
        C3026c c3026c2 = new C3026c();
        c3026c2.f10153f = 1;
        c3026c2.f10150c = "+1234567880";
        c3026c2.mo7416a();
        C3026c c3026c3 = new C3026c();
        c3026c3.f10153f = 1;
        c3026c3.f10150c = "+1234567881";
        c3026c3.mo7416a();
        C3026c c3026c4 = new C3026c();
        c3026c4.f10153f = 2;
        c3026c4.f10150c = "+1234567882";
        c3026c4.mo7416a();
        C3050w c3050w = new C3050w();
        c3050w.f10376d = "Такси";
        c3050w.f10377e = C3043q.m2705q("+1234567890");
        c3050w.f10375c = "+1234567890";
        c3050w.mo7416a();
        C2779g.m3121L(getContext(), getView(), "Data for screenshots added");
    }

    @OnClick
    public void onClearCallLogContactsClick() {
        View$OnClickListenerC2530g.C2531a c2531a = new View$OnClickListenerC2530g.C2531a(requireContext());
        c2531a.f8851b = "Clear calllog/contacts";
        c2531a.m3463l(2131099739);
        c2531a.m3470e(2131230958);
        c2531a.f8874y = false;
        c2531a.f8875z = false;
        c2531a.f8861l = "Clear all";
        c2531a.f8862m = "Clear calllog";
        c2531a.f8863n = "Cancel";
        c2531a.f8870u = C5051l.f15333i;
        c2531a.f8872w = C4398d.f13709k;
        c2531a.m3465j();
    }

    @OnClick
    public void onClickButton02() {
        m3948c();
        MGNotification.m3933c(getContext());
        MGNotification.m3932d(getContext());
    }

    @OnClick
    public void onClickClearCache() {
        new C2107c(getContext(), getView()).m3924h(4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(2131492953, viewGroup, false);
        this.f7409a = ButterKnife.m7385a(this, inflate);
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f7409a.mo3937a();
    }

    @AbstractC0762k(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(C3389e c3389e) {
        String str = c3389e.f11435a;
        m3948c();
        if (c3389e.f11436b != 2) {
            View$OnClickListenerC2530g.C2531a c2531a = new View$OnClickListenerC2530g.C2531a(requireContext());
            c2531a.f8851b = c3389e.f11435a;
            c2531a.m3463l(2131099739);
            c2531a.m3470e(c3389e.f11436b == 1 ? 2131230958 : 17301569);
            c2531a.m3472c(2131099739);
            c2531a.m3474a(C2780h.m3081H(getContext()) ? 2131099793 : 2131099742);
            c2531a.f8874y = true;
            c2531a.f8875z = true;
            c2531a.m3466i(2131820943);
            c2531a.m3465j();
        }
    }

    @AbstractC0762k(threadMode = ThreadMode.MAIN)
    public void onMessageEventProStatusChanged(C3403s c3403s) {
        m3949a(requireContext(), false);
    }

    @OnClick
    public void onShowButtonsClick() {
        LinearLayout linearLayout = this.buttonsLL;
        linearLayout.setVisibility(linearLayout.getVisibility() == 0 ? 8 : 0);
        this.buttonShowButtons.setText(this.buttonsLL.getVisibility() == 0 ? "HIDE BUTTONS" : "SHOW BUTTONS");
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        if (!C0748b.m7409b().m7405f(this)) {
            C0748b.m7409b().m7400k(this);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        if (C0748b.m7409b().m7405f(this)) {
            C0748b.m7409b().m7398m(this);
        }
        super.onStop();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        requireActivity().setTitle(2131820576);
        AbstractC2635a m3365s = ((ActivityC2651j) requireActivity()).m3365s();
        if (m3365s != null) {
            m3365s.mo3266p(2131820576);
        }
        m3948c();
    }

    @OnClick
    public void onbutton07Click() {
        C3043q.m2722C(getContext());
        C2779g.m3121L(getContext(), getView(), "Call Log updated");
    }

    @OnClick
    public void onbutton09Click(View view) {
        C2779g.m3121L(getContext(), getView(), "Download DB started.. please wait..");
        C2779g.m3120M(getContext());
    }

    @OnClick
    public void onbutton10Click(View view) {
        new C4790q(C3036l.class).m460a(C3037m.f10285A.m239a(Boolean.FALSE)).m481d();
        C2779g.m3121L(getContext(), getView(), "Log.feedbackChecked updated to false\nStart updateAllNamesFromFeedbacks");
        C2779g.m3116Q(getContext());
    }
}
