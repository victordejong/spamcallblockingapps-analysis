package com.twitter.sdk.android.core.models;

import com.google.gson.annotations.b;
import com.mopub.common.Constants;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/models/UserEntities.class */
public class UserEntities {
    @b(a = "description")
    public final UrlEntities description;
    @b(a = "url")
    public final UrlEntities url;

    /* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/models/UserEntities$UrlEntities.class */
    public static class UrlEntities {
        @b(a = Constants.VIDEO_TRACKING_URLS_KEY)
        public final List<UrlEntity> urls;

        private UrlEntities() {
            this(null);
        }

        public UrlEntities(List<UrlEntity> list) {
            this.urls = ModelUtils.getSafeList(list);
        }
    }

    public UserEntities(UrlEntities urlEntities, UrlEntities urlEntities2) {
        this.url = urlEntities;
        this.description = urlEntities2;
    }
}
