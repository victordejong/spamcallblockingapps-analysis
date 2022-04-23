package com.callapp.contacts.model.contact;

import java.io.Serializable;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/contact/VideoData.class */
public class VideoData implements Serializable {
    private static final long serialVersionUID = -1217448307921266115L;
    private String thumbnailUrl;
    private String title;
    private final Types type;
    private String videoId;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/contact/VideoData$Types.class */
    public enum Types {
        YouTube,
        Web
    }

    public VideoData(Types types) {
        this.type = types;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        VideoData videoData = (VideoData) obj;
        if (this.type == videoData.type && Objects.equals(this.title, videoData.title) && Objects.equals(this.videoId, videoData.videoId)) {
            return Objects.equals(this.thumbnailUrl, videoData.thumbnailUrl);
        }
        return false;
    }

    public String getThumbnailUrl() {
        return this.thumbnailUrl;
    }

    public String getTitle() {
        return this.title;
    }

    public Types getType() {
        return this.type;
    }

    public String getVideoId() {
        return this.videoId;
    }

    public int hashCode() {
        Types types = this.type;
        int i = 0;
        int hashCode = types != null ? types.hashCode() : 0;
        String str = this.title;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.videoId;
        int hashCode3 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.thumbnailUrl;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return (((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }

    public void setThumbnailUrl(String str) {
        this.thumbnailUrl = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setVideoId(String str) {
        this.videoId = str;
    }
}
