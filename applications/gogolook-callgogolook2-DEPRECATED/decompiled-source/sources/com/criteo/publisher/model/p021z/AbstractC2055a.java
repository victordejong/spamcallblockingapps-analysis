package com.criteo.publisher.model.p021z;

import androidx.annotation.NonNull;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import java.net.URI;
/* renamed from: com.criteo.publisher.model.z.a */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/model/z/a.class */
public abstract class AbstractC2055a extends AbstractC2074m {

    /* renamed from: a */
    public final String f2283a;

    /* renamed from: b */
    public final String f2284b;

    /* renamed from: c */
    public final URI f2285c;

    /* renamed from: d */
    public final AbstractC2077o f2286d;

    public AbstractC2055a(String str, String str2, URI uri, AbstractC2077o oVar) {
        if (str != null) {
            this.f2283a = str;
            if (str2 != null) {
                this.f2284b = str2;
                if (uri != null) {
                    this.f2285c = uri;
                    if (oVar != null) {
                        this.f2286d = oVar;
                        return;
                    }
                    throw new NullPointerException("Null logo");
                }
                throw new NullPointerException("Null logoClickUrl");
            }
            throw new NullPointerException("Null description");
        }
        throw new NullPointerException("Null domain");
    }

    @Override // com.criteo.publisher.model.p021z.AbstractC2074m
    @NonNull
    /* renamed from: a */
    public String mo35763a() {
        return this.f2284b;
    }

    @Override // com.criteo.publisher.model.p021z.AbstractC2074m
    @NonNull
    /* renamed from: b */
    public String mo35761b() {
        return this.f2283a;
    }

    @Override // com.criteo.publisher.model.p021z.AbstractC2074m
    @NonNull
    /* renamed from: c */
    public AbstractC2077o mo35760c() {
        return this.f2286d;
    }

    @Override // com.criteo.publisher.model.p021z.AbstractC2074m
    @NonNull
    /* renamed from: d */
    public URI mo35759d() {
        return this.f2285c;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC2074m)) {
            return false;
        }
        AbstractC2074m mVar = (AbstractC2074m) obj;
        if (!this.f2283a.equals(mVar.mo35761b()) || !this.f2284b.equals(mVar.mo35763a()) || !this.f2285c.equals(mVar.mo35759d()) || !this.f2286d.equals(mVar.mo35760c())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((((((this.f2283a.hashCode() ^ 1000003) * 1000003) ^ this.f2284b.hashCode()) * 1000003) ^ this.f2285c.hashCode()) * 1000003) ^ this.f2286d.hashCode();
    }

    public String toString() {
        return "NativeAdvertiser{domain=" + this.f2283a + ", description=" + this.f2284b + ", logoClickUrl=" + this.f2285c + ", logo=" + this.f2286d + CssParser.BLOCK_END;
    }
}
