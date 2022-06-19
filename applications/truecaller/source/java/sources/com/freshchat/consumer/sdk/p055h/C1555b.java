package com.freshchat.consumer.sdk.p055h;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.media.AudioAttributes;
import android.os.Bundle;
import android.webkit.URLUtil;
import com.freshchat.consumer.sdk.C1298R;
import com.freshchat.consumer.sdk.FreshchatImageLoader;
import com.freshchat.consumer.sdk.FreshchatImageLoaderRequest;
import com.freshchat.consumer.sdk.FreshchatNotificationConfig;
import com.freshchat.consumer.sdk.activity.ConversationDetailActivity;
import com.freshchat.consumer.sdk.beans.Channel;
import com.freshchat.consumer.sdk.beans.Message;
import com.freshchat.consumer.sdk.p047b.C1460a;
import com.freshchat.consumer.sdk.p047b.C1466e;
import com.freshchat.consumer.sdk.p049c.C1506c;
import com.freshchat.consumer.sdk.p049c.C1511g;
import com.freshchat.consumer.sdk.p057j.C1594aa;
import com.freshchat.consumer.sdk.p057j.C1610af;
import com.freshchat.consumer.sdk.p057j.C1611ag;
import com.freshchat.consumer.sdk.p057j.C1613ai;
import com.freshchat.consumer.sdk.p057j.C1623aq;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p057j.C1630aw;
import com.freshchat.consumer.sdk.p057j.C1638b;
import com.freshchat.consumer.sdk.p057j.C1649bg;
import com.freshchat.consumer.sdk.p057j.C1710g;
import com.freshchat.consumer.sdk.p057j.C1723q;
import com.freshchat.consumer.sdk.receiver.FreshchatReceiver;
import com.freshchat.consumer.sdk.service.AbstractC1804a;
import com.freshchat.consumer.sdk.service.p068e.AbstractC1907k;
import com.freshchat.consumer.sdk.service.p068e.C1895b;
import com.freshchat.consumer.sdk.service.p068e.C1898d;
import com.freshchat.consumer.sdk.util.DeepLinkUtils;
import com.google.firebase.messaging.RemoteMessage;
import com.huawei.hms.push.constant.RemoteMessageConst;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p1727n3.p1807k.p1808a.C26446n;
import p1727n3.p1807k.p1808a.C26447o;
import p1727n3.p1807k.p1808a.C26450q;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.freshchat.consumer.sdk.h.b */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/h/b.class */
public class C1555b {
    private static final String TAG = "com.freshchat.consumer.sdk.h.b";

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0026, code lost:
        if (com.freshchat.consumer.sdk.p057j.C1626as.isEmpty(r2.toString()) != false) goto L10;
     */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001d  */
    /* renamed from: N */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.net.Uri m40544N(android.content.Context r2) {
        /*
            r0 = r2
            com.freshchat.consumer.sdk.b.e r0 = com.freshchat.consumer.sdk.p047b.C1466e.m40905i(r0)
            java.lang.String r0 = r0.m40934ee()
            r2 = r0
            r0 = r2
            boolean r0 = com.freshchat.consumer.sdk.p057j.C1626as.m40233a(r0)
            if (r0 == 0) goto L17
            r0 = r2
            android.net.Uri r0 = android.net.Uri.parse(r0)     // Catch: java.lang.Exception -> L30
            r2 = r0
            goto L19
        L17:
            r0 = 0
            r2 = r0
        L19:
            r0 = r2
            if (r0 == 0) goto L29
            r0 = r2
            r3 = r0
            r0 = r2
            java.lang.String r0 = r0.toString()
            boolean r0 = com.freshchat.consumer.sdk.p057j.C1626as.isEmpty(r0)
            if (r0 == 0) goto L2e
        L29:
            r0 = 2
            android.net.Uri r0 = android.media.RingtoneManager.getDefaultUri(r0)
            r3 = r0
        L2e:
            r0 = r3
            return r0
        L30:
            r2 = move-exception
            goto L17
        */
        throw new UnsupportedOperationException("Method not decompiled: com.freshchat.consumer.sdk.p055h.C1555b.m40544N(android.content.Context):android.net.Uri");
    }

    /* renamed from: O */
    public static void m40543O(Context context) {
        m40527b(context, true);
        m40527b(context, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private static Notification m40536a(Context context, C1554a c1554a, int i) {
        C26447o c26447o;
        PendingIntent pendingIntent;
        C1466e m40905i = C1466e.m40905i(context);
        C26450q m40538a = m40538a(context, m40905i, c1554a);
        if (c1554a.getMarketingId() > 0) {
            m40538a.f74137R.when = c1554a.getTimestamp();
        }
        CharSequence m40521f = m40521f(context, c1554a);
        if (URLUtil.isNetworkUrl(c1554a.m40551dl())) {
            Bitmap bitmap = null;
            FreshchatImageLoaderRequest m41530dM = new FreshchatImageLoaderRequest.C1297a(c1554a.m40551dl()).m41530dM();
            FreshchatImageLoader m40305eK = C1610af.m40305eK();
            if (m40305eK != null) {
                bitmap = m40305eK.get(m41530dM);
            }
            C26446n c26446n = new C26446n();
            c26446n.f74102e = bitmap;
            c26446n.m1874k(m40521f);
            c26447o = c26446n;
        } else {
            c26447o = new C26447o();
            c26447o.m1873k(m40521f);
        }
        m40538a.m1845x(c26447o);
        if (m40905i.isNotificationInterceptionEnabled()) {
            Intent intent = new Intent(context, FreshchatReceiver.class);
            intent.setAction("com.freshchat.consumer.sdk.actions.NotificationClicked");
            intent.putExtra("FRESHCHAT_DEEPLINK", DeepLinkUtils.m39260v(c1554a.getChannelId()));
            pendingIntent = PendingIntent.getBroadcast(context, i, intent, 268435456);
        } else {
            pendingIntent = PendingIntent.getActivity(context, i, m40535a(context, c1554a, m40905i), 268435456);
        }
        m40538a.f74147g = pendingIntent;
        return m40538a.m1865d();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0062  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.content.Intent m40535a(android.content.Context r5, com.freshchat.consumer.sdk.p055h.C1554a r6, com.freshchat.consumer.sdk.p047b.C1466e r7) {
        /*
            android.content.Intent r0 = new android.content.Intent
            r1 = r0
            r2 = r5
            java.lang.Class<com.freshchat.consumer.sdk.activity.DeeplinkInterstitialActivity> r3 = com.freshchat.consumer.sdk.activity.DeeplinkInterstitialActivity.class
            r1.<init>(r2, r3)
            r7 = r0
            r0 = r6
            boolean r0 = r0.m40550dm()
            if (r0 == 0) goto L23
            java.lang.String r0 = "LAUNCH_APP_ON_CLICK"
            r8 = r0
            r0 = r7
            r5 = r0
        L17:
            r0 = r5
            r1 = r8
            r2 = 1
            android.content.Intent r0 = r0.putExtra(r1, r2)
            r0 = r5
            r8 = r0
            goto L55
        L23:
            android.content.Intent r0 = new android.content.Intent
            r1 = r0
            r2 = r5
            java.lang.Class<com.freshchat.consumer.sdk.activity.ConversationDetailActivity> r3 = com.freshchat.consumer.sdk.activity.ConversationDetailActivity.class
            r1.<init>(r2, r3)
            r7 = r0
            r0 = r7
            r1 = 67108864(0x4000000, float:1.5046328E-36)
            android.content.Intent r0 = r0.setFlags(r1)
            r0 = r7
            java.lang.String r1 = "CHANNEL_ID"
            r2 = r6
            long r2 = r2.getChannelId()
            android.content.Intent r0 = r0.putExtra(r1, r2)
            r0 = r7
            r8 = r0
            r0 = r5
            r1 = r6
            long r1 = r1.getChannelId()
            boolean r0 = m40541a(r0, r1)
            if (r0 != 0) goto L55
            java.lang.String r0 = "UNFETCHED_CHANNEL"
            r8 = r0
            r0 = r7
            r5 = r0
            goto L17
        L55:
            r0 = r6
            long r0 = r0.getMarketingId()
            r9 = r0
            r0 = r9
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L73
            r0 = r8
            java.lang.String r1 = "NOTIFICATION_CLICKED"
            r2 = 1
            android.content.Intent r0 = r0.putExtra(r1, r2)
            r0 = r8
            java.lang.String r1 = "MARKETING_ID"
            r2 = r9
            android.content.Intent r0 = r0.putExtra(r1, r2)
        L73:
            r0 = r8
            java.lang.String r1 = "LAUNCHED_FROM_NOTIFICATION"
            r2 = 1
            android.content.Intent r0 = r0.putExtra(r1, r2)
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.freshchat.consumer.sdk.p055h.C1555b.m40535a(android.content.Context, com.freshchat.consumer.sdk.h.a, com.freshchat.consumer.sdk.b.e):android.content.Intent");
    }

    /* renamed from: a */
    public static Bundle m40532a(Object obj) {
        if (obj instanceof Bundle) {
            return (Bundle) obj;
        }
        if (obj instanceof Intent) {
            return ((Intent) obj).getExtras();
        }
        if (!m40523dq() || !(obj instanceof RemoteMessage)) {
            return null;
        }
        RemoteMessage remoteMessage = (RemoteMessage) obj;
        if (remoteMessage.o2() == null || remoteMessage.o2().size() == 0) {
            return null;
        }
        Bundle bundle = new Bundle();
        Map o2 = remoteMessage.o2();
        for (String str : o2.keySet()) {
            bundle.putString(str, (String) o2.get(str));
        }
        return bundle;
    }

    /* renamed from: a */
    private static C26450q m40538a(Context context, C1466e c1466e, C1554a c1554a) {
        int m40979bQ = c1466e.m40979bQ();
        int m40520n = m40520n(context);
        Bitmap m40519o = m40519o(context);
        String m40524d = m40524d(context, c1554a);
        CharSequence m40521f = m40521f(context, c1554a);
        C26450q c26450q = new C26450q(context, (String) null);
        c26450q.f74137R.icon = m40520n;
        c26450q.m1852q(m40519o);
        c26450q.m1855n(m40524d);
        c26450q.m1856m(m40521f);
        c26450q.m1843z(m40521f);
        boolean z = true;
        c26450q.m1853p(16, true);
        c26450q.f74152l = m40979bQ;
        C26447o c26447o = new C26447o();
        c26447o.m1873k(m40521f);
        c26450q.m1845x(c26447o);
        int m40242a = C1623aq.m40242a(context, C1298R.color.freshchat_notification_accent_color, 0);
        if (m40242a != 0) {
            c26450q.f74123D = m40242a;
        }
        if (c1466e.isNotificationSoundEnabled()) {
            c26450q.m1846w(m40544N(context));
        }
        if (C1630aw.m40207eN() && C1710g.m39949an(context)) {
            if (c1554a.getMarketingId() <= 0) {
                z = false;
            }
            String str = z ? "fc_campaign_notif_ch" : "fc_conv_notif_ch";
            if (!m40518s(context, str)) {
                m40527b(context, z);
            }
            m40533a(context, str, c26450q);
        }
        return c26450q;
    }

    /* renamed from: a */
    public static void m40540a(Context context, long j, long j2) {
        int m40531b = m40531b(j, j2);
        if (m40531b > 0) {
            ((NotificationManager) context.getSystemService(RemoteMessageConst.NOTIFICATION)).cancel(m40531b);
        }
    }

    /* renamed from: a */
    public static void m40539a(Context context, FreshchatNotificationConfig freshchatNotificationConfig) {
        C1466e m40905i = C1466e.m40905i(context);
        m40905i.m40909h(freshchatNotificationConfig.getPriority());
        m40905i.m41013D(freshchatNotificationConfig.getImportance());
        m40905i.m40904i(freshchatNotificationConfig.isNotificationSoundEnabled());
        if (freshchatNotificationConfig.getNotificationSound() != null) {
            m40905i.m41003L(freshchatNotificationConfig.getNotificationSound().toString());
        }
        if (C1626as.m40233a(freshchatNotificationConfig.getActivityToLaunchOnFinish())) {
            m40905i.m41008F(freshchatNotificationConfig.getActivityToLaunchOnFinish());
        }
        m40905i.m40895j(freshchatNotificationConfig.getLargeIcon());
        m40905i.m40906i(freshchatNotificationConfig.getSmallIcon());
        m40905i.m40882u(freshchatNotificationConfig.isNotificationInterceptionEnabled());
    }

    /* renamed from: a */
    private static void m40537a(final Context context, final C1554a c1554a) {
        if (m40534a(context, c1554a.m40549dn(), c1554a.getMarketingId())) {
            return;
        }
        C1594aa.m40366a(context, c1554a.getChannelId(), c1554a.getConversationId(), 6, C1898d.EnumC1899a.IMMEDIATE, c1554a.getMarketingId() != 0);
        if (m40541a(context, c1554a.getChannelId())) {
            m40528b(context, c1554a);
            return;
        }
        C1613ai.m40281i(TAG, "Received message from a new unfetched channel");
        C1638b.m40152a(context, C1895b.EnumC1896a.IMMEDIATE, new AbstractC1804a() { // from class: com.freshchat.consumer.sdk.h.b.1
            @Override // com.freshchat.consumer.sdk.service.AbstractC1804a
            /* renamed from: a */
            public void mo39382a(AbstractC1907k abstractC1907k) {
                C1555b.m40528b(context, c1554a);
            }
        });
    }

    /* renamed from: a */
    private static void m40533a(Context context, String str, C26450q c26450q) {
        Method method;
        try {
            if (!C1630aw.m40207eN() || !C1710g.m39949an(context) || (method = C26450q.class.getMethod("i", String.class)) == null) {
                return;
            }
            method.invoke(c26450q, str);
        } catch (Exception e) {
        }
    }

    /* renamed from: a */
    public static boolean m40542a(long j, boolean z) {
        return z || j != ConversationDetailActivity.m41304H();
    }

    /* renamed from: a */
    private static boolean m40541a(Context context, long j) {
        return (context == null || j <= 0 || new C1506c(context).m40771e(j) == null) ? false : true;
    }

    /* renamed from: a */
    private static boolean m40534a(Context context, String str, long j) {
        Message m40737X;
        C1511g c1511g = new C1511g(context);
        if (j > 0) {
            return c1511g.m40716j(j);
        }
        if (!C1626as.m40233a(str) || (m40737X = c1511g.m40737X(str)) == null) {
            return false;
        }
        String str2 = TAG;
        C1613ai.m40284d(str2, "Ignoring duplicate message " + m40737X);
        return true;
    }

    /* renamed from: b */
    private static int m40531b(long j, long j2) {
        int i;
        String l;
        if (j2 > 0) {
            l = Long.toString(j2);
        } else if (j <= 0) {
            i = -1;
            return i;
        } else {
            l = Long.toString(j);
        }
        i = C1594aa.m40356aB(l);
        return i;
    }

    /* renamed from: b */
    public static void m40529b(Context context, Intent intent) {
        if (intent != null) {
            int m40297e = C1611ag.m40297e(intent, "notif_type");
            C1554a c1554a = new C1554a(intent);
            C1649bg.m40078d(context, c1554a.getChannelId(), c1554a.getConversationId());
            if (c1554a.getMarketingId() == 0 && !C1626as.m40224m(C1466e.m40905i(context).m40966bj(), c1554a.m40548do())) {
                return;
            }
            if (m40297e == 1 || m40297e == 2) {
                m40537a(context, c1554a);
            } else if (m40297e == 3) {
                m40525c(context, c1554a);
            } else {
                C1613ai.m40284d("FRESHCHAT", "Unknown notification category " + m40297e);
            }
        }
    }

    /* renamed from: b */
    public static void m40528b(Context context, C1554a c1554a) {
        int m40531b = m40531b(c1554a.getChannelId(), c1554a.getMarketingId());
        Notification m40536a = m40536a(context, c1554a, m40531b);
        NotificationManager notificationManager = (NotificationManager) context.getSystemService(RemoteMessageConst.NOTIFICATION);
        if (m40542a(c1554a.getChannelId(), c1554a.m40550dm())) {
            notificationManager.notify(m40531b, m40536a);
        }
        C1460a.m41033g(context);
        C1460a.m41035f(context);
        C1460a.m41052aJ(context);
        String str = TAG;
        StringBuilder m8720E = C22128a.m8720E("Notified with Id ", m40531b, " for channel id: ");
        m8720E.append(c1554a.getChannelId());
        m8720E.append(", marketing id: ");
        m8720E.append(c1554a.getMarketingId());
        C1613ai.m40284d(str, m8720E.toString());
        C1594aa.m40344e(context, c1554a.getMarketingId());
    }

    /* renamed from: b */
    public static void m40527b(Context context, boolean z) {
        if (C1630aw.m40194fI() || C1710g.m39948ao(context)) {
            return;
        }
        String str = z ? "fc_campaign_notif_ch" : "fc_conv_notif_ch";
        try {
            String string = context.getString(z ? C1298R.string.freshchat_campaign_notification_channel_name : C1298R.string.freshchat_conversation_notification_channel_name);
            NotificationManager notificationManager = (NotificationManager) context.getSystemService(RemoteMessageConst.NOTIFICATION);
            NotificationChannel notificationChannel = notificationManager.getNotificationChannel(str);
            if (notificationChannel != null) {
                if (!C1626as.m40222p(string, notificationChannel.getName().toString())) {
                    return;
                }
                notificationChannel.setName(string);
                return;
            }
            NotificationChannel notificationChannel2 = new NotificationChannel(str, string, C1466e.m40905i(context).m40910gw());
            notificationChannel2.setSound(m40544N(context), new AudioAttributes.Builder().setContentType(4).setUsage(6).build());
            notificationManager.createNotificationChannel(notificationChannel2);
        } catch (Exception e) {
        }
    }

    /* renamed from: bj */
    public static void m40526bj(Context context) {
        try {
            ArrayList arrayList = new ArrayList();
            C1506c c1506c = new C1506c(context);
            C1511g c1511g = new C1511g(context);
            for (Channel channel : c1506c.m40772d((List<String>) null)) {
                arrayList.add(Integer.valueOf(C1594aa.m40356aB(Long.toString(channel.getId()))));
                for (Long l : c1511g.m40717i(channel.getId())) {
                    arrayList.add(Integer.valueOf(C1594aa.m40356aB(Long.toString(l.longValue()))));
                }
            }
            NotificationManager notificationManager = (NotificationManager) context.getSystemService(RemoteMessageConst.NOTIFICATION);
            if (notificationManager == null) {
                return;
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                notificationManager.cancel(((Integer) it.next()).intValue());
            }
        } catch (Exception e) {
            C1723q.m39823a(e);
        }
    }

    /* renamed from: c */
    private static void m40525c(final Context context, C1554a c1554a) {
        C1466e m40905i = C1466e.m40905i(context);
        final long channelId = c1554a.getChannelId();
        final int m40531b = m40531b(channelId, 0L);
        C26450q m40538a = m40538a(context, m40905i, c1554a);
        Intent intent = new Intent(context, ConversationDetailActivity.class);
        intent.setFlags(67108864);
        intent.putExtra("CHANNEL_ID", channelId);
        m40538a.f74147g = PendingIntent.getActivity(context, m40531b, intent, 268435456);
        final Notification m1865d = m40538a.m1865d();
        C1638b.m40161a(context, 6, C1898d.EnumC1899a.IMMEDIATE, new AbstractC1804a() { // from class: com.freshchat.consumer.sdk.h.b.2
            @Override // com.freshchat.consumer.sdk.service.AbstractC1804a
            /* renamed from: a */
            public void mo39382a(AbstractC1907k abstractC1907k) {
                if (C1555b.m40542a(channelId, false)) {
                    ((NotificationManager) context.getSystemService(RemoteMessageConst.NOTIFICATION)).notify(m40531b, m1865d);
                }
                C1460a.m41035f(context);
                C1460a.m41033g(context);
            }
        });
    }

    /* renamed from: d */
    private static String m40524d(Context context, C1554a c1554a) {
        return context.getString((c1554a.getMarketingId() > 0L ? 1 : (c1554a.getMarketingId() == 0L ? 0 : -1)) > 0 ? C1298R.string.freshchat_promotional_message_notification_title : C1298R.string.freshchat_support_message_notification_title).replace(context.getString(C1298R.string.freshchat_placeholder_app_name), C1710g.getAppName(context));
    }

    /* renamed from: dq */
    private static boolean m40523dq() {
        try {
            Class.forName("com.google.firebase.messaging.RemoteMessage");
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    /* renamed from: f */
    private static CharSequence m40521f(Context context, C1554a c1554a) {
        if (c1554a.m40547fK() == 3) {
            String string = context.getString(C1298R.string.freshchat_chat_resolution_survey_question);
            if (C1626as.m40233a(string)) {
                return C1626as.fromHtml(string);
            }
        }
        return C1626as.fromHtml(c1554a.getBody());
    }

    /* renamed from: n */
    private static int m40520n(Context context) {
        int i;
        C1466e m40905i = C1466e.m40905i(context);
        if (m40905i.m40978bR() != 0) {
            i = m40905i.m40978bR();
        } else {
            i = C1623aq.m40241a(context, C1298R.style.Theme_Freshchat_SelectedTheme, C1298R.attr.freshchatContactUsIcon, false);
            if (i == 0) {
                i = C1298R.C1299drawable.freshchat_ic_action_contact_us;
            }
        }
        return i;
    }

    /* renamed from: o */
    private static Bitmap m40519o(Context context) {
        Bitmap bitmap;
        try {
            C1466e m40905i = C1466e.m40905i(context);
            int m40977bS = m40905i.m40977bS() != 0 ? m40905i.m40977bS() : C1710g.m39962P(context);
            bitmap = null;
            if (m40977bS != 0) {
                bitmap = C1610af.m40306b(context, m40977bS, C1298R.dimen.freshchat_notification_large_icon_size);
            }
        } catch (Exception e) {
            C1613ai.m40283e("FRESHCHAT_WARNING", e.toString());
            bitmap = null;
        }
        return bitmap;
    }

    /* renamed from: s */
    private static boolean m40518s(Context context, String str) {
        boolean z = false;
        try {
            if (C1626as.m40233a(str)) {
                z = false;
                if (((NotificationManager) context.getSystemService(RemoteMessageConst.NOTIFICATION)).getNotificationChannel(str) != null) {
                    z = true;
                }
            }
        } catch (Exception e) {
            z = false;
        }
        return z;
    }
}
