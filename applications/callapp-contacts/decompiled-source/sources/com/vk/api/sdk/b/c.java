package com.vk.api.sdk.b;

import com.vk.api.sdk.e.a.c;
import com.vk.api.sdk.g;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0003\n\u0002\b\u0002\b&\u0018��*\u0006\b��\u0010\u0001 \u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0017\u0010\b\u001a\u0004\u0018\u00018��2\u0006\u0010\t\u001a\u00020\nH&¢\u0006\u0002\u0010\u000bJ\u0018\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0004J\u0018\u0010\u0012\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0004R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0013"}, d2 = {"Lcom/vk/api/sdk/chain/ChainCall;", "T", "", "manager", "Lcom/vk/api/sdk/VKApiManager;", "(Lcom/vk/api/sdk/VKApiManager;)V", "getManager", "()Lcom/vk/api/sdk/VKApiManager;", "call", "args", "Lcom/vk/api/sdk/chain/ChainArgs;", "(Lcom/vk/api/sdk/chain/ChainArgs;)Ljava/lang/Object;", "logDebug", "", "msg", "", "t", "", "logWarning", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/b/c.class */
public abstract class c<T> {

    /* renamed from: a  reason: collision with root package name */
    private final g f35972a;

    public c(g manager) {
        p.d(manager, "manager");
        this.f35972a = manager;
    }

    public final g a() {
        return this.f35972a;
    }

    public abstract T a(b bVar) throws Exception;

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(String msg, Throwable t) {
        p.d(msg, "msg");
        p.d(t, "t");
        this.f35972a.f36080c.g.a(c.a.DEBUG, msg, t);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void b(String msg, Throwable t) {
        p.d(msg, "msg");
        p.d(t, "t");
        this.f35972a.f36080c.g.a(c.a.WARNING, msg, t);
    }
}
