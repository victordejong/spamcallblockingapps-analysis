package com.hiya.stingray.util;

import android.content.Context;
import androidx.core.content.a;
import com.google.i18n.phonenumbers.h;
import com.google.i18n.phonenumbers.m;
import java.util.Currency;
import kotlin.l;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.util.q */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/util/q.class */
public final class C0123q {
    /* renamed from: a */
    public static final Integer m934a(String str, String str2) {
        k.g(str, "simIso");
        k.g(str2, "phone");
        m W = h.t().W(str2, str);
        k.c(W, "parsedPhoneNumber");
        return Integer.valueOf(W.c());
    }

    /* renamed from: b */
    public static final String m933b(String str) {
        k.g(str, "currency");
        Currency instance = Currency.getInstance(str);
        String str2 = str;
        if (instance != null) {
            String symbol = instance.getSymbol(C0122p.m950k());
            str2 = str;
            if (symbol != null) {
                str2 = symbol;
            }
        }
        return str2;
    }

    /* renamed from: c */
    public static final l<String, Integer> m932c(Context context, String str) {
        k.g(context, "context");
        k.g(str, "simIso");
        int a = a.a(context, "android.permission.READ_PHONE_STATE");
        l<String, Integer> lVar = null;
        if (a != 0) {
            return null;
        }
        String o = C0122p.m946o(context);
        k.c(o, "devicePhoneNumber");
        if (o.length() > 0) {
            m W = h.t().W(o, str);
            String c = C0131y.m895c(o, str);
            k.c(W, "parsedPhoneNumber");
            lVar = new l<>(c, Integer.valueOf(W.c()));
        }
        return lVar;
    }

    /* renamed from: d */
    public static final String m931d(Context context, String str) {
        k.g(context, "context");
        k.g(str, "simIso");
        int a = a.a(context, "android.permission.READ_PHONE_STATE");
        String str2 = null;
        if (a != 0) {
            return null;
        }
        String o = C0122p.m946o(context);
        k.c(o, "devicePhoneNumber");
        if (o.length() > 0) {
            h.t().W(o, str);
            str2 = C0131y.m895c(o, str);
        }
        return str2;
    }

    /* renamed from: e */
    public static final boolean m930e(String str) {
        k.g(str, "$this$isValidAvatarURL");
        return !kotlin.c0.m.I(str, "http://", false, 2, (Object) null);
    }
}
