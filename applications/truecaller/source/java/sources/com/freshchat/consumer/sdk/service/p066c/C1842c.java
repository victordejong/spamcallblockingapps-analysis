package com.freshchat.consumer.sdk.service.p066c;

import android.content.Context;
import com.freshchat.consumer.sdk.JwtTokenStatus;
import com.freshchat.consumer.sdk.beans.User;
import com.freshchat.consumer.sdk.beans.reqres.UserRequest;
import com.freshchat.consumer.sdk.beans.reqres.UserResponse;
import com.freshchat.consumer.sdk.exception.DeletedException;
import com.freshchat.consumer.sdk.p047b.C1466e;
import com.freshchat.consumer.sdk.p049c.C1515k;
import com.freshchat.consumer.sdk.p052e.C1528a;
import com.freshchat.consumer.sdk.p057j.C1594aa;
import com.freshchat.consumer.sdk.p057j.C1597ab;
import com.freshchat.consumer.sdk.p057j.C1613ai;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p057j.C1638b;
import com.freshchat.consumer.sdk.p057j.C1704d;
import com.freshchat.consumer.sdk.p057j.C1716k;
import com.freshchat.consumer.sdk.p057j.C1720o;
import com.freshchat.consumer.sdk.p057j.C1731w;
import com.freshchat.consumer.sdk.service.p064a.C1805a;
import com.freshchat.consumer.sdk.service.p064a.C1807c;
import com.freshchat.consumer.sdk.service.p068e.AbstractC1907k;
import com.freshchat.consumer.sdk.service.p068e.C1877a;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.freshchat.consumer.sdk.service.c.c */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/c/c.class */
public class C1842c extends AbstractC1829a<C1877a, AbstractC1907k> {
    public static final String TAG = "com.freshchat.consumer.sdk.service.c.c";

    /* renamed from: a */
    private static User m39476a(Context context, C1877a c1877a, C1515k c1515k) {
        C1466e m40905i = C1466e.m40905i(context);
        m39478a(context, c1877a.getUser(), c1515k, false);
        if (!c1515k.m40669bV() || c1877a.m39366cY()) {
            User m40673a = c1515k.m40673a(false, true);
            String m39979C = C1704d.m39979C(context);
            m40673a.setAlias(m39979C);
            String jwtIdToken = c1515k.m40673a(true, true).getJwtIdToken();
            if (C1626as.m40233a(jwtIdToken)) {
                return new User().setAlias(m39979C).setJwtIdToken(jwtIdToken);
            }
            if (C1626as.isEmpty(m40905i.m40985bI()) && C1626as.isEmpty(m40673a.getExternalId()) && C1626as.m40233a(m40905i.m40965bk())) {
                m40673a.setExternalId(m40905i.m40965bk());
            }
            return m40673a;
        }
        return null;
    }

    /* renamed from: a */
    private User m39474a(User user, String str) throws DeletedException {
        C1466e m40905i = C1466e.m40905i(getContext());
        try {
            UserRequest userRequest = new UserRequest();
            userRequest.setUser(user.setJwtIdToken(null));
            userRequest.setJwtIdToken(str);
            UserResponse m40632a = new C1528a(getContext()).m40632a(userRequest);
            User user2 = null;
            if (m40632a != null) {
                if (m40632a.getStatusCode() == 409) {
                    C1704d.m39970bG(getContext());
                    user2 = null;
                } else {
                    user2 = null;
                    if (m40632a.getUser() != null) {
                        user2 = m40632a.getUser();
                        m39465f(user2);
                    }
                }
            }
            return user2;
        } catch (Exception e) {
            m40905i.m40947c(false);
            m40905i.m40886t(user.getAlias());
            throw new RuntimeException(e);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x00c9, code lost:
        if (r11.getStatusCode() == 404) goto L26;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.freshchat.consumer.sdk.beans.User m39473a(com.freshchat.consumer.sdk.beans.User r5, java.lang.String r6, com.freshchat.consumer.sdk.p049c.C1515k r7) throws com.freshchat.consumer.sdk.exception.DeletedException {
        /*
            Method dump skipped, instructions count: 269
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.freshchat.consumer.sdk.service.p066c.C1842c.m39473a(com.freshchat.consumer.sdk.beans.User, java.lang.String, com.freshchat.consumer.sdk.c.k):com.freshchat.consumer.sdk.beans.User");
    }

    /* renamed from: a */
    private static void m39478a(Context context, User user, C1515k c1515k, boolean z) {
        User user2 = user;
        if (user == null) {
            user2 = C1704d.m39971bF(context);
        }
        C1704d.m39976a(C1466e.m40905i(context), user2);
        if (z) {
            c1515k.m40672b(user2);
        } else {
            c1515k.m40675a(user2);
        }
    }

    /* renamed from: a */
    private static void m39477a(Context context, C1877a c1877a) {
        C1597ab c1597ab = new C1597ab(new C1597ab.C1598a());
        C1805a m39520m = C1807c.m39520m(context, 1);
        C1805a c1805a = new C1805a(1);
        if (m39520m != null) {
            Map<String, String> meta = m39520m.getMeta();
            C1877a c1877a2 = (C1877a) c1597ab.fromJson(C1716k.m39894d(meta) ? meta.get("fc_create_or_update_user") : "{}", (Class<Object>) C1877a.class);
            if (c1877a2 != null) {
                if (c1877a2.m39367cN()) {
                    c1877a.m39365n(true);
                }
                if (c1877a2.m39366cY()) {
                    c1877a.m39364o(true);
                }
            }
        }
        String json = c1597ab.toJson(c1877a);
        HashMap hashMap = new HashMap();
        hashMap.put("fc_create_or_update_user", json);
        c1805a.m39529b(hashMap);
        C1594aa.m40346c(context, c1805a);
    }

    /* renamed from: a */
    public static boolean m39475a(JwtTokenStatus jwtTokenStatus, String str, String str2, boolean z) {
        if (z) {
            return false;
        }
        if (!(C1626as.m40233a(str2) && C1720o.m39851ba(str2) && jwtTokenStatus == JwtTokenStatus.TOKEN_NOT_PROCESSED)) {
            return false;
        }
        return (!C1720o.m39849bc(str) || !C1720o.m39849bc(str2)) ? C1626as.m40222p(str, str2) : C1720o.m39836u(str, str2);
    }

    /* renamed from: a */
    private boolean m39471a(C1877a c1877a, User user) {
        boolean m40964bl = m39479dw().m40964bl();
        boolean z = true;
        if (!C1626as.m40233a(user.getJwtIdToken())) {
            return !m40964bl && c1877a.m39367cN();
        } else if (C1720o.m39843bz(getContext()) != JwtTokenStatus.TOKEN_VALID && C1720o.m39843bz(getContext()) != JwtTokenStatus.TOKEN_NOT_PROCESSED) {
            return false;
        } else {
            if (m40964bl || !c1877a.m39367cN()) {
                z = false;
            }
            return z;
        }
    }

    /* renamed from: a */
    private boolean m39470a(String str, User user) {
        if (user == null) {
            return false;
        }
        return m39475a(C1720o.m39843bz(getContext()), str, user.getJwtIdToken(), m39479dw().m40964bl());
    }

    /* renamed from: a */
    private boolean m39469a(String str, String str2, User user) {
        if (user == null) {
            return false;
        }
        String externalId = user.getExternalId();
        String restoreId = user.getRestoreId();
        boolean z = true;
        boolean z2 = C1626as.m40233a(externalId) && C1626as.m40233a(restoreId);
        if (z2) {
            if (!C1626as.m40223o(str, externalId) || !C1626as.m40223o(str2, restoreId)) {
                z = false;
            }
            if (z) {
                return false;
            }
        }
        return z2;
    }

    /* renamed from: b */
    private User m39468b(User user, String str) throws DeletedException {
        JwtTokenStatus m39843bz;
        if (C1626as.m40233a(str) && (m39843bz = C1720o.m39843bz(getContext())) != JwtTokenStatus.TOKEN_NOT_PROCESSED) {
            if (m39843bz != JwtTokenStatus.TOKEN_VALID) {
                C1613ai.m40283e("FreshchatTest", "Stopping user update");
                return null;
            } else if (C1720o.m39860P(getContext(), str)) {
                return null;
            }
        }
        UserRequest userRequest = new UserRequest();
        userRequest.setUser(user.setJwtIdToken(null));
        userRequest.setJwtIdToken(str);
        UserResponse m40623b = new C1528a(getContext()).m40623b(userRequest);
        if (m40623b.getStatusCode() == 409) {
            C1720o.m39854bA(getContext());
        } else if (m40623b.getUser() != null) {
            if (C1807c.m39524bd(getContext())) {
                C1638b.m40169M(getContext());
            }
            if (C1626as.m40233a(str)) {
                C1638b.m40142bJ(getContext());
            }
        }
        return m40623b.getUser();
    }

    /* renamed from: c */
    private void m39466c(C1877a c1877a) {
        C1805a m39520m = C1807c.m39520m(getContext(), 1);
        if (m39520m != null) {
            C1597ab c1597ab = new C1597ab(new C1597ab.C1598a());
            Map<String, String> meta = m39520m.getMeta();
            C1877a c1877a2 = (C1877a) c1597ab.fromJson(C1716k.m39894d(meta) ? meta.get("fc_create_or_update_user") : "{}", (Class<Object>) C1877a.class);
            if (c1877a2 == null) {
                return;
            }
            if (c1877a2.m39367cN()) {
                c1877a.m39365n(true);
            }
            if (!c1877a2.m39366cY()) {
                return;
            }
            c1877a.m39364o(true);
        }
    }

    /* renamed from: f */
    private void m39465f(User user) {
        if (user == null) {
            return;
        }
        String alias = user.getAlias();
        String str = TAG;
        C1613ai.m40284d(str, "Result for create user is " + alias);
        C1466e m40905i = C1466e.m40905i(getContext());
        m40905i.m40886t(alias);
        m40905i.m40947c(true);
        C1638b.m40168Q(getContext(), m40905i.m40980bP());
        C1638b.m40164U(getContext());
        C1638b.m40165T(getContext());
        C1638b.m40166S(getContext());
        if (!C1807c.m39519s(getContext())) {
            return;
        }
        C1638b.m40169M(getContext());
    }

    /* renamed from: g */
    private void m39464g(User user) {
        if (C1716k.m39897c(user.getAndroidDeviceMeta())) {
            return;
        }
        C1466e m40905i = C1466e.m40905i(getContext());
        Map<String, String> androidDeviceMeta = user.getAndroidDeviceMeta();
        if (androidDeviceMeta.containsKey(User.DEVICE_META_APP_VERSION_CODE)) {
            String str = androidDeviceMeta.get(User.DEVICE_META_APP_VERSION_CODE);
            if (C1626as.m40233a(str) && !str.equals(m40905i.m40963bm())) {
                m40905i.m40881v(str);
            }
        }
        if (!androidDeviceMeta.containsKey(User.DEVICE_META_SDK_VERSION_CODE)) {
            return;
        }
        m40905i.m40893k(Integer.parseInt(androidDeviceMeta.get(User.DEVICE_META_SDK_VERSION_CODE)));
    }

    /* renamed from: a */
    public boolean m39472a(C1877a c1877a) {
        return C1731w.m39793ay(getContext()) && C1731w.m39796aA(getContext()) && C1466e.m40905i(getContext()).m40964bl();
    }

    /* JADX WARN: Code restructure failed: missing block: B:110:0x0273, code lost:
        if (com.freshchat.consumer.sdk.p057j.C1626as.m40233a(r6.m39528dr()) != false) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0276, code lost:
        com.freshchat.consumer.sdk.p057j.C1594aa.m40338l(getContext(), r6.m39528dr());
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x02d0, code lost:
        if (com.freshchat.consumer.sdk.p057j.C1626as.m40233a(r6.m39528dr()) != false) goto L111;
     */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0247  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x02e6  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x031c  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00f8  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.freshchat.consumer.sdk.service.p068e.AbstractC1907k mo39348b(com.freshchat.consumer.sdk.service.p068e.C1877a r6) {
        /*
            Method dump skipped, instructions count: 807
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.freshchat.consumer.sdk.service.p066c.C1842c.mo39348b(com.freshchat.consumer.sdk.service.e.a):com.freshchat.consumer.sdk.service.e.k");
    }
}
