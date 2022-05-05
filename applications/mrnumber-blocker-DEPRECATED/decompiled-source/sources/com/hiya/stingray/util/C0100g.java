package com.hiya.stingray.util;

import android.content.Context;
import com.hiya.stingray.manager.e1;
import com.hiya.stingray.manager.m2;
import com.hiya.stingray.s.m0;
import com.hiya.stingray.s.n0;
import com.hiya.stingray.s.z0;
import com.hiya.stingray.ui.h;
import com.hiya.stingray.ui.k;
import com.hiya.stingray.ui.local.blocking.BlockingFragment;
import com.hiya.stingray.ui.local.dialer.DialerFragment;
import com.hiya.stingray.ui.local.e.b;
import com.hiya.stingray.ui.local.settings.n;
import com.hiya.stingray.ui.v.a;
import com.hiya.stingray.util.C0106i;
import com.hiya.stingray.util.p003g0.AbstractC0101c;
/* renamed from: com.hiya.stingray.util.g */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/util/g.class */
public final class C0100g {
    /* renamed from: a */
    public static String m998a() {
        return String.valueOf(100208);
    }

    /* renamed from: b */
    public static String m997b(m2 m2Var, Context context) {
        StringBuilder sb = new StringBuilder();
        if (m2Var.B(context)) {
            sb.append("spam");
        }
        if (m2Var.u(context)) {
            sb.append(sb.length() > 0 ? "_scam" : "scam");
        }
        if (m2Var.y(context)) {
            sb.append(sb.length() > 0 ? "_priv" : "priv");
        }
        return sb.toString();
    }

    /* renamed from: c */
    public static String m996c(m2 m2Var) {
        StringBuilder sb = new StringBuilder();
        if (m2Var.q("id_incoming_calls")) {
            sb.append("in");
        }
        if (m2Var.q("id_outgoing_calls")) {
            sb.append(sb.length() > 0 ? "_out" : "out");
        }
        if (!m2Var.q("unknown_calls_only")) {
            sb.append(sb.length() > 0 ? "_noid" : "noid");
        }
        if (m2Var.q("message_settings")) {
            sb.append(sb.length() > 0 ? "_sms" : "sms");
        }
        if (m2Var.t()) {
            sb.append(sb.length() > 0 ? "_cscreen" : "cscreen");
        }
        return sb.toString();
    }

    /* renamed from: d */
    public static void m995d(e1 e1Var, Class cls, String str) {
        if (k.class.equals(cls)) {
            m992g(e1Var, "callers", str);
        } else if (DialerFragment.class.equals(cls)) {
            m992g(e1Var, "dialpad", str);
        } else if (BlockingFragment.class.equals(cls)) {
            m992g(e1Var, "block_list", str);
        } else if (n.class.equals(cls)) {
            m992g(e1Var, "settings", str);
        } else if (h.class.equals(cls)) {
            m992g(e1Var, "callers", str);
        } else if (com.hiya.stingray.ui.premium.n.class.equals(cls)) {
            m992g(e1Var, "premium", str);
        } else if (a.class.equals(cls)) {
            m992g(e1Var, "lookup", str);
        } else if (b.class.equals(cls)) {
            m992g(e1Var, "callers", str);
        } else if (com.hiya.stingray.ui.u.b.class.equals(cls)) {
            m992g(e1Var, "dialpad", str);
        } else {
            throw new IllegalStateException("Unknown screen index. Currently sending invalid position for tabs");
        }
    }

    /* renamed from: e */
    public static void m994e(e1 e1Var, n0 n0Var, z0 z0Var, boolean z, boolean z2, boolean z3, C0106i.EnumC0107a aVar, com.hiya.stingray.service.a.a aVar2, boolean z4, Boolean bool) {
        String str;
        String str2 = aVar == C0106i.EnumC0107a.INCOMING ? "incoming.call" : "outgoing.call";
        String str3 = "non_addrbook";
        String str4 = "";
        if (z0Var == null) {
            str = str2;
            if (z2) {
                if (!z3) {
                    str4 = "auto_blocked_screened";
                    str = str2;
                } else {
                    str4 = "non_addrbook";
                    str = str2;
                }
            }
        } else if (z0Var == z0.SPAM) {
            str = str2 + ".spam";
        } else {
            str = str2;
            if (z0Var == z0.FRAUD) {
                str = str2 + ".spam";
                str4 = "scam_or_fraud";
            }
        }
        String str5 = str4;
        if (n0Var != null) {
            str5 = str4;
            if (n0Var.f() == m0.PERSON) {
                str5 = str4;
                if (!bool.booleanValue()) {
                    str5 = "name_available";
                }
            }
        }
        str3 = str5;
        if (str5.isEmpty()) {
            str3 = str5;
            if (aVar != C0106i.EnumC0107a.OUTGOING) {
                if (aVar2 == com.hiya.stingray.service.a.a.BLOCKED_AUTO_FRAUD) {
                    str3 = "auto-blocked-scam";
                } else if (aVar2 == com.hiya.stingray.service.a.a.BLOCKED_AUTO_PRIVATE) {
                    str3 = "auto-blocked-private";
                } else if (aVar2 == com.hiya.stingray.service.a.a.BLOCKED_AUTO_SPAM) {
                    str3 = "auto-blocked-spam";
                } else if (aVar2 == com.hiya.stingray.service.a.a.BLOCKED_STARTS_WITH) {
                    str3 = "auto-blocked-starts_with_prefix";
                } else {
                    str3 = str5;
                    if (aVar2 == com.hiya.stingray.service.a.a.BLOCKED_BLACK_LIST) {
                        str3 = "blocked";
                    }
                }
            }
        }
        if (str3.isEmpty()) {
            if (z4) {
                str3 = "addrbook";
            } else if (z) {
                str3 = "private";
            }
        }
        AbstractC0101c.C0102a b = AbstractC0101c.C0102a.m985b();
        b.m984c(str);
        b.m980g(str3);
        e1Var.c("count_call_text_activity", b.m986a());
    }

    /* renamed from: f */
    public static void m993f(e1 e1Var, C0106i.EnumC0107a aVar, com.hiya.stingray.service.a.a aVar2) {
        m994e(e1Var, null, null, true, false, false, aVar, aVar2, false, null);
    }

    /* renamed from: g */
    private static void m992g(e1 e1Var, String str, String str2) {
        AbstractC0101c.C0102a aVar = new AbstractC0101c.C0102a();
        aVar.m975l("tab_bar_item");
        aVar.m979h(str);
        aVar.m976k(str2);
        e1Var.c("navigate", aVar.m986a());
    }
}
