package com.google.common.collect;
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/s.class */
final class s {
    private s() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i) {
        return (int) (Integer.rotateLeft((int) (i * (-862048943)), 15) * 461845907);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(Object obj) {
        return a(obj == null ? 0 : obj.hashCode());
    }
}
