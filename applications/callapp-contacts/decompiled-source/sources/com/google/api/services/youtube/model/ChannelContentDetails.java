package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/ChannelContentDetails.class */
public final class ChannelContentDetails extends GenericJson {
    @q
    private RelatedPlaylists relatedPlaylists;

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/ChannelContentDetails$RelatedPlaylists.class */
    public static final class RelatedPlaylists extends GenericJson {
        @q
        private String favorites;
        @q
        private String likes;
        @q
        private String uploads;
        @q
        private String watchHistory;
        @q
        private String watchLater;

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
        public final RelatedPlaylists clone() {
            return (RelatedPlaylists) super.clone();
        }

        public final String getFavorites() {
            return this.favorites;
        }

        public final String getLikes() {
            return this.likes;
        }

        public final String getUploads() {
            return this.uploads;
        }

        public final String getWatchHistory() {
            return this.watchHistory;
        }

        public final String getWatchLater() {
            return this.watchLater;
        }

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
        public final RelatedPlaylists set(String str, Object obj) {
            return (RelatedPlaylists) super.set(str, obj);
        }

        public final RelatedPlaylists setFavorites(String str) {
            this.favorites = str;
            return this;
        }

        public final RelatedPlaylists setLikes(String str) {
            this.likes = str;
            return this;
        }

        public final RelatedPlaylists setUploads(String str) {
            this.uploads = str;
            return this;
        }

        public final RelatedPlaylists setWatchHistory(String str) {
            this.watchHistory = str;
            return this;
        }

        public final RelatedPlaylists setWatchLater(String str) {
            this.watchLater = str;
            return this;
        }
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final ChannelContentDetails clone() {
        return (ChannelContentDetails) super.clone();
    }

    public final RelatedPlaylists getRelatedPlaylists() {
        return this.relatedPlaylists;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final ChannelContentDetails set(String str, Object obj) {
        return (ChannelContentDetails) super.set(str, obj);
    }

    public final ChannelContentDetails setRelatedPlaylists(RelatedPlaylists relatedPlaylists) {
        this.relatedPlaylists = relatedPlaylists;
        return this;
    }
}
