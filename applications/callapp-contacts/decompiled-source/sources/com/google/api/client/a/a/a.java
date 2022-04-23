package com.google.api.client.a.a;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.nio.charset.StandardCharsets;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/a/a/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final b f31589a = new c("-_.*", true);

    /* renamed from: b  reason: collision with root package name */
    private static final b f31590b = new c("-_.*", false);

    /* renamed from: c  reason: collision with root package name */
    private static final b f31591c = new c("-_.!~*'()@:$&,;=+");

    /* renamed from: d  reason: collision with root package name */
    private static final b f31592d = new c("-_.!~*'()@:$&,;=+/?");
    private static final b e = new c("-_.!~*'():$&,;=");
    private static final b f = new c("-_.!~*'()@:$,;/?:");

    private a() {
    }

    @Deprecated
    public static String a(String str) {
        return f31589a.a(str);
    }

    public static String b(String str) {
        return f31590b.a(str);
    }

    public static String c(String str) {
        try {
            return URLDecoder.decode(str, StandardCharsets.UTF_8.name());
        } catch (UnsupportedEncodingException e2) {
            throw new RuntimeException(e2);
        }
    }

    public static String d(String str) {
        if (str == null) {
            return null;
        }
        try {
            return URLDecoder.decode(str.replace("+", "%2B"), StandardCharsets.UTF_8.name());
        } catch (UnsupportedEncodingException e2) {
            throw new RuntimeException(e2);
        }
    }

    public static String e(String str) {
        return f31591c.a(str);
    }

    public static String f(String str) {
        return f31592d.a(str);
    }

    public static String g(String str) {
        return e.a(str);
    }

    public static String h(String str) {
        return f.a(str);
    }
}
