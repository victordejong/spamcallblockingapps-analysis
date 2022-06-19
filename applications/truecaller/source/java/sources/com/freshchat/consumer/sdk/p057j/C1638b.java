package com.freshchat.consumer.sdk.p057j;

import android.content.Context;
import com.freshchat.consumer.sdk.beans.BotFAQFetchRequest;
import com.freshchat.consumer.sdk.beans.FAQCategoryFetchRequest;
import com.freshchat.consumer.sdk.beans.FAQFetchRequest;
import com.freshchat.consumer.sdk.beans.MarketingMessageStatus;
import com.freshchat.consumer.sdk.beans.Message;
import com.freshchat.consumer.sdk.beans.User;
import com.freshchat.consumer.sdk.beans.UserEvent;
import com.freshchat.consumer.sdk.beans.fragment.CallbackButtonFragment;
import com.freshchat.consumer.sdk.p062l.C1764a;
import com.freshchat.consumer.sdk.service.AbstractC1804a;
import com.freshchat.consumer.sdk.service.p064a.C1807c;
import com.freshchat.consumer.sdk.service.p067d.C1870d;
import com.freshchat.consumer.sdk.service.p068e.C1877a;
import com.freshchat.consumer.sdk.service.p068e.C1878aa;
import com.freshchat.consumer.sdk.service.p068e.C1879ab;
import com.freshchat.consumer.sdk.service.p068e.C1880ac;
import com.freshchat.consumer.sdk.service.p068e.C1881ad;
import com.freshchat.consumer.sdk.service.p068e.C1885ah;
import com.freshchat.consumer.sdk.service.p068e.C1888ak;
import com.freshchat.consumer.sdk.service.p068e.C1890am;
import com.freshchat.consumer.sdk.service.p068e.C1894ap;
import com.freshchat.consumer.sdk.service.p068e.C1895b;
import com.freshchat.consumer.sdk.service.p068e.C1897c;
import com.freshchat.consumer.sdk.service.p068e.C1898d;
import com.freshchat.consumer.sdk.service.p068e.C1900e;
import com.freshchat.consumer.sdk.service.p068e.C1901f;
import com.freshchat.consumer.sdk.service.p068e.C1909m;
import com.freshchat.consumer.sdk.service.p068e.C1913p;
import com.freshchat.consumer.sdk.service.p068e.C1914q;
import com.freshchat.consumer.sdk.service.p068e.C1919u;
import com.freshchat.consumer.sdk.service.p068e.C1920v;
import com.freshchat.consumer.sdk.service.p068e.C1922x;
import com.freshchat.consumer.sdk.service.p068e.C1923y;
import com.freshchat.consumer.sdk.service.p068e.C1924z;
import java.util.List;
import java.util.Map;
/* renamed from: com.freshchat.consumer.sdk.j.b */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/b.class */
public class C1638b {
    /* renamed from: L */
    public static void m40170L(Context context) {
        if (context == null) {
            return;
        }
        C1870d.m39385b(context, new C1900e());
    }

    /* renamed from: M */
    public static void m40169M(Context context) {
        if (context == null) {
            return;
        }
        C1870d.m39385b(context, new C1909m());
    }

    /* renamed from: Q */
    public static void m40168Q(Context context, String str) {
        if (context == null || C1626as.isEmpty(str)) {
            return;
        }
        C1923y c1923y = new C1923y();
        c1923y.m39313K(str);
        if (C1764a.m39612gR().m39614bW(context)) {
            C1870d.m39385b(context, c1923y);
        } else {
            C1807c.m39526a(context, c1923y);
        }
    }

    /* renamed from: R */
    public static void m40167R(Context context) {
    }

    /* renamed from: S */
    public static void m40166S(Context context) {
        if (context == null) {
            return;
        }
        C1870d.m39385b(context, new C1919u());
    }

    /* renamed from: T */
    public static void m40165T(Context context) {
        if (context == null) {
            return;
        }
        C1870d.m39385b(context, new C1913p());
    }

    /* renamed from: U */
    public static void m40164U(Context context) {
        m40154a(context, (AbstractC1804a) null);
    }

    /* renamed from: V */
    public static void m40163V(Context context) {
        if (context == null) {
            return;
        }
        C1870d.m39385b(context, new C1897c());
    }

    /* renamed from: a */
    public static void m40162a(Context context, int i, C1898d.EnumC1899a enumC1899a) {
        m40161a(context, i, enumC1899a, (AbstractC1804a) null);
    }

    /* renamed from: a */
    public static void m40161a(Context context, int i, C1898d.EnumC1899a enumC1899a, AbstractC1804a abstractC1804a) {
        if (context == null) {
            return;
        }
        C1898d.EnumC1899a enumC1899a2 = enumC1899a;
        if (enumC1899a == null) {
            enumC1899a2 = C1898d.EnumC1899a.NORMAL;
        }
        C1898d c1898d = new C1898d();
        c1898d.m39336p(i);
        c1898d.m39339b(enumC1899a2);
        if (abstractC1804a == null) {
            C1870d.m39385b(context, c1898d);
        } else {
            C1870d.m39383c(context, c1898d, abstractC1804a);
        }
    }

    /* renamed from: a */
    public static void m40160a(Context context, MarketingMessageStatus marketingMessageStatus) {
        if (context == null || marketingMessageStatus == null) {
            return;
        }
        C1878aa c1878aa = new C1878aa();
        c1878aa.m39363a(marketingMessageStatus);
        C1870d.m39385b(context, c1878aa);
    }

    /* renamed from: a */
    public static void m40159a(Context context, Message message) {
        m40158a(context, message, (AbstractC1804a) null);
    }

    /* renamed from: a */
    public static void m40158a(Context context, Message message, AbstractC1804a abstractC1804a) {
        if (context == null) {
            return;
        }
        C1914q m39320j = new C1914q().m39320j(message);
        if (abstractC1804a == null) {
            C1870d.m39385b(context, m39320j);
        } else {
            C1870d.m39383c(context, m39320j, abstractC1804a);
        }
    }

    /* renamed from: a */
    public static void m40157a(Context context, User user) {
        m40156a(context, user, false);
    }

    /* renamed from: a */
    public static void m40156a(Context context, User user, boolean z) {
        m40155a(context, user, z, false);
    }

    /* renamed from: a */
    public static void m40155a(Context context, User user, boolean z, boolean z2) {
        if (context == null) {
            return;
        }
        C1877a c1877a = new C1877a();
        c1877a.setUser(user);
        c1877a.m39365n(z);
        c1877a.m39364o(z2);
        C1870d.m39385b(context, c1877a);
    }

    /* renamed from: a */
    public static void m40154a(Context context, AbstractC1804a abstractC1804a) {
        C1881ad c1881ad = new C1881ad();
        c1881ad.m39358p(true);
        if (abstractC1804a == null) {
            C1870d.m39385b(context, c1881ad);
        } else {
            C1870d.m39383c(context, c1881ad, abstractC1804a);
        }
    }

    /* renamed from: a */
    public static void m40153a(Context context, C1895b.EnumC1896a enumC1896a) {
        m40152a(context, enumC1896a, (AbstractC1804a) null);
    }

    /* renamed from: a */
    public static void m40152a(Context context, C1895b.EnumC1896a enumC1896a, AbstractC1804a abstractC1804a) {
        if (context == null) {
            return;
        }
        C1895b.EnumC1896a enumC1896a2 = enumC1896a;
        if (enumC1896a == null) {
            enumC1896a2 = C1895b.EnumC1896a.LAID_BACK;
        }
        C1895b c1895b = new C1895b();
        c1895b.m39341b(enumC1896a2);
        C1870d.m39385b(context, c1895b);
    }

    /* renamed from: a */
    public static void m40151a(Context context, C1901f.EnumC1902a enumC1902a) {
        if (context == null || C1733y.m39775cp(context)) {
            return;
        }
        C1901f.EnumC1902a enumC1902a2 = enumC1902a;
        if (enumC1902a == null) {
            enumC1902a2 = C1901f.EnumC1902a.LAID_BACK;
        }
        C1901f c1901f = new C1901f();
        c1901f.m39335b(enumC1902a2);
        C1870d.m39385b(context, c1901f);
    }

    /* renamed from: a */
    public static void m40150a(Context context, C1924z.EnumC1925a enumC1925a) {
        if (context == null || enumC1925a == null) {
            return;
        }
        C1924z c1924z = new C1924z();
        c1924z.m39311a(enumC1925a);
        C1870d.m39385b(context, c1924z);
    }

    /* renamed from: a */
    public static void m40149a(Context context, String str, int i, List<String> list) {
        if (context != null && !C1626as.isEmpty(str)) {
            C1870d.m39385b(context, new C1888ak(str, i, list));
        }
    }

    /* renamed from: a */
    public static void m40148a(Context context, String str, CallbackButtonFragment callbackButtonFragment) {
        m40147a(context, str, callbackButtonFragment, (String) null);
    }

    /* renamed from: a */
    public static void m40147a(Context context, String str, CallbackButtonFragment callbackButtonFragment, String str2) {
        if (C1626as.isEmpty(str) || callbackButtonFragment == null) {
            return;
        }
        C1870d.m39385b(context, new C1894ap(str, callbackButtonFragment, str2));
    }

    /* renamed from: a */
    public static void m40146a(Context context, String str, String str2, C1890am.EnumC1891a enumC1891a, String str3, String str4) {
        if (context == null || enumC1891a == null || C1626as.isEmpty(str) || C1626as.isEmpty(str2) || C1626as.isEmpty(str3)) {
            return;
        }
        C1870d.m39385b(context, new C1890am(str, str2, str3, enumC1891a, str4));
    }

    /* renamed from: a */
    public static void m40145a(Context context, String str, Map<String, UserEvent> map) {
        if (context == null || C1626as.isEmpty(str) || C1716k.m39897c(map)) {
            return;
        }
        C1870d.m39385b(context, new C1880ac(str, map));
    }

    /* renamed from: b */
    public static void m40144b(Context context, int i, List<String> list) {
        if (context == null) {
            return;
        }
        C1870d.m39385b(context, new FAQCategoryFetchRequest(i, list));
    }

    /* renamed from: b */
    public static void m40143b(Context context, long j, long j2) {
        if (context == null) {
            return;
        }
        C1870d.m39385b(context, new C1922x(j, j2));
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x005d, code lost:
        if ((java.lang.System.currentTimeMillis() - java.lang.Long.parseLong(r0)) > r0.getRefreshIntervals().getMsgFetchIntervalNormal()) goto L7;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:23:? A[RETURN, SYNTHETIC] */
    /* renamed from: bJ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m40142bJ(android.content.Context r5) {
        /*
            r0 = r5
            if (r0 != 0) goto L5
            return
        L5:
            r0 = 0
            r6 = r0
            r0 = r5
            com.freshchat.consumer.sdk.b.e r0 = com.freshchat.consumer.sdk.p047b.C1466e.m40905i(r0)
            java.lang.String r0 = r0.m40984bJ()
            r7 = r0
            r0 = r7
            boolean r0 = com.freshchat.consumer.sdk.p057j.C1626as.isEmpty(r0)
            if (r0 == 0) goto L1b
        L16:
            r0 = 1
            r8 = r0
            goto L6a
        L1b:
            r0 = r5
            com.freshchat.consumer.sdk.beans.config.RemoteConfig r0 = com.freshchat.consumer.sdk.p057j.C1622ap.m40245bD(r0)     // Catch: java.lang.Exception -> L63
            r9 = r0
            com.freshchat.consumer.sdk.c.g r0 = new com.freshchat.consumer.sdk.c.g     // Catch: java.lang.Exception -> L63
            r10 = r0
            r0 = r10
            r1 = r5
            r0.<init>(r1)     // Catch: java.lang.Exception -> L63
            r0 = r6
            r8 = r0
            r0 = r10
            r1 = r9
            com.freshchat.consumer.sdk.beans.config.ConversationConfig r1 = r1.getConversationConfig()     // Catch: java.lang.Exception -> L63
            long r1 = r1.getActiveConvWindow()     // Catch: java.lang.Exception -> L63
            boolean r0 = r0.m40709p(r1)     // Catch: java.lang.Exception -> L63
            if (r0 == 0) goto L6a
            long r0 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Exception -> L63
            r11 = r0
            r0 = r7
            long r0 = java.lang.Long.parseLong(r0)     // Catch: java.lang.Exception -> L63
            r13 = r0
            r0 = r9
            com.freshchat.consumer.sdk.beans.config.RefreshIntervals r0 = r0.getRefreshIntervals()     // Catch: java.lang.Exception -> L63
            long r0 = r0.getMsgFetchIntervalNormal()     // Catch: java.lang.Exception -> L63
            r15 = r0
            r0 = r6
            r8 = r0
            r0 = r11
            r1 = r13
            long r0 = r0 - r1
            r1 = r15
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L6a
            goto L16
        L63:
            r7 = move-exception
            r0 = r7
            com.freshchat.consumer.sdk.p057j.C1723q.m39823a(r0)
            r0 = r6
            r8 = r0
        L6a:
            r0 = r8
            if (r0 == 0) goto L77
            r0 = r5
            r1 = 14
            com.freshchat.consumer.sdk.service.e.d$a r2 = com.freshchat.consumer.sdk.service.p068e.C1898d.EnumC1899a.IMMEDIATE
            m40162a(r0, r1, r2)
        L77:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.freshchat.consumer.sdk.p057j.C1638b.m40142bJ(android.content.Context):void");
    }

    /* renamed from: c */
    public static void m40141c(Context context, int i, String str, List<String> list) {
        if (context == null || C1626as.isEmpty(str)) {
            return;
        }
        C1870d.m39385b(context, new C1885ah(i, str, list));
    }

    /* renamed from: h */
    public static void m40140h(Context context, String str, String str2) {
        if (context != null && !C1626as.isEmpty(str2) && !C1626as.isEmpty(str)) {
            C1870d.m39385b(context, new FAQFetchRequest(str, str2));
        }
    }

    /* renamed from: k */
    public static void m40139k(Context context, String str, String str2) {
        if (context != null && !C1626as.isEmpty(str) && !C1626as.isEmpty(str2)) {
            C1870d.m39385b(context, new BotFAQFetchRequest(str, str2));
        }
    }

    /* renamed from: r */
    public static void m40138r(Context context, String str) {
        if (context == null || C1626as.isEmpty(str)) {
            return;
        }
        C1920v c1920v = new C1920v();
        c1920v.m39316t(str);
        C1870d.m39385b(context, c1920v);
    }

    /* renamed from: t */
    public static void m40137t(Context context, String str) {
        C1870d.m39385b(context, new C1879ab(str));
    }

    /* renamed from: u */
    public static void m40136u(Context context) {
        if (context == null) {
            return;
        }
        m40155a(context, new User(), false, true);
    }
}
