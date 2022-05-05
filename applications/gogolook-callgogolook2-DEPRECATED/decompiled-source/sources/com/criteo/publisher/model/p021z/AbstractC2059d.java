package com.criteo.publisher.model.p021z;

import androidx.annotation.NonNull;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import java.net.URL;
/* renamed from: com.criteo.publisher.model.z.d */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/model/z/d.class */
public abstract class AbstractC2059d extends AbstractC2078p {

    /* renamed from: a */
    public final URL f2296a;

    public AbstractC2059d(URL url) {
        if (url != null) {
            this.f2296a = url;
            return;
        }
        throw new NullPointerException("Null url");
    }

    @Override // com.criteo.publisher.model.p021z.AbstractC2078p
    @NonNull
    /* renamed from: a */
    public URL mo35732a() {
        return this.f2296a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC2078p) {
            return this.f2296a.equals(((AbstractC2078p) obj).mo35732a());
        }
        return false;
    }

    public int hashCode() {
        return this.f2296a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "NativeImpressionPixel{url=" + this.f2296a + CssParser.BLOCK_END;
    }
}
