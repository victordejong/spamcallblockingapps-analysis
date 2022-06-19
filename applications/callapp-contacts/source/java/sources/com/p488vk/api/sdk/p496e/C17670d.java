package com.p488vk.api.sdk.p496e;

import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.KProperty;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001c\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\b��\u0018��*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u0013\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\u0004¢\u0006\u0002\u0010\u0005J\r\u0010\n\u001a\u00028��H\u0016¢\u0006\u0002\u0010\u000bR\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\u0004¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00028��0\tX\u0082\u0004¢\u0006\u0002\n��¨\u0006\f"}, m4298d2 = {"Lcom/vk/api/sdk/utils/ThreadLocalDelegateImpl;", "T", "Lcom/vk/api/sdk/utils/ThreadLocalDelegate;", "factory", "Lkotlin/Function0;", "(Lkotlin/jvm/functions/Function0;)V", "getFactory", "()Lkotlin/jvm/functions/Function0;", "value", "Ljava/lang/ThreadLocal;", "get", "()Ljava/lang/Object;", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: com.vk.api.sdk.e.d */
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/e/d.class */
public final class C17670d<T> implements AbstractC17669c<T> {

    /* renamed from: a */
    final Function0<T> f62479a;

    /* renamed from: b */
    private final ThreadLocal<T> f62480b = new C17671a();

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\r\n��\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001��\b\n\u0018��2\b\u0012\u0004\u0012\u00028��0\u0001J\r\u0010\u0002\u001a\u00028��H\u0014¢\u0006\u0002\u0010\u0003¨\u0006\u0004"}, m4298d2 = {"com/vk/api/sdk/utils/ThreadLocalDelegateImpl$value$1", "Ljava/lang/ThreadLocal;", "initialValue", "()Ljava/lang/Object;", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.e.d$a */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/e/d$a.class */
    public static final class C17671a extends ThreadLocal<T> {
        C17671a() {
            C17670d.this = r4;
        }

        @Override // java.lang.ThreadLocal
        protected final T initialValue() {
            return C17670d.this.f62479a.invoke();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C17670d(Function0<? extends T> factory) {
        C18524p.m3840d(factory, "factory");
        this.f62479a = factory;
    }

    @Override // com.p488vk.api.sdk.p496e.AbstractC17669c
    /* renamed from: a */
    public final T mo4843a() {
        T t = this.f62480b.get();
        C18524p.m3851a(t);
        return t;
    }

    @Override // com.p488vk.api.sdk.p496e.AbstractC17669c
    /* renamed from: a */
    public final T mo4842a(KProperty<?> property) {
        C18524p.m3840d(property, "property");
        C18524p.m3840d(property, "property");
        return mo4843a();
    }
}
