package com.google.api.client.util.p290f0;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.nio.charset.StandardCharsets;
/* renamed from: com.google.api.client.util.f0.a */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/util/f0/a.class */
public final class C8701a {

    /* renamed from: a */
    private static final AbstractC8702b f38495a = new C8703c("-_.*", true);

    /* renamed from: b */
    private static final AbstractC8702b f38496b = new C8703c("-_.*", false);

    /* renamed from: c */
    private static final AbstractC8702b f38497c = new C8703c("-_.!~*'()@:$&,;=+");

    /* renamed from: d */
    private static final AbstractC8702b f38498d = new C8703c("-_.!~*'()@:$&,;=+/?");

    /* renamed from: e */
    private static final AbstractC8702b f38499e = new C8703c("-_.!~*'():$&,;=");

    /* renamed from: f */
    private static final AbstractC8702b f38500f = new C8703c("-_.!~*'()@:$,;/?:");

    /* renamed from: a */
    public static String m2910a(String str) {
        try {
            return URLDecoder.decode(str, StandardCharsets.UTF_8.name());
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: b */
    public static String m2909b(String str) {
        if (str == null) {
            return null;
        }
        try {
            return URLDecoder.decode(str.replace("+", "%2B"), StandardCharsets.UTF_8.name());
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        }
    }

    @Deprecated
    /* renamed from: c */
    public static String m2908c(String str) {
        return f38495a.mo2902a(str);
    }

    /* renamed from: d */
    public static String m2907d(String str) {
        return f38496b.mo2902a(str);
    }

    /* renamed from: e */
    public static String m2906e(String str) {
        return f38497c.mo2902a(str);
    }

    /* renamed from: f */
    public static String m2905f(String str) {
        return f38498d.mo2902a(str);
    }

    /* renamed from: g */
    public static String m2904g(String str) {
        return f38500f.mo2902a(str);
    }

    /* renamed from: h */
    public static String m2903h(String str) {
        return f38499e.mo2902a(str);
    }
}
