package com.p488vk.api.sdk.p493b;

import com.p488vk.api.sdk.C17685g;
import com.p488vk.api.sdk.p496e.p497a.AbstractC17665c;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��0\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0003\n\u0002\b\u0002\b&\u0018��*\u0006\b��\u0010\u0001 \u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0017\u0010\b\u001a\u0004\u0018\u00018��2\u0006\u0010\t\u001a\u00020\nH&¢\u0006\u0002\u0010\u000bJ\u0018\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0004J\u0018\u0010\u0012\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0004R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0013"}, m4298d2 = {"Lcom/vk/api/sdk/chain/ChainCall;", "T", "", "manager", "Lcom/vk/api/sdk/VKApiManager;", "(Lcom/vk/api/sdk/VKApiManager;)V", "getManager", "()Lcom/vk/api/sdk/VKApiManager;", "call", "args", "Lcom/vk/api/sdk/chain/ChainArgs;", "(Lcom/vk/api/sdk/chain/ChainArgs;)Ljava/lang/Object;", "logDebug", "", "msg", "", "t", "", "logWarning", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: com.vk.api.sdk.b.c */
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/b/c.class */
public abstract class AbstractC17609c<T> {

    /* renamed from: a */
    private final C17685g f62355a;

    public AbstractC17609c(C17685g manager) {
        C18524p.m3840d(manager, "manager");
        this.f62355a = manager;
    }

    /* renamed from: a */
    public final C17685g m4878a() {
        return this.f62355a;
    }

    /* renamed from: a */
    public abstract T mo4868a(C17608b c17608b) throws Exception;

    /* renamed from: a */
    public final void m4877a(String msg, Throwable t) {
        C18524p.m3840d(msg, "msg");
        C18524p.m3840d(t, "t");
        this.f62355a.f62507c.f62442g.mo4847a(AbstractC17665c.EnumC17666a.DEBUG, msg, t);
    }

    /* renamed from: b */
    public final void m4876b(String msg, Throwable t) {
        C18524p.m3840d(msg, "msg");
        C18524p.m3840d(t, "t");
        this.f62355a.f62507c.f62442g.mo4847a(AbstractC17665c.EnumC17666a.WARNING, msg, t);
    }
}
