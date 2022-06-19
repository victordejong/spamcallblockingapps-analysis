package com.google.common.collect;

import com.google.common.base.C8756j;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.common.collect.c */
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/c.class */
public final class C8804c {
    /* renamed from: a */
    public static int m2638a(int i, String str) {
        if (i >= 0) {
            return i;
        }
        throw new IllegalArgumentException(str + " cannot be negative but was: " + i);
    }

    /* renamed from: b */
    public static void m2637b(boolean z) {
        C8756j.m2782s(z, "no calls to next() since the last call to remove()");
    }
}
