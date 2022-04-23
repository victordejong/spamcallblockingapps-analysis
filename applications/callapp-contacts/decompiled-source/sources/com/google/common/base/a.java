package com.google.common.base;

import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes4-dex2jar.jar:com/google/common/base/a.class */
abstract class a<T> implements Iterator<T> {

    /* renamed from: a  reason: collision with root package name */
    private int f31908a = EnumC0506a.f31912b;

    /* renamed from: b  reason: collision with root package name */
    private T f31909b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.common.base.a$1  reason: invalid class name */
    /* loaded from: classes4-dex2jar.jar:com/google/common/base/a$1.class */
    public static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f31910a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x001e -> B:11:0x0013). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC0506a.a().length];
            f31910a = iArr;
            try {
                iArr[EnumC0506a.f31913c - 1] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31910a[EnumC0506a.f31911a - 1] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* renamed from: com.google.common.base.a$a  reason: collision with other inner class name */
    /* loaded from: classes4-dex2jar.jar:com/google/common/base/a$a.class */
    public static final class EnumC0506a extends Enum<EnumC0506a> {

        /* renamed from: a  reason: collision with root package name */
        public static final int f31911a = 1;

        /* renamed from: b  reason: collision with root package name */
        public static final int f31912b = 2;

        /* renamed from: c  reason: collision with root package name */
        public static final int f31913c = 3;

        /* renamed from: d  reason: collision with root package name */
        public static final int f31914d = 4;
        private static final /* synthetic */ int[] e = {1, 2, 3, 4};

        private EnumC0506a(String str, int i) {
        }

        public static int[] a() {
            return (int[]) e.clone();
        }
    }

    protected abstract T a();

    /* JADX INFO: Access modifiers changed from: protected */
    public final T b() {
        this.f31908a = EnumC0506a.f31913c;
        return null;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        m.b(this.f31908a != EnumC0506a.f31914d);
        int i = AnonymousClass1.f31910a[this.f31908a - 1];
        if (i == 1) {
            return false;
        }
        if (i == 2) {
            return true;
        }
        this.f31908a = EnumC0506a.f31914d;
        this.f31909b = a();
        if (this.f31908a == EnumC0506a.f31913c) {
            return false;
        }
        this.f31908a = EnumC0506a.f31911a;
        return true;
    }

    @Override // java.util.Iterator
    public final T next() {
        if (hasNext()) {
            this.f31908a = EnumC0506a.f31912b;
            T t = this.f31909b;
            this.f31909b = null;
            return t;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
