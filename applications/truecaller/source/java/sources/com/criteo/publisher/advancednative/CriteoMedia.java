package com.criteo.publisher.advancednative;

import androidx.annotation.Keep;
import com.criteo.publisher.annotation.Internal;
import java.net.URL;
import p193e.p1512i.p1516b.p1529r1.C23045g;
@Keep
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/advancednative/CriteoMedia.class */
public abstract class CriteoMedia {
    public static CriteoMedia create(URL url) {
        return new C23045g(url);
    }

    @Internal({Internal.ADMOB_ADAPTER})
    public abstract URL getImageUrl();
}
