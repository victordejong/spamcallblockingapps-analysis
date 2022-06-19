package com.google.android.gms.common.server.response;

import java.math.BigDecimal;
import java.math.BigInteger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/FastParser.class */
public class FastParser<T> {

    /* renamed from: a */
    private static final char[] f7450a = {'u', 'l', 'l'};

    /* renamed from: b */
    private static final char[] f7451b = {'r', 'u', 'e'};

    /* renamed from: c */
    private static final char[] f7452c = {'r', 'u', 'e', '\"'};

    /* renamed from: d */
    private static final char[] f7453d = {'a', 'l', 's', 'e'};

    /* renamed from: e */
    private static final char[] f7454e = {'a', 'l', 's', 'e', '\"'};

    /* renamed from: f */
    private static final char[] f7455f = {'\n'};

    /* renamed from: g */
    private static final AbstractC2685a<Integer> f7456g = new C2687b();

    /* renamed from: h */
    private static final AbstractC2685a<Long> f7457h = new C2686a();

    /* renamed from: i */
    private static final AbstractC2685a<Float> f7458i = new C2689d();

    /* renamed from: j */
    private static final AbstractC2685a<Double> f7459j = new C2688c();

    /* renamed from: k */
    private static final AbstractC2685a<Boolean> f7460k = new C2691f();

    /* renamed from: l */
    private static final AbstractC2685a<String> f7461l = new C2690e();

    /* renamed from: m */
    private static final AbstractC2685a<BigInteger> f7462m = new C2693h();

    /* renamed from: n */
    private static final AbstractC2685a<BigDecimal> f7463n = new C2692g();

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/FastParser$ParseException.class */
    public static class ParseException extends Exception {
    }

    /* renamed from: com.google.android.gms.common.server.response.FastParser$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/FastParser$a.class */
    public interface AbstractC2685a<O> {
    }
}
