package com.google.common.base;

import p1727n3.p1789g0.C26232y;
/* loaded from: classes3-dex2jar.jar:com/google/common/base/Verify.class */
public final class Verify {
    public static void verify(boolean z, String str, Object obj) {
        if (z) {
            return;
        }
        throw new VerifyException(C26232y.lenientFormat(str, obj));
    }
}
