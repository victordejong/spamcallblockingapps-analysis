package com.bytedance.sdk.openadsdk.preload.geckox.p223i;

import com.bytedance.sdk.openadsdk.preload.geckox.buffer.p209a.C5328b;
import com.bytedance.sdk.openadsdk.preload.geckox.utils.C5417b;
import com.bytedance.sdk.p127a.p129b.AbstractC4148z;
import com.bytedance.sdk.p127a.p129b.C4098aa;
import com.bytedance.sdk.p127a.p129b.C4132r;
import com.bytedance.sdk.p127a.p129b.C4139u;
import com.bytedance.sdk.p127a.p129b.C4140v;
import com.bytedance.sdk.p127a.p129b.C4146y;
import java.io.BufferedInputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
/* renamed from: com.bytedance.sdk.openadsdk.preload.geckox.i.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/i/a.class */
public class C5383a implements AbstractC5384b {

    /* renamed from: a */
    protected C4140v f18880a = new C4140v.C4142a().m36358a(10, TimeUnit.SECONDS).m36356b(10, TimeUnit.SECONDS).m36354c(10, TimeUnit.SECONDS).m36359a();

    /* renamed from: b */
    protected C4140v f18881b = new C4140v.C4142a().m36358a(10, TimeUnit.SECONDS).m36356b(30, TimeUnit.SECONDS).m36354c(30, TimeUnit.SECONDS).m36359a();

    /* renamed from: a */
    private Map<String, String> m32424a(C4132r c4132r) {
        if (c4132r == null) {
            return null;
        }
        HashMap hashMap = new HashMap();
        for (String str : c4132r.m36467b()) {
            hashMap.put(str, c4132r.m36469a(str));
        }
        return hashMap;
    }

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.p223i.AbstractC5384b
    /* renamed from: a */
    public C5385c mo32422a(String str, String str2) throws Exception {
        C4098aa mo36352a = this.f18880a.m36396a(new C4146y.C4147a().m36329a(str).m36330a(AbstractC4148z.m36317a(C4139u.m36399a("application/json; charset=utf-8"), str2)).m36319d()).mo36352a();
        return new C5385c(m32424a(mo36352a.m36606g()), mo36352a.m36610c() == 200 ? mo36352a.m36605h().m36580e() : null, mo36352a.m36610c(), mo36352a.m36608e());
    }

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.p223i.AbstractC5384b
    /* renamed from: a */
    public void mo32423a(String str, long j, C5328b c5328b) throws Exception {
        Throwable th;
        int i;
        BufferedInputStream bufferedInputStream;
        Exception e;
        BufferedInputStream bufferedInputStream2 = null;
        try {
            try {
                C4098aa mo36352a = this.f18881b.m36396a(new C4146y.C4147a().m36333a().m36329a(str).m36319d()).mo36352a();
                i = mo36352a.m36610c();
                try {
                    bufferedInputStream = new BufferedInputStream(mo36352a.m36605h().m36581c());
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
                if (read == -1) {
                    C5417b.m32360a(bufferedInputStream);
                    return;
                }
                c5328b.write(bArr, 0, read);
            }
        } catch (Exception e4) {
            e = e4;
            BufferedInputStream bufferedInputStream3 = bufferedInputStream;
            BufferedInputStream bufferedInputStream4 = bufferedInputStream;
            StringBuilder sb = new StringBuilder("downloadFile failed, code: ");
            BufferedInputStream bufferedInputStream5 = bufferedInputStream;
            sb.append(i);
            BufferedInputStream bufferedInputStream6 = bufferedInputStream;
            sb.append(", url:");
            BufferedInputStream bufferedInputStream7 = bufferedInputStream;
            sb.append(str);
            BufferedInputStream bufferedInputStream8 = bufferedInputStream;
            sb.append(", caused by:");
            BufferedInputStream bufferedInputStream9 = bufferedInputStream;
            sb.append(e.getMessage());
            BufferedInputStream bufferedInputStream10 = bufferedInputStream;
            bufferedInputStream2 = bufferedInputStream;
            throw new RuntimeException(sb.toString(), e);
        } catch (Throwable th3) {
            th = th3;
            bufferedInputStream2 = bufferedInputStream;
            C5417b.m32360a(bufferedInputStream2);
            throw th;
        }
    }
}
