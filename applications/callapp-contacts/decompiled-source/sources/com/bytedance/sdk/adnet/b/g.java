package com.bytedance.sdk.adnet.b;

import com.bytedance.sdk.adnet.core.Request;
import com.bytedance.sdk.adnet.core.i;
import com.bytedance.sdk.adnet.core.m;
import com.bytedance.sdk.adnet.core.o;
import java.io.UnsupportedEncodingException;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/b/g.class */
public abstract class g<T> extends Request<T> {

    /* renamed from: c  reason: collision with root package name */
    private static final String f8243c = String.format("application/json; charset=%s", "utf-8");

    /* renamed from: d  reason: collision with root package name */
    private final Object f8244d = new Object();
    private m.a<T> e;
    private final String f;

    public g(int i, String str, String str2, m.a<T> aVar) {
        super(i, str, aVar);
        this.e = aVar;
        this.f = str2;
    }

    @Override // com.bytedance.sdk.adnet.core.Request
    public abstract m<T> a(i iVar);

    @Override // com.bytedance.sdk.adnet.core.Request
    public void a(m<T> mVar) {
        m.a<T> aVar;
        synchronized (this.f8244d) {
            aVar = this.e;
        }
        if (aVar != null) {
            aVar.a(mVar);
        }
    }

    @Override // com.bytedance.sdk.adnet.core.Request
    public void cancel() {
        super.cancel();
        synchronized (this.f8244d) {
            this.e = null;
        }
    }

    @Override // com.bytedance.sdk.adnet.core.Request
    public byte[] getBody() {
        try {
            String str = this.f;
            if (str == null) {
                return null;
            }
            return str.getBytes("utf-8");
        } catch (UnsupportedEncodingException e) {
            o.d("Unsupported Encoding while trying to get the bytes of %s using %s", this.f, "utf-8");
            return null;
        }
    }

    @Override // com.bytedance.sdk.adnet.core.Request
    public String getBodyContentType() {
        return f8243c;
    }

    @Override // com.bytedance.sdk.adnet.core.Request
    @Deprecated
    public byte[] getPostBody() {
        return getBody();
    }
}
