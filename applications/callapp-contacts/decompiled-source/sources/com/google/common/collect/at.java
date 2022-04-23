package com.google.common.collect;

import java.lang.reflect.Field;
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/at.class */
final class at {

    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/at$a.class */
    static final class a<T> {

        /* renamed from: a  reason: collision with root package name */
        final Field f32029a;

        private a(Field field) {
            this.f32029a = field;
            field.setAccessible(true);
        }
    }

    private at() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> a<T> a(Class<T> cls, String str) {
        try {
            return new a<>(cls.getDeclaredField(str));
        } catch (NoSuchFieldException e) {
            throw new AssertionError(e);
        }
    }
}
