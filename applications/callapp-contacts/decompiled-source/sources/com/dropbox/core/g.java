package com.dropbox.core;

import com.dropbox.core.util.d;
import com.dropbox.core.util.f;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/g.class */
public final class g {

    /* renamed from: c  reason: collision with root package name */
    private static final SecureRandom f17759c = new SecureRandom();

    /* renamed from: a  reason: collision with root package name */
    public String f17760a;

    /* renamed from: b  reason: collision with root package name */
    public String f17761b;

    public g() {
        String a2 = a();
        this.f17760a = a2;
        this.f17761b = a(a2);
    }

    public g(String str) {
        this.f17760a = str;
        this.f17761b = a(str);
    }

    private static String a() {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < 128; i++) {
            sb.append("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-._~".charAt(f17759c.nextInt(66)));
        }
        return sb.toString();
    }

    private static String a(String str) {
        try {
            return f.c(MessageDigest.getInstance("SHA-256").digest(str.getBytes("US-ASCII"))).replaceAll("=+$", "");
        } catch (UnsupportedEncodingException e) {
            throw d.a("Impossible", (Throwable) e);
        } catch (NoSuchAlgorithmException e2) {
            throw d.a("Impossible", (Throwable) e2);
        }
    }
}
