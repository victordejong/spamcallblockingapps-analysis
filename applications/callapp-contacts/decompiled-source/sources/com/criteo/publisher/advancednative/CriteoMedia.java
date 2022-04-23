package com.criteo.publisher.advancednative;

import java.net.URL;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/CriteoMedia.class */
public abstract class CriteoMedia {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static CriteoMedia create(URL url) {
        return new d(url);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract URL getImageUrl();
}
