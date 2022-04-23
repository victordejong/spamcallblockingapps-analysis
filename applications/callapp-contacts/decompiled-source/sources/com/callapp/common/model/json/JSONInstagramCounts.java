package com.callapp.common.model.json;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONInstagramCounts.class */
public class JSONInstagramCounts implements Serializable {
    private static final long serialVersionUID = -6812781516870758934L;
    private long followed_by;
    private long follows;
    private long media;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof JSONInstagramCounts)) {
            return false;
        }
        JSONInstagramCounts jSONInstagramCounts = (JSONInstagramCounts) obj;
        return this.followed_by == jSONInstagramCounts.followed_by && this.follows == jSONInstagramCounts.follows && this.media == jSONInstagramCounts.media;
    }

    public long getFollowed_by() {
        return this.followed_by;
    }

    public long getFollows() {
        return this.follows;
    }

    public long getMedia() {
        return this.media;
    }

    public int hashCode() {
        long j = this.followed_by;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.follows;
        int i2 = (int) (j2 ^ (j2 >>> 32));
        long j3 = this.media;
        return ((((i + 31) * 31) + i2) * 31) + ((int) (j3 ^ (j3 >>> 32)));
    }

    public void setFollowed_by(long j) {
        this.followed_by = j;
    }

    public void setFollows(long j) {
        this.follows = j;
    }

    public void setMedia(long j) {
        this.media = j;
    }
}
