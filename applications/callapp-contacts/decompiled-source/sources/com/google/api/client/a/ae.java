package com.google.api.client.a;

import java.nio.charset.StandardCharsets;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/a/ae.class */
public final class ae {

    /* renamed from: a  reason: collision with root package name */
    public static final String f31603a = System.getProperty("line.separator");

    private ae() {
    }

    public static byte[] a(String str) {
        if (str == null) {
            return null;
        }
        return str.getBytes(StandardCharsets.UTF_8);
    }
}
