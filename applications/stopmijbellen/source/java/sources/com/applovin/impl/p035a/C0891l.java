package com.applovin.impl.p035a;

import android.net.Uri;
import android.support.p012v4.media.C0082b;
import android.webkit.URLUtil;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1479t;
import com.applovin.impl.sdk.network.C1464h;
import com.applovin.impl.sdk.utils.C1539q;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinAdLoadListener;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
/* renamed from: com.applovin.impl.a.l */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/a/l.class */
public class C0891l {

    /* renamed from: a */
    private static final DateFormat f3347a = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ", Locale.US);

    /* renamed from: b */
    private static final Random f3348b = new Random(System.currentTimeMillis());

    /* renamed from: a */
    public static Uri m7115a(String str, long j, Uri uri, EnumC0884f enumC0884f, C1408l c1408l) {
        if (!URLUtil.isValidUrl(str)) {
            c1408l.m5542A().m5111e("VastUtils", "Unable to replace macros in invalid URL string.");
            return null;
        }
        try {
            String num = Integer.toString(enumC0884f.m7141a());
            String replace = str.replace("[ERRORCODE]", num).replace("[REASON]", num);
            String str2 = replace;
            if (j >= 0) {
                str2 = replace.replace("[CONTENTPLAYHEAD]", m7123a(j));
            }
            String str3 = str2;
            if (uri != null) {
                str3 = str2.replace("[ASSETURI]", uri.toString());
            }
            return Uri.parse(str3.replace("[CACHEBUSTING]", m7124a()).replace("[TIMESTAMP]", m7109b()));
        } catch (Throwable th) {
            C1479t m5542A = c1408l.m5542A();
            m5542A.m5115b("VastUtils", "Unable to replace macros in URL string " + str, th);
            return null;
        }
    }

    /* renamed from: a */
    public static EnumC0884f m7122a(C0875a c0875a) {
        if (m7108b(c0875a) || m7106c(c0875a)) {
            return null;
        }
        return EnumC0884f.GENERAL_WRAPPER_ERROR;
    }

    /* renamed from: a */
    private static String m7124a() {
        return Integer.toString(f3348b.nextInt(89999999) + 10000000);
    }

    /* renamed from: a */
    private static String m7123a(long j) {
        if (j > 0) {
            TimeUnit timeUnit = TimeUnit.SECONDS;
            long hours = timeUnit.toHours(j);
            long minutes = timeUnit.toMinutes(j);
            TimeUnit timeUnit2 = TimeUnit.MINUTES;
            return String.format(Locale.US, "%02d:%02d:%02d.000", Long.valueOf(hours), Long.valueOf(minutes % timeUnit2.toSeconds(1L)), Long.valueOf(j % timeUnit2.toSeconds(1L)));
        }
        return "00:00:00.000";
    }

    /* renamed from: a */
    public static String m7121a(C0883e c0883e) {
        C1539q m4938c;
        if (c0883e != null) {
            List<C1539q> m7148b = c0883e.m7148b();
            int size = c0883e.m7148b().size();
            if (size > 0 && (m4938c = m7148b.get(size - 1).m4938c("VASTAdTagURI")) != null) {
                return m4938c.m4939c();
            }
            return null;
        }
        throw new IllegalArgumentException("Unable to get resolution uri string for fetching the next wrapper or inline response in the chain");
    }

    /* renamed from: a */
    public static String m7117a(C1539q c1539q, String str, String str2) {
        C1539q m4940b = c1539q.m4940b(str);
        if (m4940b != null) {
            String m4939c = m4940b.m4939c();
            if (StringUtils.isValidString(m4939c)) {
                return m4939c;
            }
        }
        return str2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private static Set<C0889j> m7120a(C0883e c0883e, C1408l c1408l) {
        if (c0883e != null) {
            List<C1539q> m7148b = c0883e.m7148b();
            Set hashSet = new HashSet(m7148b.size());
            for (C1539q c1539q : m7148b) {
                C1539q m4938c = c1539q.m4938c("Wrapper");
                if (m4938c == null) {
                    m4938c = c1539q.m4938c("InLine");
                }
                hashSet = m7110a(hashSet, m4938c != null ? m4938c.m4942a("Error") : c1539q.m4942a("Error"), c0883e, c1408l);
            }
            C1479t m5542A = c1408l.m5542A();
            StringBuilder m8752j = C0082b.m8752j("Retrieved ");
            m8752j.append(hashSet.size());
            m8752j.append(" top level error trackers: ");
            m8752j.append(hashSet);
            m5542A.m5116b("VastUtils", m8752j.toString());
            return hashSet;
        }
        return null;
    }

    /* renamed from: a */
    private static Set<C0889j> m7110a(Set<C0889j> set, List<C1539q> list, C0883e c0883e, C1408l c1408l) {
        if (list != null) {
            for (C1539q c1539q : list) {
                C0889j m7127a = C0889j.m7127a(c1539q, c0883e, c1408l);
                if (m7127a != null) {
                    set.add(m7127a);
                }
            }
        }
        return set;
    }

    /* renamed from: a */
    public static void m7119a(C0883e c0883e, AppLovinAdLoadListener appLovinAdLoadListener, EnumC0884f enumC0884f, int i, C1408l c1408l) {
        if (c1408l != null) {
            if (appLovinAdLoadListener != null) {
                appLovinAdLoadListener.failedToReceiveAd(i);
            }
            m7112a(m7120a(c0883e, c1408l), enumC0884f, c1408l);
            return;
        }
        throw new IllegalArgumentException("Unable to handle failure. No sdk specified.");
    }

    /* renamed from: a */
    public static void m7116a(C1539q c1539q, Map<String, Set<C0889j>> map, C0883e c0883e, C1408l c1408l) {
        List<C1539q> m4942a;
        C1479t m5542A;
        String str;
        if (c1408l != null) {
            if (c1539q == null) {
                m5542A = c1408l.m5542A();
                str = "Unable to render event trackers; null node provided";
            } else if (map != null) {
                C1539q m4940b = c1539q.m4940b("TrackingEvents");
                if (m4940b == null || (m4942a = m4940b.m4942a("Tracking")) == null) {
                    return;
                }
                for (C1539q c1539q2 : m4942a) {
                    String str2 = c1539q2.m4941b().get("event");
                    if (StringUtils.isValidString(str2)) {
                        C0889j m7127a = C0889j.m7127a(c1539q2, c0883e, c1408l);
                        if (m7127a != null) {
                            Set<C0889j> set = map.get(str2);
                            if (set != null) {
                                set.add(m7127a);
                            } else {
                                HashSet hashSet = new HashSet();
                                hashSet.add(m7127a);
                                map.put(str2, hashSet);
                            }
                        }
                    } else {
                        C1479t m5542A2 = c1408l.m5542A();
                        m5542A2.m5111e("VastUtils", "Could not find event for tracking node = " + c1539q2);
                    }
                }
                return;
            } else {
                m5542A = c1408l.m5542A();
                str = "Unable to render event trackers; null event trackers provided";
            }
            m5542A.m5111e("VastUtils", str);
            return;
        }
        throw new IllegalArgumentException("Unable to render event trackers. No sdk specified.");
    }

    /* renamed from: a */
    public static void m7114a(List<C1539q> list, Set<C0889j> set, C0883e c0883e, C1408l c1408l) {
        C1479t m5542A;
        String str;
        if (c1408l != null) {
            if (list == null) {
                m5542A = c1408l.m5542A();
                str = "Unable to render trackers; null nodes provided";
            } else if (set != null) {
                for (C1539q c1539q : list) {
                    C0889j m7127a = C0889j.m7127a(c1539q, c0883e, c1408l);
                    if (m7127a != null) {
                        set.add(m7127a);
                    }
                }
                return;
            } else {
                m5542A = c1408l.m5542A();
                str = "Unable to render trackers; null trackers provided";
            }
            m5542A.m5111e("VastUtils", str);
            return;
        }
        throw new IllegalArgumentException("Unable to render trackers. No sdk specified.");
    }

    /* renamed from: a */
    public static void m7113a(Set<C0889j> set, long j, Uri uri, EnumC0884f enumC0884f, C1408l c1408l) {
        if (c1408l != null) {
            if (set == null || set.isEmpty()) {
                return;
            }
            for (C0889j c0889j : set) {
                Uri m7115a = m7115a(c0889j.m7125b(), j, uri, enumC0884f, c1408l);
                if (m7115a != null) {
                    c1408l.m5523T().m5255a(C1464h.m5222o().m5211c(m7115a.toString()).m5217a(false).m5221a(), false);
                }
            }
            return;
        }
        throw new IllegalArgumentException("Unable to fire trackers. No sdk specified.");
    }

    /* renamed from: a */
    public static void m7112a(Set<C0889j> set, EnumC0884f enumC0884f, C1408l c1408l) {
        m7113a(set, -1L, (Uri) null, enumC0884f, c1408l);
    }

    /* renamed from: a */
    public static void m7111a(Set<C0889j> set, C1408l c1408l) {
        m7113a(set, -1L, (Uri) null, EnumC0884f.UNSPECIFIED, c1408l);
    }

    /* renamed from: a */
    public static boolean m7118a(C1539q c1539q) {
        if (c1539q != null) {
            return c1539q.m4938c("Wrapper") != null;
        }
        throw new IllegalArgumentException("Unable to check if a given XmlNode contains a wrapper response");
    }

    /* renamed from: b */
    private static String m7109b() {
        DateFormat dateFormat = f3347a;
        dateFormat.setTimeZone(TimeZone.getDefault());
        return dateFormat.format(new Date());
    }

    /* renamed from: b */
    public static boolean m7108b(C0875a c0875a) {
        if (c0875a == null) {
            return false;
        }
        C0892m m7189m = c0875a.m7189m();
        boolean z = false;
        if (m7189m != null) {
            List<C0895n> m7105a = m7189m.m7105a();
            z = false;
            if (m7105a != null) {
                z = false;
                if (!m7105a.isEmpty()) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: b */
    public static boolean m7107b(C1539q c1539q) {
        if (c1539q != null) {
            return c1539q.m4938c("InLine") != null;
        }
        throw new IllegalArgumentException("Unable to check if a given XmlNode contains an inline response");
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002e, code lost:
        if (com.applovin.impl.sdk.utils.StringUtils.isValidString(r0.m7131c()) != false) goto L13;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m7106c(com.applovin.impl.p035a.C0875a r2) {
        /*
            r0 = 0
            r3 = r0
            r0 = r2
            if (r0 != 0) goto L8
            r0 = 0
            return r0
        L8:
            r0 = r2
            com.applovin.impl.a.d r0 = r0.m7206aK()
            r2 = r0
            r0 = r3
            r4 = r0
            r0 = r2
            if (r0 == 0) goto L33
            r0 = r2
            com.applovin.impl.a.h r0 = r0.m7152b()
            r2 = r0
            r0 = r3
            r4 = r0
            r0 = r2
            if (r0 == 0) goto L33
            r0 = r2
            android.net.Uri r0 = r0.m7132b()
            if (r0 != 0) goto L31
            r0 = r3
            r4 = r0
            r0 = r2
            java.lang.String r0 = r0.m7131c()
            boolean r0 = com.applovin.impl.sdk.utils.StringUtils.isValidString(r0)
            if (r0 == 0) goto L33
        L31:
            r0 = 1
            r4 = r0
        L33:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.p035a.C0891l.m7106c(com.applovin.impl.a.a):boolean");
    }
}
