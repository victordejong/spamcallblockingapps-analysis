package com.bytedance.sdk.openadsdk.preload.geckox.model;

import com.appsflyer.AppsFlyerProperties;
import com.bytedance.sdk.openadsdk.preload.a.a.c;
import com.mopub.common.Constants;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage.class */
public class UpdatePackage {
    private String accessKey;
    @c(a = AppsFlyerProperties.CHANNEL)
    private String channel;
    @c(a = "channel_index")
    private int channelIndex;
    @c(a = Constants.VAST_TRACKER_CONTENT)
    private Content content;
    @c(a = "group_name")
    private String groupName;
    private long localVersion;
    @c(a = "package_type")
    private int packageType;
    @c(a = "package_version")
    private long version;

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content.class */
    public static class Content {
        @c(a = "package")
        private Package fullPackage;
        @c(a = "patch")
        private Package patch;
        @c(a = "strategies")
        private Strategy strategy;
    }

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$FileType.class */
    public static final class FileType {
        public static final int COMPRESSED_FILE = 0;
        public static final int MY_ARCHIVE_FILE = 2;
        public static final int UNCOMPRESSED_FILE = 1;
    }

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package.class */
    public static class Package {
        @c(a = "id")
        long id;
        @c(a = "size")
        long length;
        @c(a = "md5")
        String md5;
        @Deprecated
        String url;
        @c(a = "url_list")
        List<String> urlList;

        public Package() {
        }

        public Package(int i, List<String> list, String str) {
            this.id = i;
            this.urlList = list;
            this.md5 = str;
        }

        public long getId() {
            return this.id;
        }

        public long getLength() {
            return this.length;
        }

        public String getMd5() {
            return this.md5;
        }

        public String getUrl() {
            return this.url;
        }

        public List<String> getUrlList() {
            return this.urlList;
        }

        public void setId(int i) {
            this.id = i;
        }

        public void setMd5(String str) {
            this.md5 = str;
        }

        public void setUrl(String str) {
            this.url = str;
        }

        public void setUrlList(List<String> list) {
            this.urlList = list;
        }

        public String toString() {
            return "Package{url='" + this.url + "', md5='" + this.md5 + "'}";
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Strategy.class */
    public static class Strategy {
        @c(a = "del_if_download_failed")
        private boolean deleteIfFail;
        @c(a = "del_old_pkg_before_download")
        private boolean deleteOldPackageBeforeDownload;
        @c(a = "need_unzip")
        private boolean needUnzip;

        public Strategy(int i) {
            this.deleteIfFail = i != 1 ? false : true;
        }

        public boolean isDeleteIfFail() {
            return this.deleteIfFail;
        }

        public boolean isDeleteOldPackageBeforeDownload() {
            return this.deleteOldPackageBeforeDownload;
        }

        public boolean isNeedUnzip() {
            return this.needUnzip;
        }

        public void setDeleteIfFail(boolean z) {
            this.deleteIfFail = z;
        }

        public void setDeleteOldPackageBeforeDownload(boolean z) {
            this.deleteOldPackageBeforeDownload = z;
        }

        public void setNeedUnzip(boolean z) {
            this.needUnzip = z;
        }
    }

    public UpdatePackage() {
    }

    public UpdatePackage(long j, String str, Package r8, Package r9) {
        this.version = j;
        this.channel = str;
        Content content = new Content();
        this.content = content;
        content.fullPackage = r8;
        this.content.patch = r9;
    }

    public String getAccessKey() {
        return this.accessKey;
    }

    public String getChannel() {
        return this.channel;
    }

    public int getChannelIndex() {
        return this.channelIndex;
    }

    public Package getFullPackage() {
        return this.content.fullPackage;
    }

    public String getGroupName() {
        return this.groupName;
    }

    public long getLocalVersion() {
        return this.localVersion;
    }

    public int getPackageType() {
        return this.packageType;
    }

    public Package getPatch() {
        return this.content.patch;
    }

    public Strategy getStrategy() {
        return this.content.strategy;
    }

    public long getVersion() {
        return this.version;
    }

    public boolean isFullUpdate() {
        return getFullPackage() != null && getFullPackage().getUrlList().size() > 0;
    }

    public boolean isPatchUpdate() {
        return getPatch() != null && getPatch().getUrlList().size() > 0;
    }

    public void setAccessKey(String str) {
        this.accessKey = str;
    }

    public void setChannel(String str) {
        this.channel = str;
    }

    public void setChannelIndex(int i) {
        this.channelIndex = i;
    }

    public void setFullPackage(Package r4) {
        this.content.fullPackage = r4;
    }

    public void setGroupName(String str) {
        this.groupName = str;
    }

    public void setLocalVersion(long j) {
        this.localVersion = j;
    }

    public void setPatch(Package r4) {
        this.content.patch = r4;
    }

    public void setStrategy(Strategy strategy) {
        this.content.strategy = strategy;
    }

    public void setVersion(long j) {
        this.version = j;
    }

    public String toString() {
        return "UpdatePackage{version=" + this.version + ", channel='" + this.channel + "', content=" + this.content + ", packageType=" + this.packageType + '}';
    }
}
