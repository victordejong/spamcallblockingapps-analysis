package com.criteo.publisher.model.p257b0;

import java.net.URL;
import java.util.Objects;
/* renamed from: com.criteo.publisher.model.b0.d */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/b0/d.class */
public abstract class AbstractC8458d extends AbstractC8477p {

    /* renamed from: a */
    private final URL f30241a;

    public AbstractC8458d(URL url) {
        Objects.requireNonNull(url, "Null url");
        this.f30241a = url;
    }

    @Override // com.criteo.publisher.model.p257b0.AbstractC8477p
    /* renamed from: a */
    public URL mo25615a() {
        return this.f30241a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC8477p)) {
            return false;
        }
        return this.f30241a.equals(((AbstractC8477p) obj).mo25615a());
    }

    public int hashCode() {
        return this.f30241a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "NativeImpressionPixel{url=" + this.f30241a + "}";
    }
}
