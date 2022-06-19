package kotlinx.coroutines.internal;

import kotlin.TypeCastException;
import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlinx.coroutines.internal.b */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/internal/b.class */
public class C1896b<T> {

    /* renamed from: a */
    private Object[] f4632a = new Object[16];

    /* renamed from: b */
    private int f4633b;

    /* renamed from: c */
    private int f4634c;

    /* renamed from: c */
    private final void m2670c() {
        Object[] objArr = this.f4632a;
        int length = objArr.length;
        Object[] objArr2 = new Object[length << 1];
        int length2 = objArr.length;
        int i = this.f4633b;
        int i2 = length2 - i;
        C1895a.m2674a(objArr, i, objArr2, 0, i2);
        C1895a.m2674a(this.f4632a, 0, objArr2, i2, this.f4633b);
        this.f4632a = objArr2;
        this.f4633b = 0;
        this.f4634c = length;
    }

    /* renamed from: a */
    public final void m2672a(T t) {
        C1694h.m3117b(t, "element");
        Object[] objArr = this.f4632a;
        int i = this.f4634c;
        objArr[i] = t;
        this.f4634c = (objArr.length - 1) & (i + 1);
        if (this.f4634c == this.f4633b) {
            m2670c();
        }
    }

    /* renamed from: a */
    public final boolean m2673a() {
        return this.f4633b == this.f4634c;
    }

    /* renamed from: b */
    public final T m2671b() {
        int i = this.f4633b;
        if (i == this.f4634c) {
            return null;
        }
        Object[] objArr = this.f4632a;
        T t = (T) objArr[i];
        objArr[i] = null;
        this.f4633b = (i + 1) & (objArr.length - 1);
        if (t == null) {
            throw new TypeCastException("null cannot be cast to non-null type T");
        }
        return t;
    }
}
