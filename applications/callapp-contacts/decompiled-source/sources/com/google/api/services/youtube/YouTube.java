package com.google.api.services.youtube;

import com.google.api.client.a.aa;
import com.google.api.client.a.j;
import com.google.api.client.a.l;
import com.google.api.client.a.q;
import com.google.api.client.googleapis.a;
import com.google.api.client.googleapis.services.b;
import com.google.api.client.googleapis.services.d;
import com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient;
import com.google.api.client.http.s;
import com.google.api.client.http.t;
import com.google.api.client.http.w;
import com.google.api.client.json.JsonFactory;
import com.google.api.services.youtube.model.Activity;
import com.google.api.services.youtube.model.ActivityListResponse;
import com.google.api.services.youtube.model.Caption;
import com.google.api.services.youtube.model.CaptionListResponse;
import com.google.api.services.youtube.model.Channel;
import com.google.api.services.youtube.model.ChannelBannerResource;
import com.google.api.services.youtube.model.ChannelListResponse;
import com.google.api.services.youtube.model.ChannelSection;
import com.google.api.services.youtube.model.ChannelSectionListResponse;
import com.google.api.services.youtube.model.Comment;
import com.google.api.services.youtube.model.CommentListResponse;
import com.google.api.services.youtube.model.CommentThread;
import com.google.api.services.youtube.model.CommentThreadListResponse;
import com.google.api.services.youtube.model.GuideCategoryListResponse;
import com.google.api.services.youtube.model.I18nLanguageListResponse;
import com.google.api.services.youtube.model.I18nRegionListResponse;
import com.google.api.services.youtube.model.InvideoBranding;
import com.google.api.services.youtube.model.LiveBroadcast;
import com.google.api.services.youtube.model.LiveBroadcastListResponse;
import com.google.api.services.youtube.model.LiveChatBan;
import com.google.api.services.youtube.model.LiveChatMessage;
import com.google.api.services.youtube.model.LiveChatMessageListResponse;
import com.google.api.services.youtube.model.LiveChatModerator;
import com.google.api.services.youtube.model.LiveChatModeratorListResponse;
import com.google.api.services.youtube.model.LiveStream;
import com.google.api.services.youtube.model.LiveStreamListResponse;
import com.google.api.services.youtube.model.MemberListResponse;
import com.google.api.services.youtube.model.MembershipsLevelListResponse;
import com.google.api.services.youtube.model.Playlist;
import com.google.api.services.youtube.model.PlaylistItem;
import com.google.api.services.youtube.model.PlaylistItemListResponse;
import com.google.api.services.youtube.model.PlaylistListResponse;
import com.google.api.services.youtube.model.SearchListResponse;
import com.google.api.services.youtube.model.SponsorListResponse;
import com.google.api.services.youtube.model.Subscription;
import com.google.api.services.youtube.model.SubscriptionListResponse;
import com.google.api.services.youtube.model.SuperChatEventListResponse;
import com.google.api.services.youtube.model.ThumbnailSetResponse;
import com.google.api.services.youtube.model.Video;
import com.google.api.services.youtube.model.VideoAbuseReport;
import com.google.api.services.youtube.model.VideoAbuseReportReasonListResponse;
import com.google.api.services.youtube.model.VideoCategoryListResponse;
import com.google.api.services.youtube.model.VideoGetRatingResponse;
import com.google.api.services.youtube.model.VideoListResponse;
import com.mopub.common.Constants;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.math.BigInteger;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube.class */
public class YouTube extends AbstractGoogleJsonClient {
    public static final String DEFAULT_BASE_URL = "https://www.googleapis.com/youtube/v3/";
    public static final String DEFAULT_BATCH_PATH = "batch/youtube/v3";
    public static final String DEFAULT_ROOT_URL = "https://www.googleapis.com/";
    public static final String DEFAULT_SERVICE_PATH = "youtube/v3/";

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Activities.class */
    public final class Activities {

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Activities$Insert.class */
        public class Insert extends YouTubeRequest<Activity> {
            private static final String REST_PATH = "activities";
            @q
            private String part;

            protected Insert(String str, Activity activity) {
                super(YouTube.this, "POST", REST_PATH, activity, Activity.class);
                this.part = (String) aa.a(str, "Required parameter part must be specified.");
            }

            public String getPart() {
                return this.part;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Insert set(String str, Object obj) {
                return (Insert) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<Activity> setAlt2(String str) {
                return (Insert) super.setAlt(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<Activity> setFields2(String str) {
                return (Insert) super.setFields(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<Activity> setKey2(String str) {
                return (Insert) super.setKey(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<Activity> setOauthToken2(String str) {
                return (Insert) super.setOauthToken(str);
            }

            public Insert setPart(String str) {
                this.part = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<Activity> setPrettyPrint2(Boolean bool) {
                return (Insert) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<Activity> setQuotaUser2(String str) {
                return (Insert) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<Activity> setUserIp2(String str) {
                return (Insert) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Activities$List.class */
        public class List extends YouTubeRequest<ActivityListResponse> {
            private static final String REST_PATH = "activities";
            @q
            private String channelId;
            @q
            private Boolean home;
            @q
            private Long maxResults;
            @q
            private Boolean mine;
            @q
            private String pageToken;
            @q
            private String part;
            @q
            private l publishedAfter;
            @q
            private l publishedBefore;
            @q
            private String regionCode;

            protected List(String str) {
                super(YouTube.this, "GET", REST_PATH, null, ActivityListResponse.class);
                this.part = (String) aa.a(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.b
            public com.google.api.client.http.q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.b
            public t executeUsingHead() throws IOException {
                return super.executeUsingHead();
            }

            public String getChannelId() {
                return this.channelId;
            }

            public Boolean getHome() {
                return this.home;
            }

            public Long getMaxResults() {
                return this.maxResults;
            }

            public Boolean getMine() {
                return this.mine;
            }

            public String getPageToken() {
                return this.pageToken;
            }

            public String getPart() {
                return this.part;
            }

            public l getPublishedAfter() {
                return this.publishedAfter;
            }

            public l getPublishedBefore() {
                return this.publishedBefore;
            }

            public String getRegionCode() {
                return this.regionCode;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public List set(String str, Object obj) {
                return (List) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<ActivityListResponse> setAlt2(String str) {
                return (List) super.setAlt(str);
            }

            public List setChannelId(String str) {
                this.channelId = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<ActivityListResponse> setFields2(String str) {
                return (List) super.setFields(str);
            }

            public List setHome(Boolean bool) {
                this.home = bool;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<ActivityListResponse> setKey2(String str) {
                return (List) super.setKey(str);
            }

            public List setMaxResults(Long l) {
                this.maxResults = l;
                return this;
            }

            public List setMine(Boolean bool) {
                this.mine = bool;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<ActivityListResponse> setOauthToken2(String str) {
                return (List) super.setOauthToken(str);
            }

            public List setPageToken(String str) {
                this.pageToken = str;
                return this;
            }

            public List setPart(String str) {
                this.part = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<ActivityListResponse> setPrettyPrint2(Boolean bool) {
                return (List) super.setPrettyPrint(bool);
            }

            public List setPublishedAfter(l lVar) {
                this.publishedAfter = lVar;
                return this;
            }

            public List setPublishedBefore(l lVar) {
                this.publishedBefore = lVar;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<ActivityListResponse> setQuotaUser2(String str) {
                return (List) super.setQuotaUser(str);
            }

            public List setRegionCode(String str) {
                this.regionCode = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<ActivityListResponse> setUserIp2(String str) {
                return (List) super.setUserIp(str);
            }
        }

        public Activities() {
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Builder.class */
    public static final class Builder extends AbstractGoogleJsonClient.Builder {
        public Builder(w wVar, JsonFactory jsonFactory, s sVar) {
            super(wVar, jsonFactory, "https://www.googleapis.com/", YouTube.DEFAULT_SERVICE_PATH, sVar, false);
            setBatchPath(YouTube.DEFAULT_BATCH_PATH);
        }

        @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient.Builder, com.google.api.client.googleapis.services.a.AbstractC0505a
        public final YouTube build() {
            return new YouTube(this);
        }

        @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient.Builder, com.google.api.client.googleapis.services.a.AbstractC0505a
        public final Builder setApplicationName(String str) {
            return (Builder) super.setApplicationName(str);
        }

        @Override // com.google.api.client.googleapis.services.a.AbstractC0505a
        public final Builder setBatchPath(String str) {
            return (Builder) super.setBatchPath(str);
        }

        @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient.Builder, com.google.api.client.googleapis.services.a.AbstractC0505a
        public final Builder setGoogleClientRequestInitializer(d dVar) {
            return (Builder) super.setGoogleClientRequestInitializer(dVar);
        }

        @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient.Builder, com.google.api.client.googleapis.services.a.AbstractC0505a
        public final Builder setHttpRequestInitializer(s sVar) {
            return (Builder) super.setHttpRequestInitializer(sVar);
        }

        @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient.Builder, com.google.api.client.googleapis.services.a.AbstractC0505a
        public final Builder setRootUrl(String str) {
            return (Builder) super.setRootUrl(str);
        }

        @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient.Builder, com.google.api.client.googleapis.services.a.AbstractC0505a
        public final Builder setServicePath(String str) {
            return (Builder) super.setServicePath(str);
        }

        @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient.Builder, com.google.api.client.googleapis.services.a.AbstractC0505a
        public final Builder setSuppressAllChecks(boolean z) {
            return (Builder) super.setSuppressAllChecks(z);
        }

        @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient.Builder, com.google.api.client.googleapis.services.a.AbstractC0505a
        public final Builder setSuppressPatternChecks(boolean z) {
            return (Builder) super.setSuppressPatternChecks(z);
        }

        @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient.Builder, com.google.api.client.googleapis.services.a.AbstractC0505a
        public final Builder setSuppressRequiredParameterChecks(boolean z) {
            return (Builder) super.setSuppressRequiredParameterChecks(z);
        }

        public final Builder setYouTubeRequestInitializer(YouTubeRequestInitializer youTubeRequestInitializer) {
            return (Builder) super.setGoogleClientRequestInitializer((d) youTubeRequestInitializer);
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Captions.class */
    public final class Captions {

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Captions$Delete.class */
        public class Delete extends YouTubeRequest<Void> {
            private static final String REST_PATH = "captions";
            @q
            private String id;
            @q
            private String onBehalfOf;
            @q
            private String onBehalfOfContentOwner;

            protected Delete(String str) {
                super(YouTube.this, "DELETE", REST_PATH, null, Void.class);
                this.id = (String) aa.a(str, "Required parameter id must be specified.");
            }

            public String getId() {
                return this.id;
            }

            public String getOnBehalfOf() {
                return this.onBehalfOf;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Delete set(String str, Object obj) {
                return (Delete) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<Void> setAlt2(String str) {
                return (Delete) super.setAlt(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<Void> setFields2(String str) {
                return (Delete) super.setFields(str);
            }

            public Delete setId(String str) {
                this.id = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<Void> setKey2(String str) {
                return (Delete) super.setKey(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<Void> setOauthToken2(String str) {
                return (Delete) super.setOauthToken(str);
            }

            public Delete setOnBehalfOf(String str) {
                this.onBehalfOf = str;
                return this;
            }

            public Delete setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<Void> setPrettyPrint2(Boolean bool) {
                return (Delete) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<Void> setQuotaUser2(String str) {
                return (Delete) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<Void> setUserIp2(String str) {
                return (Delete) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Captions$Download.class */
        public class Download extends YouTubeRequest<Void> {
            private static final String REST_PATH = "captions/{id}";
            @q
            private String id;
            @q
            private String onBehalfOf;
            @q
            private String onBehalfOfContentOwner;
            @q
            private String tfmt;
            @q
            private String tlang;

            protected Download(String str) {
                super(YouTube.this, "GET", REST_PATH, null, Void.class);
                this.id = (String) aa.a(str, "Required parameter id must be specified.");
                initializeMediaDownload();
            }

            @Override // com.google.api.client.googleapis.services.b
            public com.google.api.client.http.q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.b
            public t executeMedia() throws IOException {
                return super.executeMedia();
            }

            @Override // com.google.api.client.googleapis.services.b
            public void executeMediaAndDownloadTo(OutputStream outputStream) throws IOException {
                super.executeMediaAndDownloadTo(outputStream);
            }

            @Override // com.google.api.client.googleapis.services.b
            public InputStream executeMediaAsInputStream() throws IOException {
                return super.executeMediaAsInputStream();
            }

            @Override // com.google.api.client.googleapis.services.b
            public t executeUsingHead() throws IOException {
                return super.executeUsingHead();
            }

            public String getId() {
                return this.id;
            }

            public String getOnBehalfOf() {
                return this.onBehalfOf;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public String getTfmt() {
                return this.tfmt;
            }

            public String getTlang() {
                return this.tlang;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Download set(String str, Object obj) {
                return (Download) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<Void> setAlt2(String str) {
                return (Download) super.setAlt(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<Void> setFields2(String str) {
                return (Download) super.setFields(str);
            }

            public Download setId(String str) {
                this.id = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<Void> setKey2(String str) {
                return (Download) super.setKey(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<Void> setOauthToken2(String str) {
                return (Download) super.setOauthToken(str);
            }

            public Download setOnBehalfOf(String str) {
                this.onBehalfOf = str;
                return this;
            }

            public Download setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<Void> setPrettyPrint2(Boolean bool) {
                return (Download) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<Void> setQuotaUser2(String str) {
                return (Download) super.setQuotaUser(str);
            }

            public Download setTfmt(String str) {
                this.tfmt = str;
                return this;
            }

            public Download setTlang(String str) {
                this.tlang = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<Void> setUserIp2(String str) {
                return (Download) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Captions$Insert.class */
        public class Insert extends YouTubeRequest<Caption> {
            private static final String REST_PATH = "captions";
            @q
            private String onBehalfOf;
            @q
            private String onBehalfOfContentOwner;
            @q
            private String part;
            @q
            private Boolean sync;

            protected Insert(String str, Caption caption) {
                super(YouTube.this, "POST", REST_PATH, caption, Caption.class);
                this.part = (String) aa.a(str, "Required parameter part must be specified.");
            }

            /* JADX WARN: Illegal instructions before constructor call */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            protected Insert(java.lang.String r9, com.google.api.services.youtube.model.Caption r10, com.google.api.client.http.b r11) {
                /*
                    r7 = this;
                    r0 = r7
                    r1 = r8
                    com.google.api.services.youtube.YouTube.Captions.this = r1
                    r0 = r8
                    com.google.api.services.youtube.YouTube r0 = com.google.api.services.youtube.YouTube.this
                    r12 = r0
                    java.lang.StringBuilder r0 = new java.lang.StringBuilder
                    r1 = r0
                    java.lang.String r2 = "/upload/"
                    r1.<init>(r2)
                    r13 = r0
                    r0 = r13
                    r1 = r8
                    com.google.api.services.youtube.YouTube r1 = com.google.api.services.youtube.YouTube.this
                    java.lang.String r1 = r1.getServicePath()
                    java.lang.StringBuilder r0 = r0.append(r1)
                    r0 = r13
                    java.lang.String r1 = "captions"
                    java.lang.StringBuilder r0 = r0.append(r1)
                    r0 = r7
                    r1 = r12
                    java.lang.String r2 = "POST"
                    r3 = r13
                    java.lang.String r3 = r3.toString()
                    r4 = r10
                    java.lang.Class<com.google.api.services.youtube.model.Caption> r5 = com.google.api.services.youtube.model.Caption.class
                    r0.<init>(r1, r2, r3, r4, r5)
                    r0 = r7
                    r1 = r9
                    java.lang.String r2 = "Required parameter part must be specified."
                    java.lang.Object r1 = com.google.api.client.a.aa.a(r1, r2)
                    java.lang.String r1 = (java.lang.String) r1
                    r0.part = r1
                    r0 = r7
                    r1 = r11
                    r0.initializeMediaUpload(r1)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.api.services.youtube.YouTube.Captions.Insert.<init>(com.google.api.services.youtube.YouTube$Captions, java.lang.String, com.google.api.services.youtube.model.Caption, com.google.api.client.http.b):void");
            }

            public String getOnBehalfOf() {
                return this.onBehalfOf;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public String getPart() {
                return this.part;
            }

            public Boolean getSync() {
                return this.sync;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Insert set(String str, Object obj) {
                return (Insert) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<Caption> setAlt2(String str) {
                return (Insert) super.setAlt(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<Caption> setFields2(String str) {
                return (Insert) super.setFields(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<Caption> setKey2(String str) {
                return (Insert) super.setKey(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<Caption> setOauthToken2(String str) {
                return (Insert) super.setOauthToken(str);
            }

            public Insert setOnBehalfOf(String str) {
                this.onBehalfOf = str;
                return this;
            }

            public Insert setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            public Insert setPart(String str) {
                this.part = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<Caption> setPrettyPrint2(Boolean bool) {
                return (Insert) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<Caption> setQuotaUser2(String str) {
                return (Insert) super.setQuotaUser(str);
            }

            public Insert setSync(Boolean bool) {
                this.sync = bool;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<Caption> setUserIp2(String str) {
                return (Insert) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Captions$List.class */
        public class List extends YouTubeRequest<CaptionListResponse> {
            private static final String REST_PATH = "captions";
            @q
            private String id;
            @q
            private String onBehalfOf;
            @q
            private String onBehalfOfContentOwner;
            @q
            private String part;
            @q
            private String videoId;

            protected List(String str, String str2) {
                super(YouTube.this, "GET", REST_PATH, null, CaptionListResponse.class);
                this.part = (String) aa.a(str, "Required parameter part must be specified.");
                this.videoId = (String) aa.a(str2, "Required parameter videoId must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.b
            public com.google.api.client.http.q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.b
            public t executeUsingHead() throws IOException {
                return super.executeUsingHead();
            }

            public String getId() {
                return this.id;
            }

            public String getOnBehalfOf() {
                return this.onBehalfOf;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public String getPart() {
                return this.part;
            }

            public String getVideoId() {
                return this.videoId;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public List set(String str, Object obj) {
                return (List) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<CaptionListResponse> setAlt2(String str) {
                return (List) super.setAlt(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<CaptionListResponse> setFields2(String str) {
                return (List) super.setFields(str);
            }

            public List setId(String str) {
                this.id = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<CaptionListResponse> setKey2(String str) {
                return (List) super.setKey(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<CaptionListResponse> setOauthToken2(String str) {
                return (List) super.setOauthToken(str);
            }

            public List setOnBehalfOf(String str) {
                this.onBehalfOf = str;
                return this;
            }

            public List setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            public List setPart(String str) {
                this.part = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<CaptionListResponse> setPrettyPrint2(Boolean bool) {
                return (List) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<CaptionListResponse> setQuotaUser2(String str) {
                return (List) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<CaptionListResponse> setUserIp2(String str) {
                return (List) super.setUserIp(str);
            }

            public List setVideoId(String str) {
                this.videoId = str;
                return this;
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Captions$Update.class */
        public class Update extends YouTubeRequest<Caption> {
            private static final String REST_PATH = "captions";
            @q
            private String onBehalfOf;
            @q
            private String onBehalfOfContentOwner;
            @q
            private String part;
            @q
            private Boolean sync;

            protected Update(String str, Caption caption) {
                super(YouTube.this, "PUT", REST_PATH, caption, Caption.class);
                this.part = (String) aa.a(str, "Required parameter part must be specified.");
                checkRequiredParameter(caption, Constants.VAST_TRACKER_CONTENT);
                checkRequiredParameter(caption.getId(), "Caption.getId()");
            }

            /* JADX WARN: Illegal instructions before constructor call */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            protected Update(java.lang.String r9, com.google.api.services.youtube.model.Caption r10, com.google.api.client.http.b r11) {
                /*
                    r7 = this;
                    r0 = r7
                    r1 = r8
                    com.google.api.services.youtube.YouTube.Captions.this = r1
                    r0 = r8
                    com.google.api.services.youtube.YouTube r0 = com.google.api.services.youtube.YouTube.this
                    r12 = r0
                    java.lang.StringBuilder r0 = new java.lang.StringBuilder
                    r1 = r0
                    java.lang.String r2 = "/upload/"
                    r1.<init>(r2)
                    r13 = r0
                    r0 = r13
                    r1 = r8
                    com.google.api.services.youtube.YouTube r1 = com.google.api.services.youtube.YouTube.this
                    java.lang.String r1 = r1.getServicePath()
                    java.lang.StringBuilder r0 = r0.append(r1)
                    r0 = r13
                    java.lang.String r1 = "captions"
                    java.lang.StringBuilder r0 = r0.append(r1)
                    r0 = r7
                    r1 = r12
                    java.lang.String r2 = "PUT"
                    r3 = r13
                    java.lang.String r3 = r3.toString()
                    r4 = r10
                    java.lang.Class<com.google.api.services.youtube.model.Caption> r5 = com.google.api.services.youtube.model.Caption.class
                    r0.<init>(r1, r2, r3, r4, r5)
                    r0 = r7
                    r1 = r9
                    java.lang.String r2 = "Required parameter part must be specified."
                    java.lang.Object r1 = com.google.api.client.a.aa.a(r1, r2)
                    java.lang.String r1 = (java.lang.String) r1
                    r0.part = r1
                    r0 = r7
                    r1 = r11
                    r0.initializeMediaUpload(r1)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.api.services.youtube.YouTube.Captions.Update.<init>(com.google.api.services.youtube.YouTube$Captions, java.lang.String, com.google.api.services.youtube.model.Caption, com.google.api.client.http.b):void");
            }

            public String getOnBehalfOf() {
                return this.onBehalfOf;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public String getPart() {
                return this.part;
            }

            public Boolean getSync() {
                return this.sync;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Update set(String str, Object obj) {
                return (Update) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<Caption> setAlt2(String str) {
                return (Update) super.setAlt(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<Caption> setFields2(String str) {
                return (Update) super.setFields(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<Caption> setKey2(String str) {
                return (Update) super.setKey(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<Caption> setOauthToken2(String str) {
                return (Update) super.setOauthToken(str);
            }

            public Update setOnBehalfOf(String str) {
                this.onBehalfOf = str;
                return this;
            }

            public Update setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            public Update setPart(String str) {
                this.part = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<Caption> setPrettyPrint2(Boolean bool) {
                return (Update) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<Caption> setQuotaUser2(String str) {
                return (Update) super.setQuotaUser(str);
            }

            public Update setSync(Boolean bool) {
                this.sync = bool;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<Caption> setUserIp2(String str) {
                return (Update) super.setUserIp(str);
            }
        }

        public Captions() {
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$ChannelBanners.class */
    public final class ChannelBanners {

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$ChannelBanners$Insert.class */
        public class Insert extends YouTubeRequest<ChannelBannerResource> {
            private static final String REST_PATH = "channelBanners/insert";
            @q
            private String channelId;
            @q
            private String onBehalfOfContentOwner;

            protected Insert(ChannelBannerResource channelBannerResource) {
                super(YouTube.this, "POST", REST_PATH, channelBannerResource, ChannelBannerResource.class);
            }

            /* JADX WARN: Illegal instructions before constructor call */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            protected Insert(com.google.api.services.youtube.model.ChannelBannerResource r9, com.google.api.client.http.b r10) {
                /*
                    r7 = this;
                    r0 = r7
                    r1 = r8
                    com.google.api.services.youtube.YouTube.ChannelBanners.this = r1
                    r0 = r8
                    com.google.api.services.youtube.YouTube r0 = com.google.api.services.youtube.YouTube.this
                    r11 = r0
                    java.lang.StringBuilder r0 = new java.lang.StringBuilder
                    r1 = r0
                    java.lang.String r2 = "/upload/"
                    r1.<init>(r2)
                    r12 = r0
                    r0 = r12
                    r1 = r8
                    com.google.api.services.youtube.YouTube r1 = com.google.api.services.youtube.YouTube.this
                    java.lang.String r1 = r1.getServicePath()
                    java.lang.StringBuilder r0 = r0.append(r1)
                    r0 = r12
                    java.lang.String r1 = "channelBanners/insert"
                    java.lang.StringBuilder r0 = r0.append(r1)
                    r0 = r7
                    r1 = r11
                    java.lang.String r2 = "POST"
                    r3 = r12
                    java.lang.String r3 = r3.toString()
                    r4 = r9
                    java.lang.Class<com.google.api.services.youtube.model.ChannelBannerResource> r5 = com.google.api.services.youtube.model.ChannelBannerResource.class
                    r0.<init>(r1, r2, r3, r4, r5)
                    r0 = r7
                    r1 = r10
                    r0.initializeMediaUpload(r1)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.api.services.youtube.YouTube.ChannelBanners.Insert.<init>(com.google.api.services.youtube.YouTube$ChannelBanners, com.google.api.services.youtube.model.ChannelBannerResource, com.google.api.client.http.b):void");
            }

            public String getChannelId() {
                return this.channelId;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Insert set(String str, Object obj) {
                return (Insert) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<ChannelBannerResource> setAlt2(String str) {
                return (Insert) super.setAlt(str);
            }

            public Insert setChannelId(String str) {
                this.channelId = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<ChannelBannerResource> setFields2(String str) {
                return (Insert) super.setFields(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<ChannelBannerResource> setKey2(String str) {
                return (Insert) super.setKey(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<ChannelBannerResource> setOauthToken2(String str) {
                return (Insert) super.setOauthToken(str);
            }

            public Insert setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<ChannelBannerResource> setPrettyPrint2(Boolean bool) {
                return (Insert) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<ChannelBannerResource> setQuotaUser2(String str) {
                return (Insert) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<ChannelBannerResource> setUserIp2(String str) {
                return (Insert) super.setUserIp(str);
            }
        }

        public ChannelBanners() {
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$ChannelSections.class */
    public final class ChannelSections {

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$ChannelSections$Delete.class */
        public class Delete extends YouTubeRequest<Void> {
            private static final String REST_PATH = "channelSections";
            @q
            private String id;
            @q
            private String onBehalfOfContentOwner;

            protected Delete(String str) {
                super(YouTube.this, "DELETE", REST_PATH, null, Void.class);
                this.id = (String) aa.a(str, "Required parameter id must be specified.");
            }

            public String getId() {
                return this.id;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Delete set(String str, Object obj) {
                return (Delete) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<Void> setAlt2(String str) {
                return (Delete) super.setAlt(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<Void> setFields2(String str) {
                return (Delete) super.setFields(str);
            }

            public Delete setId(String str) {
                this.id = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<Void> setKey2(String str) {
                return (Delete) super.setKey(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<Void> setOauthToken2(String str) {
                return (Delete) super.setOauthToken(str);
            }

            public Delete setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<Void> setPrettyPrint2(Boolean bool) {
                return (Delete) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<Void> setQuotaUser2(String str) {
                return (Delete) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<Void> setUserIp2(String str) {
                return (Delete) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$ChannelSections$Insert.class */
        public class Insert extends YouTubeRequest<ChannelSection> {
            private static final String REST_PATH = "channelSections";
            @q
            private String onBehalfOfContentOwner;
            @q
            private String onBehalfOfContentOwnerChannel;
            @q
            private String part;

            protected Insert(String str, ChannelSection channelSection) {
                super(YouTube.this, "POST", REST_PATH, channelSection, ChannelSection.class);
                this.part = (String) aa.a(str, "Required parameter part must be specified.");
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public String getOnBehalfOfContentOwnerChannel() {
                return this.onBehalfOfContentOwnerChannel;
            }

            public String getPart() {
                return this.part;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Insert set(String str, Object obj) {
                return (Insert) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<ChannelSection> setAlt2(String str) {
                return (Insert) super.setAlt(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<ChannelSection> setFields2(String str) {
                return (Insert) super.setFields(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<ChannelSection> setKey2(String str) {
                return (Insert) super.setKey(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<ChannelSection> setOauthToken2(String str) {
                return (Insert) super.setOauthToken(str);
            }

            public Insert setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            public Insert setOnBehalfOfContentOwnerChannel(String str) {
                this.onBehalfOfContentOwnerChannel = str;
                return this;
            }

            public Insert setPart(String str) {
                this.part = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<ChannelSection> setPrettyPrint2(Boolean bool) {
                return (Insert) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<ChannelSection> setQuotaUser2(String str) {
                return (Insert) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<ChannelSection> setUserIp2(String str) {
                return (Insert) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$ChannelSections$List.class */
        public class List extends YouTubeRequest<ChannelSectionListResponse> {
            private static final String REST_PATH = "channelSections";
            @q
            private String channelId;
            @q
            private String hl;
            @q
            private String id;
            @q
            private Boolean mine;
            @q
            private String onBehalfOfContentOwner;
            @q
            private String part;

            protected List(String str) {
                super(YouTube.this, "GET", REST_PATH, null, ChannelSectionListResponse.class);
                this.part = (String) aa.a(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.b
            public com.google.api.client.http.q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.b
            public t executeUsingHead() throws IOException {
                return super.executeUsingHead();
            }

            public String getChannelId() {
                return this.channelId;
            }

            public String getHl() {
                return this.hl;
            }

            public String getId() {
                return this.id;
            }

            public Boolean getMine() {
                return this.mine;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public String getPart() {
                return this.part;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public List set(String str, Object obj) {
                return (List) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<ChannelSectionListResponse> setAlt2(String str) {
                return (List) super.setAlt(str);
            }

            public List setChannelId(String str) {
                this.channelId = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<ChannelSectionListResponse> setFields2(String str) {
                return (List) super.setFields(str);
            }

            public List setHl(String str) {
                this.hl = str;
                return this;
            }

            public List setId(String str) {
                this.id = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<ChannelSectionListResponse> setKey2(String str) {
                return (List) super.setKey(str);
            }

            public List setMine(Boolean bool) {
                this.mine = bool;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<ChannelSectionListResponse> setOauthToken2(String str) {
                return (List) super.setOauthToken(str);
            }

            public List setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            public List setPart(String str) {
                this.part = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<ChannelSectionListResponse> setPrettyPrint2(Boolean bool) {
                return (List) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<ChannelSectionListResponse> setQuotaUser2(String str) {
                return (List) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<ChannelSectionListResponse> setUserIp2(String str) {
                return (List) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$ChannelSections$Update.class */
        public class Update extends YouTubeRequest<ChannelSection> {
            private static final String REST_PATH = "channelSections";
            @q
            private String onBehalfOfContentOwner;
            @q
            private String part;

            protected Update(String str, ChannelSection channelSection) {
                super(YouTube.this, "PUT", REST_PATH, channelSection, ChannelSection.class);
                this.part = (String) aa.a(str, "Required parameter part must be specified.");
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public String getPart() {
                return this.part;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Update set(String str, Object obj) {
                return (Update) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<ChannelSection> setAlt2(String str) {
                return (Update) super.setAlt(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<ChannelSection> setFields2(String str) {
                return (Update) super.setFields(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<ChannelSection> setKey2(String str) {
                return (Update) super.setKey(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<ChannelSection> setOauthToken2(String str) {
                return (Update) super.setOauthToken(str);
            }

            public Update setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            public Update setPart(String str) {
                this.part = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<ChannelSection> setPrettyPrint2(Boolean bool) {
                return (Update) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<ChannelSection> setQuotaUser2(String str) {
                return (Update) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<ChannelSection> setUserIp2(String str) {
                return (Update) super.setUserIp(str);
            }
        }

        public ChannelSections() {
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Channels.class */
    public final class Channels {

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Channels$List.class */
        public class List extends YouTubeRequest<ChannelListResponse> {
            private static final String REST_PATH = "channels";
            @q
            private String categoryId;
            @q
            private String forUsername;
            @q
            private String hl;
            @q
            private String id;
            @q
            private Boolean managedByMe;
            @q
            private Long maxResults;
            @q
            private Boolean mine;
            @q
            private Boolean mySubscribers;
            @q
            private String onBehalfOfContentOwner;
            @q
            private String pageToken;
            @q
            private String part;

            protected List(String str) {
                super(YouTube.this, "GET", REST_PATH, null, ChannelListResponse.class);
                this.part = (String) aa.a(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.b
            public com.google.api.client.http.q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.b
            public t executeUsingHead() throws IOException {
                return super.executeUsingHead();
            }

            public String getCategoryId() {
                return this.categoryId;
            }

            public String getForUsername() {
                return this.forUsername;
            }

            public String getHl() {
                return this.hl;
            }

            public String getId() {
                return this.id;
            }

            public Boolean getManagedByMe() {
                return this.managedByMe;
            }

            public Long getMaxResults() {
                return this.maxResults;
            }

            public Boolean getMine() {
                return this.mine;
            }

            public Boolean getMySubscribers() {
                return this.mySubscribers;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public String getPageToken() {
                return this.pageToken;
            }

            public String getPart() {
                return this.part;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public List set(String str, Object obj) {
                return (List) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<ChannelListResponse> setAlt2(String str) {
                return (List) super.setAlt(str);
            }

            public List setCategoryId(String str) {
                this.categoryId = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<ChannelListResponse> setFields2(String str) {
                return (List) super.setFields(str);
            }

            public List setForUsername(String str) {
                this.forUsername = str;
                return this;
            }

            public List setHl(String str) {
                this.hl = str;
                return this;
            }

            public List setId(String str) {
                this.id = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<ChannelListResponse> setKey2(String str) {
                return (List) super.setKey(str);
            }

            public List setManagedByMe(Boolean bool) {
                this.managedByMe = bool;
                return this;
            }

            public List setMaxResults(Long l) {
                this.maxResults = l;
                return this;
            }

            public List setMine(Boolean bool) {
                this.mine = bool;
                return this;
            }

            public List setMySubscribers(Boolean bool) {
                this.mySubscribers = bool;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<ChannelListResponse> setOauthToken2(String str) {
                return (List) super.setOauthToken(str);
            }

            public List setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            public List setPageToken(String str) {
                this.pageToken = str;
                return this;
            }

            public List setPart(String str) {
                this.part = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<ChannelListResponse> setPrettyPrint2(Boolean bool) {
                return (List) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<ChannelListResponse> setQuotaUser2(String str) {
                return (List) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<ChannelListResponse> setUserIp2(String str) {
                return (List) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Channels$Update.class */
        public class Update extends YouTubeRequest<Channel> {
            private static final String REST_PATH = "channels";
            @q
            private String onBehalfOfContentOwner;
            @q
            private String part;

            protected Update(String str, Channel channel) {
                super(YouTube.this, "PUT", REST_PATH, channel, Channel.class);
                this.part = (String) aa.a(str, "Required parameter part must be specified.");
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public String getPart() {
                return this.part;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Update set(String str, Object obj) {
                return (Update) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<Channel> setAlt2(String str) {
                return (Update) super.setAlt(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<Channel> setFields2(String str) {
                return (Update) super.setFields(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<Channel> setKey2(String str) {
                return (Update) super.setKey(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<Channel> setOauthToken2(String str) {
                return (Update) super.setOauthToken(str);
            }

            public Update setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            public Update setPart(String str) {
                this.part = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<Channel> setPrettyPrint2(Boolean bool) {
                return (Update) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<Channel> setQuotaUser2(String str) {
                return (Update) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<Channel> setUserIp2(String str) {
                return (Update) super.setUserIp(str);
            }
        }

        public Channels() {
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$CommentThreads.class */
    public final class CommentThreads {

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$CommentThreads$Insert.class */
        public class Insert extends YouTubeRequest<CommentThread> {
            private static final String REST_PATH = "commentThreads";
            @q
            private String part;

            protected Insert(String str, CommentThread commentThread) {
                super(YouTube.this, "POST", REST_PATH, commentThread, CommentThread.class);
                this.part = (String) aa.a(str, "Required parameter part must be specified.");
            }

            public String getPart() {
                return this.part;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Insert set(String str, Object obj) {
                return (Insert) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<CommentThread> setAlt2(String str) {
                return (Insert) super.setAlt(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<CommentThread> setFields2(String str) {
                return (Insert) super.setFields(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<CommentThread> setKey2(String str) {
                return (Insert) super.setKey(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<CommentThread> setOauthToken2(String str) {
                return (Insert) super.setOauthToken(str);
            }

            public Insert setPart(String str) {
                this.part = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<CommentThread> setPrettyPrint2(Boolean bool) {
                return (Insert) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<CommentThread> setQuotaUser2(String str) {
                return (Insert) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<CommentThread> setUserIp2(String str) {
                return (Insert) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$CommentThreads$List.class */
        public class List extends YouTubeRequest<CommentThreadListResponse> {
            private static final String REST_PATH = "commentThreads";
            @q
            private String allThreadsRelatedToChannelId;
            @q
            private String channelId;
            @q
            private String id;
            @q
            private Long maxResults;
            @q
            private String moderationStatus;
            @q
            private String order;
            @q
            private String pageToken;
            @q
            private String part;
            @q
            private String searchTerms;
            @q
            private String textFormat;
            @q
            private String videoId;

            protected List(String str) {
                super(YouTube.this, "GET", REST_PATH, null, CommentThreadListResponse.class);
                this.part = (String) aa.a(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.b
            public com.google.api.client.http.q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.b
            public t executeUsingHead() throws IOException {
                return super.executeUsingHead();
            }

            public String getAllThreadsRelatedToChannelId() {
                return this.allThreadsRelatedToChannelId;
            }

            public String getChannelId() {
                return this.channelId;
            }

            public String getId() {
                return this.id;
            }

            public Long getMaxResults() {
                return this.maxResults;
            }

            public String getModerationStatus() {
                return this.moderationStatus;
            }

            public String getOrder() {
                return this.order;
            }

            public String getPageToken() {
                return this.pageToken;
            }

            public String getPart() {
                return this.part;
            }

            public String getSearchTerms() {
                return this.searchTerms;
            }

            public String getTextFormat() {
                return this.textFormat;
            }

            public String getVideoId() {
                return this.videoId;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public List set(String str, Object obj) {
                return (List) super.set(str, obj);
            }

            public List setAllThreadsRelatedToChannelId(String str) {
                this.allThreadsRelatedToChannelId = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<CommentThreadListResponse> setAlt2(String str) {
                return (List) super.setAlt(str);
            }

            public List setChannelId(String str) {
                this.channelId = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<CommentThreadListResponse> setFields2(String str) {
                return (List) super.setFields(str);
            }

            public List setId(String str) {
                this.id = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<CommentThreadListResponse> setKey2(String str) {
                return (List) super.setKey(str);
            }

            public List setMaxResults(Long l) {
                this.maxResults = l;
                return this;
            }

            public List setModerationStatus(String str) {
                this.moderationStatus = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<CommentThreadListResponse> setOauthToken2(String str) {
                return (List) super.setOauthToken(str);
            }

            public List setOrder(String str) {
                this.order = str;
                return this;
            }

            public List setPageToken(String str) {
                this.pageToken = str;
                return this;
            }

            public List setPart(String str) {
                this.part = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<CommentThreadListResponse> setPrettyPrint2(Boolean bool) {
                return (List) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<CommentThreadListResponse> setQuotaUser2(String str) {
                return (List) super.setQuotaUser(str);
            }

            public List setSearchTerms(String str) {
                this.searchTerms = str;
                return this;
            }

            public List setTextFormat(String str) {
                this.textFormat = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<CommentThreadListResponse> setUserIp2(String str) {
                return (List) super.setUserIp(str);
            }

            public List setVideoId(String str) {
                this.videoId = str;
                return this;
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$CommentThreads$Update.class */
        public class Update extends YouTubeRequest<CommentThread> {
            private static final String REST_PATH = "commentThreads";
            @q
            private String part;

            protected Update(String str, CommentThread commentThread) {
                super(YouTube.this, "PUT", REST_PATH, commentThread, CommentThread.class);
                this.part = (String) aa.a(str, "Required parameter part must be specified.");
            }

            public String getPart() {
                return this.part;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Update set(String str, Object obj) {
                return (Update) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<CommentThread> setAlt2(String str) {
                return (Update) super.setAlt(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<CommentThread> setFields2(String str) {
                return (Update) super.setFields(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<CommentThread> setKey2(String str) {
                return (Update) super.setKey(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<CommentThread> setOauthToken2(String str) {
                return (Update) super.setOauthToken(str);
            }

            public Update setPart(String str) {
                this.part = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<CommentThread> setPrettyPrint2(Boolean bool) {
                return (Update) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<CommentThread> setQuotaUser2(String str) {
                return (Update) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<CommentThread> setUserIp2(String str) {
                return (Update) super.setUserIp(str);
            }
        }

        public CommentThreads() {
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Comments.class */
    public final class Comments {

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Comments$Delete.class */
        public class Delete extends YouTubeRequest<Void> {
            private static final String REST_PATH = "comments";
            @q
            private String id;

            protected Delete(String str) {
                super(YouTube.this, "DELETE", REST_PATH, null, Void.class);
                this.id = (String) aa.a(str, "Required parameter id must be specified.");
            }

            public String getId() {
                return this.id;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Delete set(String str, Object obj) {
                return (Delete) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<Void> setAlt2(String str) {
                return (Delete) super.setAlt(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<Void> setFields2(String str) {
                return (Delete) super.setFields(str);
            }

            public Delete setId(String str) {
                this.id = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<Void> setKey2(String str) {
                return (Delete) super.setKey(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<Void> setOauthToken2(String str) {
                return (Delete) super.setOauthToken(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<Void> setPrettyPrint2(Boolean bool) {
                return (Delete) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<Void> setQuotaUser2(String str) {
                return (Delete) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<Void> setUserIp2(String str) {
                return (Delete) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Comments$Insert.class */
        public class Insert extends YouTubeRequest<Comment> {
            private static final String REST_PATH = "comments";
            @q
            private String part;

            protected Insert(String str, Comment comment) {
                super(YouTube.this, "POST", REST_PATH, comment, Comment.class);
                this.part = (String) aa.a(str, "Required parameter part must be specified.");
            }

            public String getPart() {
                return this.part;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Insert set(String str, Object obj) {
                return (Insert) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<Comment> setAlt2(String str) {
                return (Insert) super.setAlt(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<Comment> setFields2(String str) {
                return (Insert) super.setFields(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<Comment> setKey2(String str) {
                return (Insert) super.setKey(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<Comment> setOauthToken2(String str) {
                return (Insert) super.setOauthToken(str);
            }

            public Insert setPart(String str) {
                this.part = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<Comment> setPrettyPrint2(Boolean bool) {
                return (Insert) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<Comment> setQuotaUser2(String str) {
                return (Insert) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<Comment> setUserIp2(String str) {
                return (Insert) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Comments$List.class */
        public class List extends YouTubeRequest<CommentListResponse> {
            private static final String REST_PATH = "comments";
            @q
            private String id;
            @q
            private Long maxResults;
            @q
            private String pageToken;
            @q
            private String parentId;
            @q
            private String part;
            @q
            private String textFormat;

            protected List(String str) {
                super(YouTube.this, "GET", REST_PATH, null, CommentListResponse.class);
                this.part = (String) aa.a(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.b
            public com.google.api.client.http.q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.b
            public t executeUsingHead() throws IOException {
                return super.executeUsingHead();
            }

            public String getId() {
                return this.id;
            }

            public Long getMaxResults() {
                return this.maxResults;
            }

            public String getPageToken() {
                return this.pageToken;
            }

            public String getParentId() {
                return this.parentId;
            }

            public String getPart() {
                return this.part;
            }

            public String getTextFormat() {
                return this.textFormat;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public List set(String str, Object obj) {
                return (List) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<CommentListResponse> setAlt2(String str) {
                return (List) super.setAlt(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<CommentListResponse> setFields2(String str) {
                return (List) super.setFields(str);
            }

            public List setId(String str) {
                this.id = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<CommentListResponse> setKey2(String str) {
                return (List) super.setKey(str);
            }

            public List setMaxResults(Long l) {
                this.maxResults = l;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<CommentListResponse> setOauthToken2(String str) {
                return (List) super.setOauthToken(str);
            }

            public List setPageToken(String str) {
                this.pageToken = str;
                return this;
            }

            public List setParentId(String str) {
                this.parentId = str;
                return this;
            }

            public List setPart(String str) {
                this.part = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<CommentListResponse> setPrettyPrint2(Boolean bool) {
                return (List) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<CommentListResponse> setQuotaUser2(String str) {
                return (List) super.setQuotaUser(str);
            }

            public List setTextFormat(String str) {
                this.textFormat = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<CommentListResponse> setUserIp2(String str) {
                return (List) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Comments$MarkAsSpam.class */
        public class MarkAsSpam extends YouTubeRequest<Void> {
            private static final String REST_PATH = "comments/markAsSpam";
            @q
            private String id;

            protected MarkAsSpam(String str) {
                super(YouTube.this, "POST", REST_PATH, null, Void.class);
                this.id = (String) aa.a(str, "Required parameter id must be specified.");
            }

            public String getId() {
                return this.id;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public MarkAsSpam set(String str, Object obj) {
                return (MarkAsSpam) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<Void> setAlt2(String str) {
                return (MarkAsSpam) super.setAlt(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<Void> setFields2(String str) {
                return (MarkAsSpam) super.setFields(str);
            }

            public MarkAsSpam setId(String str) {
                this.id = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<Void> setKey2(String str) {
                return (MarkAsSpam) super.setKey(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<Void> setOauthToken2(String str) {
                return (MarkAsSpam) super.setOauthToken(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<Void> setPrettyPrint2(Boolean bool) {
                return (MarkAsSpam) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<Void> setQuotaUser2(String str) {
                return (MarkAsSpam) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<Void> setUserIp2(String str) {
                return (MarkAsSpam) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Comments$SetModerationStatus.class */
        public class SetModerationStatus extends YouTubeRequest<Void> {
            private static final String REST_PATH = "comments/setModerationStatus";
            @q
            private Boolean banAuthor;
            @q
            private String id;
            @q
            private String moderationStatus;

            protected SetModerationStatus(String str, String str2) {
                super(YouTube.this, "POST", REST_PATH, null, Void.class);
                this.id = (String) aa.a(str, "Required parameter id must be specified.");
                this.moderationStatus = (String) aa.a(str2, "Required parameter moderationStatus must be specified.");
            }

            public Boolean getBanAuthor() {
                return this.banAuthor;
            }

            public String getId() {
                return this.id;
            }

            public String getModerationStatus() {
                return this.moderationStatus;
            }

            public boolean isBanAuthor() {
                Boolean bool = this.banAuthor;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.banAuthor.booleanValue();
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public SetModerationStatus set(String str, Object obj) {
                return (SetModerationStatus) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<Void> setAlt2(String str) {
                return (SetModerationStatus) super.setAlt(str);
            }

            public SetModerationStatus setBanAuthor(Boolean bool) {
                this.banAuthor = bool;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<Void> setFields2(String str) {
                return (SetModerationStatus) super.setFields(str);
            }

            public SetModerationStatus setId(String str) {
                this.id = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<Void> setKey2(String str) {
                return (SetModerationStatus) super.setKey(str);
            }

            public SetModerationStatus setModerationStatus(String str) {
                this.moderationStatus = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<Void> setOauthToken2(String str) {
                return (SetModerationStatus) super.setOauthToken(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<Void> setPrettyPrint2(Boolean bool) {
                return (SetModerationStatus) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<Void> setQuotaUser2(String str) {
                return (SetModerationStatus) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<Void> setUserIp2(String str) {
                return (SetModerationStatus) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Comments$Update.class */
        public class Update extends YouTubeRequest<Comment> {
            private static final String REST_PATH = "comments";
            @q
            private String part;

            protected Update(String str, Comment comment) {
                super(YouTube.this, "PUT", REST_PATH, comment, Comment.class);
                this.part = (String) aa.a(str, "Required parameter part must be specified.");
            }

            public String getPart() {
                return this.part;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Update set(String str, Object obj) {
                return (Update) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<Comment> setAlt2(String str) {
                return (Update) super.setAlt(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<Comment> setFields2(String str) {
                return (Update) super.setFields(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<Comment> setKey2(String str) {
                return (Update) super.setKey(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<Comment> setOauthToken2(String str) {
                return (Update) super.setOauthToken(str);
            }

            public Update setPart(String str) {
                this.part = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<Comment> setPrettyPrint2(Boolean bool) {
                return (Update) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<Comment> setQuotaUser2(String str) {
                return (Update) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<Comment> setUserIp2(String str) {
                return (Update) super.setUserIp(str);
            }
        }

        public Comments() {
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$GuideCategories.class */
    public final class GuideCategories {

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$GuideCategories$List.class */
        public class List extends YouTubeRequest<GuideCategoryListResponse> {
            private static final String REST_PATH = "guideCategories";
            @q
            private String hl;
            @q
            private String id;
            @q
            private String part;
            @q
            private String regionCode;

            protected List(String str) {
                super(YouTube.this, "GET", REST_PATH, null, GuideCategoryListResponse.class);
                this.part = (String) aa.a(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.b
            public com.google.api.client.http.q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.b
            public t executeUsingHead() throws IOException {
                return super.executeUsingHead();
            }

            public String getHl() {
                return this.hl;
            }

            public String getId() {
                return this.id;
            }

            public String getPart() {
                return this.part;
            }

            public String getRegionCode() {
                return this.regionCode;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public List set(String str, Object obj) {
                return (List) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<GuideCategoryListResponse> setAlt2(String str) {
                return (List) super.setAlt(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<GuideCategoryListResponse> setFields2(String str) {
                return (List) super.setFields(str);
            }

            public List setHl(String str) {
                this.hl = str;
                return this;
            }

            public List setId(String str) {
                this.id = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<GuideCategoryListResponse> setKey2(String str) {
                return (List) super.setKey(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<GuideCategoryListResponse> setOauthToken2(String str) {
                return (List) super.setOauthToken(str);
            }

            public List setPart(String str) {
                this.part = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<GuideCategoryListResponse> setPrettyPrint2(Boolean bool) {
                return (List) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<GuideCategoryListResponse> setQuotaUser2(String str) {
                return (List) super.setQuotaUser(str);
            }

            public List setRegionCode(String str) {
                this.regionCode = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<GuideCategoryListResponse> setUserIp2(String str) {
                return (List) super.setUserIp(str);
            }
        }

        public GuideCategories() {
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$I18nLanguages.class */
    public final class I18nLanguages {

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$I18nLanguages$List.class */
        public class List extends YouTubeRequest<I18nLanguageListResponse> {
            private static final String REST_PATH = "i18nLanguages";
            @q
            private String hl;
            @q
            private String part;

            protected List(String str) {
                super(YouTube.this, "GET", REST_PATH, null, I18nLanguageListResponse.class);
                this.part = (String) aa.a(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.b
            public com.google.api.client.http.q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.b
            public t executeUsingHead() throws IOException {
                return super.executeUsingHead();
            }

            public String getHl() {
                return this.hl;
            }

            public String getPart() {
                return this.part;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public List set(String str, Object obj) {
                return (List) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<I18nLanguageListResponse> setAlt2(String str) {
                return (List) super.setAlt(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<I18nLanguageListResponse> setFields2(String str) {
                return (List) super.setFields(str);
            }

            public List setHl(String str) {
                this.hl = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<I18nLanguageListResponse> setKey2(String str) {
                return (List) super.setKey(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<I18nLanguageListResponse> setOauthToken2(String str) {
                return (List) super.setOauthToken(str);
            }

            public List setPart(String str) {
                this.part = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<I18nLanguageListResponse> setPrettyPrint2(Boolean bool) {
                return (List) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<I18nLanguageListResponse> setQuotaUser2(String str) {
                return (List) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<I18nLanguageListResponse> setUserIp2(String str) {
                return (List) super.setUserIp(str);
            }
        }

        public I18nLanguages() {
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$I18nRegions.class */
    public final class I18nRegions {

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$I18nRegions$List.class */
        public class List extends YouTubeRequest<I18nRegionListResponse> {
            private static final String REST_PATH = "i18nRegions";
            @q
            private String hl;
            @q
            private String part;

            protected List(String str) {
                super(YouTube.this, "GET", REST_PATH, null, I18nRegionListResponse.class);
                this.part = (String) aa.a(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.b
            public com.google.api.client.http.q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.b
            public t executeUsingHead() throws IOException {
                return super.executeUsingHead();
            }

            public String getHl() {
                return this.hl;
            }

            public String getPart() {
                return this.part;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public List set(String str, Object obj) {
                return (List) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<I18nRegionListResponse> setAlt2(String str) {
                return (List) super.setAlt(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<I18nRegionListResponse> setFields2(String str) {
                return (List) super.setFields(str);
            }

            public List setHl(String str) {
                this.hl = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<I18nRegionListResponse> setKey2(String str) {
                return (List) super.setKey(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<I18nRegionListResponse> setOauthToken2(String str) {
                return (List) super.setOauthToken(str);
            }

            public List setPart(String str) {
                this.part = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<I18nRegionListResponse> setPrettyPrint2(Boolean bool) {
                return (List) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<I18nRegionListResponse> setQuotaUser2(String str) {
                return (List) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<I18nRegionListResponse> setUserIp2(String str) {
                return (List) super.setUserIp(str);
            }
        }

        public I18nRegions() {
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$LiveBroadcasts.class */
    public final class LiveBroadcasts {

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$LiveBroadcasts$Bind.class */
        public class Bind extends YouTubeRequest<LiveBroadcast> {
            private static final String REST_PATH = "liveBroadcasts/bind";
            @q
            private String id;
            @q
            private String onBehalfOfContentOwner;
            @q
            private String onBehalfOfContentOwnerChannel;
            @q
            private String part;
            @q
            private String streamId;

            protected Bind(String str, String str2) {
                super(YouTube.this, "POST", REST_PATH, null, LiveBroadcast.class);
                this.id = (String) aa.a(str, "Required parameter id must be specified.");
                this.part = (String) aa.a(str2, "Required parameter part must be specified.");
            }

            public String getId() {
                return this.id;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public String getOnBehalfOfContentOwnerChannel() {
                return this.onBehalfOfContentOwnerChannel;
            }

            public String getPart() {
                return this.part;
            }

            public String getStreamId() {
                return this.streamId;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Bind set(String str, Object obj) {
                return (Bind) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<LiveBroadcast> setAlt2(String str) {
                return (Bind) super.setAlt(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<LiveBroadcast> setFields2(String str) {
                return (Bind) super.setFields(str);
            }

            public Bind setId(String str) {
                this.id = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<LiveBroadcast> setKey2(String str) {
                return (Bind) super.setKey(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<LiveBroadcast> setOauthToken2(String str) {
                return (Bind) super.setOauthToken(str);
            }

            public Bind setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            public Bind setOnBehalfOfContentOwnerChannel(String str) {
                this.onBehalfOfContentOwnerChannel = str;
                return this;
            }

            public Bind setPart(String str) {
                this.part = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<LiveBroadcast> setPrettyPrint2(Boolean bool) {
                return (Bind) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<LiveBroadcast> setQuotaUser2(String str) {
                return (Bind) super.setQuotaUser(str);
            }

            public Bind setStreamId(String str) {
                this.streamId = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<LiveBroadcast> setUserIp2(String str) {
                return (Bind) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$LiveBroadcasts$Control.class */
        public class Control extends YouTubeRequest<LiveBroadcast> {
            private static final String REST_PATH = "liveBroadcasts/control";
            @q
            private Boolean displaySlate;
            @q
            private String id;
            @q
            private BigInteger offsetTimeMs;
            @q
            private String onBehalfOfContentOwner;
            @q
            private String onBehalfOfContentOwnerChannel;
            @q
            private String part;
            @q
            private l walltime;

            protected Control(String str, String str2) {
                super(YouTube.this, "POST", REST_PATH, null, LiveBroadcast.class);
                this.id = (String) aa.a(str, "Required parameter id must be specified.");
                this.part = (String) aa.a(str2, "Required parameter part must be specified.");
            }

            public Boolean getDisplaySlate() {
                return this.displaySlate;
            }

            public String getId() {
                return this.id;
            }

            public BigInteger getOffsetTimeMs() {
                return this.offsetTimeMs;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public String getOnBehalfOfContentOwnerChannel() {
                return this.onBehalfOfContentOwnerChannel;
            }

            public String getPart() {
                return this.part;
            }

            public l getWalltime() {
                return this.walltime;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Control set(String str, Object obj) {
                return (Control) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<LiveBroadcast> setAlt2(String str) {
                return (Control) super.setAlt(str);
            }

            public Control setDisplaySlate(Boolean bool) {
                this.displaySlate = bool;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<LiveBroadcast> setFields2(String str) {
                return (Control) super.setFields(str);
            }

            public Control setId(String str) {
                this.id = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<LiveBroadcast> setKey2(String str) {
                return (Control) super.setKey(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<LiveBroadcast> setOauthToken2(String str) {
                return (Control) super.setOauthToken(str);
            }

            public Control setOffsetTimeMs(BigInteger bigInteger) {
                this.offsetTimeMs = bigInteger;
                return this;
            }

            public Control setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            public Control setOnBehalfOfContentOwnerChannel(String str) {
                this.onBehalfOfContentOwnerChannel = str;
                return this;
            }

            public Control setPart(String str) {
                this.part = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<LiveBroadcast> setPrettyPrint2(Boolean bool) {
                return (Control) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<LiveBroadcast> setQuotaUser2(String str) {
                return (Control) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<LiveBroadcast> setUserIp2(String str) {
                return (Control) super.setUserIp(str);
            }

            public Control setWalltime(l lVar) {
                this.walltime = lVar;
                return this;
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$LiveBroadcasts$Delete.class */
        public class Delete extends YouTubeRequest<Void> {
            private static final String REST_PATH = "liveBroadcasts";
            @q
            private String id;
            @q
            private String onBehalfOfContentOwner;
            @q
            private String onBehalfOfContentOwnerChannel;

            protected Delete(String str) {
                super(YouTube.this, "DELETE", REST_PATH, null, Void.class);
                this.id = (String) aa.a(str, "Required parameter id must be specified.");
            }

            public String getId() {
                return this.id;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public String getOnBehalfOfContentOwnerChannel() {
                return this.onBehalfOfContentOwnerChannel;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Delete set(String str, Object obj) {
                return (Delete) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<Void> setAlt2(String str) {
                return (Delete) super.setAlt(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<Void> setFields2(String str) {
                return (Delete) super.setFields(str);
            }

            public Delete setId(String str) {
                this.id = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<Void> setKey2(String str) {
                return (Delete) super.setKey(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<Void> setOauthToken2(String str) {
                return (Delete) super.setOauthToken(str);
            }

            public Delete setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            public Delete setOnBehalfOfContentOwnerChannel(String str) {
                this.onBehalfOfContentOwnerChannel = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<Void> setPrettyPrint2(Boolean bool) {
                return (Delete) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<Void> setQuotaUser2(String str) {
                return (Delete) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<Void> setUserIp2(String str) {
                return (Delete) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$LiveBroadcasts$Insert.class */
        public class Insert extends YouTubeRequest<LiveBroadcast> {
            private static final String REST_PATH = "liveBroadcasts";
            @q
            private String onBehalfOfContentOwner;
            @q
            private String onBehalfOfContentOwnerChannel;
            @q
            private String part;

            protected Insert(String str, LiveBroadcast liveBroadcast) {
                super(YouTube.this, "POST", REST_PATH, liveBroadcast, LiveBroadcast.class);
                this.part = (String) aa.a(str, "Required parameter part must be specified.");
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public String getOnBehalfOfContentOwnerChannel() {
                return this.onBehalfOfContentOwnerChannel;
            }

            public String getPart() {
                return this.part;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Insert set(String str, Object obj) {
                return (Insert) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<LiveBroadcast> setAlt2(String str) {
                return (Insert) super.setAlt(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<LiveBroadcast> setFields2(String str) {
                return (Insert) super.setFields(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<LiveBroadcast> setKey2(String str) {
                return (Insert) super.setKey(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<LiveBroadcast> setOauthToken2(String str) {
                return (Insert) super.setOauthToken(str);
            }

            public Insert setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            public Insert setOnBehalfOfContentOwnerChannel(String str) {
                this.onBehalfOfContentOwnerChannel = str;
                return this;
            }

            public Insert setPart(String str) {
                this.part = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<LiveBroadcast> setPrettyPrint2(Boolean bool) {
                return (Insert) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<LiveBroadcast> setQuotaUser2(String str) {
                return (Insert) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<LiveBroadcast> setUserIp2(String str) {
                return (Insert) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$LiveBroadcasts$List.class */
        public class List extends YouTubeRequest<LiveBroadcastListResponse> {
            private static final String REST_PATH = "liveBroadcasts";
            @q
            private String broadcastStatus;
            @q
            private String broadcastType;
            @q
            private String id;
            @q
            private Long maxResults;
            @q
            private Boolean mine;
            @q
            private String onBehalfOfContentOwner;
            @q
            private String onBehalfOfContentOwnerChannel;
            @q
            private String pageToken;
            @q
            private String part;

            protected List(String str) {
                super(YouTube.this, "GET", REST_PATH, null, LiveBroadcastListResponse.class);
                this.part = (String) aa.a(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.b
            public com.google.api.client.http.q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.b
            public t executeUsingHead() throws IOException {
                return super.executeUsingHead();
            }

            public String getBroadcastStatus() {
                return this.broadcastStatus;
            }

            public String getBroadcastType() {
                return this.broadcastType;
            }

            public String getId() {
                return this.id;
            }

            public Long getMaxResults() {
                return this.maxResults;
            }

            public Boolean getMine() {
                return this.mine;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public String getOnBehalfOfContentOwnerChannel() {
                return this.onBehalfOfContentOwnerChannel;
            }

            public String getPageToken() {
                return this.pageToken;
            }

            public String getPart() {
                return this.part;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public List set(String str, Object obj) {
                return (List) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<LiveBroadcastListResponse> setAlt2(String str) {
                return (List) super.setAlt(str);
            }

            public List setBroadcastStatus(String str) {
                this.broadcastStatus = str;
                return this;
            }

            public List setBroadcastType(String str) {
                this.broadcastType = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<LiveBroadcastListResponse> setFields2(String str) {
                return (List) super.setFields(str);
            }

            public List setId(String str) {
                this.id = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<LiveBroadcastListResponse> setKey2(String str) {
                return (List) super.setKey(str);
            }

            public List setMaxResults(Long l) {
                this.maxResults = l;
                return this;
            }

            public List setMine(Boolean bool) {
                this.mine = bool;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<LiveBroadcastListResponse> setOauthToken2(String str) {
                return (List) super.setOauthToken(str);
            }

            public List setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            public List setOnBehalfOfContentOwnerChannel(String str) {
                this.onBehalfOfContentOwnerChannel = str;
                return this;
            }

            public List setPageToken(String str) {
                this.pageToken = str;
                return this;
            }

            public List setPart(String str) {
                this.part = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<LiveBroadcastListResponse> setPrettyPrint2(Boolean bool) {
                return (List) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<LiveBroadcastListResponse> setQuotaUser2(String str) {
                return (List) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<LiveBroadcastListResponse> setUserIp2(String str) {
                return (List) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$LiveBroadcasts$Transition.class */
        public class Transition extends YouTubeRequest<LiveBroadcast> {
            private static final String REST_PATH = "liveBroadcasts/transition";
            @q
            private String broadcastStatus;
            @q
            private String id;
            @q
            private String onBehalfOfContentOwner;
            @q
            private String onBehalfOfContentOwnerChannel;
            @q
            private String part;

            protected Transition(String str, String str2, String str3) {
                super(YouTube.this, "POST", REST_PATH, null, LiveBroadcast.class);
                this.broadcastStatus = (String) aa.a(str, "Required parameter broadcastStatus must be specified.");
                this.id = (String) aa.a(str2, "Required parameter id must be specified.");
                this.part = (String) aa.a(str3, "Required parameter part must be specified.");
            }

            public String getBroadcastStatus() {
                return this.broadcastStatus;
            }

            public String getId() {
                return this.id;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public String getOnBehalfOfContentOwnerChannel() {
                return this.onBehalfOfContentOwnerChannel;
            }

            public String getPart() {
                return this.part;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Transition set(String str, Object obj) {
                return (Transition) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<LiveBroadcast> setAlt2(String str) {
                return (Transition) super.setAlt(str);
            }

            public Transition setBroadcastStatus(String str) {
                this.broadcastStatus = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<LiveBroadcast> setFields2(String str) {
                return (Transition) super.setFields(str);
            }

            public Transition setId(String str) {
                this.id = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<LiveBroadcast> setKey2(String str) {
                return (Transition) super.setKey(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<LiveBroadcast> setOauthToken2(String str) {
                return (Transition) super.setOauthToken(str);
            }

            public Transition setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            public Transition setOnBehalfOfContentOwnerChannel(String str) {
                this.onBehalfOfContentOwnerChannel = str;
                return this;
            }

            public Transition setPart(String str) {
                this.part = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<LiveBroadcast> setPrettyPrint2(Boolean bool) {
                return (Transition) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<LiveBroadcast> setQuotaUser2(String str) {
                return (Transition) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<LiveBroadcast> setUserIp2(String str) {
                return (Transition) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$LiveBroadcasts$Update.class */
        public class Update extends YouTubeRequest<LiveBroadcast> {
            private static final String REST_PATH = "liveBroadcasts";
            @q
            private String onBehalfOfContentOwner;
            @q
            private String onBehalfOfContentOwnerChannel;
            @q
            private String part;

            protected Update(String str, LiveBroadcast liveBroadcast) {
                super(YouTube.this, "PUT", REST_PATH, liveBroadcast, LiveBroadcast.class);
                this.part = (String) aa.a(str, "Required parameter part must be specified.");
                checkRequiredParameter(liveBroadcast, Constants.VAST_TRACKER_CONTENT);
                checkRequiredParameter(liveBroadcast.getId(), "LiveBroadcast.getId()");
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public String getOnBehalfOfContentOwnerChannel() {
                return this.onBehalfOfContentOwnerChannel;
            }

            public String getPart() {
                return this.part;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Update set(String str, Object obj) {
                return (Update) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<LiveBroadcast> setAlt2(String str) {
                return (Update) super.setAlt(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<LiveBroadcast> setFields2(String str) {
                return (Update) super.setFields(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<LiveBroadcast> setKey2(String str) {
                return (Update) super.setKey(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<LiveBroadcast> setOauthToken2(String str) {
                return (Update) super.setOauthToken(str);
            }

            public Update setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            public Update setOnBehalfOfContentOwnerChannel(String str) {
                this.onBehalfOfContentOwnerChannel = str;
                return this;
            }

            public Update setPart(String str) {
                this.part = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<LiveBroadcast> setPrettyPrint2(Boolean bool) {
                return (Update) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<LiveBroadcast> setQuotaUser2(String str) {
                return (Update) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<LiveBroadcast> setUserIp2(String str) {
                return (Update) super.setUserIp(str);
            }
        }

        public LiveBroadcasts() {
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$LiveChatBans.class */
    public final class LiveChatBans {

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$LiveChatBans$Delete.class */
        public class Delete extends YouTubeRequest<Void> {
            private static final String REST_PATH = "liveChat/bans";
            @q
            private String id;

            protected Delete(String str) {
                super(YouTube.this, "DELETE", REST_PATH, null, Void.class);
                this.id = (String) aa.a(str, "Required parameter id must be specified.");
            }

            public String getId() {
                return this.id;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Delete set(String str, Object obj) {
                return (Delete) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<Void> setAlt2(String str) {
                return (Delete) super.setAlt(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<Void> setFields2(String str) {
                return (Delete) super.setFields(str);
            }

            public Delete setId(String str) {
                this.id = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<Void> setKey2(String str) {
                return (Delete) super.setKey(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<Void> setOauthToken2(String str) {
                return (Delete) super.setOauthToken(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<Void> setPrettyPrint2(Boolean bool) {
                return (Delete) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<Void> setQuotaUser2(String str) {
                return (Delete) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<Void> setUserIp2(String str) {
                return (Delete) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$LiveChatBans$Insert.class */
        public class Insert extends YouTubeRequest<LiveChatBan> {
            private static final String REST_PATH = "liveChat/bans";
            @q
            private String part;

            protected Insert(String str, LiveChatBan liveChatBan) {
                super(YouTube.this, "POST", REST_PATH, liveChatBan, LiveChatBan.class);
                this.part = (String) aa.a(str, "Required parameter part must be specified.");
            }

            public String getPart() {
                return this.part;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Insert set(String str, Object obj) {
                return (Insert) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<LiveChatBan> setAlt2(String str) {
                return (Insert) super.setAlt(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<LiveChatBan> setFields2(String str) {
                return (Insert) super.setFields(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<LiveChatBan> setKey2(String str) {
                return (Insert) super.setKey(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<LiveChatBan> setOauthToken2(String str) {
                return (Insert) super.setOauthToken(str);
            }

            public Insert setPart(String str) {
                this.part = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<LiveChatBan> setPrettyPrint2(Boolean bool) {
                return (Insert) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<LiveChatBan> setQuotaUser2(String str) {
                return (Insert) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<LiveChatBan> setUserIp2(String str) {
                return (Insert) super.setUserIp(str);
            }
        }

        public LiveChatBans() {
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$LiveChatMessages.class */
    public final class LiveChatMessages {

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$LiveChatMessages$Delete.class */
        public class Delete extends YouTubeRequest<Void> {
            private static final String REST_PATH = "liveChat/messages";
            @q
            private String id;

            protected Delete(String str) {
                super(YouTube.this, "DELETE", REST_PATH, null, Void.class);
                this.id = (String) aa.a(str, "Required parameter id must be specified.");
            }

            public String getId() {
                return this.id;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Delete set(String str, Object obj) {
                return (Delete) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<Void> setAlt2(String str) {
                return (Delete) super.setAlt(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<Void> setFields2(String str) {
                return (Delete) super.setFields(str);
            }

            public Delete setId(String str) {
                this.id = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<Void> setKey2(String str) {
                return (Delete) super.setKey(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<Void> setOauthToken2(String str) {
                return (Delete) super.setOauthToken(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<Void> setPrettyPrint2(Boolean bool) {
                return (Delete) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<Void> setQuotaUser2(String str) {
                return (Delete) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<Void> setUserIp2(String str) {
                return (Delete) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$LiveChatMessages$Insert.class */
        public class Insert extends YouTubeRequest<LiveChatMessage> {
            private static final String REST_PATH = "liveChat/messages";
            @q
            private String part;

            protected Insert(String str, LiveChatMessage liveChatMessage) {
                super(YouTube.this, "POST", REST_PATH, liveChatMessage, LiveChatMessage.class);
                this.part = (String) aa.a(str, "Required parameter part must be specified.");
            }

            public String getPart() {
                return this.part;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Insert set(String str, Object obj) {
                return (Insert) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<LiveChatMessage> setAlt2(String str) {
                return (Insert) super.setAlt(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<LiveChatMessage> setFields2(String str) {
                return (Insert) super.setFields(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<LiveChatMessage> setKey2(String str) {
                return (Insert) super.setKey(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<LiveChatMessage> setOauthToken2(String str) {
                return (Insert) super.setOauthToken(str);
            }

            public Insert setPart(String str) {
                this.part = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<LiveChatMessage> setPrettyPrint2(Boolean bool) {
                return (Insert) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<LiveChatMessage> setQuotaUser2(String str) {
                return (Insert) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<LiveChatMessage> setUserIp2(String str) {
                return (Insert) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$LiveChatMessages$List.class */
        public class List extends YouTubeRequest<LiveChatMessageListResponse> {
            private static final String REST_PATH = "liveChat/messages";
            @q
            private String hl;
            @q
            private String liveChatId;
            @q
            private Long maxResults;
            @q
            private String pageToken;
            @q
            private String part;
            @q
            private Long profileImageSize;

            protected List(String str, String str2) {
                super(YouTube.this, "GET", REST_PATH, null, LiveChatMessageListResponse.class);
                this.liveChatId = (String) aa.a(str, "Required parameter liveChatId must be specified.");
                this.part = (String) aa.a(str2, "Required parameter part must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.b
            public com.google.api.client.http.q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.b
            public t executeUsingHead() throws IOException {
                return super.executeUsingHead();
            }

            public String getHl() {
                return this.hl;
            }

            public String getLiveChatId() {
                return this.liveChatId;
            }

            public Long getMaxResults() {
                return this.maxResults;
            }

            public String getPageToken() {
                return this.pageToken;
            }

            public String getPart() {
                return this.part;
            }

            public Long getProfileImageSize() {
                return this.profileImageSize;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public List set(String str, Object obj) {
                return (List) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<LiveChatMessageListResponse> setAlt2(String str) {
                return (List) super.setAlt(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<LiveChatMessageListResponse> setFields2(String str) {
                return (List) super.setFields(str);
            }

            public List setHl(String str) {
                this.hl = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<LiveChatMessageListResponse> setKey2(String str) {
                return (List) super.setKey(str);
            }

            public List setLiveChatId(String str) {
                this.liveChatId = str;
                return this;
            }

            public List setMaxResults(Long l) {
                this.maxResults = l;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<LiveChatMessageListResponse> setOauthToken2(String str) {
                return (List) super.setOauthToken(str);
            }

            public List setPageToken(String str) {
                this.pageToken = str;
                return this;
            }

            public List setPart(String str) {
                this.part = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<LiveChatMessageListResponse> setPrettyPrint2(Boolean bool) {
                return (List) super.setPrettyPrint(bool);
            }

            public List setProfileImageSize(Long l) {
                this.profileImageSize = l;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<LiveChatMessageListResponse> setQuotaUser2(String str) {
                return (List) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<LiveChatMessageListResponse> setUserIp2(String str) {
                return (List) super.setUserIp(str);
            }
        }

        public LiveChatMessages() {
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$LiveChatModerators.class */
    public final class LiveChatModerators {

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$LiveChatModerators$Delete.class */
        public class Delete extends YouTubeRequest<Void> {
            private static final String REST_PATH = "liveChat/moderators";
            @q
            private String id;

            protected Delete(String str) {
                super(YouTube.this, "DELETE", REST_PATH, null, Void.class);
                this.id = (String) aa.a(str, "Required parameter id must be specified.");
            }

            public String getId() {
                return this.id;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Delete set(String str, Object obj) {
                return (Delete) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<Void> setAlt2(String str) {
                return (Delete) super.setAlt(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<Void> setFields2(String str) {
                return (Delete) super.setFields(str);
            }

            public Delete setId(String str) {
                this.id = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<Void> setKey2(String str) {
                return (Delete) super.setKey(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<Void> setOauthToken2(String str) {
                return (Delete) super.setOauthToken(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<Void> setPrettyPrint2(Boolean bool) {
                return (Delete) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<Void> setQuotaUser2(String str) {
                return (Delete) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<Void> setUserIp2(String str) {
                return (Delete) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$LiveChatModerators$Insert.class */
        public class Insert extends YouTubeRequest<LiveChatModerator> {
            private static final String REST_PATH = "liveChat/moderators";
            @q
            private String part;

            protected Insert(String str, LiveChatModerator liveChatModerator) {
                super(YouTube.this, "POST", REST_PATH, liveChatModerator, LiveChatModerator.class);
                this.part = (String) aa.a(str, "Required parameter part must be specified.");
            }

            public String getPart() {
                return this.part;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Insert set(String str, Object obj) {
                return (Insert) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<LiveChatModerator> setAlt2(String str) {
                return (Insert) super.setAlt(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<LiveChatModerator> setFields2(String str) {
                return (Insert) super.setFields(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<LiveChatModerator> setKey2(String str) {
                return (Insert) super.setKey(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<LiveChatModerator> setOauthToken2(String str) {
                return (Insert) super.setOauthToken(str);
            }

            public Insert setPart(String str) {
                this.part = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<LiveChatModerator> setPrettyPrint2(Boolean bool) {
                return (Insert) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<LiveChatModerator> setQuotaUser2(String str) {
                return (Insert) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<LiveChatModerator> setUserIp2(String str) {
                return (Insert) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$LiveChatModerators$List.class */
        public class List extends YouTubeRequest<LiveChatModeratorListResponse> {
            private static final String REST_PATH = "liveChat/moderators";
            @q
            private String liveChatId;
            @q
            private Long maxResults;
            @q
            private String pageToken;
            @q
            private String part;

            protected List(String str, String str2) {
                super(YouTube.this, "GET", REST_PATH, null, LiveChatModeratorListResponse.class);
                this.liveChatId = (String) aa.a(str, "Required parameter liveChatId must be specified.");
                this.part = (String) aa.a(str2, "Required parameter part must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.b
            public com.google.api.client.http.q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.b
            public t executeUsingHead() throws IOException {
                return super.executeUsingHead();
            }

            public String getLiveChatId() {
                return this.liveChatId;
            }

            public Long getMaxResults() {
                return this.maxResults;
            }

            public String getPageToken() {
                return this.pageToken;
            }

            public String getPart() {
                return this.part;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public List set(String str, Object obj) {
                return (List) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<LiveChatModeratorListResponse> setAlt2(String str) {
                return (List) super.setAlt(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<LiveChatModeratorListResponse> setFields2(String str) {
                return (List) super.setFields(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<LiveChatModeratorListResponse> setKey2(String str) {
                return (List) super.setKey(str);
            }

            public List setLiveChatId(String str) {
                this.liveChatId = str;
                return this;
            }

            public List setMaxResults(Long l) {
                this.maxResults = l;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<LiveChatModeratorListResponse> setOauthToken2(String str) {
                return (List) super.setOauthToken(str);
            }

            public List setPageToken(String str) {
                this.pageToken = str;
                return this;
            }

            public List setPart(String str) {
                this.part = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<LiveChatModeratorListResponse> setPrettyPrint2(Boolean bool) {
                return (List) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<LiveChatModeratorListResponse> setQuotaUser2(String str) {
                return (List) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<LiveChatModeratorListResponse> setUserIp2(String str) {
                return (List) super.setUserIp(str);
            }
        }

        public LiveChatModerators() {
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$LiveStreams.class */
    public final class LiveStreams {

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$LiveStreams$Delete.class */
        public class Delete extends YouTubeRequest<Void> {
            private static final String REST_PATH = "liveStreams";
            @q
            private String id;
            @q
            private String onBehalfOfContentOwner;
            @q
            private String onBehalfOfContentOwnerChannel;

            protected Delete(String str) {
                super(YouTube.this, "DELETE", REST_PATH, null, Void.class);
                this.id = (String) aa.a(str, "Required parameter id must be specified.");
            }

            public String getId() {
                return this.id;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public String getOnBehalfOfContentOwnerChannel() {
                return this.onBehalfOfContentOwnerChannel;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Delete set(String str, Object obj) {
                return (Delete) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<Void> setAlt2(String str) {
                return (Delete) super.setAlt(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<Void> setFields2(String str) {
                return (Delete) super.setFields(str);
            }

            public Delete setId(String str) {
                this.id = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<Void> setKey2(String str) {
                return (Delete) super.setKey(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<Void> setOauthToken2(String str) {
                return (Delete) super.setOauthToken(str);
            }

            public Delete setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            public Delete setOnBehalfOfContentOwnerChannel(String str) {
                this.onBehalfOfContentOwnerChannel = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<Void> setPrettyPrint2(Boolean bool) {
                return (Delete) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<Void> setQuotaUser2(String str) {
                return (Delete) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<Void> setUserIp2(String str) {
                return (Delete) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$LiveStreams$Insert.class */
        public class Insert extends YouTubeRequest<LiveStream> {
            private static final String REST_PATH = "liveStreams";
            @q
            private String onBehalfOfContentOwner;
            @q
            private String onBehalfOfContentOwnerChannel;
            @q
            private String part;

            protected Insert(String str, LiveStream liveStream) {
                super(YouTube.this, "POST", REST_PATH, liveStream, LiveStream.class);
                this.part = (String) aa.a(str, "Required parameter part must be specified.");
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public String getOnBehalfOfContentOwnerChannel() {
                return this.onBehalfOfContentOwnerChannel;
            }

            public String getPart() {
                return this.part;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Insert set(String str, Object obj) {
                return (Insert) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<LiveStream> setAlt2(String str) {
                return (Insert) super.setAlt(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<LiveStream> setFields2(String str) {
                return (Insert) super.setFields(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<LiveStream> setKey2(String str) {
                return (Insert) super.setKey(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<LiveStream> setOauthToken2(String str) {
                return (Insert) super.setOauthToken(str);
            }

            public Insert setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            public Insert setOnBehalfOfContentOwnerChannel(String str) {
                this.onBehalfOfContentOwnerChannel = str;
                return this;
            }

            public Insert setPart(String str) {
                this.part = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<LiveStream> setPrettyPrint2(Boolean bool) {
                return (Insert) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<LiveStream> setQuotaUser2(String str) {
                return (Insert) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<LiveStream> setUserIp2(String str) {
                return (Insert) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$LiveStreams$List.class */
        public class List extends YouTubeRequest<LiveStreamListResponse> {
            private static final String REST_PATH = "liveStreams";
            @q
            private String id;
            @q
            private Long maxResults;
            @q
            private Boolean mine;
            @q
            private String onBehalfOfContentOwner;
            @q
            private String onBehalfOfContentOwnerChannel;
            @q
            private String pageToken;
            @q
            private String part;

            protected List(String str) {
                super(YouTube.this, "GET", REST_PATH, null, LiveStreamListResponse.class);
                this.part = (String) aa.a(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.b
            public com.google.api.client.http.q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.b
            public t executeUsingHead() throws IOException {
                return super.executeUsingHead();
            }

            public String getId() {
                return this.id;
            }

            public Long getMaxResults() {
                return this.maxResults;
            }

            public Boolean getMine() {
                return this.mine;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public String getOnBehalfOfContentOwnerChannel() {
                return this.onBehalfOfContentOwnerChannel;
            }

            public String getPageToken() {
                return this.pageToken;
            }

            public String getPart() {
                return this.part;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public List set(String str, Object obj) {
                return (List) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<LiveStreamListResponse> setAlt2(String str) {
                return (List) super.setAlt(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<LiveStreamListResponse> setFields2(String str) {
                return (List) super.setFields(str);
            }

            public List setId(String str) {
                this.id = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<LiveStreamListResponse> setKey2(String str) {
                return (List) super.setKey(str);
            }

            public List setMaxResults(Long l) {
                this.maxResults = l;
                return this;
            }

            public List setMine(Boolean bool) {
                this.mine = bool;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<LiveStreamListResponse> setOauthToken2(String str) {
                return (List) super.setOauthToken(str);
            }

            public List setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            public List setOnBehalfOfContentOwnerChannel(String str) {
                this.onBehalfOfContentOwnerChannel = str;
                return this;
            }

            public List setPageToken(String str) {
                this.pageToken = str;
                return this;
            }

            public List setPart(String str) {
                this.part = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<LiveStreamListResponse> setPrettyPrint2(Boolean bool) {
                return (List) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<LiveStreamListResponse> setQuotaUser2(String str) {
                return (List) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<LiveStreamListResponse> setUserIp2(String str) {
                return (List) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$LiveStreams$Update.class */
        public class Update extends YouTubeRequest<LiveStream> {
            private static final String REST_PATH = "liveStreams";
            @q
            private String onBehalfOfContentOwner;
            @q
            private String onBehalfOfContentOwnerChannel;
            @q
            private String part;

            protected Update(String str, LiveStream liveStream) {
                super(YouTube.this, "PUT", REST_PATH, liveStream, LiveStream.class);
                this.part = (String) aa.a(str, "Required parameter part must be specified.");
                checkRequiredParameter(liveStream, Constants.VAST_TRACKER_CONTENT);
                checkRequiredParameter(liveStream.getId(), "LiveStream.getId()");
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public String getOnBehalfOfContentOwnerChannel() {
                return this.onBehalfOfContentOwnerChannel;
            }

            public String getPart() {
                return this.part;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Update set(String str, Object obj) {
                return (Update) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<LiveStream> setAlt2(String str) {
                return (Update) super.setAlt(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<LiveStream> setFields2(String str) {
                return (Update) super.setFields(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<LiveStream> setKey2(String str) {
                return (Update) super.setKey(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<LiveStream> setOauthToken2(String str) {
                return (Update) super.setOauthToken(str);
            }

            public Update setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            public Update setOnBehalfOfContentOwnerChannel(String str) {
                this.onBehalfOfContentOwnerChannel = str;
                return this;
            }

            public Update setPart(String str) {
                this.part = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<LiveStream> setPrettyPrint2(Boolean bool) {
                return (Update) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<LiveStream> setQuotaUser2(String str) {
                return (Update) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<LiveStream> setUserIp2(String str) {
                return (Update) super.setUserIp(str);
            }
        }

        public LiveStreams() {
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Members.class */
    public final class Members {

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Members$List.class */
        public class List extends YouTubeRequest<MemberListResponse> {
            private static final String REST_PATH = "members";
            @q
            private String filterByMemberChannelId;
            @q
            private String hasAccessToLevel;
            @q
            private Long maxResults;
            @q
            private String mode;
            @q
            private String pageToken;
            @q
            private String part;

            protected List(String str) {
                super(YouTube.this, "GET", REST_PATH, null, MemberListResponse.class);
                this.part = (String) aa.a(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.b
            public com.google.api.client.http.q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.b
            public t executeUsingHead() throws IOException {
                return super.executeUsingHead();
            }

            public String getFilterByMemberChannelId() {
                return this.filterByMemberChannelId;
            }

            public String getHasAccessToLevel() {
                return this.hasAccessToLevel;
            }

            public Long getMaxResults() {
                return this.maxResults;
            }

            public String getMode() {
                return this.mode;
            }

            public String getPageToken() {
                return this.pageToken;
            }

            public String getPart() {
                return this.part;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public List set(String str, Object obj) {
                return (List) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<MemberListResponse> setAlt2(String str) {
                return (List) super.setAlt(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<MemberListResponse> setFields2(String str) {
                return (List) super.setFields(str);
            }

            public List setFilterByMemberChannelId(String str) {
                this.filterByMemberChannelId = str;
                return this;
            }

            public List setHasAccessToLevel(String str) {
                this.hasAccessToLevel = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<MemberListResponse> setKey2(String str) {
                return (List) super.setKey(str);
            }

            public List setMaxResults(Long l) {
                this.maxResults = l;
                return this;
            }

            public List setMode(String str) {
                this.mode = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<MemberListResponse> setOauthToken2(String str) {
                return (List) super.setOauthToken(str);
            }

            public List setPageToken(String str) {
                this.pageToken = str;
                return this;
            }

            public List setPart(String str) {
                this.part = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<MemberListResponse> setPrettyPrint2(Boolean bool) {
                return (List) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<MemberListResponse> setQuotaUser2(String str) {
                return (List) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<MemberListResponse> setUserIp2(String str) {
                return (List) super.setUserIp(str);
            }
        }

        public Members() {
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$MembershipsLevels.class */
    public final class MembershipsLevels {

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$MembershipsLevels$List.class */
        public class List extends YouTubeRequest<MembershipsLevelListResponse> {
            private static final String REST_PATH = "membershipsLevels";
            @q
            private String part;

            protected List(String str) {
                super(YouTube.this, "GET", REST_PATH, null, MembershipsLevelListResponse.class);
                this.part = (String) aa.a(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.b
            public com.google.api.client.http.q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.b
            public t executeUsingHead() throws IOException {
                return super.executeUsingHead();
            }

            public String getPart() {
                return this.part;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public List set(String str, Object obj) {
                return (List) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<MembershipsLevelListResponse> setAlt2(String str) {
                return (List) super.setAlt(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<MembershipsLevelListResponse> setFields2(String str) {
                return (List) super.setFields(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<MembershipsLevelListResponse> setKey2(String str) {
                return (List) super.setKey(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<MembershipsLevelListResponse> setOauthToken2(String str) {
                return (List) super.setOauthToken(str);
            }

            public List setPart(String str) {
                this.part = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<MembershipsLevelListResponse> setPrettyPrint2(Boolean bool) {
                return (List) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<MembershipsLevelListResponse> setQuotaUser2(String str) {
                return (List) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<MembershipsLevelListResponse> setUserIp2(String str) {
                return (List) super.setUserIp(str);
            }
        }

        public MembershipsLevels() {
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$PlaylistItems.class */
    public final class PlaylistItems {

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$PlaylistItems$Delete.class */
        public class Delete extends YouTubeRequest<Void> {
            private static final String REST_PATH = "playlistItems";
            @q
            private String id;
            @q
            private String onBehalfOfContentOwner;

            protected Delete(String str) {
                super(YouTube.this, "DELETE", REST_PATH, null, Void.class);
                this.id = (String) aa.a(str, "Required parameter id must be specified.");
            }

            public String getId() {
                return this.id;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Delete set(String str, Object obj) {
                return (Delete) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<Void> setAlt2(String str) {
                return (Delete) super.setAlt(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<Void> setFields2(String str) {
                return (Delete) super.setFields(str);
            }

            public Delete setId(String str) {
                this.id = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<Void> setKey2(String str) {
                return (Delete) super.setKey(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<Void> setOauthToken2(String str) {
                return (Delete) super.setOauthToken(str);
            }

            public Delete setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<Void> setPrettyPrint2(Boolean bool) {
                return (Delete) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<Void> setQuotaUser2(String str) {
                return (Delete) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<Void> setUserIp2(String str) {
                return (Delete) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$PlaylistItems$Insert.class */
        public class Insert extends YouTubeRequest<PlaylistItem> {
            private static final String REST_PATH = "playlistItems";
            @q
            private String onBehalfOfContentOwner;
            @q
            private String part;

            protected Insert(String str, PlaylistItem playlistItem) {
                super(YouTube.this, "POST", REST_PATH, playlistItem, PlaylistItem.class);
                this.part = (String) aa.a(str, "Required parameter part must be specified.");
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public String getPart() {
                return this.part;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Insert set(String str, Object obj) {
                return (Insert) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<PlaylistItem> setAlt2(String str) {
                return (Insert) super.setAlt(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<PlaylistItem> setFields2(String str) {
                return (Insert) super.setFields(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<PlaylistItem> setKey2(String str) {
                return (Insert) super.setKey(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<PlaylistItem> setOauthToken2(String str) {
                return (Insert) super.setOauthToken(str);
            }

            public Insert setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            public Insert setPart(String str) {
                this.part = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<PlaylistItem> setPrettyPrint2(Boolean bool) {
                return (Insert) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<PlaylistItem> setQuotaUser2(String str) {
                return (Insert) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<PlaylistItem> setUserIp2(String str) {
                return (Insert) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$PlaylistItems$List.class */
        public class List extends YouTubeRequest<PlaylistItemListResponse> {
            private static final String REST_PATH = "playlistItems";
            @q
            private String id;
            @q
            private Long maxResults;
            @q
            private String onBehalfOfContentOwner;
            @q
            private String pageToken;
            @q
            private String part;
            @q
            private String playlistId;
            @q
            private String videoId;

            protected List(String str) {
                super(YouTube.this, "GET", REST_PATH, null, PlaylistItemListResponse.class);
                this.part = (String) aa.a(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.b
            public com.google.api.client.http.q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.b
            public t executeUsingHead() throws IOException {
                return super.executeUsingHead();
            }

            public String getId() {
                return this.id;
            }

            public Long getMaxResults() {
                return this.maxResults;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public String getPageToken() {
                return this.pageToken;
            }

            public String getPart() {
                return this.part;
            }

            public String getPlaylistId() {
                return this.playlistId;
            }

            public String getVideoId() {
                return this.videoId;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public List set(String str, Object obj) {
                return (List) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<PlaylistItemListResponse> setAlt2(String str) {
                return (List) super.setAlt(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<PlaylistItemListResponse> setFields2(String str) {
                return (List) super.setFields(str);
            }

            public List setId(String str) {
                this.id = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<PlaylistItemListResponse> setKey2(String str) {
                return (List) super.setKey(str);
            }

            public List setMaxResults(Long l) {
                this.maxResults = l;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<PlaylistItemListResponse> setOauthToken2(String str) {
                return (List) super.setOauthToken(str);
            }

            public List setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            public List setPageToken(String str) {
                this.pageToken = str;
                return this;
            }

            public List setPart(String str) {
                this.part = str;
                return this;
            }

            public List setPlaylistId(String str) {
                this.playlistId = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<PlaylistItemListResponse> setPrettyPrint2(Boolean bool) {
                return (List) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<PlaylistItemListResponse> setQuotaUser2(String str) {
                return (List) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<PlaylistItemListResponse> setUserIp2(String str) {
                return (List) super.setUserIp(str);
            }

            public List setVideoId(String str) {
                this.videoId = str;
                return this;
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$PlaylistItems$Update.class */
        public class Update extends YouTubeRequest<PlaylistItem> {
            private static final String REST_PATH = "playlistItems";
            @q
            private String onBehalfOfContentOwner;
            @q
            private String part;

            protected Update(String str, PlaylistItem playlistItem) {
                super(YouTube.this, "PUT", REST_PATH, playlistItem, PlaylistItem.class);
                this.part = (String) aa.a(str, "Required parameter part must be specified.");
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public String getPart() {
                return this.part;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Update set(String str, Object obj) {
                return (Update) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<PlaylistItem> setAlt2(String str) {
                return (Update) super.setAlt(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<PlaylistItem> setFields2(String str) {
                return (Update) super.setFields(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<PlaylistItem> setKey2(String str) {
                return (Update) super.setKey(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<PlaylistItem> setOauthToken2(String str) {
                return (Update) super.setOauthToken(str);
            }

            public Update setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            public Update setPart(String str) {
                this.part = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<PlaylistItem> setPrettyPrint2(Boolean bool) {
                return (Update) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<PlaylistItem> setQuotaUser2(String str) {
                return (Update) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<PlaylistItem> setUserIp2(String str) {
                return (Update) super.setUserIp(str);
            }
        }

        public PlaylistItems() {
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Playlists.class */
    public final class Playlists {

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Playlists$Delete.class */
        public class Delete extends YouTubeRequest<Void> {
            private static final String REST_PATH = "playlists";
            @q
            private String id;
            @q
            private String onBehalfOfContentOwner;

            protected Delete(String str) {
                super(YouTube.this, "DELETE", REST_PATH, null, Void.class);
                this.id = (String) aa.a(str, "Required parameter id must be specified.");
            }

            public String getId() {
                return this.id;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Delete set(String str, Object obj) {
                return (Delete) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<Void> setAlt2(String str) {
                return (Delete) super.setAlt(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<Void> setFields2(String str) {
                return (Delete) super.setFields(str);
            }

            public Delete setId(String str) {
                this.id = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<Void> setKey2(String str) {
                return (Delete) super.setKey(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<Void> setOauthToken2(String str) {
                return (Delete) super.setOauthToken(str);
            }

            public Delete setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<Void> setPrettyPrint2(Boolean bool) {
                return (Delete) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<Void> setQuotaUser2(String str) {
                return (Delete) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<Void> setUserIp2(String str) {
                return (Delete) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Playlists$Insert.class */
        public class Insert extends YouTubeRequest<Playlist> {
            private static final String REST_PATH = "playlists";
            @q
            private String onBehalfOfContentOwner;
            @q
            private String onBehalfOfContentOwnerChannel;
            @q
            private String part;

            protected Insert(String str, Playlist playlist) {
                super(YouTube.this, "POST", REST_PATH, playlist, Playlist.class);
                this.part = (String) aa.a(str, "Required parameter part must be specified.");
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public String getOnBehalfOfContentOwnerChannel() {
                return this.onBehalfOfContentOwnerChannel;
            }

            public String getPart() {
                return this.part;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Insert set(String str, Object obj) {
                return (Insert) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<Playlist> setAlt2(String str) {
                return (Insert) super.setAlt(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<Playlist> setFields2(String str) {
                return (Insert) super.setFields(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<Playlist> setKey2(String str) {
                return (Insert) super.setKey(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<Playlist> setOauthToken2(String str) {
                return (Insert) super.setOauthToken(str);
            }

            public Insert setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            public Insert setOnBehalfOfContentOwnerChannel(String str) {
                this.onBehalfOfContentOwnerChannel = str;
                return this;
            }

            public Insert setPart(String str) {
                this.part = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<Playlist> setPrettyPrint2(Boolean bool) {
                return (Insert) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<Playlist> setQuotaUser2(String str) {
                return (Insert) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<Playlist> setUserIp2(String str) {
                return (Insert) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Playlists$List.class */
        public class List extends YouTubeRequest<PlaylistListResponse> {
            private static final String REST_PATH = "playlists";
            @q
            private String channelId;
            @q
            private String hl;
            @q
            private String id;
            @q
            private Long maxResults;
            @q
            private Boolean mine;
            @q
            private String onBehalfOfContentOwner;
            @q
            private String onBehalfOfContentOwnerChannel;
            @q
            private String pageToken;
            @q
            private String part;

            protected List(String str) {
                super(YouTube.this, "GET", REST_PATH, null, PlaylistListResponse.class);
                this.part = (String) aa.a(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.b
            public com.google.api.client.http.q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.b
            public t executeUsingHead() throws IOException {
                return super.executeUsingHead();
            }

            public String getChannelId() {
                return this.channelId;
            }

            public String getHl() {
                return this.hl;
            }

            public String getId() {
                return this.id;
            }

            public Long getMaxResults() {
                return this.maxResults;
            }

            public Boolean getMine() {
                return this.mine;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public String getOnBehalfOfContentOwnerChannel() {
                return this.onBehalfOfContentOwnerChannel;
            }

            public String getPageToken() {
                return this.pageToken;
            }

            public String getPart() {
                return this.part;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public List set(String str, Object obj) {
                return (List) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<PlaylistListResponse> setAlt2(String str) {
                return (List) super.setAlt(str);
            }

            public List setChannelId(String str) {
                this.channelId = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<PlaylistListResponse> setFields2(String str) {
                return (List) super.setFields(str);
            }

            public List setHl(String str) {
                this.hl = str;
                return this;
            }

            public List setId(String str) {
                this.id = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<PlaylistListResponse> setKey2(String str) {
                return (List) super.setKey(str);
            }

            public List setMaxResults(Long l) {
                this.maxResults = l;
                return this;
            }

            public List setMine(Boolean bool) {
                this.mine = bool;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<PlaylistListResponse> setOauthToken2(String str) {
                return (List) super.setOauthToken(str);
            }

            public List setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            public List setOnBehalfOfContentOwnerChannel(String str) {
                this.onBehalfOfContentOwnerChannel = str;
                return this;
            }

            public List setPageToken(String str) {
                this.pageToken = str;
                return this;
            }

            public List setPart(String str) {
                this.part = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<PlaylistListResponse> setPrettyPrint2(Boolean bool) {
                return (List) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<PlaylistListResponse> setQuotaUser2(String str) {
                return (List) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<PlaylistListResponse> setUserIp2(String str) {
                return (List) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Playlists$Update.class */
        public class Update extends YouTubeRequest<Playlist> {
            private static final String REST_PATH = "playlists";
            @q
            private String onBehalfOfContentOwner;
            @q
            private String part;

            protected Update(String str, Playlist playlist) {
                super(YouTube.this, "PUT", REST_PATH, playlist, Playlist.class);
                this.part = (String) aa.a(str, "Required parameter part must be specified.");
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public String getPart() {
                return this.part;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Update set(String str, Object obj) {
                return (Update) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<Playlist> setAlt2(String str) {
                return (Update) super.setAlt(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<Playlist> setFields2(String str) {
                return (Update) super.setFields(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<Playlist> setKey2(String str) {
                return (Update) super.setKey(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<Playlist> setOauthToken2(String str) {
                return (Update) super.setOauthToken(str);
            }

            public Update setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            public Update setPart(String str) {
                this.part = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<Playlist> setPrettyPrint2(Boolean bool) {
                return (Update) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<Playlist> setQuotaUser2(String str) {
                return (Update) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<Playlist> setUserIp2(String str) {
                return (Update) super.setUserIp(str);
            }
        }

        public Playlists() {
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Search.class */
    public final class Search {

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Search$List.class */
        public class List extends YouTubeRequest<SearchListResponse> {
            private static final String REST_PATH = "search";
            @q
            private String channelId;
            @q
            private String channelType;
            @q
            private String eventType;
            @q
            private Boolean forContentOwner;
            @q
            private Boolean forDeveloper;
            @q
            private Boolean forMine;
            @q
            private String location;
            @q
            private String locationRadius;
            @q
            private Long maxResults;
            @q
            private String onBehalfOfContentOwner;
            @q
            private String order;
            @q
            private String pageToken;
            @q
            private String part;
            @q
            private l publishedAfter;
            @q
            private l publishedBefore;
            @q
            private String q;
            @q
            private String regionCode;
            @q
            private String relatedToVideoId;
            @q
            private String relevanceLanguage;
            @q
            private String safeSearch;
            @q
            private String topicId;
            @q
            private String type;
            @q
            private String videoCaption;
            @q
            private String videoCategoryId;
            @q
            private String videoDefinition;
            @q
            private String videoDimension;
            @q
            private String videoDuration;
            @q
            private String videoEmbeddable;
            @q
            private String videoLicense;
            @q
            private String videoSyndicated;
            @q
            private String videoType;

            protected List(String str) {
                super(YouTube.this, "GET", REST_PATH, null, SearchListResponse.class);
                this.part = (String) aa.a(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.b
            public com.google.api.client.http.q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.b
            public t executeUsingHead() throws IOException {
                return super.executeUsingHead();
            }

            public String getChannelId() {
                return this.channelId;
            }

            public String getChannelType() {
                return this.channelType;
            }

            public String getEventType() {
                return this.eventType;
            }

            public Boolean getForContentOwner() {
                return this.forContentOwner;
            }

            public Boolean getForDeveloper() {
                return this.forDeveloper;
            }

            public Boolean getForMine() {
                return this.forMine;
            }

            public String getLocation() {
                return this.location;
            }

            public String getLocationRadius() {
                return this.locationRadius;
            }

            public Long getMaxResults() {
                return this.maxResults;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public String getOrder() {
                return this.order;
            }

            public String getPageToken() {
                return this.pageToken;
            }

            public String getPart() {
                return this.part;
            }

            public l getPublishedAfter() {
                return this.publishedAfter;
            }

            public l getPublishedBefore() {
                return this.publishedBefore;
            }

            public String getQ() {
                return this.q;
            }

            public String getRegionCode() {
                return this.regionCode;
            }

            public String getRelatedToVideoId() {
                return this.relatedToVideoId;
            }

            public String getRelevanceLanguage() {
                return this.relevanceLanguage;
            }

            public String getSafeSearch() {
                return this.safeSearch;
            }

            public String getTopicId() {
                return this.topicId;
            }

            public String getType() {
                return this.type;
            }

            public String getVideoCaption() {
                return this.videoCaption;
            }

            public String getVideoCategoryId() {
                return this.videoCategoryId;
            }

            public String getVideoDefinition() {
                return this.videoDefinition;
            }

            public String getVideoDimension() {
                return this.videoDimension;
            }

            public String getVideoDuration() {
                return this.videoDuration;
            }

            public String getVideoEmbeddable() {
                return this.videoEmbeddable;
            }

            public String getVideoLicense() {
                return this.videoLicense;
            }

            public String getVideoSyndicated() {
                return this.videoSyndicated;
            }

            public String getVideoType() {
                return this.videoType;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public List set(String str, Object obj) {
                return (List) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<SearchListResponse> setAlt2(String str) {
                return (List) super.setAlt(str);
            }

            public List setChannelId(String str) {
                this.channelId = str;
                return this;
            }

            public List setChannelType(String str) {
                this.channelType = str;
                return this;
            }

            public List setEventType(String str) {
                this.eventType = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<SearchListResponse> setFields2(String str) {
                return (List) super.setFields(str);
            }

            public List setForContentOwner(Boolean bool) {
                this.forContentOwner = bool;
                return this;
            }

            public List setForDeveloper(Boolean bool) {
                this.forDeveloper = bool;
                return this;
            }

            public List setForMine(Boolean bool) {
                this.forMine = bool;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<SearchListResponse> setKey2(String str) {
                return (List) super.setKey(str);
            }

            public List setLocation(String str) {
                this.location = str;
                return this;
            }

            public List setLocationRadius(String str) {
                this.locationRadius = str;
                return this;
            }

            public List setMaxResults(Long l) {
                this.maxResults = l;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<SearchListResponse> setOauthToken2(String str) {
                return (List) super.setOauthToken(str);
            }

            public List setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            public List setOrder(String str) {
                this.order = str;
                return this;
            }

            public List setPageToken(String str) {
                this.pageToken = str;
                return this;
            }

            public List setPart(String str) {
                this.part = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<SearchListResponse> setPrettyPrint2(Boolean bool) {
                return (List) super.setPrettyPrint(bool);
            }

            public List setPublishedAfter(l lVar) {
                this.publishedAfter = lVar;
                return this;
            }

            public List setPublishedBefore(l lVar) {
                this.publishedBefore = lVar;
                return this;
            }

            public List setQ(String str) {
                this.q = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<SearchListResponse> setQuotaUser2(String str) {
                return (List) super.setQuotaUser(str);
            }

            public List setRegionCode(String str) {
                this.regionCode = str;
                return this;
            }

            public List setRelatedToVideoId(String str) {
                this.relatedToVideoId = str;
                return this;
            }

            public List setRelevanceLanguage(String str) {
                this.relevanceLanguage = str;
                return this;
            }

            public List setSafeSearch(String str) {
                this.safeSearch = str;
                return this;
            }

            public List setTopicId(String str) {
                this.topicId = str;
                return this;
            }

            public List setType(String str) {
                this.type = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<SearchListResponse> setUserIp2(String str) {
                return (List) super.setUserIp(str);
            }

            public List setVideoCaption(String str) {
                this.videoCaption = str;
                return this;
            }

            public List setVideoCategoryId(String str) {
                this.videoCategoryId = str;
                return this;
            }

            public List setVideoDefinition(String str) {
                this.videoDefinition = str;
                return this;
            }

            public List setVideoDimension(String str) {
                this.videoDimension = str;
                return this;
            }

            public List setVideoDuration(String str) {
                this.videoDuration = str;
                return this;
            }

            public List setVideoEmbeddable(String str) {
                this.videoEmbeddable = str;
                return this;
            }

            public List setVideoLicense(String str) {
                this.videoLicense = str;
                return this;
            }

            public List setVideoSyndicated(String str) {
                this.videoSyndicated = str;
                return this;
            }

            public List setVideoType(String str) {
                this.videoType = str;
                return this;
            }
        }

        public Search() {
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Sponsors.class */
    public final class Sponsors {

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Sponsors$List.class */
        public class List extends YouTubeRequest<SponsorListResponse> {
            private static final String REST_PATH = "sponsors";
            @q
            private String filter;
            @q
            private Long maxResults;
            @q
            private String pageToken;
            @q
            private String part;

            protected List(String str) {
                super(YouTube.this, "GET", REST_PATH, null, SponsorListResponse.class);
                this.part = (String) aa.a(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.b
            public com.google.api.client.http.q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.b
            public t executeUsingHead() throws IOException {
                return super.executeUsingHead();
            }

            public String getFilter() {
                return this.filter;
            }

            public Long getMaxResults() {
                return this.maxResults;
            }

            public String getPageToken() {
                return this.pageToken;
            }

            public String getPart() {
                return this.part;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public List set(String str, Object obj) {
                return (List) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<SponsorListResponse> setAlt2(String str) {
                return (List) super.setAlt(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<SponsorListResponse> setFields2(String str) {
                return (List) super.setFields(str);
            }

            public List setFilter(String str) {
                this.filter = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<SponsorListResponse> setKey2(String str) {
                return (List) super.setKey(str);
            }

            public List setMaxResults(Long l) {
                this.maxResults = l;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<SponsorListResponse> setOauthToken2(String str) {
                return (List) super.setOauthToken(str);
            }

            public List setPageToken(String str) {
                this.pageToken = str;
                return this;
            }

            public List setPart(String str) {
                this.part = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<SponsorListResponse> setPrettyPrint2(Boolean bool) {
                return (List) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<SponsorListResponse> setQuotaUser2(String str) {
                return (List) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<SponsorListResponse> setUserIp2(String str) {
                return (List) super.setUserIp(str);
            }
        }

        public Sponsors() {
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Subscriptions.class */
    public final class Subscriptions {

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Subscriptions$Delete.class */
        public class Delete extends YouTubeRequest<Void> {
            private static final String REST_PATH = "subscriptions";
            @q
            private String id;

            protected Delete(String str) {
                super(YouTube.this, "DELETE", REST_PATH, null, Void.class);
                this.id = (String) aa.a(str, "Required parameter id must be specified.");
            }

            public String getId() {
                return this.id;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Delete set(String str, Object obj) {
                return (Delete) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<Void> setAlt2(String str) {
                return (Delete) super.setAlt(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<Void> setFields2(String str) {
                return (Delete) super.setFields(str);
            }

            public Delete setId(String str) {
                this.id = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<Void> setKey2(String str) {
                return (Delete) super.setKey(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<Void> setOauthToken2(String str) {
                return (Delete) super.setOauthToken(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<Void> setPrettyPrint2(Boolean bool) {
                return (Delete) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<Void> setQuotaUser2(String str) {
                return (Delete) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<Void> setUserIp2(String str) {
                return (Delete) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Subscriptions$Insert.class */
        public class Insert extends YouTubeRequest<Subscription> {
            private static final String REST_PATH = "subscriptions";
            @q
            private String part;

            protected Insert(String str, Subscription subscription) {
                super(YouTube.this, "POST", REST_PATH, subscription, Subscription.class);
                this.part = (String) aa.a(str, "Required parameter part must be specified.");
            }

            public String getPart() {
                return this.part;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Insert set(String str, Object obj) {
                return (Insert) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<Subscription> setAlt2(String str) {
                return (Insert) super.setAlt(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<Subscription> setFields2(String str) {
                return (Insert) super.setFields(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<Subscription> setKey2(String str) {
                return (Insert) super.setKey(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<Subscription> setOauthToken2(String str) {
                return (Insert) super.setOauthToken(str);
            }

            public Insert setPart(String str) {
                this.part = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<Subscription> setPrettyPrint2(Boolean bool) {
                return (Insert) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<Subscription> setQuotaUser2(String str) {
                return (Insert) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<Subscription> setUserIp2(String str) {
                return (Insert) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Subscriptions$List.class */
        public class List extends YouTubeRequest<SubscriptionListResponse> {
            private static final String REST_PATH = "subscriptions";
            @q
            private String channelId;
            @q
            private String forChannelId;
            @q
            private String id;
            @q
            private Long maxResults;
            @q
            private Boolean mine;
            @q
            private Boolean myRecentSubscribers;
            @q
            private Boolean mySubscribers;
            @q
            private String onBehalfOfContentOwner;
            @q
            private String onBehalfOfContentOwnerChannel;
            @q
            private String order;
            @q
            private String pageToken;
            @q
            private String part;

            protected List(String str) {
                super(YouTube.this, "GET", REST_PATH, null, SubscriptionListResponse.class);
                this.part = (String) aa.a(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.b
            public com.google.api.client.http.q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.b
            public t executeUsingHead() throws IOException {
                return super.executeUsingHead();
            }

            public String getChannelId() {
                return this.channelId;
            }

            public String getForChannelId() {
                return this.forChannelId;
            }

            public String getId() {
                return this.id;
            }

            public Long getMaxResults() {
                return this.maxResults;
            }

            public Boolean getMine() {
                return this.mine;
            }

            public Boolean getMyRecentSubscribers() {
                return this.myRecentSubscribers;
            }

            public Boolean getMySubscribers() {
                return this.mySubscribers;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public String getOnBehalfOfContentOwnerChannel() {
                return this.onBehalfOfContentOwnerChannel;
            }

            public String getOrder() {
                return this.order;
            }

            public String getPageToken() {
                return this.pageToken;
            }

            public String getPart() {
                return this.part;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public List set(String str, Object obj) {
                return (List) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<SubscriptionListResponse> setAlt2(String str) {
                return (List) super.setAlt(str);
            }

            public List setChannelId(String str) {
                this.channelId = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<SubscriptionListResponse> setFields2(String str) {
                return (List) super.setFields(str);
            }

            public List setForChannelId(String str) {
                this.forChannelId = str;
                return this;
            }

            public List setId(String str) {
                this.id = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<SubscriptionListResponse> setKey2(String str) {
                return (List) super.setKey(str);
            }

            public List setMaxResults(Long l) {
                this.maxResults = l;
                return this;
            }

            public List setMine(Boolean bool) {
                this.mine = bool;
                return this;
            }

            public List setMyRecentSubscribers(Boolean bool) {
                this.myRecentSubscribers = bool;
                return this;
            }

            public List setMySubscribers(Boolean bool) {
                this.mySubscribers = bool;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<SubscriptionListResponse> setOauthToken2(String str) {
                return (List) super.setOauthToken(str);
            }

            public List setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            public List setOnBehalfOfContentOwnerChannel(String str) {
                this.onBehalfOfContentOwnerChannel = str;
                return this;
            }

            public List setOrder(String str) {
                this.order = str;
                return this;
            }

            public List setPageToken(String str) {
                this.pageToken = str;
                return this;
            }

            public List setPart(String str) {
                this.part = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<SubscriptionListResponse> setPrettyPrint2(Boolean bool) {
                return (List) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<SubscriptionListResponse> setQuotaUser2(String str) {
                return (List) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<SubscriptionListResponse> setUserIp2(String str) {
                return (List) super.setUserIp(str);
            }
        }

        public Subscriptions() {
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$SuperChatEvents.class */
    public final class SuperChatEvents {

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$SuperChatEvents$List.class */
        public class List extends YouTubeRequest<SuperChatEventListResponse> {
            private static final String REST_PATH = "superChatEvents";
            @q
            private String hl;
            @q
            private Long maxResults;
            @q
            private String pageToken;
            @q
            private String part;

            protected List(String str) {
                super(YouTube.this, "GET", REST_PATH, null, SuperChatEventListResponse.class);
                this.part = (String) aa.a(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.b
            public com.google.api.client.http.q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.b
            public t executeUsingHead() throws IOException {
                return super.executeUsingHead();
            }

            public String getHl() {
                return this.hl;
            }

            public Long getMaxResults() {
                return this.maxResults;
            }

            public String getPageToken() {
                return this.pageToken;
            }

            public String getPart() {
                return this.part;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public List set(String str, Object obj) {
                return (List) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<SuperChatEventListResponse> setAlt2(String str) {
                return (List) super.setAlt(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<SuperChatEventListResponse> setFields2(String str) {
                return (List) super.setFields(str);
            }

            public List setHl(String str) {
                this.hl = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<SuperChatEventListResponse> setKey2(String str) {
                return (List) super.setKey(str);
            }

            public List setMaxResults(Long l) {
                this.maxResults = l;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<SuperChatEventListResponse> setOauthToken2(String str) {
                return (List) super.setOauthToken(str);
            }

            public List setPageToken(String str) {
                this.pageToken = str;
                return this;
            }

            public List setPart(String str) {
                this.part = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<SuperChatEventListResponse> setPrettyPrint2(Boolean bool) {
                return (List) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<SuperChatEventListResponse> setQuotaUser2(String str) {
                return (List) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<SuperChatEventListResponse> setUserIp2(String str) {
                return (List) super.setUserIp(str);
            }
        }

        public SuperChatEvents() {
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Thumbnails.class */
    public final class Thumbnails {

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Thumbnails$Set.class */
        public class Set extends YouTubeRequest<ThumbnailSetResponse> {
            private static final String REST_PATH = "thumbnails/set";
            @q
            private String onBehalfOfContentOwner;
            @q
            private String videoId;

            protected Set(String str) {
                super(YouTube.this, "POST", REST_PATH, null, ThumbnailSetResponse.class);
                this.videoId = (String) aa.a(str, "Required parameter videoId must be specified.");
            }

            /* JADX WARN: Illegal instructions before constructor call */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            protected Set(java.lang.String r9, com.google.api.client.http.b r10) {
                /*
                    r7 = this;
                    r0 = r7
                    r1 = r8
                    com.google.api.services.youtube.YouTube.Thumbnails.this = r1
                    r0 = r8
                    com.google.api.services.youtube.YouTube r0 = com.google.api.services.youtube.YouTube.this
                    r11 = r0
                    java.lang.StringBuilder r0 = new java.lang.StringBuilder
                    r1 = r0
                    java.lang.String r2 = "/upload/"
                    r1.<init>(r2)
                    r12 = r0
                    r0 = r12
                    r1 = r8
                    com.google.api.services.youtube.YouTube r1 = com.google.api.services.youtube.YouTube.this
                    java.lang.String r1 = r1.getServicePath()
                    java.lang.StringBuilder r0 = r0.append(r1)
                    r0 = r12
                    java.lang.String r1 = "thumbnails/set"
                    java.lang.StringBuilder r0 = r0.append(r1)
                    r0 = r7
                    r1 = r11
                    java.lang.String r2 = "POST"
                    r3 = r12
                    java.lang.String r3 = r3.toString()
                    r4 = 0
                    java.lang.Class<com.google.api.services.youtube.model.ThumbnailSetResponse> r5 = com.google.api.services.youtube.model.ThumbnailSetResponse.class
                    r0.<init>(r1, r2, r3, r4, r5)
                    r0 = r7
                    r1 = r9
                    java.lang.String r2 = "Required parameter videoId must be specified."
                    java.lang.Object r1 = com.google.api.client.a.aa.a(r1, r2)
                    java.lang.String r1 = (java.lang.String) r1
                    r0.videoId = r1
                    r0 = r7
                    r1 = r10
                    r0.initializeMediaUpload(r1)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.api.services.youtube.YouTube.Thumbnails.Set.<init>(com.google.api.services.youtube.YouTube$Thumbnails, java.lang.String, com.google.api.client.http.b):void");
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public String getVideoId() {
                return this.videoId;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Set set(String str, Object obj) {
                return (Set) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<ThumbnailSetResponse> setAlt2(String str) {
                return (Set) super.setAlt(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<ThumbnailSetResponse> setFields2(String str) {
                return (Set) super.setFields(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<ThumbnailSetResponse> setKey2(String str) {
                return (Set) super.setKey(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<ThumbnailSetResponse> setOauthToken2(String str) {
                return (Set) super.setOauthToken(str);
            }

            public Set setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<ThumbnailSetResponse> setPrettyPrint2(Boolean bool) {
                return (Set) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<ThumbnailSetResponse> setQuotaUser2(String str) {
                return (Set) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<ThumbnailSetResponse> setUserIp2(String str) {
                return (Set) super.setUserIp(str);
            }

            public Set setVideoId(String str) {
                this.videoId = str;
                return this;
            }
        }

        public Thumbnails() {
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$VideoAbuseReportReasons.class */
    public final class VideoAbuseReportReasons {

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$VideoAbuseReportReasons$List.class */
        public class List extends YouTubeRequest<VideoAbuseReportReasonListResponse> {
            private static final String REST_PATH = "videoAbuseReportReasons";
            @q
            private String hl;
            @q
            private String part;

            protected List(String str) {
                super(YouTube.this, "GET", REST_PATH, null, VideoAbuseReportReasonListResponse.class);
                this.part = (String) aa.a(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.b
            public com.google.api.client.http.q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.b
            public t executeUsingHead() throws IOException {
                return super.executeUsingHead();
            }

            public String getHl() {
                return this.hl;
            }

            public String getPart() {
                return this.part;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public List set(String str, Object obj) {
                return (List) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<VideoAbuseReportReasonListResponse> setAlt2(String str) {
                return (List) super.setAlt(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<VideoAbuseReportReasonListResponse> setFields2(String str) {
                return (List) super.setFields(str);
            }

            public List setHl(String str) {
                this.hl = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<VideoAbuseReportReasonListResponse> setKey2(String str) {
                return (List) super.setKey(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<VideoAbuseReportReasonListResponse> setOauthToken2(String str) {
                return (List) super.setOauthToken(str);
            }

            public List setPart(String str) {
                this.part = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<VideoAbuseReportReasonListResponse> setPrettyPrint2(Boolean bool) {
                return (List) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<VideoAbuseReportReasonListResponse> setQuotaUser2(String str) {
                return (List) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<VideoAbuseReportReasonListResponse> setUserIp2(String str) {
                return (List) super.setUserIp(str);
            }
        }

        public VideoAbuseReportReasons() {
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$VideoCategories.class */
    public final class VideoCategories {

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$VideoCategories$List.class */
        public class List extends YouTubeRequest<VideoCategoryListResponse> {
            private static final String REST_PATH = "videoCategories";
            @q
            private String hl;
            @q
            private String id;
            @q
            private String part;
            @q
            private String regionCode;

            protected List(String str) {
                super(YouTube.this, "GET", REST_PATH, null, VideoCategoryListResponse.class);
                this.part = (String) aa.a(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.b
            public com.google.api.client.http.q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.b
            public t executeUsingHead() throws IOException {
                return super.executeUsingHead();
            }

            public String getHl() {
                return this.hl;
            }

            public String getId() {
                return this.id;
            }

            public String getPart() {
                return this.part;
            }

            public String getRegionCode() {
                return this.regionCode;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public List set(String str, Object obj) {
                return (List) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<VideoCategoryListResponse> setAlt2(String str) {
                return (List) super.setAlt(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<VideoCategoryListResponse> setFields2(String str) {
                return (List) super.setFields(str);
            }

            public List setHl(String str) {
                this.hl = str;
                return this;
            }

            public List setId(String str) {
                this.id = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<VideoCategoryListResponse> setKey2(String str) {
                return (List) super.setKey(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<VideoCategoryListResponse> setOauthToken2(String str) {
                return (List) super.setOauthToken(str);
            }

            public List setPart(String str) {
                this.part = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<VideoCategoryListResponse> setPrettyPrint2(Boolean bool) {
                return (List) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<VideoCategoryListResponse> setQuotaUser2(String str) {
                return (List) super.setQuotaUser(str);
            }

            public List setRegionCode(String str) {
                this.regionCode = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<VideoCategoryListResponse> setUserIp2(String str) {
                return (List) super.setUserIp(str);
            }
        }

        public VideoCategories() {
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Videos.class */
    public final class Videos {

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Videos$Delete.class */
        public class Delete extends YouTubeRequest<Void> {
            private static final String REST_PATH = "videos";
            @q
            private String id;
            @q
            private String onBehalfOfContentOwner;

            protected Delete(String str) {
                super(YouTube.this, "DELETE", REST_PATH, null, Void.class);
                this.id = (String) aa.a(str, "Required parameter id must be specified.");
            }

            public String getId() {
                return this.id;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Delete set(String str, Object obj) {
                return (Delete) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<Void> setAlt2(String str) {
                return (Delete) super.setAlt(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<Void> setFields2(String str) {
                return (Delete) super.setFields(str);
            }

            public Delete setId(String str) {
                this.id = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<Void> setKey2(String str) {
                return (Delete) super.setKey(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<Void> setOauthToken2(String str) {
                return (Delete) super.setOauthToken(str);
            }

            public Delete setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<Void> setPrettyPrint2(Boolean bool) {
                return (Delete) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<Void> setQuotaUser2(String str) {
                return (Delete) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<Void> setUserIp2(String str) {
                return (Delete) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Videos$GetRating.class */
        public class GetRating extends YouTubeRequest<VideoGetRatingResponse> {
            private static final String REST_PATH = "videos/getRating";
            @q
            private String id;
            @q
            private String onBehalfOfContentOwner;

            protected GetRating(String str) {
                super(YouTube.this, "GET", REST_PATH, null, VideoGetRatingResponse.class);
                this.id = (String) aa.a(str, "Required parameter id must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.b
            public com.google.api.client.http.q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.b
            public t executeUsingHead() throws IOException {
                return super.executeUsingHead();
            }

            public String getId() {
                return this.id;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public GetRating set(String str, Object obj) {
                return (GetRating) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<VideoGetRatingResponse> setAlt2(String str) {
                return (GetRating) super.setAlt(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<VideoGetRatingResponse> setFields2(String str) {
                return (GetRating) super.setFields(str);
            }

            public GetRating setId(String str) {
                this.id = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<VideoGetRatingResponse> setKey2(String str) {
                return (GetRating) super.setKey(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<VideoGetRatingResponse> setOauthToken2(String str) {
                return (GetRating) super.setOauthToken(str);
            }

            public GetRating setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<VideoGetRatingResponse> setPrettyPrint2(Boolean bool) {
                return (GetRating) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<VideoGetRatingResponse> setQuotaUser2(String str) {
                return (GetRating) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<VideoGetRatingResponse> setUserIp2(String str) {
                return (GetRating) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Videos$Insert.class */
        public class Insert extends YouTubeRequest<Video> {
            private static final String REST_PATH = "videos";
            @q
            private Boolean autoLevels;
            @q
            private Boolean notifySubscribers;
            @q
            private String onBehalfOfContentOwner;
            @q
            private String onBehalfOfContentOwnerChannel;
            @q
            private String part;
            @q
            private Boolean stabilize;

            protected Insert(String str, Video video) {
                super(YouTube.this, "POST", REST_PATH, video, Video.class);
                this.part = (String) aa.a(str, "Required parameter part must be specified.");
            }

            /* JADX WARN: Illegal instructions before constructor call */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            protected Insert(java.lang.String r9, com.google.api.services.youtube.model.Video r10, com.google.api.client.http.b r11) {
                /*
                    r7 = this;
                    r0 = r7
                    r1 = r8
                    com.google.api.services.youtube.YouTube.Videos.this = r1
                    r0 = r8
                    com.google.api.services.youtube.YouTube r0 = com.google.api.services.youtube.YouTube.this
                    r12 = r0
                    java.lang.StringBuilder r0 = new java.lang.StringBuilder
                    r1 = r0
                    java.lang.String r2 = "/upload/"
                    r1.<init>(r2)
                    r13 = r0
                    r0 = r13
                    r1 = r8
                    com.google.api.services.youtube.YouTube r1 = com.google.api.services.youtube.YouTube.this
                    java.lang.String r1 = r1.getServicePath()
                    java.lang.StringBuilder r0 = r0.append(r1)
                    r0 = r13
                    java.lang.String r1 = "videos"
                    java.lang.StringBuilder r0 = r0.append(r1)
                    r0 = r7
                    r1 = r12
                    java.lang.String r2 = "POST"
                    r3 = r13
                    java.lang.String r3 = r3.toString()
                    r4 = r10
                    java.lang.Class<com.google.api.services.youtube.model.Video> r5 = com.google.api.services.youtube.model.Video.class
                    r0.<init>(r1, r2, r3, r4, r5)
                    r0 = r7
                    r1 = r9
                    java.lang.String r2 = "Required parameter part must be specified."
                    java.lang.Object r1 = com.google.api.client.a.aa.a(r1, r2)
                    java.lang.String r1 = (java.lang.String) r1
                    r0.part = r1
                    r0 = r7
                    r1 = r11
                    r0.initializeMediaUpload(r1)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.api.services.youtube.YouTube.Videos.Insert.<init>(com.google.api.services.youtube.YouTube$Videos, java.lang.String, com.google.api.services.youtube.model.Video, com.google.api.client.http.b):void");
            }

            public Boolean getAutoLevels() {
                return this.autoLevels;
            }

            public Boolean getNotifySubscribers() {
                return this.notifySubscribers;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public String getOnBehalfOfContentOwnerChannel() {
                return this.onBehalfOfContentOwnerChannel;
            }

            public String getPart() {
                return this.part;
            }

            public Boolean getStabilize() {
                return this.stabilize;
            }

            public boolean isNotifySubscribers() {
                Boolean bool = this.notifySubscribers;
                if (bool == null || bool == j.f31626a) {
                    return true;
                }
                return this.notifySubscribers.booleanValue();
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Insert set(String str, Object obj) {
                return (Insert) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<Video> setAlt2(String str) {
                return (Insert) super.setAlt(str);
            }

            public Insert setAutoLevels(Boolean bool) {
                this.autoLevels = bool;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<Video> setFields2(String str) {
                return (Insert) super.setFields(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<Video> setKey2(String str) {
                return (Insert) super.setKey(str);
            }

            public Insert setNotifySubscribers(Boolean bool) {
                this.notifySubscribers = bool;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<Video> setOauthToken2(String str) {
                return (Insert) super.setOauthToken(str);
            }

            public Insert setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            public Insert setOnBehalfOfContentOwnerChannel(String str) {
                this.onBehalfOfContentOwnerChannel = str;
                return this;
            }

            public Insert setPart(String str) {
                this.part = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<Video> setPrettyPrint2(Boolean bool) {
                return (Insert) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<Video> setQuotaUser2(String str) {
                return (Insert) super.setQuotaUser(str);
            }

            public Insert setStabilize(Boolean bool) {
                this.stabilize = bool;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<Video> setUserIp2(String str) {
                return (Insert) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Videos$List.class */
        public class List extends YouTubeRequest<VideoListResponse> {
            private static final String REST_PATH = "videos";
            @q
            private String chart;
            @q
            private String hl;
            @q
            private String id;
            @q
            private String locale;
            @q
            private Long maxHeight;
            @q
            private Long maxResults;
            @q
            private Long maxWidth;
            @q
            private String myRating;
            @q
            private String onBehalfOfContentOwner;
            @q
            private String pageToken;
            @q
            private String part;
            @q
            private String regionCode;
            @q
            private String videoCategoryId;

            protected List(String str) {
                super(YouTube.this, "GET", REST_PATH, null, VideoListResponse.class);
                this.part = (String) aa.a(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.b
            public com.google.api.client.http.q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.b
            public t executeUsingHead() throws IOException {
                return super.executeUsingHead();
            }

            public String getChart() {
                return this.chart;
            }

            public String getHl() {
                return this.hl;
            }

            public String getId() {
                return this.id;
            }

            public String getLocale() {
                return this.locale;
            }

            public Long getMaxHeight() {
                return this.maxHeight;
            }

            public Long getMaxResults() {
                return this.maxResults;
            }

            public Long getMaxWidth() {
                return this.maxWidth;
            }

            public String getMyRating() {
                return this.myRating;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public String getPageToken() {
                return this.pageToken;
            }

            public String getPart() {
                return this.part;
            }

            public String getRegionCode() {
                return this.regionCode;
            }

            public String getVideoCategoryId() {
                return this.videoCategoryId;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public List set(String str, Object obj) {
                return (List) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<VideoListResponse> setAlt2(String str) {
                return (List) super.setAlt(str);
            }

            public List setChart(String str) {
                this.chart = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<VideoListResponse> setFields2(String str) {
                return (List) super.setFields(str);
            }

            public List setHl(String str) {
                this.hl = str;
                return this;
            }

            public List setId(String str) {
                this.id = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<VideoListResponse> setKey2(String str) {
                return (List) super.setKey(str);
            }

            public List setLocale(String str) {
                this.locale = str;
                return this;
            }

            public List setMaxHeight(Long l) {
                this.maxHeight = l;
                return this;
            }

            public List setMaxResults(Long l) {
                this.maxResults = l;
                return this;
            }

            public List setMaxWidth(Long l) {
                this.maxWidth = l;
                return this;
            }

            public List setMyRating(String str) {
                this.myRating = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<VideoListResponse> setOauthToken2(String str) {
                return (List) super.setOauthToken(str);
            }

            public List setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            public List setPageToken(String str) {
                this.pageToken = str;
                return this;
            }

            public List setPart(String str) {
                this.part = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<VideoListResponse> setPrettyPrint2(Boolean bool) {
                return (List) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<VideoListResponse> setQuotaUser2(String str) {
                return (List) super.setQuotaUser(str);
            }

            public List setRegionCode(String str) {
                this.regionCode = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<VideoListResponse> setUserIp2(String str) {
                return (List) super.setUserIp(str);
            }

            public List setVideoCategoryId(String str) {
                this.videoCategoryId = str;
                return this;
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Videos$Rate.class */
        public class Rate extends YouTubeRequest<Void> {
            private static final String REST_PATH = "videos/rate";
            @q
            private String id;
            @q
            private String rating;

            protected Rate(String str, String str2) {
                super(YouTube.this, "POST", REST_PATH, null, Void.class);
                this.id = (String) aa.a(str, "Required parameter id must be specified.");
                this.rating = (String) aa.a(str2, "Required parameter rating must be specified.");
            }

            public String getId() {
                return this.id;
            }

            public String getRating() {
                return this.rating;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Rate set(String str, Object obj) {
                return (Rate) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<Void> setAlt2(String str) {
                return (Rate) super.setAlt(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<Void> setFields2(String str) {
                return (Rate) super.setFields(str);
            }

            public Rate setId(String str) {
                this.id = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<Void> setKey2(String str) {
                return (Rate) super.setKey(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<Void> setOauthToken2(String str) {
                return (Rate) super.setOauthToken(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<Void> setPrettyPrint2(Boolean bool) {
                return (Rate) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<Void> setQuotaUser2(String str) {
                return (Rate) super.setQuotaUser(str);
            }

            public Rate setRating(String str) {
                this.rating = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<Void> setUserIp2(String str) {
                return (Rate) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Videos$ReportAbuse.class */
        public class ReportAbuse extends YouTubeRequest<Void> {
            private static final String REST_PATH = "videos/reportAbuse";
            @q
            private String onBehalfOfContentOwner;

            protected ReportAbuse(VideoAbuseReport videoAbuseReport) {
                super(YouTube.this, "POST", REST_PATH, videoAbuseReport, Void.class);
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public ReportAbuse set(String str, Object obj) {
                return (ReportAbuse) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<Void> setAlt2(String str) {
                return (ReportAbuse) super.setAlt(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<Void> setFields2(String str) {
                return (ReportAbuse) super.setFields(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<Void> setKey2(String str) {
                return (ReportAbuse) super.setKey(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<Void> setOauthToken2(String str) {
                return (ReportAbuse) super.setOauthToken(str);
            }

            public ReportAbuse setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<Void> setPrettyPrint2(Boolean bool) {
                return (ReportAbuse) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<Void> setQuotaUser2(String str) {
                return (ReportAbuse) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<Void> setUserIp2(String str) {
                return (ReportAbuse) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Videos$Update.class */
        public class Update extends YouTubeRequest<Video> {
            private static final String REST_PATH = "videos";
            @q
            private String onBehalfOfContentOwner;
            @q
            private String part;

            protected Update(String str, Video video) {
                super(YouTube.this, "PUT", REST_PATH, video, Video.class);
                this.part = (String) aa.a(str, "Required parameter part must be specified.");
                checkRequiredParameter(video, Constants.VAST_TRACKER_CONTENT);
                checkRequiredParameter(video.getId(), "Video.getId()");
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public String getPart() {
                return this.part;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Update set(String str, Object obj) {
                return (Update) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<Video> setAlt2(String str) {
                return (Update) super.setAlt(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<Video> setFields2(String str) {
                return (Update) super.setFields(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<Video> setKey2(String str) {
                return (Update) super.setKey(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<Video> setOauthToken2(String str) {
                return (Update) super.setOauthToken(str);
            }

            public Update setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            public Update setPart(String str) {
                this.part = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<Video> setPrettyPrint2(Boolean bool) {
                return (Update) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<Video> setQuotaUser2(String str) {
                return (Update) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<Video> setUserIp2(String str) {
                return (Update) super.setUserIp(str);
            }
        }

        public Videos() {
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Watermarks.class */
    public final class Watermarks {

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Watermarks$Set.class */
        public class Set extends YouTubeRequest<Void> {
            private static final String REST_PATH = "watermarks/set";
            @q
            private String channelId;
            @q
            private String onBehalfOfContentOwner;

            protected Set(String str, InvideoBranding invideoBranding) {
                super(YouTube.this, "POST", REST_PATH, invideoBranding, Void.class);
                this.channelId = (String) aa.a(str, "Required parameter channelId must be specified.");
            }

            /* JADX WARN: Illegal instructions before constructor call */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            protected Set(java.lang.String r9, com.google.api.services.youtube.model.InvideoBranding r10, com.google.api.client.http.b r11) {
                /*
                    r7 = this;
                    r0 = r7
                    r1 = r8
                    com.google.api.services.youtube.YouTube.Watermarks.this = r1
                    r0 = r8
                    com.google.api.services.youtube.YouTube r0 = com.google.api.services.youtube.YouTube.this
                    r12 = r0
                    java.lang.StringBuilder r0 = new java.lang.StringBuilder
                    r1 = r0
                    java.lang.String r2 = "/upload/"
                    r1.<init>(r2)
                    r13 = r0
                    r0 = r13
                    r1 = r8
                    com.google.api.services.youtube.YouTube r1 = com.google.api.services.youtube.YouTube.this
                    java.lang.String r1 = r1.getServicePath()
                    java.lang.StringBuilder r0 = r0.append(r1)
                    r0 = r13
                    java.lang.String r1 = "watermarks/set"
                    java.lang.StringBuilder r0 = r0.append(r1)
                    r0 = r7
                    r1 = r12
                    java.lang.String r2 = "POST"
                    r3 = r13
                    java.lang.String r3 = r3.toString()
                    r4 = r10
                    java.lang.Class<java.lang.Void> r5 = java.lang.Void.class
                    r0.<init>(r1, r2, r3, r4, r5)
                    r0 = r7
                    r1 = r9
                    java.lang.String r2 = "Required parameter channelId must be specified."
                    java.lang.Object r1 = com.google.api.client.a.aa.a(r1, r2)
                    java.lang.String r1 = (java.lang.String) r1
                    r0.channelId = r1
                    r0 = r7
                    r1 = r11
                    r0.initializeMediaUpload(r1)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.api.services.youtube.YouTube.Watermarks.Set.<init>(com.google.api.services.youtube.YouTube$Watermarks, java.lang.String, com.google.api.services.youtube.model.InvideoBranding, com.google.api.client.http.b):void");
            }

            public String getChannelId() {
                return this.channelId;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Set set(String str, Object obj) {
                return (Set) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<Void> setAlt2(String str) {
                return (Set) super.setAlt(str);
            }

            public Set setChannelId(String str) {
                this.channelId = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<Void> setFields2(String str) {
                return (Set) super.setFields(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<Void> setKey2(String str) {
                return (Set) super.setKey(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<Void> setOauthToken2(String str) {
                return (Set) super.setOauthToken(str);
            }

            public Set setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<Void> setPrettyPrint2(Boolean bool) {
                return (Set) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<Void> setQuotaUser2(String str) {
                return (Set) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<Void> setUserIp2(String str) {
                return (Set) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Watermarks$Unset.class */
        public class Unset extends YouTubeRequest<Void> {
            private static final String REST_PATH = "watermarks/unset";
            @q
            private String channelId;
            @q
            private String onBehalfOfContentOwner;

            protected Unset(String str) {
                super(YouTube.this, "POST", REST_PATH, null, Void.class);
                this.channelId = (String) aa.a(str, "Required parameter channelId must be specified.");
            }

            public String getChannelId() {
                return this.channelId;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Unset set(String str, Object obj) {
                return (Unset) super.set(str, obj);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setAlt */
            public YouTubeRequest<Void> setAlt2(String str) {
                return (Unset) super.setAlt(str);
            }

            public Unset setChannelId(String str) {
                this.channelId = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setFields */
            public YouTubeRequest<Void> setFields2(String str) {
                return (Unset) super.setFields(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setKey */
            public YouTubeRequest<Void> setKey2(String str) {
                return (Unset) super.setKey(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setOauthToken */
            public YouTubeRequest<Void> setOauthToken2(String str) {
                return (Unset) super.setOauthToken(str);
            }

            public Unset setOnBehalfOfContentOwner(String str) {
                this.onBehalfOfContentOwner = str;
                return this;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setPrettyPrint */
            public YouTubeRequest<Void> setPrettyPrint2(Boolean bool) {
                return (Unset) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setQuotaUser */
            public YouTubeRequest<Void> setQuotaUser2(String str) {
                return (Unset) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.youtube.YouTubeRequest
            /* renamed from: setUserIp */
            public YouTubeRequest<Void> setUserIp2(String str) {
                return (Unset) super.setUserIp(str);
            }
        }

        public Watermarks() {
        }
    }

    static {
        aa.b(a.f31706a.intValue() == 1 && a.f31707b.intValue() >= 15, "You are currently running with version %s of google-api-client. You need at least version 1.15 of google-api-client to run version 1.25.0 of the YouTube Data API library.", a.f31709d);
    }

    public YouTube(w wVar, JsonFactory jsonFactory, s sVar) {
        this(new Builder(wVar, jsonFactory, sVar));
    }

    YouTube(Builder builder) {
        super(builder);
    }

    public Activities activities() {
        return new Activities();
    }

    public Captions captions() {
        return new Captions();
    }

    public ChannelBanners channelBanners() {
        return new ChannelBanners();
    }

    public ChannelSections channelSections() {
        return new ChannelSections();
    }

    public Channels channels() {
        return new Channels();
    }

    public CommentThreads commentThreads() {
        return new CommentThreads();
    }

    public Comments comments() {
        return new Comments();
    }

    public GuideCategories guideCategories() {
        return new GuideCategories();
    }

    public I18nLanguages i18nLanguages() {
        return new I18nLanguages();
    }

    public I18nRegions i18nRegions() {
        return new I18nRegions();
    }

    @Override // com.google.api.client.googleapis.services.a
    public void initialize(b<?> bVar) throws IOException {
        super.initialize(bVar);
    }

    public LiveBroadcasts liveBroadcasts() {
        return new LiveBroadcasts();
    }

    public LiveChatBans liveChatBans() {
        return new LiveChatBans();
    }

    public LiveChatMessages liveChatMessages() {
        return new LiveChatMessages();
    }

    public LiveChatModerators liveChatModerators() {
        return new LiveChatModerators();
    }

    public LiveStreams liveStreams() {
        return new LiveStreams();
    }

    public Members members() {
        return new Members();
    }

    public MembershipsLevels membershipsLevels() {
        return new MembershipsLevels();
    }

    public PlaylistItems playlistItems() {
        return new PlaylistItems();
    }

    public Playlists playlists() {
        return new Playlists();
    }

    public Search search() {
        return new Search();
    }

    public Sponsors sponsors() {
        return new Sponsors();
    }

    public Subscriptions subscriptions() {
        return new Subscriptions();
    }

    public SuperChatEvents superChatEvents() {
        return new SuperChatEvents();
    }

    public Thumbnails thumbnails() {
        return new Thumbnails();
    }

    public VideoAbuseReportReasons videoAbuseReportReasons() {
        return new VideoAbuseReportReasons();
    }

    public VideoCategories videoCategories() {
        return new VideoCategories();
    }

    public Videos videos() {
        return new Videos();
    }

    public Watermarks watermarks() {
        return new Watermarks();
    }
}
