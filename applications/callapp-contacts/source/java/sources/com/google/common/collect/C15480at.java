package com.google.common.collect;

import java.lang.reflect.Field;
/* renamed from: com.google.common.collect.at */
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/at.class */
final class C15480at {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.common.collect.at$a */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/at$a.class */
    public static final class C15482a<T> {

        /* renamed from: a */
        final Field f55757a;

        private C15482a(Field field) {
            this.f55757a = field;
            field.setAccessible(true);
        }
    }

    private C15480at() {
    }

    /* renamed from: a */
    public static <T> C15482a<T> m8826a(Class<T> cls, String str) {
        try {
            return new C15482a<>(cls.getDeclaredField(str));
        } catch (NoSuchFieldException e) {
            throw new AssertionError(e);
        }
    }
}
