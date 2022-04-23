package com.google.common.collect;

import com.google.common.base.m;
import java.util.NoSuchElementException;
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/b.class */
public abstract class b<T> extends ay<T> {

    /* renamed from: a  reason: collision with root package name */
    private int f32042a = a.f32046b;

    /* renamed from: b  reason: collision with root package name */
    private T f32043b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.common.collect.b$1  reason: invalid class name */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/b$1.class */
    public static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f32044a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x001e -> B:11:0x0013). Please submit an issue!!! */
        static {
            int[] iArr = new int[a.a().length];
            f32044a = iArr;
            try {
                iArr[a.f32047c - 1] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f32044a[a.f32045a - 1] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/b$a.class */
    public static final class a extends Enum<a> {

        /* renamed from: a  reason: collision with root package name */
        public static final int f32045a = 1;

        /* renamed from: b  reason: collision with root package name */
        public static final int f32046b = 2;

        /* renamed from: c  reason: collision with root package name */
        public static final int f32047c = 3;

        /* renamed from: d  reason: collision with root package name */
        public static final int f32048d = 4;
        private static final /* synthetic */ int[] e = {1, 2, 3, 4};

        private a(String str, int i) {
        }

        public static int[] a() {
            return (int[]) e.clone();
        }
    }

    protected abstract T a();

    /* JADX INFO: Access modifiers changed from: protected */
    public final T b() {
        this.f32042a = a.f32047c;
        return null;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        m.b(this.f32042a != a.f32048d);
        int i = AnonymousClass1.f32044a[this.f32042a - 1];
        if (i == 1) {
            return false;
        }
        if (i == 2) {
            return true;
        }
        this.f32042a = a.f32048d;
        this.f32043b = a();
        if (this.f32042a == a.f32047c) {
            return false;
        }
        this.f32042a = a.f32045a;
        return true;
    }

    @Override // java.util.Iterator
    public final T next() {
        if (hasNext()) {
            this.f32042a = a.f32046b;
            T t = this.f32043b;
            this.f32043b = null;
            return t;
        }
        throw new NoSuchElementException();
    }
}
