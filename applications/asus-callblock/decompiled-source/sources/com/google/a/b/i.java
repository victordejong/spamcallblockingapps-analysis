package com.google.a.b;
/* loaded from: classes-dex2jar.jar:com/google/a/b/i.class */
final class i {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i) {
        int i2 = ((i >>> 20) ^ (i >>> 12)) ^ i;
        return (i2 >>> 4) ^ ((i2 >>> 7) ^ i2);
    }
}
