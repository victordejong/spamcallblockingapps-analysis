package com.vk.api.sdk.e;

import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.p;
import kotlin.reflect.KProperty;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\b��\u0018��*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u0013\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\u0004¢\u0006\u0002\u0010\u0005J\r\u0010\n\u001a\u00028��H\u0016¢\u0006\u0002\u0010\u000bR\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\u0004¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00028��0\tX\u0082\u0004¢\u0006\u0002\n��¨\u0006\f"}, d2 = {"Lcom/vk/api/sdk/utils/ThreadLocalDelegateImpl;", "T", "Lcom/vk/api/sdk/utils/ThreadLocalDelegate;", "factory", "Lkotlin/Function0;", "(Lkotlin/jvm/functions/Function0;)V", "getFactory", "()Lkotlin/jvm/functions/Function0;", "value", "Ljava/lang/ThreadLocal;", "get", "()Ljava/lang/Object;", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/e/d.class */
public final class d<T> implements c<T> {

    /* renamed from: a  reason: collision with root package name */
    final Function0<T> f36058a;

    /* renamed from: b  reason: collision with root package name */
    private final ThreadLocal<T> f36059b = new a();

    @Metadata(bv = {1, 0, 3}, d1 = {"��\r\n��\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001��\b\n\u0018��2\b\u0012\u0004\u0012\u00028��0\u0001J\r\u0010\u0002\u001a\u00028��H\u0014¢\u0006\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"com/vk/api/sdk/utils/ThreadLocalDelegateImpl$value$1", "Ljava/lang/ThreadLocal;", "initialValue", "()Ljava/lang/Object;", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/e/d$a.class */
    public static final class a extends ThreadLocal<T> {
        a() {
        }

        @Override // java.lang.ThreadLocal
        protected final T initialValue() {
            return d.this.f36058a.invoke();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public d(Function0<? extends T> factory) {
        p.d(factory, "factory");
        this.f36058a = factory;
    }

    @Override // com.vk.api.sdk.e.c
    public final T a() {
        T t = this.f36059b.get();
        p.a(t);
        return t;
    }

    @Override // com.vk.api.sdk.e.c
    public final T a(KProperty<?> property) {
        p.d(property, "property");
        p.d(property, "property");
        return a();
    }
}
