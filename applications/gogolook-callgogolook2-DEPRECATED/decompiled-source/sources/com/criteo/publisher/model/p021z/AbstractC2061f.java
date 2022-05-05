package com.criteo.publisher.model.p021z;

import androidx.annotation.NonNull;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import java.net.URI;
/* renamed from: com.criteo.publisher.model.z.f */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/model/z/f.class */
public abstract class AbstractC2061f extends AbstractC2080r {

    /* renamed from: a */
    public final String f2300a;

    /* renamed from: b */
    public final String f2301b;

    /* renamed from: c */
    public final String f2302c;

    /* renamed from: d */
    public final URI f2303d;

    /* renamed from: e */
    public final String f2304e;

    /* renamed from: f */
    public final AbstractC2077o f2305f;

    public AbstractC2061f(String str, String str2, String str3, URI uri, String str4, AbstractC2077o oVar) {
        if (str != null) {
            this.f2300a = str;
            if (str2 != null) {
                this.f2301b = str2;
                if (str3 != null) {
                    this.f2302c = str3;
                    if (uri != null) {
                        this.f2303d = uri;
                        if (str4 != null) {
                            this.f2304e = str4;
                            if (oVar != null) {
                                this.f2305f = oVar;
                                return;
                            }
                            throw new NullPointerException("Null image");
                        }
                        throw new NullPointerException("Null callToAction");
                    }
                    throw new NullPointerException("Null clickUrl");
                }
                throw new NullPointerException("Null price");
            }
            throw new NullPointerException("Null description");
        }
        throw new NullPointerException("Null title");
    }

    @Override // com.criteo.publisher.model.p021z.AbstractC2080r
    @NonNull
    /* renamed from: a */
    public String mo35726a() {
        return this.f2304e;
    }

    @Override // com.criteo.publisher.model.p021z.AbstractC2080r
    @NonNull
    /* renamed from: b */
    public URI mo35724b() {
        return this.f2303d;
    }

    @Override // com.criteo.publisher.model.p021z.AbstractC2080r
    @NonNull
    /* renamed from: c */
    public String mo35723c() {
        return this.f2301b;
    }

    @Override // com.criteo.publisher.model.p021z.AbstractC2080r
    @NonNull
    /* renamed from: d */
    public AbstractC2077o mo35722d() {
        return this.f2305f;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC2080r)) {
            return false;
        }
        AbstractC2080r rVar = (AbstractC2080r) obj;
        if (!this.f2300a.equals(rVar.mo35719g()) || !this.f2301b.equals(rVar.mo35723c()) || !this.f2302c.equals(rVar.mo35720f()) || !this.f2303d.equals(rVar.mo35724b()) || !this.f2304e.equals(rVar.mo35726a()) || !this.f2305f.equals(rVar.mo35722d())) {
            z = false;
        }
        return z;
    }

    @Override // com.criteo.publisher.model.p021z.AbstractC2080r
    @NonNull
    /* renamed from: f */
    public String mo35720f() {
        return this.f2302c;
    }

    @Override // com.criteo.publisher.model.p021z.AbstractC2080r
    @NonNull
    /* renamed from: g */
    public String mo35719g() {
        return this.f2300a;
    }

    public int hashCode() {
        return ((((((((((this.f2300a.hashCode() ^ 1000003) * 1000003) ^ this.f2301b.hashCode()) * 1000003) ^ this.f2302c.hashCode()) * 1000003) ^ this.f2303d.hashCode()) * 1000003) ^ this.f2304e.hashCode()) * 1000003) ^ this.f2305f.hashCode();
    }

    public String toString() {
        return "NativeProduct{title=" + this.f2300a + ", description=" + this.f2301b + ", price=" + this.f2302c + ", clickUrl=" + this.f2303d + ", callToAction=" + this.f2304e + ", image=" + this.f2305f + CssParser.BLOCK_END;
    }
}
