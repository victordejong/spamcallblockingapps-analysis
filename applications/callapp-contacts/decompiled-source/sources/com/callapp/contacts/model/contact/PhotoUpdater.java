package com.callapp.contacts.model.contact;

import android.util.Pair;
import com.callapp.contacts.api.helper.common.RemoteAccountHelper;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/contact/PhotoUpdater.class */
public class PhotoUpdater {
    private DataSource currentDataSource;
    private Integer currentPhotoBGColor;
    private PhotoUrls currentUrls;
    private final DataSource dataSourceToStop;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/contact/PhotoUpdater$PhotoUpdaterBuilder.class */
    public static class PhotoUpdaterBuilder {
        private DataSource dataSource;
        private DataSource dataSourceToEnrich;
        private boolean onlyThumbnail;
        private Integer photoBGColor;
        private String photoUrl;
        private String thumbnailUrl;

        public PhotoUpdaterBuilder(String str, DataSource dataSource) {
            this.dataSource = dataSource;
            Pair<String, String> enrichUrl = enrichUrl(str);
            this.photoUrl = (String) enrichUrl.first;
            this.thumbnailUrl = (String) enrichUrl.second;
        }

        public PhotoUpdaterBuilder(String str, String str2) {
            this.photoUrl = str;
            this.thumbnailUrl = str2;
        }

        public Pair<String, String> enrichUrl(String str) {
            Pair<String, String> pair = new Pair<>(str, str);
            Pair<String, String> pair2 = pair;
            if (StringUtils.c(str, "https://graph.facebook.com/")) {
                this.dataSourceToEnrich = DataSource.facebook;
                if (StringUtils.c(str, "/picture?type=normal")) {
                    pair2 = new Pair<>(StringUtils.c(str, "/picture?type=normal", "/picture?width=600"), str);
                } else {
                    pair2 = pair;
                    if (StringUtils.c(str, "/picture?width=")) {
                        pair2 = new Pair<>(str, StringUtils.c(str, "/picture?width=600", "/picture?type=normal"));
                    }
                }
            }
            return pair2;
        }

        public DataSource getDataSource() {
            return this.dataSource;
        }

        public Integer getPhotoBGColor() {
            return this.photoBGColor;
        }

        public String getPhotoUrl() {
            return this.photoUrl;
        }

        public String getThumbnailUrl() {
            return this.thumbnailUrl;
        }

        public boolean isOnlyThumbnail() {
            return this.onlyThumbnail;
        }

        public PhotoUpdaterBuilder onlyThumbnail(boolean z) {
            this.onlyThumbnail = z;
            return this;
        }

        public PhotoUpdaterBuilder withDataSource(DataSource dataSource) {
            this.dataSource = dataSource;
            return this;
        }

        public PhotoUpdaterBuilder withPhotoBGColor(Integer num) {
            this.photoBGColor = num;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PhotoUpdater(DataSource dataSource) {
        this.dataSourceToStop = dataSource;
    }

    public Integer getCurrentPhotoBGColor() {
        return this.currentPhotoBGColor;
    }

    public PhotoUrls getCurrentUrls() {
        return this.currentUrls;
    }

    public DataSource getDataSource() {
        return this.currentDataSource;
    }

    public boolean update(PhotoUpdaterBuilder photoUpdaterBuilder) {
        DataSource dataSource;
        String photoUrl = photoUpdaterBuilder.getPhotoUrl();
        String thumbnailUrl = photoUpdaterBuilder.getThumbnailUrl();
        DataSource dataSource2 = photoUpdaterBuilder.getDataSource();
        if (StringUtils.a((CharSequence) photoUrl) && StringUtils.a((CharSequence) thumbnailUrl) && ((dataSource = this.dataSourceToStop) == null || dataSource != dataSource2)) {
            return false;
        }
        boolean isOnlyThumbnail = photoUpdaterBuilder.isOnlyThumbnail();
        DataSource dataSource3 = photoUpdaterBuilder.dataSourceToEnrich != null ? photoUpdaterBuilder.dataSourceToEnrich : dataSource2;
        PhotoUrls photoUrls = new PhotoUrls(photoUrl, thumbnailUrl, dataSource3);
        if (dataSource3 != null) {
            RemoteAccountHelper a2 = RemoteAccountHelper.a(dataSource3);
            if (a2 != null && a2.a(photoUrls.getPhotoUrl())) {
                return false;
            }
        }
        this.currentUrls = photoUrls;
        this.currentDataSource = dataSource2;
        this.currentPhotoBGColor = photoUpdaterBuilder.getPhotoBGColor();
        if (StringUtils.b((CharSequence) photoUrls.getPhotoUrl())) {
            return true;
        }
        if (isOnlyThumbnail && StringUtils.b((CharSequence) photoUrls.getThumbnail())) {
            return true;
        }
        DataSource dataSource4 = this.dataSourceToStop;
        return dataSource4 != null && dataSource4 == dataSource2;
    }
}
