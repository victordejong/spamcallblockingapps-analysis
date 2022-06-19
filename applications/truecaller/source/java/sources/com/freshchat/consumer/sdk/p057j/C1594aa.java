package com.freshchat.consumer.sdk.p057j;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ComponentInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.ServiceInfo;
import android.os.Environment;
import android.util.SparseBooleanArray;
import com.freshchat.consumer.sdk.ConversationOptions;
import com.freshchat.consumer.sdk.FaqOptions;
import com.freshchat.consumer.sdk.Freshchat;
import com.freshchat.consumer.sdk.FreshchatConfig;
import com.freshchat.consumer.sdk.beans.Conversation;
import com.freshchat.consumer.sdk.beans.MarketingMessageStatus;
import com.freshchat.consumer.sdk.beans.Message;
import com.freshchat.consumer.sdk.exception.FreshchatComponentNotFoundException;
import com.freshchat.consumer.sdk.exception.InvalidDomainException;
import com.freshchat.consumer.sdk.p047b.C1466e;
import com.freshchat.consumer.sdk.p047b.C1471i;
import com.freshchat.consumer.sdk.p049c.C1488a;
import com.freshchat.consumer.sdk.p049c.C1507d;
import com.freshchat.consumer.sdk.p049c.C1508e;
import com.freshchat.consumer.sdk.p055h.C1555b;
import com.freshchat.consumer.sdk.p057j.p059b.C1641c;
import com.freshchat.consumer.sdk.receiver.FreshchatNetworkChangeReceiver;
import com.freshchat.consumer.sdk.service.p064a.C1805a;
import com.freshchat.consumer.sdk.service.p064a.C1807c;
import com.freshchat.consumer.sdk.service.p067d.C1870d;
import com.freshchat.consumer.sdk.service.p068e.C1898d;
import com.mopub.common.AdType;
import java.security.KeyManagementException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
/* renamed from: com.freshchat.consumer.sdk.j.aa */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/aa.class */
public class C1594aa {

    /* renamed from: hJ */
    private static final List<String> f4327hJ = new ArrayList<String>() { // from class: com.freshchat.consumer.sdk.j.aa.1
        {
            add("com.freshchat.consumer.sdk.activity.CategoryListActivity");
            add("com.freshchat.consumer.sdk.activity.ArticleListActivity");
            add("com.freshchat.consumer.sdk.activity.ArticleDetailActivity");
            add("com.freshchat.consumer.sdk.activity.ChannelListActivity");
            add("com.freshchat.consumer.sdk.activity.ConversationDetailActivity");
            add("com.freshchat.consumer.sdk.activity.DeeplinkInterstitialActivity");
            add("com.freshchat.consumer.sdk.activity.PictureAttachmentActivity");
            add("com.freshchat.consumer.sdk.service.FreshchatService");
            add("com.freshchat.consumer.sdk.receiver.FreshchatReceiver");
            add("com.freshchat.consumer.sdk.provider.FreshchatInitProvider");
            add("com.freshchat.consumer.sdk.activity.FAQCategoriesActivity");
            add("com.freshchat.consumer.sdk.activity.FAQListActivity");
            add("com.freshchat.consumer.sdk.activity.FAQDetailsActivity");
            add("com.freshchat.consumer.sdk.activity.FAQSearchActivity");
            add("com.freshchat.consumer.sdk.activity.InterstitialActivity");
        }
    };

    /* renamed from: com.freshchat.consumer.sdk.j.aa$a */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/aa$a.class */
    public enum EnumC1596a {
        CLEAR_USER_INFO,
        CLEAR_ALL_INFO
    }

    /* renamed from: a */
    public static C1718m m40364a(Context context, ConversationOptions conversationOptions) {
        AbstractC1673c m40034a = AbstractC1673c.m40034a(context, conversationOptions);
        if (m40034a instanceof C1718m) {
            return (C1718m) m40034a;
        }
        return null;
    }

    /* renamed from: a */
    public static C1730v m40363a(Context context, FaqOptions faqOptions) {
        AbstractC1673c m40034a = AbstractC1673c.m40034a(context, faqOptions);
        if (m40034a instanceof C1730v) {
            return (C1730v) m40034a;
        }
        return null;
    }

    /* renamed from: a */
    public static void m40366a(Context context, long j, long j2, int i, C1898d.EnumC1899a enumC1899a, boolean z) {
        if (context == null || j <= 0) {
            return;
        }
        boolean z2 = false;
        C1508e c1508e = new C1508e(context);
        Conversation conversation = null;
        int i2 = (j2 > 0L ? 1 : (j2 == 0L ? 0 : -1));
        if (i2 == 0) {
            conversation = c1508e.m40760f(j);
        }
        if (conversation == null || conversation.getConversationId() == 0) {
            if (i2 > 0) {
                Conversation conversation2 = new Conversation(j2);
                conversation2.setChannelId(j);
                c1508e.m40764a(conversation2);
            }
            z2 = true;
        }
        if (!z2 && i == 6 && !z) {
            z2 = true;
        }
        if (!z2) {
            return;
        }
        C1638b.m40162a(context, i, enumC1899a);
    }

    /* renamed from: a */
    private static void m40365a(Context context, long j, boolean z, boolean z2, boolean z3) {
        C1613ai.m40284d("FRESHCHAT", "updateMarketingMessageStatus => marketingId = [" + j + "], isDelivered = [" + z + "], isClicked = [" + z2 + "], isSeen = [" + z3 + "]");
        if (j < 1) {
            return;
        }
        try {
            C1638b.m40160a(context, new MarketingMessageStatus.Builder().clicked(z2 ? 1 : 0).delivered(z ? 1 : 0).seen(z3 ? 1 : 0).marketingId(j).build());
        } catch (Exception e) {
            C1723q.m39823a(e);
        }
    }

    /* renamed from: a */
    private static void m40362a(Context context, EnumC1596a enumC1596a) {
        C1466e m40905i = C1466e.m40905i(context);
        if (m40905i != null) {
            if (enumC1596a == EnumC1596a.CLEAR_USER_INFO) {
                m40905i.m40974bW();
            } else if (enumC1596a != EnumC1596a.CLEAR_ALL_INFO) {
            } else {
                m40905i.m39919aq(context);
            }
        }
    }

    /* renamed from: a */
    private static void m40361a(Context context, EnumC1596a enumC1596a, boolean z, boolean z2) {
        C1555b.m40526bj(context);
        C1870d.m39384bl(context);
        C1466e m40905i = C1466e.m40905i(context);
        String m40980bP = m40905i.m40980bP();
        String m40966bj = m40905i.m40966bj();
        boolean m40964bl = m40905i.m40964bl();
        FreshchatConfig m39777aG = C1733y.m39777aG(context);
        m40362a(context, enumC1596a);
        m40348b(context, enumC1596a);
        if (z2) {
            try {
                C1733y.m39778a(m39777aG);
                Freshchat.getInstance(context).init(m39777aG);
            } catch (InvalidDomainException e) {
                C1471i.m40837e(context, e.getMessage());
            } catch (IllegalArgumentException e2) {
                String str = enumC1596a == EnumC1596a.CLEAR_USER_INFO ? "resetUser" : AdType.CLEAR;
                C1613ai.m40282e("FRESHCHAT_WARNING", "Freshchat SDK has not been initialized and " + str + " has been called", e2);
            } catch (Exception e3) {
                C1613ai.m40282e("FRESHCHAT_WARNING", "Unexpected Exception while processing resetUser", e3);
            }
        }
        m40905i.m41007G(m40980bP);
        if (!z || !m40964bl || !C1626as.m40233a(m40966bj)) {
            return;
        }
        C1638b.m40138r(context, m40966bj);
    }

    /* renamed from: a */
    public static void m40360a(Context context, List<Message> list) {
        if (context == null || C1716k.isEmpty(list)) {
            return;
        }
        for (Message message : list) {
            if (!C1807c.m39521f(context, message.getAlias())) {
                C1638b.m40159a(context, message);
            }
        }
    }

    /* renamed from: a */
    public static void m40359a(Context context, boolean z, boolean z2) {
        m40361a(context, EnumC1596a.CLEAR_USER_INFO, z, z2);
    }

    /* renamed from: a */
    private static void m40358a(ComponentInfo[] componentInfoArr, SparseBooleanArray sparseBooleanArray) {
        int m40349az;
        for (ComponentInfo componentInfo : componentInfoArr) {
            String str = componentInfo.name;
            if (f4327hJ.contains(str) && (m40349az = m40349az(str)) != -1) {
                sparseBooleanArray.put(m40349az, true);
            }
        }
    }

    /* renamed from: aA */
    public static String m40357aA(String str) {
        String str2;
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes());
            str2 = m40347b(messageDigest.digest());
        } catch (NoSuchAlgorithmException e) {
            str2 = String.valueOf(str.hashCode());
        }
        return str2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [int] */
    /* renamed from: aB */
    public static int m40356aB(String str) {
        if (C1626as.isEmpty(str)) {
            return new Random().nextInt();
        }
        char c = 7;
        for (char c2 : str.toCharArray()) {
            c += c2;
        }
        return c;
    }

    /* renamed from: aH */
    public static void m40355aH(Context context) {
        PackageInfo packageInfo;
        if (C1630aw.m40191fc()) {
            return;
        }
        SparseBooleanArray sparseBooleanArray = new SparseBooleanArray();
        for (int i = 0; i < f4327hJ.size(); i++) {
            sparseBooleanArray.append(i, false);
        }
        try {
            String m39960ab = C1710g.m39960ab(context);
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null || (packageInfo = packageManager.getPackageInfo(m39960ab, 15)) == null) {
                return;
            }
            ActivityInfo[] activityInfoArr = packageInfo.activities;
            if (activityInfoArr == null) {
                throw new FreshchatComponentNotFoundException("Activities");
            }
            m40358a(activityInfoArr, sparseBooleanArray);
            ActivityInfo[] activityInfoArr2 = packageInfo.receivers;
            if (activityInfoArr2 == null) {
                throw new FreshchatComponentNotFoundException("Receivers");
            }
            m40358a(activityInfoArr2, sparseBooleanArray);
            ServiceInfo[] serviceInfoArr = packageInfo.services;
            if (serviceInfoArr == null) {
                throw new FreshchatComponentNotFoundException("Services");
            }
            m40358a(serviceInfoArr, sparseBooleanArray);
            ProviderInfo[] providerInfoArr = packageInfo.providers;
            if (providerInfoArr == null) {
                throw new FreshchatComponentNotFoundException("Providers");
            }
            m40358a(providerInfoArr, sparseBooleanArray);
            int i2 = 0;
            while (true) {
                List<String> list = f4327hJ;
                if (i2 >= list.size()) {
                    return;
                }
                if (!sparseBooleanArray.get(i2)) {
                    throw new FreshchatComponentNotFoundException(list.get(i2));
                }
                i2++;
            }
        } catch (FreshchatComponentNotFoundException e) {
            throw e;
        } catch (Exception e2) {
        }
    }

    /* renamed from: aI */
    public static Intent m40354aI(Context context) {
        if (context != null) {
            Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(context.getPackageName());
            if (launchIntentForPackage != null) {
                String className = launchIntentForPackage.getComponent().getClassName();
                C1613ai.m40284d("FRESHCHAT", "Detected launch intent " + launchIntentForPackage + " of class " + className);
            }
            return launchIntentForPackage;
        }
        throw new IllegalArgumentException("getLaunchIntentForApp() requires a valid context");
    }

    /* renamed from: aK */
    public static void m40353aK(Context context) {
        m40361a(context, EnumC1596a.CLEAR_ALL_INFO, false, false);
    }

    /* renamed from: aL */
    public static boolean m40352aL(Context context) {
        return C1619am.m40257aU(context) && "mounted".equals(Environment.getExternalStorageState());
    }

    /* renamed from: aM */
    public static void m40351aM(Context context) {
        if (context == null) {
            return;
        }
        C1613ai.m40284d("FRESHCHAT", "enableConnectivityChangeReceiver() called");
        ComponentName componentName = new ComponentName(context, FreshchatNetworkChangeReceiver.class);
        PackageManager packageManager = context.getPackageManager();
        if (packageManager.getComponentEnabledSetting(componentName) == 1) {
            return;
        }
        packageManager.setComponentEnabledSetting(componentName, 1, 1);
    }

    /* renamed from: aN */
    public static void m40350aN(Context context) {
        if (context == null) {
            return;
        }
        C1613ai.m40284d("FRESHCHAT", "disableConnectivityChangeReceiver() called");
        ComponentName componentName = new ComponentName(context, FreshchatNetworkChangeReceiver.class);
        PackageManager packageManager = context.getPackageManager();
        if (packageManager.getComponentEnabledSetting(componentName) == 2) {
            return;
        }
        packageManager.setComponentEnabledSetting(componentName, 2, 1);
    }

    /* renamed from: az */
    private static int m40349az(String str) {
        int i = 0;
        while (true) {
            List<String> list = f4327hJ;
            if (i < list.size()) {
                if (list.get(i).equalsIgnoreCase(str)) {
                    return i;
                }
                i++;
            } else {
                return -1;
            }
        }
    }

    /* renamed from: b */
    private static String m40347b(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b : bArr) {
            String hexString = Integer.toHexString(b & 255);
            if (hexString.length() == 1) {
                sb.append('0');
            }
            sb.append(hexString);
        }
        return sb.toString();
    }

    /* renamed from: b */
    private static void m40348b(Context context, EnumC1596a enumC1596a) {
        C1507d c1507d = new C1507d(context);
        if (enumC1596a == EnumC1596a.CLEAR_USER_INFO) {
            c1507d.m40769bW();
        } else if (enumC1596a != EnumC1596a.CLEAR_ALL_INFO) {
        } else {
            c1507d.m40768cx();
        }
    }

    /* renamed from: c */
    public static void m40346c(Context context, C1805a c1805a) {
        if (context == null || c1805a == null) {
            return;
        }
        C1807c.m39525b(context, c1805a);
        if (!C1807c.m39519s(context)) {
            return;
        }
        C1707e.m39966Y(context);
        m40351aM(context);
    }

    /* renamed from: c */
    public static void m40345c(Context context, boolean z) {
        if (!z) {
            return;
        }
        C1641c.m40128fD();
        if (C1807c.m39519s(context)) {
            C1638b.m40169M(context);
        }
        C1720o.m39844by(context);
    }

    /* renamed from: e */
    public static void m40344e(Context context, long j) {
        m40365a(context, j, true, false, false);
    }

    /* renamed from: f */
    public static void m40343f(Context context, long j) {
        m40365a(context, j, true, true, false);
    }

    /* renamed from: fF */
    public static void m40342fF() {
        try {
            if (!C1630aw.m40196fG()) {
                return;
            }
            SSLContext sSLContext = SSLContext.getInstance("TLS");
            sSLContext.init(null, null, null);
            HttpsURLConnection.setDefaultSSLSocketFactory(sSLContext.getSocketFactory());
        } catch (KeyManagementException e) {
            e.printStackTrace();
        } catch (NoSuchAlgorithmException e2) {
            e2.printStackTrace();
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    /* renamed from: g */
    public static void m40341g(Context context, long j) {
        m40365a(context, j, true, false, true);
    }

    /* renamed from: h */
    public static void m40340h(Context context, long j) {
        m40365a(context, j, true, true, true);
    }

    /* renamed from: k */
    public static void m40339k(Context context, String str) {
        try {
            context.startActivity(new Intent(context, Class.forName(str)));
        } catch (ClassNotFoundException e) {
            C1723q.m39823a(e);
        }
    }

    /* renamed from: l */
    public static void m40338l(Context context, String str) {
        if (context == null || C1626as.isEmpty(str)) {
            return;
        }
        new C1488a(context).m40819T(str);
        if (!(!C1807c.m39519s(context))) {
            return;
        }
        C1707e.m39964aa(context);
        m40350aN(context);
    }
}
