package com.bytedance.sdk.adnet.b;

import com.bytedance.sdk.adnet.core.Request;
import com.bytedance.sdk.adnet.core.i;
import com.bytedance.sdk.adnet.core.m;
import com.bytedance.sdk.adnet.d.c;
import java.io.UnsupportedEncodingException;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/b/j.class */
public class j extends Request<String> {

    /* renamed from: c  reason: collision with root package name */
    private final Object f8248c = new Object();

    /* renamed from: d  reason: collision with root package name */
    private m.a<String> f8249d;

    public j(int i, String str, m.a<String> aVar) {
        super(i, str, aVar);
        this.f8249d = aVar;
    }

    @Override // com.bytedance.sdk.adnet.core.Request
    public m<String> a(i iVar) {
        String str;
        try {
            str = new String(iVar.f8323b, c.a(iVar.f8324c));
        } catch (UnsupportedEncodingException e) {
            str = new String(iVar.f8323b);
        }
        return m.a(str, c.a(iVar));
    }

    @Override // com.bytedance.sdk.adnet.core.Request
    public void a(m<String> mVar) {
        m.a<String> aVar;
        synchronized (this.f8248c) {
            aVar = this.f8249d;
        }
        if (aVar != null) {
            aVar.a(mVar);
        }
    }

    @Override // com.bytedance.sdk.adnet.core.Request
    public void cancel() {
        super.cancel();
        synchronized (this.f8248c) {
            this.f8249d = null;
        }
    }
}
