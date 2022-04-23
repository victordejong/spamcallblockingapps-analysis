package com.criteo.publisher.advancednative;

import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import java.net.URL;
@Keep
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/advancednative/CriteoMedia.class */
public abstract class CriteoMedia {
    public static CriteoMedia create(@NonNull URL url) {
        return new C1944d(url);
    }

    @NonNull
    public abstract URL getImageUrl();
}
