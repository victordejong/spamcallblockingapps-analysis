package com.clevertap.android.pushtemplates;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.RemoteInput;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.Html;
import android.text.format.DateUtils;
import android.widget.RemoteViews;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.amazon.device.ads.MraidCloseCommand;
import com.clevertap.android.sdk.CleverTapInstanceConfig;
import com.clevertap.android.sdk.pushnotification.CTNotificationIntentService;
import com.tenor.android.core.network.constant.Protocols;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;
import p1727n3.p1789g0.C26232y;
import p1727n3.p1807k.p1808a.C26446n;
import p1727n3.p1807k.p1808a.C26447o;
import p1727n3.p1807k.p1808a.C26450q;
import p193e.p1485h.p1486a.p1488b.C22681g;
import p193e.p1485h.p1486a.p1488b.CallableC22680f;
import p193e.p1485h.p1486a.p1488b.EnumC22678e;
import p193e.p1485h.p1486a.p1488b.p1490i.C22688g;
import p193e.p1485h.p1486a.p1493c.C22741j0;
import p193e.p1485h.p1486a.p1493c.C22773p;
import p193e.p1485h.p1486a.p1493c.p1510y0.C22882a;
import p193e.p1485h.p1486a.p1493c.p1510y0.C22895k;
import p193e.p1485h.p1486a.p1493c.p1510y0.RunnableC22894j;
/* loaded from: classes-dex2jar.jar:com/clevertap/android/pushtemplates/PushTemplateReceiver.class */
public class PushTemplateReceiver extends BroadcastReceiver {

    /* renamed from: A */
    public boolean f2173A;

    /* renamed from: B */
    public String f2174B;

    /* renamed from: C */
    public String f2175C;

    /* renamed from: D */
    public CleverTapInstanceConfig f2176D;

    /* renamed from: b */
    public C22773p f2178b;

    /* renamed from: c */
    public RemoteViews f2179c;

    /* renamed from: d */
    public RemoteViews f2180d;

    /* renamed from: e */
    public RemoteViews f2181e;

    /* renamed from: f */
    public RemoteViews f2182f;

    /* renamed from: g */
    public String f2183g;

    /* renamed from: h */
    public EnumC22678e f2184h;

    /* renamed from: i */
    public String f2185i;

    /* renamed from: j */
    public String f2186j;

    /* renamed from: k */
    public String f2187k;

    /* renamed from: l */
    public String f2188l;

    /* renamed from: r */
    public String f2194r;

    /* renamed from: t */
    public boolean f2196t;

    /* renamed from: u */
    public NotificationManager f2197u;

    /* renamed from: v */
    public String f2198v;

    /* renamed from: w */
    public String f2199w;

    /* renamed from: x */
    public String f2200x;

    /* renamed from: y */
    public String f2201y;

    /* renamed from: z */
    public String f2202z;

    /* renamed from: a */
    public boolean f2177a = true;

    /* renamed from: m */
    public ArrayList<String> f2189m = new ArrayList<>();

    /* renamed from: n */
    public ArrayList<String> f2190n = new ArrayList<>();

    /* renamed from: o */
    public ArrayList<String> f2191o = new ArrayList<>();

    /* renamed from: p */
    public ArrayList<String> f2192p = new ArrayList<>();

    /* renamed from: q */
    public ArrayList<String> f2193q = new ArrayList<>();

    /* renamed from: s */
    public int f2195s = 0;

    /* renamed from: com.clevertap.android.pushtemplates.PushTemplateReceiver$a */
    /* loaded from: classes-dex2jar.jar:com/clevertap/android/pushtemplates/PushTemplateReceiver$a.class */
    public class CallableC0860a implements Callable<Void> {

        /* renamed from: a */
        public final /* synthetic */ Context f2203a;

        /* renamed from: b */
        public final /* synthetic */ Intent f2204b;

        /* renamed from: c */
        public final /* synthetic */ Bundle f2205c;

        public CallableC0860a(Context context, Intent intent, Bundle bundle) {
            PushTemplateReceiver.this = r4;
            this.f2203a = context;
            this.f2204b = intent;
            this.f2205c = bundle;
        }

        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            try {
                PushTemplateReceiver pushTemplateReceiver = PushTemplateReceiver.this;
                if (pushTemplateReceiver.f2173A) {
                    C22681g.m7977c(this.f2203a);
                    C22681g.m7978b(this.f2203a, this.f2204b);
                } else {
                    EnumC22678e enumC22678e = pushTemplateReceiver.f2184h;
                    if (enumC22678e != null) {
                        int ordinal = enumC22678e.ordinal();
                        if (ordinal == 2) {
                            PushTemplateReceiver.m42088e(PushTemplateReceiver.this, this.f2203a, this.f2205c);
                        } else if (ordinal == 3) {
                            PushTemplateReceiver.m42092a(PushTemplateReceiver.this, this.f2203a, this.f2205c);
                        } else if (ordinal == 4) {
                            PushTemplateReceiver.m42091b(PushTemplateReceiver.this, this.f2203a, this.f2205c);
                        } else if (ordinal == 5) {
                            PushTemplateReceiver.m42090c(PushTemplateReceiver.this, this.f2203a, this.f2205c);
                        } else if (ordinal == 8) {
                            PushTemplateReceiver.m42089d(PushTemplateReceiver.this, this.f2203a, this.f2205c, this.f2204b);
                        }
                    }
                }
                return null;
            } catch (Throwable th) {
                th.getLocalizedMessage();
                return null;
            }
        }
    }

    /* renamed from: a */
    public static void m42092a(PushTemplateReceiver pushTemplateReceiver, Context context, Bundle bundle) {
        Objects.requireNonNull(pushTemplateReceiver);
        try {
            int i = bundle.getInt("notificationId");
            if (bundle.getBoolean("default_dl", false)) {
                pushTemplateReceiver.f2176D = (CleverTapInstanceConfig) bundle.getParcelable(DTBMetricsConfiguration.CONFIG_DIR);
                pushTemplateReceiver.f2197u.cancel(i);
                Class<?> cls = null;
                try {
                    cls = Class.forName("com.clevertap.android.sdk.pushnotification.CTNotificationIntentService");
                } catch (ClassNotFoundException e) {
                }
                if (C22741j0.m7838l(context, cls)) {
                    Intent intent = new Intent(CTNotificationIntentService.MAIN_ACTION);
                    intent.setPackage(context.getPackageName());
                    intent.putExtra("ct_type", CTNotificationIntentService.TYPE_BUTTON_CLICK);
                    intent.putExtras(bundle);
                    intent.putExtra("dl", pushTemplateReceiver.f2188l);
                    context.startService(intent);
                    return;
                }
                Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse(pushTemplateReceiver.f2188l));
                intent2.removeExtra("wzrk_acts");
                intent2.putExtra("wzrk_from", "CTPushNotificationReceiver");
                intent2.setFlags(872415232);
                C22681g.m7960t(context, bundle, pushTemplateReceiver.f2176D);
                intent2.putExtras(bundle);
                intent2.putExtra("wzrk_dl", pushTemplateReceiver.f2188l);
                context.startActivity(intent2);
                return;
            }
            String str = pushTemplateReceiver.f2190n.get(0);
            String str2 = str;
            if (1 == bundle.getInt("clickedStar", 0)) {
                bundle.putString("wzrk_c2a", "rating_1");
                str2 = str;
                if (pushTemplateReceiver.f2190n.size() > 0) {
                    str2 = pushTemplateReceiver.f2190n.get(0);
                }
            }
            if (2 == bundle.getInt("clickedStar", 0)) {
                bundle.putString("wzrk_c2a", "rating_2");
                str2 = pushTemplateReceiver.f2190n.size() > 1 ? pushTemplateReceiver.f2190n.get(1) : pushTemplateReceiver.f2190n.get(0);
            }
            if (3 == bundle.getInt("clickedStar", 0)) {
                bundle.putString("wzrk_c2a", "rating_3");
                str2 = pushTemplateReceiver.f2190n.size() > 2 ? pushTemplateReceiver.f2190n.get(2) : pushTemplateReceiver.f2190n.get(0);
            }
            if (4 == bundle.getInt("clickedStar", 0)) {
                bundle.putString("wzrk_c2a", "rating_4");
                str2 = pushTemplateReceiver.f2190n.size() > 3 ? pushTemplateReceiver.f2190n.get(3) : pushTemplateReceiver.f2190n.get(0);
            }
            if (5 == bundle.getInt("clickedStar", 0)) {
                bundle.putString("wzrk_c2a", "rating_5");
                str2 = pushTemplateReceiver.f2190n.size() > 4 ? pushTemplateReceiver.f2190n.get(4) : pushTemplateReceiver.f2190n.get(0);
            }
            int i2 = Build.VERSION.SDK_INT;
            Notification m7965o = C22681g.m7965o(context, i);
            if (m7965o != null) {
                pushTemplateReceiver.f2181e = m7965o.bigContentView;
                pushTemplateReceiver.f2180d = m7965o.contentView;
            }
            if (1 == bundle.getInt("clickedStar", 0)) {
                pushTemplateReceiver.f2181e.setImageViewResource(C0861R.C0863id.star1, C0861R.C0862drawable.pt_star_filled);
            } else {
                pushTemplateReceiver.f2181e.setImageViewResource(C0861R.C0863id.star1, C0861R.C0862drawable.pt_star_outline);
            }
            if (2 == bundle.getInt("clickedStar", 0)) {
                RemoteViews remoteViews = pushTemplateReceiver.f2181e;
                int i3 = C0861R.C0863id.star1;
                int i4 = C0861R.C0862drawable.pt_star_filled;
                remoteViews.setImageViewResource(i3, i4);
                pushTemplateReceiver.f2181e.setImageViewResource(C0861R.C0863id.star2, i4);
            } else {
                pushTemplateReceiver.f2181e.setImageViewResource(C0861R.C0863id.star2, C0861R.C0862drawable.pt_star_outline);
            }
            if (3 == bundle.getInt("clickedStar", 0)) {
                RemoteViews remoteViews2 = pushTemplateReceiver.f2181e;
                int i5 = C0861R.C0863id.star1;
                int i6 = C0861R.C0862drawable.pt_star_filled;
                remoteViews2.setImageViewResource(i5, i6);
                pushTemplateReceiver.f2181e.setImageViewResource(C0861R.C0863id.star2, i6);
                pushTemplateReceiver.f2181e.setImageViewResource(C0861R.C0863id.star3, i6);
            } else {
                pushTemplateReceiver.f2181e.setImageViewResource(C0861R.C0863id.star3, C0861R.C0862drawable.pt_star_outline);
            }
            if (4 == bundle.getInt("clickedStar", 0)) {
                RemoteViews remoteViews3 = pushTemplateReceiver.f2181e;
                int i7 = C0861R.C0863id.star1;
                int i8 = C0861R.C0862drawable.pt_star_filled;
                remoteViews3.setImageViewResource(i7, i8);
                pushTemplateReceiver.f2181e.setImageViewResource(C0861R.C0863id.star2, i8);
                pushTemplateReceiver.f2181e.setImageViewResource(C0861R.C0863id.star3, i8);
                pushTemplateReceiver.f2181e.setImageViewResource(C0861R.C0863id.star4, i8);
            } else {
                pushTemplateReceiver.f2181e.setImageViewResource(C0861R.C0863id.star4, C0861R.C0862drawable.pt_star_outline);
            }
            if (5 == bundle.getInt("clickedStar", 0)) {
                RemoteViews remoteViews4 = pushTemplateReceiver.f2181e;
                int i9 = C0861R.C0863id.star1;
                int i10 = C0861R.C0862drawable.pt_star_filled;
                remoteViews4.setImageViewResource(i9, i10);
                pushTemplateReceiver.f2181e.setImageViewResource(C0861R.C0863id.star2, i10);
                pushTemplateReceiver.f2181e.setImageViewResource(C0861R.C0863id.star3, i10);
                pushTemplateReceiver.f2181e.setImageViewResource(C0861R.C0863id.star4, i10);
                pushTemplateReceiver.f2181e.setImageViewResource(C0861R.C0863id.star5, i10);
            } else {
                pushTemplateReceiver.f2181e.setImageViewResource(C0861R.C0863id.star5, C0861R.C0862drawable.pt_star_outline);
            }
            bundle.putString("wzrk_dl", str2);
            pushTemplateReceiver.f2181e.setOnClickPendingIntent(C0861R.C0863id.tVRatingConfirmation, C26232y.m2404V(bundle, context));
            pushTemplateReceiver.m42083j(context);
            C26450q c26450q = m7965o != null ? new C26450q(context, m7965o) : pushTemplateReceiver.m42086g(pushTemplateReceiver.f2196t, "pt_silent_sound_channel", context);
            PendingIntent m7944c = C22688g.m7944c(context, bundle, new Intent(context, PushTemplateReceiver.class));
            if (pushTemplateReceiver.f2197u != null) {
                c26450q.f74137R.icon = pushTemplateReceiver.f2195s;
                c26450q.f74126G = pushTemplateReceiver.f2180d;
                c26450q.f74127H = pushTemplateReceiver.f2181e;
                c26450q.m1855n(pushTemplateReceiver.f2185i);
                c26450q.f74137R.deleteIntent = m7944c;
                c26450q.m1853p(16, true);
                pushTemplateReceiver.f2197u.notify(i, c26450q.m1865d());
            }
            if (i2 >= 31) {
                return;
            }
            C22681g.m7961s(context, pushTemplateReceiver.f2176D, "Rating Submitted", C22681g.m7979a(bundle));
            pushTemplateReceiver.m42087f(context, bundle, i, str2, pushTemplateReceiver.f2176D);
        } catch (Throwable th) {
        }
    }

    /* renamed from: b */
    public static void m42091b(PushTemplateReceiver pushTemplateReceiver, Context context, Bundle bundle) {
        Objects.requireNonNull(pushTemplateReceiver);
        int i = bundle.getInt("notificationId");
        bundle.putString("wzrk_dl", null);
        if (pushTemplateReceiver.f2177a == bundle.getBoolean(MraidCloseCommand.NAME)) {
            bundle.putString("wzrk_c2a", "5cta_close");
            pushTemplateReceiver.f2197u.cancel(i);
        }
        C22681g.m7960t(context, bundle, pushTemplateReceiver.f2176D);
    }

    /* renamed from: c */
    public static void m42090c(PushTemplateReceiver pushTemplateReceiver, Context context, Bundle bundle) {
        Objects.requireNonNull(pushTemplateReceiver);
        try {
            int i = bundle.getInt("notificationId");
            Notification m7965o = C22681g.m7965o(context, i);
            if (m7965o != null) {
                pushTemplateReceiver.f2179c = m7965o.bigContentView;
                pushTemplateReceiver.f2180d = m7965o.contentView;
            }
            String str = pushTemplateReceiver.f2198v;
            boolean z = false;
            if (str != null) {
                z = !str.isEmpty();
            }
            pushTemplateReceiver.m42085h(pushTemplateReceiver.f2179c, context);
            if (!z) {
                pushTemplateReceiver.m42085h(pushTemplateReceiver.f2180d, context);
            }
            int i2 = bundle.getInt("pt_current_position");
            pushTemplateReceiver.f2179c.setDisplayedChild(C0861R.C0863id.carousel_image, i2);
            pushTemplateReceiver.f2189m = bundle.getStringArrayList("pt_image_list");
            pushTemplateReceiver.f2190n = bundle.getStringArrayList("pt_deeplink_list");
            pushTemplateReceiver.f2191o = bundle.getStringArrayList("pt_big_text_list");
            pushTemplateReceiver.f2192p = bundle.getStringArrayList("pt_small_text_list");
            pushTemplateReceiver.f2193q = bundle.getStringArrayList("pt_price_list");
            String str2 = pushTemplateReceiver.f2190n.get(i2);
            if (!z) {
                pushTemplateReceiver.f2179c.setTextViewText(C0861R.C0863id.title, pushTemplateReceiver.f2191o.get(i2));
            } else {
                pushTemplateReceiver.f2179c.setTextViewText(C0861R.C0863id.product_name, pushTemplateReceiver.f2191o.get(i2));
            }
            pushTemplateReceiver.f2179c.setTextViewText(C0861R.C0863id.msg, pushTemplateReceiver.f2192p.get(i2));
            pushTemplateReceiver.f2179c.setTextViewText(C0861R.C0863id.product_price, pushTemplateReceiver.f2193q.get(i2));
            bundle.remove("pt_current_position");
            Bundle bundle2 = (Bundle) bundle.clone();
            bundle2.putBoolean("img1", true);
            bundle2.putInt("notificationId", i);
            bundle2.putString("pt_buy_now_dl", str2);
            bundle2.putBoolean("buynow", true);
            pushTemplateReceiver.f2179c.setOnClickPendingIntent(C0861R.C0863id.product_action, C22688g.m7946a(context, bundle2, str2, i));
            C26450q c26450q = m7965o != null ? new C26450q(context, m7965o) : pushTemplateReceiver.m42086g(pushTemplateReceiver.f2196t, "pt_silent_sound_channel", context);
            Bundle bundle3 = (Bundle) bundle.clone();
            bundle3.putString("wzrk_dl", str2);
            PendingIntent m7945b = C22688g.m7945b(context, i, bundle3, true, 20, null);
            if (pushTemplateReceiver.f2197u == null) {
                return;
            }
            PendingIntent m7944c = C22688g.m7944c(context, bundle, new Intent(context, PushTemplateReceiver.class));
            pushTemplateReceiver.m42083j(context);
            pushTemplateReceiver.m42084i(c26450q, pushTemplateReceiver.f2180d, pushTemplateReceiver.f2179c, pushTemplateReceiver.f2185i, m7945b, m7944c);
            pushTemplateReceiver.f2197u.notify(i, c26450q.m1865d());
        } catch (Throwable th) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: d */
    public static void m42089d(PushTemplateReceiver pushTemplateReceiver, Context context, Bundle bundle, Intent intent) {
        C26447o c26447o;
        Intent intent2;
        Objects.requireNonNull(pushTemplateReceiver);
        Bundle resultsFromIntent = RemoteInput.getResultsFromIntent(intent);
        PendingIntent m7944c = C22688g.m7944c(context, bundle, new Intent(context, PushTemplateReceiver.class));
        pushTemplateReceiver.f2176D = (CleverTapInstanceConfig) bundle.getParcelable(DTBMetricsConfiguration.CONFIG_DIR);
        if (resultsFromIntent != null) {
            CharSequence charSequence = resultsFromIntent.getCharSequence("pt_input_reply");
            int i = bundle.getInt("notificationId");
            if (charSequence == null) {
                return;
            }
            bundle.putString("pt_input_reply", charSequence.toString());
            CleverTapInstanceConfig cleverTapInstanceConfig = pushTemplateReceiver.f2176D;
            C22773p m7790k = cleverTapInstanceConfig != null ? C22773p.m7790k(context, cleverTapInstanceConfig) : C22773p.m7793h(context);
            String string = bundle.getString("pt_input_reply");
            HashMap hashMap = new HashMap();
            for (String str : bundle.keySet()) {
                if (str.contains("pt_event_property") && bundle.getString(str) != null && !bundle.getString(str).isEmpty() && str.contains("pt_event_property_")) {
                    String[] split = str.split("pt_event_property_");
                    if (bundle.getString(str).equalsIgnoreCase("pt_input_reply")) {
                        hashMap.put(split[1], string);
                    } else {
                        hashMap.put(split[1], bundle.getString(str));
                    }
                }
            }
            String m7968l = C22681g.m7968l(bundle);
            if (m7968l != null && !m7968l.isEmpty() && m7790k != null) {
                m7790k.m7785p(m7968l, hashMap);
            }
            C26450q c26450q = pushTemplateReceiver.f2196t ? new C26450q(context, "pt_silent_sound_channel") : new C26450q(context, (String) null);
            pushTemplateReceiver.m42083j(context);
            c26450q.f74137R.icon = pushTemplateReceiver.f2195s;
            c26450q.m1855n(pushTemplateReceiver.f2185i);
            c26450q.m1856m(bundle.getString("pt_input_feedback"));
            c26450q.f74133N = 1300L;
            c26450q.f74137R.deleteIntent = m7944c;
            c26450q.f74137R.when = System.currentTimeMillis();
            c26450q.m1853p(16, true);
            String str2 = pushTemplateReceiver.f2199w;
            if (str2 == null || !str2.startsWith(Protocols.HTTP)) {
                C26447o c26447o2 = new C26447o();
                c26447o2.m1873k(bundle.getString("pt_input_feedback"));
                c26447o = c26447o2;
            } else {
                try {
                    Bitmap m7966n = C22681g.m7966n(str2, false, context);
                    if (m7966n == null) {
                        throw new Exception("Failed to fetch big picture!");
                    }
                    C26446n c26446n = new C26446n();
                    c26446n.m1874k(bundle.getString("pt_input_feedback"));
                    c26446n.f74102e = m7966n;
                    c26447o = c26446n;
                } catch (Throwable th) {
                    C26447o c26447o3 = new C26447o();
                    c26447o3.m1873k(bundle.getString("pt_input_feedback"));
                    c26447o = c26447o3;
                }
            }
            c26450q.m1845x(c26447o);
            pushTemplateReceiver.f2197u.notify(i, c26450q.m1865d());
            if (Build.VERSION.SDK_INT >= 31) {
                return;
            }
            if (bundle.getString("pt_input_auto_open") == null && !bundle.getBoolean("pt_input_auto_open")) {
                return;
            }
            try {
                Thread.sleep(1300L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            if (bundle.containsKey("wzrk_dl") && bundle.getString("wzrk_dl") != null) {
                Intent intent3 = new Intent("android.intent.action.VIEW", Uri.parse(intent.getStringExtra("wzrk_dl")));
                List<ResolveInfo> queryIntentActivities = context.getPackageManager().queryIntentActivities(intent3, 0);
                String packageName = context.getPackageName();
                Iterator<ResolveInfo> it = queryIntentActivities.iterator();
                while (true) {
                    intent2 = intent3;
                    if (!it.hasNext()) {
                        break;
                    } else if (packageName.equals(it.next().activityInfo.packageName)) {
                        intent3.setPackage(packageName);
                        intent2 = intent3;
                        break;
                    }
                }
            } else {
                Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(context.getPackageName());
                intent2 = launchIntentForPackage;
                if (launchIntentForPackage == null) {
                    return;
                }
            }
            intent2.putExtras(bundle);
            intent2.putExtra("pt_reply", charSequence);
            intent2.removeExtra("wzrk_acts");
            intent2.setFlags(872415232);
            context.startActivity(intent2);
        }
    }

    /* renamed from: e */
    public static void m42088e(PushTemplateReceiver pushTemplateReceiver, Context context, Bundle bundle) {
        int i;
        String str;
        Objects.requireNonNull(pushTemplateReceiver);
        try {
            int i2 = bundle.getInt("notificationId");
            Notification m7965o = C22681g.m7965o(context, i2);
            if (m7965o != null) {
                pushTemplateReceiver.f2182f = m7965o.bigContentView;
                pushTemplateReceiver.f2180d = m7965o.contentView;
            }
            pushTemplateReceiver.m42085h(pushTemplateReceiver.f2182f, context);
            boolean z = bundle.getBoolean("right_swipe");
            pushTemplateReceiver.f2189m = bundle.getStringArrayList("pt_image_list");
            pushTemplateReceiver.f2190n = bundle.getStringArrayList("pt_deeplink_list");
            int i3 = bundle.getInt("pt_manual_carousel_current");
            if (z) {
                pushTemplateReceiver.f2182f.showNext(C0861R.C0863id.carousel_image);
                pushTemplateReceiver.f2182f.showNext(C0861R.C0863id.carousel_image_right);
                pushTemplateReceiver.f2182f.showNext(C0861R.C0863id.carousel_image_left);
                i = i3 == pushTemplateReceiver.f2189m.size() - 1 ? 0 : i3 + 1;
            } else {
                pushTemplateReceiver.f2182f.showPrevious(C0861R.C0863id.carousel_image);
                pushTemplateReceiver.f2182f.showPrevious(C0861R.C0863id.carousel_image_right);
                pushTemplateReceiver.f2182f.showPrevious(C0861R.C0863id.carousel_image_left);
                i = i3 == 0 ? pushTemplateReceiver.f2189m.size() - 1 : i3 - 1;
            }
            ArrayList<String> arrayList = pushTemplateReceiver.f2190n;
            if (arrayList == null || arrayList.size() != pushTemplateReceiver.f2189m.size()) {
                ArrayList<String> arrayList2 = pushTemplateReceiver.f2190n;
                if (arrayList2 == null || arrayList2.size() != 1) {
                    ArrayList<String> arrayList3 = pushTemplateReceiver.f2190n;
                    if (arrayList3 == null || arrayList3.size() <= i) {
                        ArrayList<String> arrayList4 = pushTemplateReceiver.f2190n;
                        str = "";
                        if (arrayList4 != null) {
                            str = "";
                            if (arrayList4.size() < i) {
                                str = pushTemplateReceiver.f2190n.get(0);
                            }
                        }
                    } else {
                        str = pushTemplateReceiver.f2190n.get(i);
                    }
                } else {
                    str = pushTemplateReceiver.f2190n.get(0);
                }
            } else {
                str = pushTemplateReceiver.f2190n.get(i);
            }
            bundle.putInt("pt_manual_carousel_current", i);
            bundle.remove("right_swipe");
            bundle.putString("wzrk_dl", str);
            bundle.putInt("manual_carousel_from", i3);
            pushTemplateReceiver.f2182f.setOnClickPendingIntent(C0861R.C0863id.rightArrowPos0, C22688g.m7945b(context, i2, bundle, false, 4, null));
            pushTemplateReceiver.f2182f.setOnClickPendingIntent(C0861R.C0863id.leftArrowPos0, C22688g.m7945b(context, i2, bundle, false, 5, null));
            PendingIntent m7945b = C22688g.m7945b(context, i2, bundle, true, 3, null);
            C26450q c26450q = m7965o != null ? new C26450q(context, m7965o) : pushTemplateReceiver.m42086g(pushTemplateReceiver.f2196t, "pt_silent_sound_channel", context);
            PendingIntent m7945b2 = C22688g.m7945b(context, i2, bundle, false, 6, null);
            pushTemplateReceiver.m42083j(context);
            pushTemplateReceiver.m42084i(c26450q, pushTemplateReceiver.f2180d, pushTemplateReceiver.f2182f, pushTemplateReceiver.f2185i, m7945b, m7945b2);
            pushTemplateReceiver.f2197u.notify(i2, c26450q.m1865d());
        } catch (Throwable th) {
        }
    }

    /* renamed from: f */
    public final void m42087f(Context context, Bundle bundle, int i, String str, CleverTapInstanceConfig cleverTapInstanceConfig) throws InterruptedException {
        Intent intent;
        Thread.sleep(1000L);
        this.f2197u.cancel(i);
        String str2 = this.f2174B;
        if (str2 != null && !str2.isEmpty() && cleverTapInstanceConfig != null) {
            C22895k m7642b = C22882a.m7644a(cleverTapInstanceConfig).m7642b();
            m7642b.f63554c.execute(new RunnableC22894j(m7642b, "PushTemplatesUtils#showToast", new CallableC22680f(str2, context)));
        }
        context.sendBroadcast(new Intent("android.intent.action.CLOSE_SYSTEM_DIALOGS"));
        if (bundle.containsKey("wzrk_dl")) {
            intent = new Intent("android.intent.action.VIEW", Uri.parse(bundle.getString("wzrk_dl")));
            C22741j0.m7837m(context, intent);
        } else {
            Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(context.getPackageName());
            intent = launchIntentForPackage;
            if (launchIntentForPackage == null) {
                return;
            }
        }
        intent.putExtras(bundle);
        intent.putExtra("wzrk_dl", str);
        intent.removeExtra("wzrk_acts");
        intent.putExtra("wzrk_from", "CTPushNotificationReceiver");
        intent.setFlags(872415232);
        context.startActivity(intent);
    }

    /* renamed from: g */
    public final C26450q m42086g(boolean z, String str, Context context) {
        return z ? new C26450q(context, str) : new C26450q(context, (String) null);
    }

    /* renamed from: h */
    public final void m42085h(RemoteViews remoteViews, Context context) {
        int i = C0861R.C0863id.app_name;
        remoteViews.setTextViewText(i, C22681g.m7973g(context));
        int i2 = C0861R.C0863id.timestamp;
        remoteViews.setTextViewText(i2, DateUtils.formatDateTime(context, System.currentTimeMillis(), 1));
        String str = this.f2175C;
        if (str == null || str.isEmpty()) {
            remoteViews.setViewVisibility(C0861R.C0863id.subtitle, 8);
            remoteViews.setViewVisibility(C0861R.C0863id.sep_subtitle, 8);
        } else if (Build.VERSION.SDK_INT >= 24) {
            remoteViews.setTextViewText(C0861R.C0863id.subtitle, Html.fromHtml(this.f2175C, 0));
        } else {
            remoteViews.setTextViewText(C0861R.C0863id.subtitle, Html.fromHtml(this.f2175C));
        }
        String str2 = this.f2202z;
        if (str2 == null || str2.isEmpty()) {
            return;
        }
        remoteViews.setTextColor(i, C22681g.m7970j(this.f2202z, "#A6A6A6"));
        remoteViews.setTextColor(i2, C22681g.m7970j(this.f2202z, "#A6A6A6"));
        remoteViews.setTextColor(C0861R.C0863id.subtitle, C22681g.m7970j(this.f2202z, "#A6A6A6"));
    }

    /* renamed from: i */
    public final void m42084i(C26450q c26450q, RemoteViews remoteViews, RemoteViews remoteViews2, String str, PendingIntent pendingIntent, PendingIntent pendingIntent2) {
        c26450q.f74137R.icon = this.f2195s;
        c26450q.f74126G = remoteViews;
        c26450q.f74127H = remoteViews2;
        c26450q.m1855n(Html.fromHtml(str));
        c26450q.f74137R.deleteIntent = pendingIntent2;
        c26450q.f74147g = pendingIntent;
        c26450q.m1854o(5);
        c26450q.f74137R.when = System.currentTimeMillis();
        c26450q.m1853p(16, true);
    }

    /* renamed from: j */
    public final void m42083j(Context context) {
        String str;
        try {
            try {
                Object obj = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.get("CLEVERTAP_NOTIFICATION_ICON");
                str = null;
                if (obj != null) {
                    str = obj.toString();
                }
            } catch (Throwable th) {
                str = null;
            }
            if (str == null) {
                throw new IllegalArgumentException();
            }
            int identifier = context.getResources().getIdentifier(str, "drawable", context.getPackageName());
            this.f2195s = identifier;
            if (identifier == 0) {
                throw new IllegalArgumentException();
            }
        } catch (Throwable th2) {
            this.f2195s = context.getApplicationInfo().icon;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x005f, code lost:
        if (((r0 < 26 || r0 == null || r0.getImportance() == 0) ? false : true) == false) goto L20;
     */
    @Override // android.content.BroadcastReceiver
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onReceive(android.content.Context r7, android.content.Intent r8) {
        /*
            Method dump skipped, instructions count: 954
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.clevertap.android.pushtemplates.PushTemplateReceiver.onReceive(android.content.Context, android.content.Intent):void");
    }
}
