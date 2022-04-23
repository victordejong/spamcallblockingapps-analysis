package kotlinx.coroutines.internal;

import com.mopub.common.AdType;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.a.i;
@Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0007\b\u0010\u0018��*\b\b��\u0010\u0001*\u00020\u00022\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\u0013\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00028��¢\u0006\u0002\u0010\u0010J\u0006\u0010\u0011\u001a\u00020\u000eJ\b\u0010\u0012\u001a\u00020\u000eH\u0002J\r\u0010\u0013\u001a\u0004\u0018\u00018��¢\u0006\u0002\u0010\u0014R\u0018\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0005X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n��R\u0011\u0010\t\u001a\u00020\n8F¢\u0006\u0006\u001a\u0004\b\t\u0010\u000bR\u000e\u0010\f\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n��¨\u0006\u0015"}, d2 = {"Lkotlinx/coroutines/internal/ArrayQueue;", "T", "", "()V", "elements", "", "[Ljava/lang/Object;", "head", "", "isEmpty", "", "()Z", "tail", "addLast", "", "element", "(Ljava/lang/Object;)V", AdType.CLEAR, "ensureCapacity", "removeFirstOrNull", "()Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/internal/a.class */
public final class a<T> {

    /* renamed from: a  reason: collision with root package name */
    private Object[] f38795a = new Object[16];

    /* renamed from: b  reason: collision with root package name */
    private int f38796b;

    /* renamed from: c  reason: collision with root package name */
    private int f38797c;

    private final void c() {
        Object[] objArr = this.f38795a;
        int length = objArr.length;
        Object[] objArr2 = new Object[length << 1];
        i.a(objArr, objArr2, 0, this.f38796b, 0, 10);
        Object[] objArr3 = this.f38795a;
        int length2 = objArr3.length;
        int i = this.f38796b;
        i.a(objArr3, objArr2, length2 - i, 0, i, 4);
        this.f38795a = objArr2;
        this.f38796b = 0;
        this.f38797c = length;
    }

    public final void a(T t) {
        Object[] objArr = this.f38795a;
        int i = this.f38797c;
        objArr[i] = t;
        int length = (objArr.length - 1) & (i + 1);
        this.f38797c = length;
        if (length == this.f38796b) {
            c();
        }
    }

    public final boolean a() {
        return this.f38796b == this.f38797c;
    }

    public final T b() {
        int i = this.f38796b;
        if (i == this.f38797c) {
            return null;
        }
        Object[] objArr = this.f38795a;
        T t = (T) objArr[i];
        objArr[i] = null;
        this.f38796b = (i + 1) & (objArr.length - 1);
        Objects.requireNonNull(t, "null cannot be cast to non-null type T");
        return t;
    }
}
