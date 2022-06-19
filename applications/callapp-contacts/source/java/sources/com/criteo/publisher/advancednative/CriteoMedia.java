package com.criteo.publisher.advancednative;

import java.net.URL;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/CriteoMedia.class */
public abstract class CriteoMedia {
    public static CriteoMedia create(URL url) {
        return new C8230d(url);
    }

    public abstract URL getImageUrl();
}
