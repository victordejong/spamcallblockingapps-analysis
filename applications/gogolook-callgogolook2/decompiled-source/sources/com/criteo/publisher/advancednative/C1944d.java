package com.criteo.publisher.advancednative;

import androidx.annotation.NonNull;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import java.net.URL;
/* renamed from: com.criteo.publisher.advancednative.d */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/advancednative/d.class */
public final class C1944d extends CriteoMedia {

    /* renamed from: a */
    public final URL f2077a;

    public C1944d(URL url) {
        if (url != null) {
            this.f2077a = url;
            return;
        }
        throw new NullPointerException("Null imageUrl");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof CriteoMedia) {
            return this.f2077a.equals(((CriteoMedia) obj).getImageUrl());
        }
        return false;
    }

    @Override // com.criteo.publisher.advancednative.CriteoMedia
    @NonNull
    public URL getImageUrl() {
        return this.f2077a;
    }

    public int hashCode() {
        return this.f2077a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "CriteoMedia{imageUrl=" + this.f2077a + CssParser.BLOCK_END;
    }
}
