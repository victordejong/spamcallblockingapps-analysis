package p095f8;

import android.annotation.SuppressLint;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.provider.ContactsContract;
import android.provider.Settings;
import android.support.p012v4.media.C0082b;
import android.telecom.TelecomManager;
import android.text.format.DateFormat;
import android.util.Base64;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.widget.Toast;
import androidx.recyclerview.widget.C0608b;
import com.google.android.gms.internal.ads.C1676a;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.mglab.scm.api.AlarmBroadcastReceiver;
import com.mglab.scm.api.AlarmJobIntentService;
import com.mglab.scm.telephony.ForegroundService;
import com.raizlabs.android.dbflow.config.AbstractC2117d;
import com.raizlabs.android.dbflow.config.C2118e;
import com.raizlabs.android.dbflow.config.C2120f;
import com.raizlabs.android.dbflow.config.FlowManager;
import java.security.MessageDigest;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Random;
import java.util.Stack;
import java.util.concurrent.TimeUnit;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import me.leolin.shortcutbadger.ShortcutBadgeException;
import p026c0.AbstractServiceC0792i;
import p033c8.AbstractC0853a;
import p076e0.C2511f;
import p078e2.View$OnClickListenerC2530g;
import p098g0.C2789a;
import p106g8.C2914d;
import p117h8.C3036l;
import p117h8.C3037m;
import p117h8.C3043q;
import p170m7.AbstractC3656d;
import p170m7.C3661g;
import p172m9.AbstractC3676a;
import p172m9.C3677b;
import p182n8.C3793b;
import p233s6.C4313h;
import p233s6.C4315j;
import p233s6.C4316k;
import p233s6.C4317l;
import p233s6.C4318m;
import p277w7.C4749e;
import p277w7.C4766p;
import p278w8.C4776g;
import p278w8.C4782k;
import p278w8.C4785l;
import p278w8.C4786m;
import p278w8.C4788o;
import p278w8.C4790q;
import p278w8.C4791r;
import p283x2.C4849a;
import p289x8.C4933b;
import p308z7.AbstractC5111a;
import p308z7.AbstractC5113c;
/* renamed from: f8.g */
/* loaded from: classes2-dex2jar.jar:f8/g.class */
public class C2779g {
    /* renamed from: A */
    public static void m3132A(Context context) {
        String packageName = context.getPackageName();
        try {
            context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + packageName)));
        } catch (ActivityNotFoundException e) {
            context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://play.google.com/store/apps/details?id=" + packageName)));
        }
    }

    /* renamed from: B */
    public static String m3131B(int i) {
        Random random = new Random();
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < i; i2++) {
            sb.append("1234567890QWERTYUIOPASDFGHJKLZXCVBNMqwertyuiopasdfghjklzxcvbnm".charAt(random.nextInt(62)));
        }
        return sb.toString();
    }

    /* renamed from: C */
    public static void m3130C(Context context) {
        try {
            context.getContentResolver().registerContentObserver(ContactsContract.Contacts.CONTENT_URI, true, new C3793b(new Handler(), context));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: D */
    public static void m3129D(Context context) {
        new Thread(new RunnableC2775c(context, 0)).start();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* renamed from: E */
    public static void m3128E(Context context, boolean z) {
        char c;
        Intent intent = new Intent(context, AlarmBroadcastReceiver.class);
        intent.setAction("mglab.scm.alarmwbr");
        int i = Build.VERSION.SDK_INT;
        boolean z2 = true;
        if (i < 31 ? PendingIntent.getBroadcast(context, 74329, intent, 536870912) == null : PendingIntent.getBroadcast(context, 74329, intent, 570425344) == null) {
            z2 = false;
        }
        long m3025t = C2780h.m3025t(context);
        char m3135b = new C2774b().m3135b("AJIS_interval_default_hrs") * 3600000;
        ?? m3135b2 = new C2774b().m3135b("AJIS_interval_short_min") * 60000;
        ?? m3135b3 = 3600000 * new C2774b().m3135b("AJIS_need_start_now_interval_hrs");
        Bundle bundle = new Bundle();
        bundle.putLong("intervalDefault", m3135b);
        bundle.putLong("intervalShort", m3135b2);
        bundle.putLong("intervalNeedStartNow", m3135b3);
        m3089z(context, "AJIS_intervals", bundle);
        Bundle bundle2 = new Bundle();
        bundle2.putInt("intervalDefault", 0);
        int i2 = (m3135b > 0L ? 1 : (m3135b == 0L ? 0 : -1));
        if (i2 == 0) {
            m3089z(context, "AJIS_interval_zero_2_3_9", bundle2);
        }
        if (i2 == 0) {
            m3135b = 52096;
        }
        char c2 = m3135b2;
        if (m3135b2 == 0) {
            c2 = 26048;
        }
        char c3 = m3135b3;
        if (m3135b3 == 0) {
            c3 = 29696;
        }
        if (c3 + m3025t < System.currentTimeMillis()) {
            m3120M(context);
            c = c2;
        } else {
            c = m3135b;
        }
        if (m3025t + m3135b + c2 < System.currentTimeMillis()) {
            c = c2;
        }
        if (c == c2 || !z2 || z) {
            Intent intent2 = new Intent(context, AlarmBroadcastReceiver.class);
            intent2.setAction("mglab.scm.alarmwbr");
            ((AlarmManager) context.getSystemService("alarm")).setInexactRepeating(0, System.currentTimeMillis() + c, c, i >= 31 ? PendingIntent.getBroadcast(context, 74329, intent2, 167772160) : PendingIntent.getBroadcast(context, 74329, intent2, 134217728));
            long j = c / 60000;
        }
    }

    /* renamed from: F */
    public static void m3127F(Context context, String str, String str2) {
        try {
            Intent intent = new Intent("android.intent.action.SEND");
            intent.setType("*/*");
            intent.putExtra("android.intent.extra.EMAIL", new String[]{context.getString(2131820748)});
            intent.putExtra("android.intent.extra.SUBJECT", str);
            intent.putExtra("android.intent.extra.TEXT", str2);
            context.startActivity(m3112c(context, intent, context.getString(2131820750)));
        } catch (Exception e) {
            e.printStackTrace();
            Toast.makeText(context, 2131820749, 1).show();
        }
    }

    /* renamed from: G */
    public static void m3126G(Context context, Resources resources) {
        if (C2780h.m3068U(context, 1) != -1) {
            ThreadLocal<TypedValue> threadLocal = C2511f.f8775a;
            m3125H(resources.getDrawable(2131230994, null), C2780h.m3068U(context, 1));
        }
        if (C2780h.m3068U(context, 2) != -1) {
            ThreadLocal<TypedValue> threadLocal2 = C2511f.f8775a;
            m3125H(resources.getDrawable(2131230996, null), C2780h.m3068U(context, 2));
        }
    }

    /* renamed from: H */
    public static Drawable m3125H(Drawable drawable, int i) {
        Drawable m3007h = C2789a.m3007h(drawable);
        m3007h.setTint(i);
        return m3007h;
    }

    /* renamed from: I */
    public static void m3124I(Context context) {
        int intValue = C2780h.m3058c(context).intValue();
        if (intValue == 0) {
            List<Class<? extends AbstractC3676a>> list = C3677b.f12045a;
            try {
                C3677b.m1892a(context, 0);
            } catch (ShortcutBadgeException e) {
                Log.isLoggable("ShortcutBadger", 3);
            }
        }
        List<Class<? extends AbstractC3676a>> list2 = C3677b.f12045a;
        try {
            C3677b.m1892a(context, intValue);
        } catch (ShortcutBadgeException e2) {
            Log.isLoggable("ShortcutBadger", 3);
        }
    }

    /* renamed from: J */
    public static void m3123J(Context context, String str, String str2) {
        View$OnClickListenerC2530g.C2531a c2531a = new View$OnClickListenerC2530g.C2531a(context);
        c2531a.f8851b = str;
        c2531a.m3463l(2131099739);
        c2531a.m3470e(2131230958);
        c2531a.m3472c(C2780h.m3081H(context) ? 2131099742 : 2131099699);
        int i = 2131099742;
        if (C2780h.m3081H(context)) {
            i = 2131099793;
        }
        c2531a.m3474a(i);
        c2531a.m3473b(str2);
        c2531a.f8874y = false;
        c2531a.f8875z = false;
        c2531a.m3466i(2131820943);
        c2531a.m3465j();
    }

    /* renamed from: K */
    public static void m3122K(Context context, View view, int i) {
        Toast.makeText(context, context.getString(i), -1).show();
    }

    /* renamed from: L */
    public static void m3121L(Context context, View view, String str) {
        Toast.makeText(context, str, -1).show();
    }

    /* renamed from: M */
    public static void m3120M(Context context) {
        Intent intent = new Intent(context, AlarmJobIntentService.class);
        Object obj = AbstractServiceC0792i.f2926f;
        ComponentName componentName = new ComponentName(context, AlarmJobIntentService.class);
        synchronized (AbstractServiceC0792i.f2926f) {
            AbstractServiceC0792i.AbstractC0801h m7371b = AbstractServiceC0792i.m7371b(context, componentName, true, 567892);
            m7371b.m7367b(567892);
            m7371b.mo7368a(intent);
        }
    }

    /* renamed from: N */
    public static void m3119N(Context context) {
        Intent intent = new Intent(context, ForegroundService.class);
        if (Build.VERSION.SDK_INT >= 26) {
            context.startForegroundService(intent);
        } else {
            context.startService(intent);
        }
    }

    /* renamed from: O */
    public static void m3118O(Context context, Bundle bundle) {
        Intent intent = new Intent(context, ForegroundService.class);
        intent.putExtra("EXTRA_BUNDLE", bundle);
        if (Build.VERSION.SDK_INT >= 26) {
            context.startForegroundService(intent);
        } else {
            context.startService(intent);
        }
    }

    /* renamed from: P */
    public static Date m3117P(String str, String str2) {
        if (str == null) {
            return null;
        }
        return new SimpleDateFormat(str2).parse(str, new ParsePosition(0));
    }

    @SuppressLint({"HardwareIds"})
    /* renamed from: Q */
    public static void m3116Q(Context context) {
        String m3131B;
        if (!m3090y() || !C2780h.m3074O(context)) {
            return;
        }
        C4933b<String> c4933b = C3037m.f10288h;
        C4776g c4776g = new C4776g(new C4788o(c4933b), C3036l.class);
        C4782k<String> mo230c = c4933b.mo230c();
        mo230c.f14685a = String.format(" %1s ", "IS NOT NULL");
        C4791r c4791r = new C4791r(c4776g, mo230c);
        c4791r.f14720d.m467k("AND", c4933b.m234g(""));
        C4785l c4785l = new C4785l();
        C4933b<String> c4933b2 = C3037m.f10306z;
        c4785l.m467k("AND", c4933b2.m233h());
        c4785l.m467k("OR", c4933b2.m239a(""));
        c4791r.f14720d.m467k("AND", c4785l);
        C4785l c4785l2 = new C4785l();
        C4933b<String> c4933b3 = C3037m.f10292l;
        c4785l2.m467k("AND", c4933b3.m233h());
        c4785l2.m467k("OR", c4933b3.m239a(""));
        c4791r.f14720d.m467k("AND", c4785l2);
        c4791r.f14720d.m467k("AND", C3037m.f10285A.m234g(Boolean.TRUE));
        c4791r.m454n(c4933b);
        c4791r.f14722f.add(new C4786m(c4933b.mo235f(), false));
        List mo456l = c4791r.mo456l();
        if (mo456l.isEmpty()) {
            return;
        }
        C4313h c4313h = new C4313h();
        for (int i = 0; i < mo456l.size(); i++) {
            String str = ((C3036l) mo456l.get(i)).f10261c;
            c4313h.f13468a.add(str == null ? C4315j.f13469a : new C4318m(str));
        }
        c4313h.size();
        c4313h.toString();
        new Thread(new Runnable(context, m3111d("hy#Ut*PkU@385%d2", C2780h.m3057c0(context)), m3131B(16), m3131B.substring(10) + m3131B.substring(0, 10), c4313h, m3131B.substring(8) + m3131B.substring(0, 8), "updateAllNamesFF", mo456l) { // from class: f8.d

            /* renamed from: a */
            public final /* synthetic */ Context f9479a;

            /* renamed from: b */
            public final /* synthetic */ String f9480b;

            /* renamed from: c */
            public final /* synthetic */ String f9481c;

            /* renamed from: d */
            public final /* synthetic */ String f9482d;

            /* renamed from: e */
            public final /* synthetic */ C4313h f9483e;

            /* renamed from: f */
            public final /* synthetic */ String f9484f;

            /* renamed from: g */
            public final /* synthetic */ List f9485g;

            {
                this.f9485g = mo456l;
            }

            @Override // java.lang.Runnable
            public final void run() {
                Context context2 = this.f9479a;
                String str4 = this.f9480b;
                String str5 = this.f9481c;
                String str6 = this.f9482d;
                C4313h c4313h2 = this.f9483e;
                String str7 = this.f9484f;
                List list = this.f9485g;
                AbstractC5113c<AbstractC5111a> m498b = C4749e.m498b(context2);
                String m4789h = C1676a.m4789h(str4, "get_packet.php");
                C4766p c4766p = (C4766p) m498b;
                c4766p.m492j(m4789h);
                c4766p.mo11f("deviceid", Settings.Secure.getString(context2.getContentResolver(), "android_id"));
                c4766p.mo11f("data", str5);
                c4766p.mo11f("gzip", "1");
                c4766p.mo15a(C2914d.m2854b(str6, c4313h2.toString()));
                AbstractC0853a mo10d = c4766p.mo10d();
                ((C3661g) mo10d).m1919k(new AbstractC3656d(str7, "updateAllNamesFF", list, context2) { // from class: f8.f

                    /* renamed from: a */
                    public final /* synthetic */ String f9493a;

                    /* renamed from: b */
                    public final /* synthetic */ List f9494b;

                    /* renamed from: c */
                    public final /* synthetic */ Context f9495c;

                    {
                        this.f9494b = list;
                        this.f9495c = context2;
                    }

                    @Override // p170m7.AbstractC3656d
                    /* renamed from: a */
                    public final void mo99a(Exception exc, Object obj) {
                        String str8 = this.f9493a;
                        List list2 = this.f9494b;
                        Context context3 = this.f9495c;
                        C4316k c4316k = (C4316k) obj;
                        if (c4316k == null) {
                            C2779g.m3129D(context3);
                            return;
                        }
                        try {
                            C4313h m1111b = new C4317l().m1107a(C2779g.m3111d(str8, c4316k.m1108f("body").mo1104d())).m1111b();
                            m1111b.toString();
                            m1111b.size();
                            for (int i2 = 0; i2 < list2.size(); i2++) {
                                C3036l c3036l = (C3036l) list2.get(i2);
                                String abstractC4314i = m1111b.m1112e(i2).toString();
                                String substring = abstractC4314i.substring(1, abstractC4314i.length() - 1);
                                if (!substring.isEmpty()) {
                                    new C4791r(new C4790q(C3036l.class).m460a(C3037m.f10292l.m239a(substring), C3037m.f10306z.m239a(substring), C3037m.f10285A.m239a(Boolean.TRUE)), C3037m.f10288h.m239a(c3036l.f10261c)).m481d();
                                } else {
                                    new C4791r(new C4790q(C3036l.class).m460a(C3037m.f10306z.m239a(""), C3037m.f10285A.m239a(Boolean.TRUE)), C3037m.f10288h.m239a(c3036l.f10261c)).m481d();
                                }
                            }
                            C2779g.m3129D(context3);
                        } catch (Exception e) {
                            e.printStackTrace();
                            e.toString();
                            C2779g.m3129D(context3);
                        }
                    }
                });
            }
        }).start();
    }

    @SuppressLint({"HardwareIds"})
    /* renamed from: R */
    public static void m3115R(final Context context, final String str) {
        if (m3090y() && C2780h.m3074O(context)) {
            final String m3131B = m3131B(16);
            final String str2 = m3131B.substring(13) + m3131B.substring(0, 13);
            final String str3 = m3131B.substring(4) + m3131B.substring(0, 4);
            final C4316k c4316k = new C4316k();
            c4316k.f13470a.put("number", c4316k.m1109e(str));
            final String m3111d = m3111d("hy#Ut*PkU@385%d2", C2780h.m3057c0(context));
            new Thread(new Runnable() { // from class: f8.e
                @Override // java.lang.Runnable
                public final void run() {
                    Context context2 = context;
                    String str4 = m3111d;
                    String str5 = m3131B;
                    String str6 = str2;
                    C4316k c4316k2 = c4316k;
                    String str7 = str3;
                    String str8 = str;
                    AbstractC5113c<AbstractC5111a> m498b = C4749e.m498b(context2);
                    String m4789h = C1676a.m4789h(str4, "get.php");
                    C4766p c4766p = (C4766p) m498b;
                    c4766p.m492j(m4789h);
                    c4766p.mo11f("deviceid", Settings.Secure.getString(context2.getContentResolver(), "android_id"));
                    c4766p.mo11f("data", str5);
                    c4766p.mo14b(C2914d.m2853c(str6, "body", c4316k2.toString()));
                    AbstractC0853a mo10d = c4766p.mo10d();
                    ((C3661g) mo10d).m1919k(new C4849a(str7, str8, context2));
                }
            }).start();
        }
    }

    /* renamed from: a */
    public static boolean m3114a(Context context) {
        return context.checkCallingOrSelfPermission("android.permission.READ_CONTACTS") == 0;
    }

    /* renamed from: b */
    public static boolean m3113b(Context context) {
        return context.checkCallingOrSelfPermission("android.permission.WRITE_CALL_LOG") == 0;
    }

    /* renamed from: c */
    public static Intent m3112c(Context context, Intent intent, CharSequence charSequence) {
        Stack stack = new Stack();
        for (ResolveInfo resolveInfo : context.getPackageManager().queryIntentActivities(new Intent("android.intent.action.SENDTO", Uri.fromParts("mailto", context.getString(2131820748), null)), 0)) {
            Intent intent2 = new Intent(intent);
            intent2.setPackage(resolveInfo.activityInfo.packageName);
            stack.add(intent2);
        }
        if (!stack.isEmpty()) {
            Intent createChooser = Intent.createChooser((Intent) stack.remove(0), charSequence);
            createChooser.putExtra("android.intent.extra.INITIAL_INTENTS", (Parcelable[]) stack.toArray(new Parcelable[0]));
            return createChooser;
        }
        return Intent.createChooser(intent, charSequence);
    }

    /* renamed from: d */
    public static String m3111d(String str, String str2) {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(str.getBytes(), "AES");
            Cipher cipher = Cipher.getInstance("AES");
            cipher.init(2, secretKeySpec);
            return new String(cipher.doFinal(Base64.decode(str2, 0)));
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: e */
    public static String m3110e(String str, String str2) {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(str.getBytes(), "AES");
            Cipher cipher = Cipher.getInstance("AES");
            cipher.init(1, secretKeySpec);
            return Base64.encodeToString(cipher.doFinal(str2.getBytes()), 0);
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: f */
    public static String m3109f() {
        return String.valueOf(382);
    }

    @SuppressLint({"DefaultLocale"})
    /* renamed from: g */
    public static String m3108g(int i) {
        TimeUnit timeUnit = TimeUnit.SECONDS;
        long j = i;
        return timeUnit.toHours(j) == 0 ? String.format("%02d:%02d", Long.valueOf(timeUnit.toMinutes(j) - TimeUnit.HOURS.toMinutes(timeUnit.toHours(j))), Long.valueOf(timeUnit.toSeconds(j) - TimeUnit.MINUTES.toSeconds(timeUnit.toMinutes(j)))) : String.format("%02d:%02d:%02d", Long.valueOf(timeUnit.toHours(j)), Long.valueOf(timeUnit.toMinutes(j) - TimeUnit.HOURS.toMinutes(timeUnit.toHours(j))), Long.valueOf(timeUnit.toSeconds(j) - TimeUnit.MINUTES.toSeconds(timeUnit.toMinutes(j))));
    }

    /* renamed from: h */
    public static Date m3107h(int i, int i2) {
        Calendar calendar = Calendar.getInstance();
        calendar.set(11, i);
        calendar.set(12, i2);
        return calendar.getTime();
    }

    /* renamed from: i */
    public static Date m3106i(String str) {
        try {
            str = m3101n(new SimpleDateFormat("h:mm a").parse(str));
        } catch (Exception e) {
        }
        int parseInt = Integer.parseInt(str.substring(0, 2));
        int parseInt2 = Integer.parseInt(str.substring(3));
        Calendar calendar = Calendar.getInstance();
        calendar.set(11, parseInt);
        calendar.set(12, parseInt2);
        return calendar.getTime();
    }

    /* renamed from: j */
    public static String m3105j(Context context) {
        return context.getString(2131820591) + " 2.3.21." + Settings.Secure.getString(context.getContentResolver(), "android_id");
    }

    @SuppressLint({"HardwareIds"})
    /* renamed from: k */
    public static String m3104k(Context context) {
        return Settings.Secure.getString(context.getContentResolver(), "android_id");
    }

    @SuppressLint({"SimpleDateFormat"})
    /* renamed from: l */
    public static String m3103l(Date date) {
        return new SimpleDateFormat("dd/MM/yyyy").format(date);
    }

    @SuppressLint({"SimpleDateFormat"})
    /* renamed from: m */
    public static String m3102m(Context context, Date date) {
        return new SimpleDateFormat(DateFormat.is24HourFormat(context) ? "HH:mm" : "h:mm aa").format(date);
    }

    @SuppressLint({"SimpleDateFormat"})
    /* renamed from: n */
    public static String m3101n(Date date) {
        return new SimpleDateFormat("HH:mm").format(date);
    }

    @SuppressLint({"SimpleDateFormat"})
    /* renamed from: o */
    public static String m3100o(Date date) {
        return new SimpleDateFormat("HH:mm:ss.SSS").format(date);
    }

    /* renamed from: p */
    public static String m3099p(Context context) {
        String string = context.getString(2131821069);
        String str = string;
        if (m3090y()) {
            StringBuilder m7624k = C0608b.m7624k(string, " ");
            m7624k.append(context.getString(2131820953));
            str = m7624k.toString();
        }
        return str;
    }

    /* renamed from: q */
    public static String m3098q(String str, String str2, boolean z) {
        String m4789h = C1676a.m4789h(str2, str);
        if (str.length() < 2) {
            return "";
        }
        String str3 = m4789h;
        if (z) {
            StringBuilder m8752j = C0082b.m8752j(m4789h);
            m8752j.append(str.substring(str.length() - 2));
            str3 = m8752j.toString();
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("md5");
            messageDigest.update(str3.getBytes());
            byte[] digest = messageDigest.digest();
            StringBuilder sb = new StringBuilder();
            int length = digest.length;
            for (int i = 0; i < length; i++) {
                sb.append(String.format("%02X", Byte.valueOf(digest[i])));
            }
            return sb.toString().toLowerCase();
        } catch (Exception e) {
            e.toString();
            return "";
        }
    }

    /* renamed from: r */
    public static int m3097r(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        return calendar.get(11);
    }

    /* renamed from: s */
    public static String m3096s(Context context, Date date) {
        return new SimpleDateFormat(((SimpleDateFormat) DateFormat.getDateFormat(context)).toLocalizedPattern()).format(date);
    }

    /* renamed from: t */
    public static String m3095t(Context context, long j) {
        String localizedPattern = ((SimpleDateFormat) DateFormat.getDateFormat(context)).toLocalizedPattern();
        Date date = new Date(j);
        return new SimpleDateFormat(localizedPattern).format(date) + " " + m3102m(context, date);
    }

    /* renamed from: u */
    public static int m3094u(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        return calendar.get(12);
    }

    /* renamed from: v */
    public static void m3093v(Context context) {
        C2118e c2118e = new C2118e(new C2118e.C2119a(context));
        C2120f.EnumC2122b enumC2122b = C2120f.EnumC2122b.f7695c;
        FlowManager.f7674a = c2118e;
        try {
            FlowManager.m3902k(Class.forName(FlowManager.f7677d));
        } catch (FlowManager.ModuleNotFoundException e) {
            C2120f.m3889a(enumC2122b, e.getMessage(), null);
        } catch (ClassNotFoundException e2) {
            C2120f.m3889a(enumC2122b, "Could not find the default GeneratedDatabaseHolder", null);
        }
        if (!c2118e.f7687a.isEmpty()) {
            for (Class<? extends AbstractC2117d> cls : c2118e.f7687a) {
                FlowManager.m3902k(cls);
            }
        }
    }

    /* renamed from: w */
    public static boolean m3092w(Context context) {
        try {
            if (Build.VERSION.SDK_INT < 23) {
                return true;
            }
            return ((TelecomManager) context.getSystemService("telecom")).getDefaultDialerPackage().equals(context.getPackageName());
        } catch (Exception e) {
            e.printStackTrace();
            Bundle bundle = new Bundle();
            bundle.putInt("SDK", Build.VERSION.SDK_INT);
            m3089z(context, "", bundle);
            return false;
        }
    }

    /* renamed from: x */
    public static boolean m3091x() {
        Context context = C2768a.f9468a;
        return C3043q.m2709m("AKLP");
    }

    /* renamed from: y */
    public static boolean m3090y() {
        Context context = C2768a.f9468a;
        return C3043q.m2709m("AKP");
    }

    /* renamed from: z */
    public static void m3089z(Context context, String str, Bundle bundle) {
        try {
            FirebaseAnalytics.getInstance(context).f6972a.zzg(str, bundle);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
