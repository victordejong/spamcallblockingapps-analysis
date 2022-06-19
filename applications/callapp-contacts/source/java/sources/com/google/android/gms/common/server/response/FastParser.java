package com.google.android.gms.common.server.response;

import com.google.android.gms.common.server.response.FastJsonResponse;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Stack;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/server/response/FastParser.class */
public final class FastParser<T extends FastJsonResponse> {

    /* renamed from: f */
    private static final char[] f39588f = {'u', 'l', 'l'};

    /* renamed from: g */
    private static final char[] f39589g = {'r', 'u', 'e'};

    /* renamed from: h */
    private static final char[] f39590h = {'r', 'u', 'e', '\"'};

    /* renamed from: i */
    private static final char[] f39591i = {'a', 'l', 's', 'e'};

    /* renamed from: j */
    private static final char[] f39592j = {'a', 'l', 's', 'e', '\"'};

    /* renamed from: k */
    private static final char[] f39593k = {'\n'};

    /* renamed from: m */
    private static final AbstractC12082i<Integer> f39594m = new C12074a();

    /* renamed from: n */
    private static final AbstractC12082i<Long> f39595n = new C12075b();

    /* renamed from: o */
    private static final AbstractC12082i<Float> f39596o = new C12076c();

    /* renamed from: p */
    private static final AbstractC12082i<Double> f39597p = new C12077d();

    /* renamed from: q */
    private static final AbstractC12082i<Boolean> f39598q = new C12078e();

    /* renamed from: r */
    private static final AbstractC12082i<String> f39599r = new C12079f();

    /* renamed from: s */
    private static final AbstractC12082i<BigInteger> f39600s = new C12080g();

    /* renamed from: t */
    private static final AbstractC12082i<BigDecimal> f39601t = new C12081h();

    /* renamed from: a */
    private final char[] f39602a = new char[1];

    /* renamed from: b */
    private final char[] f39603b = new char[32];

    /* renamed from: c */
    private final char[] f39604c = new char[1024];

    /* renamed from: d */
    private final StringBuilder f39605d = new StringBuilder(32);

    /* renamed from: e */
    private final StringBuilder f39606e = new StringBuilder(1024);

    /* renamed from: l */
    private final Stack<Integer> f39607l = new Stack<>();

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/server/response/FastParser$ParseException.class */
    public static class ParseException extends Exception {
        public ParseException(String str) {
            super(str);
        }

        public ParseException(String str, Throwable th) {
            super("Error instantiating inner object", th);
        }

        public ParseException(Throwable th) {
            super(th);
        }
    }
}
