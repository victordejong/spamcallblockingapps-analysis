package com.freshchat.consumer.sdk.p057j;

import android.content.Context;
import android.os.Handler;
import android.util.Base64;
import com.freshchat.consumer.sdk.JwtTokenStatus;
import com.freshchat.consumer.sdk.beans.User;
import com.freshchat.consumer.sdk.beans.config.UserAuthConfig;
import com.freshchat.consumer.sdk.exception.JwtException;
import com.freshchat.consumer.sdk.exception.MethodNotAllowedException;
import com.freshchat.consumer.sdk.p047b.C1460a;
import com.freshchat.consumer.sdk.p047b.C1466e;
import com.freshchat.consumer.sdk.p057j.p060c.EnumC1674a;
import com.tenor.android.core.constant.StringConstant;
import java.lang.ref.WeakReference;
import java.util.regex.Pattern;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.freshchat.consumer.sdk.j.o */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/o.class */
public class C1720o {

    /* renamed from: lh */
    private static Handler f4522lh;

    /* renamed from: li */
    private static RunnableC1721a f4523li;

    /* renamed from: com.freshchat.consumer.sdk.j.o$a */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/o$a.class */
    public static class RunnableC1721a implements Runnable {

        /* renamed from: lk */
        private final WeakReference<Context> f4524lk;

        private RunnableC1721a(Context context) {
            this.f4524lk = new WeakReference<>(context.getApplicationContext());
        }

        public /* synthetic */ RunnableC1721a(Context context, C1643bb c1643bb) {
            this(context);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f4524lk.get() != null) {
                C1460a.m41045ba(this.f4524lk.get());
            }
            C1720o.m39841go();
        }
    }

    /* renamed from: P */
    public static boolean m39860P(Context context, String str) {
        String m40966bj = C1466e.m40905i(context).m40966bj();
        return C1626as.m40233a(m40966bj) && C1626as.m40222p(m40966bj, m39848bd(str));
    }

    /* renamed from: a */
    public static EnumC1674a m39857a(JwtTokenStatus jwtTokenStatus, JwtTokenStatus jwtTokenStatus2) {
        if (jwtTokenStatus != null) {
            if (jwtTokenStatus2 == null) {
                throw new IllegalArgumentException("newIdTokenState cannot be null in JwtUtils.getUiActionForTokenStatus()");
            }
            JwtTokenStatus jwtTokenStatus3 = JwtTokenStatus.TOKEN_VALID;
            if (jwtTokenStatus2 == jwtTokenStatus3 || jwtTokenStatus2 == JwtTokenStatus.TOKEN_INVALID || jwtTokenStatus2 == JwtTokenStatus.TOKEN_NOT_SET) {
                return m39855b(jwtTokenStatus2);
            }
            JwtTokenStatus jwtTokenStatus4 = JwtTokenStatus.TOKEN_EXPIRED;
            if (jwtTokenStatus2 == jwtTokenStatus4) {
                return jwtTokenStatus == jwtTokenStatus3 ? EnumC1674a.SHOW_CONTENT : EnumC1674a.SHOW_PROGRESS;
            } else if (jwtTokenStatus2 == JwtTokenStatus.TOKEN_NOT_PROCESSED) {
                return jwtTokenStatus == jwtTokenStatus4 ? EnumC1674a.SHOW_CONTENT : EnumC1674a.SHOW_PROGRESS;
            } else {
                StringBuilder m8728C = C22128a.m8728C("Cannot determine UiAction for ");
                m8728C.append(jwtTokenStatus2.name());
                m8728C.append(" in JwtUtils.getUiActionForTransition()");
                throw new IllegalArgumentException(m8728C.toString());
            }
        }
        throw new IllegalArgumentException("oldIdTokenState cannot be null in JwtUtils.getUiActionForTokenStatus()");
    }

    /* renamed from: a */
    public static void m39859a(Context context, JwtTokenStatus jwtTokenStatus) {
        m39858a(context, jwtTokenStatus, null);
    }

    /* renamed from: a */
    public static void m39858a(Context context, JwtTokenStatus jwtTokenStatus, String str) {
        C1466e m40905i = C1466e.m40905i(context);
        if (jwtTokenStatus == JwtTokenStatus.TOKEN_EXPIRED || jwtTokenStatus == JwtTokenStatus.TOKEN_INVALID) {
            m40905i.m40917gi();
        } else if (C1626as.m40233a(str)) {
            m40905i.m40948c(str);
        }
        m40905i.m41000a(jwtTokenStatus);
        if (jwtTokenStatus == JwtTokenStatus.TOKEN_VALID) {
            m39841go();
        }
        C1649bg.m40084bM(context);
        C1460a.m41049ax(context);
    }

    /* renamed from: b */
    public static EnumC1674a m39855b(JwtTokenStatus jwtTokenStatus) {
        if (jwtTokenStatus != null) {
            int i = C1643bb.f4394lj[jwtTokenStatus.ordinal()];
            if (i == 1) {
                return EnumC1674a.SHOW_CONTENT;
            }
            if (i == 2 || i == 3 || i == 4) {
                return EnumC1674a.SHOW_PROGRESS;
            }
            if (i == 5) {
                return EnumC1674a.EXIT_WITH_MESSAGE;
            }
            StringBuilder m8728C = C22128a.m8728C("UI Action for jwtTokenStatus - ");
            m8728C.append(jwtTokenStatus.name());
            m8728C.append(" is not defined");
            throw new IllegalArgumentException(m8728C.toString());
        }
        throw new IllegalArgumentException("jwtTokenStatus cannot be null in JwtUtils.getUiActionForTokenStatus()");
    }

    /* renamed from: b */
    public static void m39856b(Context context, JwtTokenStatus jwtTokenStatus) {
        if (jwtTokenStatus == null) {
            return;
        }
        if (jwtTokenStatus != JwtTokenStatus.TOKEN_NOT_SET && jwtTokenStatus != JwtTokenStatus.TOKEN_EXPIRED) {
            return;
        }
        m39852bC(context);
    }

    /* renamed from: bA */
    public static void m39854bA(Context context) {
        m39859a(context, JwtTokenStatus.TOKEN_INVALID);
    }

    /* renamed from: bB */
    public static boolean m39853bB(Context context) {
        boolean z = false;
        if (C1622ap.m40246aZ(context)) {
            UserAuthConfig userAuthConfig = C1622ap.m40245bD(context).getUserAuthConfig();
            z = false;
            if (userAuthConfig != null) {
                z = false;
                if (userAuthConfig.isJwtAuthEnabled()) {
                    z = false;
                    if (userAuthConfig.isStrictModeEnabled()) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: bC */
    private static void m39852bC(Context context) {
        if (f4522lh == null) {
            f4522lh = new Handler();
            f4523li = new RunnableC1721a(context, null);
            f4522lh.postDelayed(f4523li, C1622ap.m40245bD(context).getUserAuthConfig().getAuthTimeOutInterval());
        }
    }

    /* renamed from: ba */
    public static boolean m39851ba(String str) {
        return m39838s(str, "reference_id");
    }

    /* renamed from: bb */
    public static String m39850bb(String str) {
        return m39837t(str, "reference_id");
    }

    /* renamed from: bc */
    public static boolean m39849bc(String str) {
        return m39838s(str, "freshchat_uuid");
    }

    /* renamed from: bd */
    public static String m39848bd(String str) {
        return m39837t(str, "freshchat_uuid");
    }

    /* renamed from: be */
    private static Long m39847be(String str) {
        String m39837t = m39837t(str, "exp");
        Long l = null;
        try {
            if (C1626as.m40233a(m39837t)) {
                l = Long.valueOf(Long.parseLong(m39837t));
            }
        } catch (Exception e) {
            C1723q.m39823a(e);
            l = null;
        }
        return l;
    }

    /* renamed from: bf */
    private static JSONObject m39846bf(String str) {
        try {
            if (!C1626as.m40233a(str)) {
                return null;
            }
            String[] split = str.split(Pattern.quote(StringConstant.DOT));
            if (split.length == 3) {
                return new JSONObject(new String(Base64.decode(split[1], 3)));
            }
            return null;
        } catch (Exception e) {
            C1723q.m39823a(e);
            return null;
        }
    }

    /* renamed from: bg */
    public static boolean m39845bg(String str) {
        if (C1626as.isEmpty(str)) {
            return false;
        }
        Long m39847be = m39847be(str);
        boolean z = false;
        if (m39847be != null) {
            z = false;
            if (m39847be.longValue() < C1719n.m39866fP() / 1000) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: by */
    public static void m39844by(Context context) {
        if (m39843bz(context) != JwtTokenStatus.TOKEN_NOT_PROCESSED || !C1618al.m40261aS(context)) {
            return;
        }
        m39833x(context, C1466e.m40905i(context).m40918gh());
    }

    /* renamed from: bz */
    public static JwtTokenStatus m39843bz(Context context) {
        C1466e m40905i = C1466e.m40905i(context);
        JwtTokenStatus fromInt = JwtTokenStatus.fromInt(m40905i.m40916gj());
        if ((fromInt == JwtTokenStatus.TOKEN_NOT_PROCESSED || fromInt == JwtTokenStatus.TOKEN_VALID) && m39845bg(m40905i.m40918gh())) {
            JwtTokenStatus jwtTokenStatus = JwtTokenStatus.TOKEN_EXPIRED;
            m39859a(context, jwtTokenStatus);
            return jwtTokenStatus;
        }
        return fromInt;
    }

    /* renamed from: f */
    public static void m39842f(Context context, String str, String str2) throws JwtException {
        if (!m39860P(context, str)) {
            return;
        }
        String m40966bj = C1466e.m40905i(context).m40966bj();
        String m39848bd = m39848bd(str);
        StringBuilder m8688M = C22128a.m8688M("Got a JWT Id Token with a different freshchat_uuid in ", str2, ". Expected uuid:", m40966bj, ", instead got uuid: ");
        m8688M.append(m39848bd);
        throw new JwtException(m8688M.toString());
    }

    /* renamed from: go */
    public static void m39841go() {
        RunnableC1721a runnableC1721a;
        Handler handler = f4522lh;
        if (handler != null && (runnableC1721a = f4523li) != null) {
            handler.removeCallbacks(runnableC1721a);
        }
        f4522lh = null;
        f4523li = null;
    }

    /* renamed from: r */
    public static void m39839r(String str, String str2) {
        if (!C1626as.isEmpty(str)) {
            return;
        }
        throw new IllegalArgumentException(C22128a.m8543z2(str2, " requires a valid jwt id token object"));
    }

    /* renamed from: s */
    public static boolean m39838s(String str, String str2) {
        try {
            JSONObject m39846bf = m39846bf(str);
            if (m39846bf != null && m39846bf.has(str2)) {
                return C1626as.m40233a(m39846bf.getString(str2));
            }
            return false;
        } catch (Exception e) {
            C1723q.m39823a(e);
            return false;
        }
    }

    /* renamed from: t */
    public static String m39837t(String str, String str2) {
        try {
            JSONObject m39846bf = m39846bf(str);
            if (m39846bf == null || !m39846bf.has(str2)) {
                return null;
            }
            String string = m39846bf.getString(str2);
            if (!C1626as.m40233a(string)) {
                return null;
            }
            return string;
        } catch (Exception e) {
            C1723q.m39823a(e);
            return null;
        }
    }

    /* renamed from: u */
    public static boolean m39836u(String str, String str2) {
        return C1626as.m40222p(C1626as.m40233a(str) ? m39848bd(str) : null, m39848bd(str2));
    }

    /* renamed from: v */
    public static void m39835v(Context context, String str) throws MethodNotAllowedException {
        if (!m39853bB(context)) {
            return;
        }
        throw new MethodNotAllowedException(C22128a.m8543z2(str, " is not allowed because strict mode of identifying users with JWT is enabled for this account"));
    }

    /* renamed from: w */
    public static void m39834w(Context context, String str) throws MethodNotAllowedException {
        if (m39853bB(context)) {
            return;
        }
        throw new MethodNotAllowedException(C22128a.m8543z2(str, " is not allowed because identifying users with JWT is not yet enabled for this account!"));
    }

    /* renamed from: x */
    public static void m39833x(Context context, String str) {
        if (C1466e.m40905i(context).m40964bl()) {
            C1638b.m40157a(context, new User().setJwtIdToken(str));
        } else {
            C1638b.m40137t(context, str);
        }
    }
}
