package com.google.android.gms.common.server.response;

import com.google.android.gms.common.server.response.FastJsonResponse;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Stack;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/server/response/FastParser.class */
public final class FastParser<T extends FastJsonResponse> {
    private static final char[] f = {'u', 'l', 'l'};
    private static final char[] g = {'r', 'u', 'e'};
    private static final char[] h = {'r', 'u', 'e', '\"'};
    private static final char[] i = {'a', 'l', 's', 'e'};
    private static final char[] j = {'a', 'l', 's', 'e', '\"'};
    private static final char[] k = {'\n'};
    private static final i<Integer> m = new a();
    private static final i<Long> n = new b();
    private static final i<Float> o = new c();
    private static final i<Double> p = new d();
    private static final i<Boolean> q = new e();
    private static final i<String> r = new f();
    private static final i<BigInteger> s = new g();
    private static final i<BigDecimal> t = new h();

    /* renamed from: a  reason: collision with root package name */
    private final char[] f22922a = new char[1];

    /* renamed from: b  reason: collision with root package name */
    private final char[] f22923b = new char[32];

    /* renamed from: c  reason: collision with root package name */
    private final char[] f22924c = new char[1024];

    /* renamed from: d  reason: collision with root package name */
    private final StringBuilder f22925d = new StringBuilder(32);
    private final StringBuilder e = new StringBuilder(1024);
    private final Stack<Integer> l = new Stack<>();

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
