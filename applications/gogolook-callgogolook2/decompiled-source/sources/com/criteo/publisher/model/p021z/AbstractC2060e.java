package com.criteo.publisher.model.p021z;

import androidx.annotation.NonNull;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import java.net.URI;
import java.net.URL;
import p081h.p203i.p384e.p385v.AbstractC10120c;
/* renamed from: com.criteo.publisher.model.z.e */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/model/z/e.class */
public abstract class AbstractC2060e extends AbstractC2079q {

    /* renamed from: a */
    public final URI f2297a;

    /* renamed from: b */
    public final URL f2298b;

    /* renamed from: c */
    public final String f2299c;

    public AbstractC2060e(URI uri, URL url, String str) {
        if (uri != null) {
            this.f2297a = uri;
            if (url != null) {
                this.f2298b = url;
                if (str != null) {
                    this.f2299c = str;
                    return;
                }
                throw new NullPointerException("Null legalText");
            }
            throw new NullPointerException("Null imageUrl");
        }
        throw new NullPointerException("Null clickUrl");
    }

    @Override // com.criteo.publisher.model.p021z.AbstractC2079q
    @NonNull
    @AbstractC10120c("optoutClickUrl")
    /* renamed from: a */
    public URI mo35730a() {
        return this.f2297a;
    }

    @Override // com.criteo.publisher.model.p021z.AbstractC2079q
    @NonNull
    @AbstractC10120c("optoutImageUrl")
    /* renamed from: b */
    public URL mo35728b() {
        return this.f2298b;
    }

    @Override // com.criteo.publisher.model.p021z.AbstractC2079q
    @NonNull
    @AbstractC10120c("longLegalText")
    /* renamed from: c */
    public String mo35727c() {
        return this.f2299c;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC2079q)) {
            return false;
        }
        AbstractC2079q qVar = (AbstractC2079q) obj;
        if (!this.f2297a.equals(qVar.mo35730a()) || !this.f2298b.equals(qVar.mo35728b()) || !this.f2299c.equals(qVar.mo35727c())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((((this.f2297a.hashCode() ^ 1000003) * 1000003) ^ this.f2298b.hashCode()) * 1000003) ^ this.f2299c.hashCode();
    }

    public String toString() {
        return "NativePrivacy{clickUrl=" + this.f2297a + ", imageUrl=" + this.f2298b + ", legalText=" + this.f2299c + CssParser.BLOCK_END;
    }
}
