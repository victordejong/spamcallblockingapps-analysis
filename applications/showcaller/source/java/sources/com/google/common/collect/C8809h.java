package com.google.common.collect;
/* renamed from: com.google.common.collect.h */
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/h.class */
final class C8809h {
    /* renamed from: a */
    public static int m2635a(int i) {
        return (int) (Integer.rotateLeft((int) (i * (-862048943)), 15) * 461845907);
    }

    /* renamed from: b */
    public static int m2634b(Object obj) {
        return m2635a(obj == null ? 0 : obj.hashCode());
    }
}
