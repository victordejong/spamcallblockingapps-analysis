package com.google.common.collect;
/* renamed from: com.google.common.collect.s */
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/s.class */
final class C15544s {
    private C15544s() {
    }

    /* renamed from: a */
    public static int m8732a(int i) {
        return (int) (Integer.rotateLeft((int) (i * (-862048943)), 15) * 461845907);
    }

    /* renamed from: a */
    public static int m8731a(Object obj) {
        return m8732a(obj == null ? 0 : obj.hashCode());
    }
}
