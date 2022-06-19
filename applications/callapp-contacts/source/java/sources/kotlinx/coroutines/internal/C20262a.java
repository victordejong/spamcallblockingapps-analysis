package kotlinx.coroutines.internal;

import com.mopub.common.AdType;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.p518a.C18273i;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��,\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0007\b\u0010\u0018��*\b\b��\u0010\u0001*\u00020\u00022\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\u0013\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00028��¢\u0006\u0002\u0010\u0010J\u0006\u0010\u0011\u001a\u00020\u000eJ\b\u0010\u0012\u001a\u00020\u000eH\u0002J\r\u0010\u0013\u001a\u0004\u0018\u00018��¢\u0006\u0002\u0010\u0014R\u0018\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0005X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n��R\u0011\u0010\t\u001a\u00020\n8F¢\u0006\u0006\u001a\u0004\b\t\u0010\u000bR\u000e\u0010\f\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n��¨\u0006\u0015"}, m4298d2 = {"Lkotlinx/coroutines/internal/ArrayQueue;", "T", "", "()V", "elements", "", "[Ljava/lang/Object;", "head", "", "isEmpty", "", "()Z", "tail", "addLast", "", "element", "(Ljava/lang/Object;)V", AdType.CLEAR, "ensureCapacity", "removeFirstOrNull", "()Ljava/lang/Object;", "kotlinx-coroutines-core"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.internal.a */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/internal/a.class */
public final class C20262a<T> {

    /* renamed from: a */
    private Object[] f66716a = new Object[16];

    /* renamed from: b */
    private int f66717b;

    /* renamed from: c */
    private int f66718c;

    /* renamed from: c */
    private final void m893c() {
        Object[] objArr = this.f66716a;
        int length = objArr.length;
        Object[] objArr2 = new Object[length << 1];
        C18273i.m4217a(objArr, objArr2, 0, this.f66717b, 0, 10);
        Object[] objArr3 = this.f66716a;
        int length2 = objArr3.length;
        int i = this.f66717b;
        C18273i.m4217a(objArr3, objArr2, length2 - i, 0, i, 4);
        this.f66716a = objArr2;
        this.f66717b = 0;
        this.f66718c = length;
    }

    /* renamed from: a */
    public final void m895a(T t) {
        Object[] objArr = this.f66716a;
        int i = this.f66718c;
        objArr[i] = t;
        int length = (objArr.length - 1) & (i + 1);
        this.f66718c = length;
        if (length == this.f66717b) {
            m893c();
        }
    }

    /* renamed from: a */
    public final boolean m896a() {
        return this.f66717b == this.f66718c;
    }

    /* renamed from: b */
    public final T m894b() {
        int i = this.f66717b;
        if (i == this.f66718c) {
            return null;
        }
        Object[] objArr = this.f66716a;
        T t = (T) objArr[i];
        objArr[i] = null;
        this.f66717b = (i + 1) & (objArr.length - 1);
        Objects.requireNonNull(t, "null cannot be cast to non-null type T");
        return t;
    }
}
