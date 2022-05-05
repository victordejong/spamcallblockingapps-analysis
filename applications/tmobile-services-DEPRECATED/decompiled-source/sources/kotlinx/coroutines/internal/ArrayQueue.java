package kotlinx.coroutines.internal;

import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0010\u0018��*\b\b��\u0010\u0002*\u00020\u0001B\u0007¢\u0006\u0004\b\u0016\u0010\bJ\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00028��¢\u0006\u0004\b\u0005\u0010\u0006J\r\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\t\u0010\bJ\u000f\u0010\n\u001a\u0004\u0018\u00018��¢\u0006\u0004\b\n\u0010\u000bR\u001e\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0016\u0010\u0010\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0013\u0010\u0013\u001a\u00020\u00128F@\u0006¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0015\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0011¨\u0006\u0017"}, d2 = {"Lkotlinx/coroutines/internal/ArrayQueue;", "", "T", "element", "", "addLast", "(Ljava/lang/Object;)V", "clear", "()V", "ensureCapacity", "removeFirstOrNull", "()Ljava/lang/Object;", "", "elements", "[Ljava/lang/Object;", "", "head", "I", "", "isEmpty", "()Z", "tail", "<init>", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/internal/ArrayQueue.class */
public class ArrayQueue<T> {

    /* renamed from: a */
    private Object[] f23886a = new Object[16];

    /* renamed from: b */
    private int f23887b;

    /* renamed from: c */
    private int f23888c;

    /* renamed from: b */
    private final void m586b() {
        Object[] objArr = this.f23886a;
        int length = objArr.length;
        Object[] objArr2 = new Object[length << 1];
        ArraysKt___ArraysJvmKt.m2300f(objArr, objArr2, 0, this.f23887b, 0, 10, null);
        Object[] objArr3 = this.f23886a;
        int length2 = objArr3.length;
        int i = this.f23887b;
        ArraysKt___ArraysJvmKt.m2300f(objArr3, objArr2, length2 - i, 0, i, 4, null);
        this.f23886a = objArr2;
        this.f23887b = 0;
        this.f23888c = length;
    }

    /* renamed from: a */
    public final void m587a(@NotNull T t) {
        Object[] objArr = this.f23886a;
        int i = this.f23888c;
        objArr[i] = t;
        int length = (objArr.length - 1) & (i + 1);
        this.f23888c = length;
        if (length == this.f23887b) {
            m586b();
        }
    }

    /* renamed from: c */
    public final boolean m585c() {
        return this.f23887b == this.f23888c;
    }

    @Nullable
    /* renamed from: d */
    public final T m584d() {
        int i = this.f23887b;
        if (i == this.f23888c) {
            return null;
        }
        Object[] objArr = this.f23886a;
        T t = (T) objArr[i];
        objArr[i] = null;
        this.f23887b = (i + 1) & (objArr.length - 1);
        if (t != null) {
            return t;
        }
        throw new NullPointerException("null cannot be cast to non-null type T");
    }
}
