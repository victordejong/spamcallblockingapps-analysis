package com.android.volley.toolbox;

import com.android.volley.j;
import com.android.volley.n;
import com.android.volley.p;
import com.android.volley.v;
import java.io.UnsupportedEncodingException;
/* loaded from: classes-dex2jar.jar:com/android/volley/toolbox/k.class */
public abstract class k<T> extends n<T> {
    private static final String m = String.format("application/json; charset=%s", "utf-8");
    private p.b<T> n;
    private final String o = null;

    public k(String str, p.b<T> bVar, p.a aVar) {
        super(str, aVar);
        this.n = bVar;
    }

    @Override // com.android.volley.n
    public abstract p<T> a(j jVar);

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.volley.n
    public final void a() {
        super.a();
        this.n = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.volley.n
    public final void a(T t) {
        if (this.n != null) {
            this.n.a(t);
        }
    }

    @Override // com.android.volley.n
    public final String e() {
        return m;
    }

    @Override // com.android.volley.n
    public final byte[] f() {
        return h();
    }

    @Override // com.android.volley.n
    public final String g() {
        return m;
    }

    @Override // com.android.volley.n
    public final byte[] h() {
        byte[] bArr = null;
        try {
            if (this.o != null) {
                bArr = this.o.getBytes("utf-8");
            }
        } catch (UnsupportedEncodingException e) {
            v.d("Unsupported Encoding while trying to get the bytes of %s using %s", this.o, "utf-8");
        }
        return bArr;
    }
}
