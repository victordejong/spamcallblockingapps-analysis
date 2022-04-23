package com.bytedance.sdk.openadsdk.preload.geckox.i;

import com.bytedance.sdk.a.b.aa;
import com.bytedance.sdk.a.b.r;
import com.bytedance.sdk.a.b.u;
import com.bytedance.sdk.a.b.v;
import com.bytedance.sdk.a.b.y;
import com.bytedance.sdk.a.b.z;
import com.bytedance.sdk.openadsdk.preload.geckox.buffer.a.b;
import java.io.BufferedInputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/i/a.class */
public class a implements b {

    /* renamed from: a  reason: collision with root package name */
    protected v f10217a = new v.a().a(10, TimeUnit.SECONDS).b(10, TimeUnit.SECONDS).c(10, TimeUnit.SECONDS).a();

    /* renamed from: b  reason: collision with root package name */
    protected v f10218b = new v.a().a(10, TimeUnit.SECONDS).b(30, TimeUnit.SECONDS).c(30, TimeUnit.SECONDS).a();

    private Map<String, String> a(r rVar) {
        if (rVar == null) {
            return null;
        }
        HashMap hashMap = new HashMap();
        for (String str : rVar.b()) {
            hashMap.put(str, rVar.a(str));
        }
        return hashMap;
    }

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.i.b
    public c a(String str, String str2) throws Exception {
        aa a2 = this.f10217a.a(new y.a().a(str).a(z.a(u.a("application/json; charset=utf-8"), str2)).d()).a();
        return new c(a(a2.g()), a2.c() == 200 ? a2.h().e() : null, a2.c(), a2.e());
    }

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.i.b
    public void a(String str, long j, b bVar) throws Exception {
        Throwable th;
        int i;
        Exception e;
        BufferedInputStream bufferedInputStream = null;
        try {
            try {
                aa a2 = this.f10218b.a(new y.a().a().a(str).d()).a();
                i = a2.c();
                try {
                    bufferedInputStream = new BufferedInputStream(a2.h().c());
                } catch (Exception e2) {
                    e = e2;
                    bufferedInputStream = null;
                }
            } catch (Exception e3) {
                e = e3;
                i = 0;
                bufferedInputStream = null;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            byte[] bArr = new byte[2048];
            while (true) {
                int read = bufferedInputStream.read(bArr, 0, 2048);
                if (read != -1) {
                    bVar.write(bArr, 0, read);
                } else {
                    com.bytedance.sdk.openadsdk.preload.geckox.utils.b.a(bufferedInputStream);
                    return;
                }
            }
        } catch (Exception e4) {
            e = e4;
            StringBuilder sb = new StringBuilder("downloadFile failed, code: ");
            sb.append(i);
            sb.append(", url:");
            sb.append(str);
            sb.append(", caused by:");
            sb.append(e.getMessage());
            throw new RuntimeException(sb.toString(), e);
        } catch (Throwable th3) {
            th = th3;
            bufferedInputStream = bufferedInputStream;
            com.bytedance.sdk.openadsdk.preload.geckox.utils.b.a(bufferedInputStream);
            throw th;
        }
    }
}
