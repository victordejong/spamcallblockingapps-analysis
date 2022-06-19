package com.google.api.client.p379a.p380a;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.nio.charset.StandardCharsets;
/* renamed from: com.google.api.client.a.a.a */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/a/a/a.class */
public final class C15201a {

    /* renamed from: a */
    private static final AbstractC15202b f55041a = new C15203c("-_.*", true);

    /* renamed from: b */
    private static final AbstractC15202b f55042b = new C15203c("-_.*", false);

    /* renamed from: c */
    private static final AbstractC15202b f55043c = new C15203c("-_.!~*'()@:$&,;=+");

    /* renamed from: d */
    private static final AbstractC15202b f55044d = new C15203c("-_.!~*'()@:$&,;=+/?");

    /* renamed from: e */
    private static final AbstractC15202b f55045e = new C15203c("-_.!~*'():$&,;=");

    /* renamed from: f */
    private static final AbstractC15202b f55046f = new C15203c("-_.!~*'()@:$,;/?:");

    private C15201a() {
    }

    @Deprecated
    /* renamed from: a */
    public static String m9298a(String str) {
        return f55041a.mo9290a(str);
    }

    /* renamed from: b */
    public static String m9297b(String str) {
        return f55042b.mo9290a(str);
    }

    /* renamed from: c */
    public static String m9296c(String str) {
        try {
            return URLDecoder.decode(str, StandardCharsets.UTF_8.name());
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: d */
    public static String m9295d(String str) {
        if (str == null) {
            return null;
        }
        try {
            return URLDecoder.decode(str.replace("+", "%2B"), StandardCharsets.UTF_8.name());
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: e */
    public static String m9294e(String str) {
        return f55043c.mo9290a(str);
    }

    /* renamed from: f */
    public static String m9293f(String str) {
        return f55044d.mo9290a(str);
    }

    /* renamed from: g */
    public static String m9292g(String str) {
        return f55045e.mo9290a(str);
    }

    /* renamed from: h */
    public static String m9291h(String str) {
        return f55046f.mo9290a(str);
    }
}
