package com.criteo.publisher;

import kotlin.jvm.internal.C18524p;
/* renamed from: com.criteo.publisher.c */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/c.class */
public final class C8258c {
    /* renamed from: a */
    public static final String m25959a(Bid loggingId) {
        C18524p.m3841c(loggingId, "$this$loggingId");
        String hexString = Integer.toHexString(loggingId.hashCode());
        C18524p.m3849a((Object) hexString, "Integer.toHexString(hashCode())");
        return hexString;
    }
}
