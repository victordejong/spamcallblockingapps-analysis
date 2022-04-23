package com.criteo.publisher.model.b0;

import java.net.URL;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/b0/d.class */
public abstract class d extends p {

    /* renamed from: a  reason: collision with root package name */
    private final URL f17551a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(URL url) {
        Objects.requireNonNull(url, "Null url");
        this.f17551a = url;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.model.b0.p
    public URL a() {
        return this.f17551a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof p) {
            return this.f17551a.equals(((p) obj).a());
        }
        return false;
    }

    public int hashCode() {
        return this.f17551a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "NativeImpressionPixel{url=" + this.f17551a + "}";
    }
}
