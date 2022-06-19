package com.dropbox.core;

import com.dropbox.core.util.C8636d;
import com.dropbox.core.util.C8638f;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
/* renamed from: com.dropbox.core.g */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/g.class */
public final class C8575g {

    /* renamed from: c */
    private static final SecureRandom f30540c = new SecureRandom();

    /* renamed from: a */
    public String f30541a;

    /* renamed from: b */
    public String f30542b;

    public C8575g() {
        String m25313a = m25313a();
        this.f30541a = m25313a;
        this.f30542b = m25312a(m25313a);
    }

    public C8575g(String str) {
        this.f30541a = str;
        this.f30542b = m25312a(str);
    }

    /* renamed from: a */
    private static String m25313a() {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < 128; i++) {
            sb.append("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-._~".charAt(f30540c.nextInt(66)));
        }
        return sb.toString();
    }

    /* renamed from: a */
    private static String m25312a(String str) {
        try {
            return C8638f.m25212c(MessageDigest.getInstance("SHA-256").digest(str.getBytes("US-ASCII"))).replaceAll("=+$", "");
        } catch (UnsupportedEncodingException e) {
            throw C8636d.m25222a("Impossible", (Throwable) e);
        } catch (NoSuchAlgorithmException e2) {
            throw C8636d.m25222a("Impossible", (Throwable) e2);
        }
    }
}
