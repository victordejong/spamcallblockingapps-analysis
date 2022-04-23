package com.vk.api.sdk.e;

import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u0012\n��\n\u0002\u0010\u000e\n��\bÀ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Lcom/vk/api/sdk/utils/VKLoader;", "", "()V", "load", "", "url", "", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/e/f.class */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public static final f f36061a = new f();

    private f() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0061, code lost:
        if (r7 != null) goto L_0x0064;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[] a(java.lang.String r3) {
        /*
            r0 = r3
            java.lang.String r1 = "url"
            kotlin.jvm.internal.p.d(r0, r1)
            r0 = 0
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = 0
            r6 = r0
            okhttp3.Request$Builder r0 = new okhttp3.Request$Builder     // Catch: all -> 0x006e, Exception -> 0x007e
            r7 = r0
            r0 = r7
            r0.<init>()     // Catch: all -> 0x006e, Exception -> 0x007e
            r0 = r7
            r1 = r3
            okhttp3.Request$Builder r0 = r0.url(r1)     // Catch: all -> 0x006e, Exception -> 0x007e
            okhttp3.Request r0 = r0.build()     // Catch: all -> 0x006e, Exception -> 0x007e
            r3 = r0
            com.vk.api.sdk.m$b r0 = new com.vk.api.sdk.m$b     // Catch: all -> 0x006e, Exception -> 0x007e
            r7 = r0
            r0 = r7
            r0.<init>()     // Catch: all -> 0x006e, Exception -> 0x007e
            r0 = r7
            okhttp3.OkHttpClient r0 = r0.a()     // Catch: all -> 0x006e, Exception -> 0x007e
            r1 = r3
            okhttp3.Call r0 = r0.newCall(r1)     // Catch: all -> 0x006e, Exception -> 0x007e
            okhttp3.Response r0 = r0.execute()     // Catch: all -> 0x006e, Exception -> 0x007e
            r3 = r0
            r0 = r3
            if (r0 != 0) goto L_0x003f
            r0 = 0
            return r0
        L_0x003f:
            r0 = r3
            okhttp3.ResponseBody r0 = r0.body()     // Catch: all -> 0x006e, Exception -> 0x007e
            r7 = r0
            r0 = r6
            r3 = r0
            r0 = r7
            if (r0 == 0) goto L_0x005d
            r0 = r7
            byte[] r0 = r0.bytes()     // Catch: all -> 0x0055, Exception -> 0x0059
            r3 = r0
            goto L_0x005d
        L_0x0055:
            r3 = move-exception
            goto L_0x0072
        L_0x0059:
            r3 = move-exception
            goto L_0x0082
        L_0x005d:
            r0 = r3
            r5 = r0
            r0 = r7
            if (r0 == 0) goto L_0x008c
        L_0x0064:
            r0 = r7
            r0.close()
            r0 = r3
            r5 = r0
            goto L_0x008c
        L_0x006e:
            r3 = move-exception
            r0 = 0
            r7 = r0
        L_0x0072:
            r0 = r7
            if (r0 == 0) goto L_0x007c
            r0 = r7
            r0.close()
        L_0x007c:
            r0 = r3
            throw r0
        L_0x007e:
            r3 = move-exception
            r0 = 0
            r7 = r0
        L_0x0082:
            r0 = r7
            if (r0 == 0) goto L_0x008c
            r0 = r4
            r3 = r0
            goto L_0x0064
        L_0x008c:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vk.api.sdk.e.f.a(java.lang.String):byte[]");
    }
}
