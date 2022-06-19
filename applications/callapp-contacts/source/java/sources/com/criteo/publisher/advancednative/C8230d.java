package com.criteo.publisher.advancednative;

import java.net.URL;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.criteo.publisher.advancednative.d */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/d.class */
public final class C8230d extends CriteoMedia {

    /* renamed from: a */
    private final URL f29763a;

    public C8230d(URL url) {
        Objects.requireNonNull(url, "Null imageUrl");
        this.f29763a = url;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CriteoMedia)) {
            return false;
        }
        return this.f29763a.equals(((CriteoMedia) obj).getImageUrl());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.advancednative.CriteoMedia
    public final URL getImageUrl() {
        return this.f29763a;
    }

    public final int hashCode() {
        return this.f29763a.hashCode() ^ 1000003;
    }

    public final String toString() {
        return "CriteoMedia{imageUrl=" + this.f29763a + "}";
    }
}
