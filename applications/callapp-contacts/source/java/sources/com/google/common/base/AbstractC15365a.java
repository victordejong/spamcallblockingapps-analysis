package com.google.common.base;

import java.util.Iterator;
import java.util.NoSuchElementException;
/* renamed from: com.google.common.base.a */
/* loaded from: classes4-dex2jar.jar:com/google/common/base/a.class */
abstract class AbstractC15365a<T> implements Iterator<T> {

    /* renamed from: a */
    private int f55607a = EnumC15367a.f55611b;

    /* renamed from: b */
    private T f55608b;

    /* renamed from: com.google.common.base.a$1 */
    /* loaded from: classes4-dex2jar.jar:com/google/common/base/a$1.class */
    public static final /* synthetic */ class C153661 {

        /* renamed from: a */
        static final /* synthetic */ int[] f55609a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x001e -> B:11:0x0013). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC15367a.m8974a().length];
            f55609a = iArr;
            try {
                iArr[EnumC15367a.f55612c - 1] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f55609a[EnumC15367a.f55610a - 1] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* renamed from: com.google.common.base.a$a */
    /* loaded from: classes4-dex2jar.jar:com/google/common/base/a$a.class */
    public static final class EnumC15367a extends Enum<EnumC15367a> {

        /* renamed from: a */
        public static final int f55610a = 1;

        /* renamed from: b */
        public static final int f55611b = 2;

        /* renamed from: c */
        public static final int f55612c = 3;

        /* renamed from: d */
        public static final int f55613d = 4;

        /* renamed from: e */
        private static final /* synthetic */ int[] f55614e = {1, 2, 3, 4};

        private EnumC15367a(String str, int i) {
            super(str, i);
        }

        /* renamed from: a */
        public static int[] m8974a() {
            return (int[]) f55614e.clone();
        }
    }

    /* renamed from: a */
    protected abstract T mo8927a();

    /* renamed from: b */
    public final T m8975b() {
        this.f55607a = EnumC15367a.f55612c;
        return null;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        C15391m.m8934b(this.f55607a != EnumC15367a.f55613d);
        int i = C153661.f55609a[this.f55607a - 1];
        if (i != 1) {
            if (i == 2) {
                return true;
            }
            this.f55607a = EnumC15367a.f55613d;
            this.f55608b = mo8927a();
            if (this.f55607a == EnumC15367a.f55612c) {
                return false;
            }
            this.f55607a = EnumC15367a.f55610a;
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator
    public final T next() {
        if (hasNext()) {
            this.f55607a = EnumC15367a.f55611b;
            T t = this.f55608b;
            this.f55608b = null;
            return t;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
