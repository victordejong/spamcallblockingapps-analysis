package com.criteo.publisher;

import kotlin.jvm.internal.p;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/c.class */
public final class c {
    public static final String a(Bid loggingId) {
        p.c(loggingId, "$this$loggingId");
        String hexString = Integer.toHexString(loggingId.hashCode());
        p.a((Object) hexString, "Integer.toHexString(hashCode())");
        return hexString;
    }
}
