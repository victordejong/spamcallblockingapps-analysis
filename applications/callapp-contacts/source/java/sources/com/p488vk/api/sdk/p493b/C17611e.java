package com.p488vk.api.sdk.p493b;

import com.p488vk.api.sdk.C17685g;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��$\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B%\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028��0\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0017\u0010\t\u001a\u0004\u0018\u00018��2\u0006\u0010\n\u001a\u00020\u000bH\u0016¢\u0006\u0002\u0010\fJ\u001f\u0010\r\u001a\u0004\u0018\u00018��2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u0007H\u0002¢\u0006\u0002\u0010\u000fR\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028��0\u0002X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0010"}, m4298d2 = {"Lcom/vk/api/sdk/chain/InvalidCredentialsObserverChainCall;", "T", "Lcom/vk/api/sdk/chain/ChainCall;", "manager", "Lcom/vk/api/sdk/VKApiManager;", "chain", "checkAuthCount", "", "(Lcom/vk/api/sdk/VKApiManager;Lcom/vk/api/sdk/chain/ChainCall;I)V", "call", "args", "Lcom/vk/api/sdk/chain/ChainArgs;", "(Lcom/vk/api/sdk/chain/ChainArgs;)Ljava/lang/Object;", "callWithAuthCheck", "iteration", "(Lcom/vk/api/sdk/chain/ChainArgs;I)Ljava/lang/Object;", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: com.vk.api.sdk.b.e */
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/b/e.class */
public final class C17611e<T> extends AbstractC17609c<T> {

    /* renamed from: a */
    private final AbstractC17609c<T> f62358a;

    /* renamed from: b */
    private final int f62359b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public C17611e(C17685g manager, AbstractC17609c<? extends T> chain, int i) {
        super(manager);
        C18524p.m3840d(manager, "manager");
        C18524p.m3840d(chain, "chain");
        this.f62358a = chain;
        this.f62359b = i;
    }

    public /* synthetic */ C17611e(C17685g c17685g, AbstractC17609c abstractC17609c, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(c17685g, abstractC17609c, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00a0  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final T m4875a(com.p488vk.api.sdk.p493b.C17608b r5, int r6) {
        /*
            r4 = this;
        L0:
            r0 = r4
            com.vk.api.sdk.b.c<T> r0 = r0.f62358a     // Catch: com.p488vk.api.sdk.exceptions.VKApiExecutionException -> Lb
            r1 = r5
            java.lang.Object r0 = r0.mo4868a(r1)     // Catch: com.p488vk.api.sdk.exceptions.VKApiExecutionException -> Lb
            r7 = r0
            r0 = r7
            return r0
        Lb:
            r8 = move-exception
            r0 = r8
            boolean r0 = r0.m4831a()
            if (r0 == 0) goto Lc8
            r0 = r4
            int r0 = r0.f62359b
            r9 = r0
            r0 = r9
            if (r0 <= 0) goto L8a
            r0 = r6
            r1 = r9
            if (r0 >= r1) goto L8a
            r0 = r8
            android.os.Bundle r0 = r0.f62497d
            r10 = r0
            r0 = 0
            r7 = r0
            r0 = r10
            if (r0 == 0) goto L3d
            r0 = r10
            java.lang.String r1 = "access_token"
            r2 = 0
            java.lang.String r0 = r0.getString(r1, r2)
            r7 = r0
        L3d:
            r0 = r4
            com.vk.api.sdk.g r0 = r0.m4878a()
            com.vk.api.sdk.c.c r0 = r0.m4829a()
            java.lang.String r0 = r0.f62404b
            r10 = r0
            r0 = r4
            com.vk.api.sdk.g r0 = r0.m4878a()
            com.vk.api.sdk.c.c r0 = r0.m4829a()
            java.lang.String r0 = r0.f62407e
            r11 = r0
            r0 = r7
            r1 = r10
            boolean r0 = kotlin.jvm.internal.C18524p.m3850a(r0, r1)
            r12 = r0
            r0 = 1
            r9 = r0
            r0 = r11
            if (r0 == 0) goto L71
            r0 = r7
            r1 = r11
            boolean r0 = kotlin.jvm.internal.C18524p.m3850a(r0, r1)
            if (r0 == 0) goto L71
            goto L74
        L71:
            r0 = 0
            r9 = r0
        L74:
            r0 = r7
            if (r0 == 0) goto L8a
            r0 = r12
            r1 = 1
            r0 = r0 ^ r1
            if (r0 != 0) goto L84
            r0 = r9
            if (r0 == 0) goto L8a
        L84:
            int r6 = r6 + 1
            goto L0
        L8a:
            r0 = r8
            int r0 = r0.f62495b
            r1 = 3610(0xe1a, float:5.059E-42)
            if (r0 != r1) goto La0
            r0 = r4
            com.vk.api.sdk.g r0 = r0.m4878a()
            com.vk.api.sdk.f r0 = r0.f62506b
            r5 = r0
            goto Lc8
        La0:
            r0 = r4
            com.vk.api.sdk.g r0 = r0.m4878a()
            com.vk.api.sdk.f r0 = r0.f62506b
            if (r0 == 0) goto Lc8
            r0 = r8
            android.os.Bundle r0 = r0.f62497d
            r5 = r0
            r0 = r5
            if (r0 == 0) goto Lc8
            r0 = r5
            java.lang.String r1 = "user_ban_info"
            java.lang.String r0 = r0.getString(r1)
            r5 = r0
            r0 = r5
            if (r0 == 0) goto Lc8
            org.json.JSONObject r0 = new org.json.JSONObject
            r1 = r0
            r2 = r5
            r1.<init>(r2)
        Lc8:
            r0 = r8
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p488vk.api.sdk.p493b.C17611e.m4875a(com.vk.api.sdk.b.b, int):java.lang.Object");
    }

    @Override // com.p488vk.api.sdk.p493b.AbstractC17609c
    /* renamed from: a */
    public final T mo4868a(C17608b args) throws Exception {
        C18524p.m3840d(args, "args");
        return m4875a(args, 0);
    }
}
