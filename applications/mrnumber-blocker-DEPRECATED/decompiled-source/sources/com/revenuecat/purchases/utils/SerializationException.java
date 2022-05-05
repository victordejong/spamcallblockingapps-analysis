package com.revenuecat.purchases.utils;

import kotlin.w.c.g;
import kotlin.w.c.k;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/utils/SerializationException.class */
public class SerializationException extends RuntimeException {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SerializationException(String str, Throwable th) {
        super(str, th);
        k.f(str, "message");
    }

    public /* synthetic */ SerializationException(String str, Throwable th, int i, g gVar) {
        this(str, (i & 2) != 0 ? null : th);
    }
}
