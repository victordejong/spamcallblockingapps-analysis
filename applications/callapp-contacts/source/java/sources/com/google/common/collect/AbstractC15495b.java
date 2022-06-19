package com.google.common.collect;

import com.google.common.base.C15391m;
import java.util.NoSuchElementException;
/* renamed from: com.google.common.collect.b */
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/b.class */
public abstract class AbstractC15495b<T> extends AbstractC15493ay<T> {

    /* renamed from: a */
    private int f55770a = EnumC15497a.f55774b;

    /* renamed from: b */
    private T f55771b;

    /* renamed from: com.google.common.collect.b$1 */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/b$1.class */
    public static final /* synthetic */ class C154961 {

        /* renamed from: a */
        static final /* synthetic */ int[] f55772a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x001e -> B:11:0x0013). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC15497a.m8815a().length];
            f55772a = iArr;
            try {
                iArr[EnumC15497a.f55775c - 1] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f55772a[EnumC15497a.f55773a - 1] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* renamed from: com.google.common.collect.b$a */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/b$a.class */
    public static final class EnumC15497a extends Enum<EnumC15497a> {

        /* renamed from: a */
        public static final int f55773a = 1;

        /* renamed from: b */
        public static final int f55774b = 2;

        /* renamed from: c */
        public static final int f55775c = 3;

        /* renamed from: d */
        public static final int f55776d = 4;

        /* renamed from: e */
        private static final /* synthetic */ int[] f55777e = {1, 2, 3, 4};

        private EnumC15497a(String str, int i) {
            super(str, i);
        }

        /* renamed from: a */
        public static int[] m8815a() {
            return (int[]) f55777e.clone();
        }
    }

    /* renamed from: a */
    protected abstract T mo8817a();

    /* renamed from: b */
    public final T m8816b() {
        this.f55770a = EnumC15497a.f55775c;
        return null;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        C15391m.m8934b(this.f55770a != EnumC15497a.f55776d);
        int i = C154961.f55772a[this.f55770a - 1];
        if (i != 1) {
            if (i == 2) {
                return true;
            }
            this.f55770a = EnumC15497a.f55776d;
            this.f55771b = mo8817a();
            if (this.f55770a == EnumC15497a.f55775c) {
                return false;
            }
            this.f55770a = EnumC15497a.f55773a;
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator
    public final T next() {
        if (hasNext()) {
            this.f55770a = EnumC15497a.f55774b;
            T t = this.f55771b;
            this.f55771b = null;
            return t;
        }
        throw new NoSuchElementException();
    }
}
