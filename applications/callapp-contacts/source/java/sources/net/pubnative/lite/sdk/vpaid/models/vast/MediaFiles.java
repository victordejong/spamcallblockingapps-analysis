package net.pubnative.lite.sdk.vpaid.models.vast;

import java.util.List;
import net.pubnative.lite.sdk.vpaid.xml.Tag;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/vpaid/models/vast/MediaFiles.class */
public class MediaFiles {
    @Tag("MediaFile")
    private List<MediaFile> mediaFileList;

    public List<MediaFile> getMediaFileList() {
        return this.mediaFileList;
    }
}
