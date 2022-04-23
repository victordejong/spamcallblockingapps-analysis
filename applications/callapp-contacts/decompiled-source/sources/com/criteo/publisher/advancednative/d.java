package com.criteo.publisher.advancednative;

import java.net.URL;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/d.class */
public final class d extends CriteoMedia {

    /* renamed from: a  reason: collision with root package name */
    private final URL f17159a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(URL url) {
        Objects.requireNonNull(url, "Null imageUrl");
        this.f17159a = url;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof CriteoMedia) {
            return this.f17159a.equals(((CriteoMedia) obj).getImageUrl());
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.advancednative.CriteoMedia
    public final URL getImageUrl() {
        return this.f17159a;
    }

    public final int hashCode() {
        return this.f17159a.hashCode() ^ 1000003;
    }

    public final String toString() {
        return "CriteoMedia{imageUrl=" + this.f17159a + "}";
    }
}
