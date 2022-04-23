package com.e.b;
/* loaded from: classes2-dex2jar.jar:com/e/b/d.class */
final class d {
    d() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(boolean z, String str, Object... objArr) {
        if (!z) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
    }
}
