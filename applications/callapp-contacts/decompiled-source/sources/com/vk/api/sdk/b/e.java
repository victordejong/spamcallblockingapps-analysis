package com.vk.api.sdk.b;

import com.vk.api.sdk.g;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B%\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028��0\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0017\u0010\t\u001a\u0004\u0018\u00018��2\u0006\u0010\n\u001a\u00020\u000bH\u0016¢\u0006\u0002\u0010\fJ\u001f\u0010\r\u001a\u0004\u0018\u00018��2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u0007H\u0002¢\u0006\u0002\u0010\u000fR\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028��0\u0002X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0010"}, d2 = {"Lcom/vk/api/sdk/chain/InvalidCredentialsObserverChainCall;", "T", "Lcom/vk/api/sdk/chain/ChainCall;", "manager", "Lcom/vk/api/sdk/VKApiManager;", "chain", "checkAuthCount", "", "(Lcom/vk/api/sdk/VKApiManager;Lcom/vk/api/sdk/chain/ChainCall;I)V", "call", "args", "Lcom/vk/api/sdk/chain/ChainArgs;", "(Lcom/vk/api/sdk/chain/ChainArgs;)Ljava/lang/Object;", "callWithAuthCheck", "iteration", "(Lcom/vk/api/sdk/chain/ChainArgs;I)Ljava/lang/Object;", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/b/e.class */
public final class e<T> extends c<T> {

    /* renamed from: a  reason: collision with root package name */
    private final c<T> f35975a;

    /* renamed from: b  reason: collision with root package name */
    private final int f35976b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public e(g manager, c<? extends T> chain, int i) {
        super(manager);
        p.d(manager, "manager");
        p.d(chain, "chain");
        this.f35975a = chain;
        this.f35976b = i;
    }

    public /* synthetic */ e(g gVar, c cVar, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(gVar, cVar, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00a0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final T a(com.vk.api.sdk.b.b r5, int r6) {
        /*
            r4 = this;
        L_0x0000:
            r0 = r4
            com.vk.api.sdk.b.c<T> r0 = r0.f35975a     // Catch: VKApiExecutionException -> 0x000b
            r1 = r5
            java.lang.Object r0 = r0.a(r1)     // Catch: VKApiExecutionException -> 0x000b
            r7 = r0
            r0 = r7
            return r0
        L_0x000b:
            r8 = move-exception
            r0 = r8
            boolean r0 = r0.a()
            if (r0 == 0) goto L_0x00c8
            r0 = r4
            int r0 = r0.f35976b
            r9 = r0
            r0 = r9
            if (r0 <= 0) goto L_0x008a
            r0 = r6
            r1 = r9
            if (r0 >= r1) goto L_0x008a
            r0 = r8
            android.os.Bundle r0 = r0.f36075d
            r10 = r0
            r0 = 0
            r7 = r0
            r0 = r10
            if (r0 == 0) goto L_0x003d
            r0 = r10
            java.lang.String r1 = "access_token"
            r2 = 0
            java.lang.String r0 = r0.getString(r1, r2)
            r7 = r0
        L_0x003d:
            r0 = r4
            com.vk.api.sdk.g r0 = r0.a()
            com.vk.api.sdk.c.c r0 = r0.a()
            java.lang.String r0 = r0.f36012b
            r10 = r0
            r0 = r4
            com.vk.api.sdk.g r0 = r0.a()
            com.vk.api.sdk.c.c r0 = r0.a()
            java.lang.String r0 = r0.e
            r11 = r0
            r0 = r7
            r1 = r10
            boolean r0 = kotlin.jvm.internal.p.a(r0, r1)
            r12 = r0
            r0 = 1
            r9 = r0
            r0 = r11
            if (r0 == 0) goto L_0x0071
            r0 = r7
            r1 = r11
            boolean r0 = kotlin.jvm.internal.p.a(r0, r1)
            if (r0 == 0) goto L_0x0071
            goto L_0x0074
        L_0x0071:
            r0 = 0
            r9 = r0
        L_0x0074:
            r0 = r7
            if (r0 == 0) goto L_0x008a
            r0 = r12
            r1 = 1
            r0 = r0 ^ r1
            if (r0 != 0) goto L_0x0084
            r0 = r9
            if (r0 == 0) goto L_0x008a
        L_0x0084:
            int r6 = r6 + 1
            goto L_0x0000
        L_0x008a:
            r0 = r8
            int r0 = r0.f36073b
            r1 = 3610(0xe1a, float:5.059E-42)
            if (r0 != r1) goto L_0x00a0
            r0 = r4
            com.vk.api.sdk.g r0 = r0.a()
            com.vk.api.sdk.f r0 = r0.f36079b
            r5 = r0
            goto L_0x00c8
        L_0x00a0:
            r0 = r4
            com.vk.api.sdk.g r0 = r0.a()
            com.vk.api.sdk.f r0 = r0.f36079b
            if (r0 == 0) goto L_0x00c8
            r0 = r8
            android.os.Bundle r0 = r0.f36075d
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x00c8
            r0 = r5
            java.lang.String r1 = "user_ban_info"
            java.lang.String r0 = r0.getString(r1)
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x00c8
            org.json.JSONObject r0 = new org.json.JSONObject
            r1 = r0
            r2 = r5
            r1.<init>(r2)
        L_0x00c8:
            r0 = r8
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vk.api.sdk.b.e.a(com.vk.api.sdk.b.b, int):java.lang.Object");
    }

    @Override // com.vk.api.sdk.b.c
    public final T a(b args) throws Exception {
        p.d(args, "args");
        return a(args, 0);
    }
}
