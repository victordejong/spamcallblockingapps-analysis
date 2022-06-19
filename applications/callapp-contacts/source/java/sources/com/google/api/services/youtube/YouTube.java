package com.google.api.services.youtube;

import com.google.api.client.googleapis.C15273a;
import com.google.api.client.googleapis.services.AbstractC15298b;
import com.google.api.client.googleapis.services.AbstractC15301d;
import com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient;
import com.google.api.client.http.AbstractC15342s;
import com.google.api.client.http.AbstractC15346w;
import com.google.api.client.http.C15340q;
import com.google.api.client.http.C15343t;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.p379a.AbstractC15247q;
import com.google.api.client.p379a.C15207aa;
import com.google.api.client.p379a.C15232j;
import com.google.api.client.p379a.C15237l;
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
            @AbstractC15247q
            private String part;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected Insert(String str, Activity activity) {
                super(YouTube.this, "POST", REST_PATH, activity, Activity.class);
                Activities.this = r8;
                this.part = (String) C15207aa.m9282a(str, "Required parameter part must be specified.");
            }

            public String getPart() {
                return this.part;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
            @AbstractC15247q
            private String channelId;
            @AbstractC15247q
            private Boolean home;
            @AbstractC15247q
            private Long maxResults;
            @AbstractC15247q
            private Boolean mine;
            @AbstractC15247q
            private String pageToken;
            @AbstractC15247q
            private String part;
            @AbstractC15247q
            private C15237l publishedAfter;
            @AbstractC15247q
            private C15237l publishedBefore;
            @AbstractC15247q
            private String regionCode;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected List(String str) {
                super(YouTube.this, "GET", REST_PATH, null, ActivityListResponse.class);
                Activities.this = r8;
                this.part = (String) C15207aa.m9282a(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.AbstractC15298b
            public C15340q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.AbstractC15298b
            public C15343t executeUsingHead() throws IOException {
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

            public C15237l getPublishedAfter() {
                return this.publishedAfter;
            }

            public C15237l getPublishedBefore() {
                return this.publishedBefore;
            }

            public String getRegionCode() {
                return this.regionCode;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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

            public List setPublishedAfter(C15237l c15237l) {
                this.publishedAfter = c15237l;
                return this;
            }

            public List setPublishedBefore(C15237l c15237l) {
                this.publishedBefore = c15237l;
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
            YouTube.this = r4;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Builder.class */
    public static final class Builder extends AbstractGoogleJsonClient.Builder {
        public Builder(AbstractC15346w abstractC15346w, JsonFactory jsonFactory, AbstractC15342s abstractC15342s) {
            super(abstractC15346w, jsonFactory, "https://www.googleapis.com/", YouTube.DEFAULT_SERVICE_PATH, abstractC15342s, false);
            setBatchPath(YouTube.DEFAULT_BATCH_PATH);
        }

        @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient.Builder, com.google.api.client.googleapis.services.AbstractC15296a.AbstractC15297a
        public final YouTube build() {
            return new YouTube(this);
        }

        @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient.Builder, com.google.api.client.googleapis.services.AbstractC15296a.AbstractC15297a
        public final Builder setApplicationName(String str) {
            return (Builder) super.setApplicationName(str);
        }

        @Override // com.google.api.client.googleapis.services.AbstractC15296a.AbstractC15297a
        public final Builder setBatchPath(String str) {
            return (Builder) super.setBatchPath(str);
        }

        @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient.Builder, com.google.api.client.googleapis.services.AbstractC15296a.AbstractC15297a
        public final Builder setGoogleClientRequestInitializer(AbstractC15301d abstractC15301d) {
            return (Builder) super.setGoogleClientRequestInitializer(abstractC15301d);
        }

        @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient.Builder, com.google.api.client.googleapis.services.AbstractC15296a.AbstractC15297a
        public final Builder setHttpRequestInitializer(AbstractC15342s abstractC15342s) {
            return (Builder) super.setHttpRequestInitializer(abstractC15342s);
        }

        @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient.Builder, com.google.api.client.googleapis.services.AbstractC15296a.AbstractC15297a
        public final Builder setRootUrl(String str) {
            return (Builder) super.setRootUrl(str);
        }

        @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient.Builder, com.google.api.client.googleapis.services.AbstractC15296a.AbstractC15297a
        public final Builder setServicePath(String str) {
            return (Builder) super.setServicePath(str);
        }

        @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient.Builder, com.google.api.client.googleapis.services.AbstractC15296a.AbstractC15297a
        public final Builder setSuppressAllChecks(boolean z) {
            return (Builder) super.setSuppressAllChecks(z);
        }

        @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient.Builder, com.google.api.client.googleapis.services.AbstractC15296a.AbstractC15297a
        public final Builder setSuppressPatternChecks(boolean z) {
            return (Builder) super.setSuppressPatternChecks(z);
        }

        @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient.Builder, com.google.api.client.googleapis.services.AbstractC15296a.AbstractC15297a
        public final Builder setSuppressRequiredParameterChecks(boolean z) {
            return (Builder) super.setSuppressRequiredParameterChecks(z);
        }

        public final Builder setYouTubeRequestInitializer(YouTubeRequestInitializer youTubeRequestInitializer) {
            return (Builder) super.setGoogleClientRequestInitializer((AbstractC15301d) youTubeRequestInitializer);
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Captions.class */
    public final class Captions {

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Captions$Delete.class */
        public class Delete extends YouTubeRequest<Void> {
            private static final String REST_PATH = "captions";
            @AbstractC15247q

            /* renamed from: id */
            private String f55498id;
            @AbstractC15247q
            private String onBehalfOf;
            @AbstractC15247q
            private String onBehalfOfContentOwner;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected Delete(String str) {
                super(YouTube.this, "DELETE", REST_PATH, null, Void.class);
                Captions.this = r8;
                this.f55498id = (String) C15207aa.m9282a(str, "Required parameter id must be specified.");
            }

            public String getId() {
                return this.f55498id;
            }

            public String getOnBehalfOf() {
                return this.onBehalfOf;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                this.f55498id = str;
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
            @AbstractC15247q

            /* renamed from: id */
            private String f55499id;
            @AbstractC15247q
            private String onBehalfOf;
            @AbstractC15247q
            private String onBehalfOfContentOwner;
            @AbstractC15247q
            private String tfmt;
            @AbstractC15247q
            private String tlang;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected Download(String str) {
                super(YouTube.this, "GET", REST_PATH, null, Void.class);
                Captions.this = r8;
                this.f55499id = (String) C15207aa.m9282a(str, "Required parameter id must be specified.");
                initializeMediaDownload();
            }

            @Override // com.google.api.client.googleapis.services.AbstractC15298b
            public C15340q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.AbstractC15298b
            public C15343t executeMedia() throws IOException {
                return super.executeMedia();
            }

            @Override // com.google.api.client.googleapis.services.AbstractC15298b
            public void executeMediaAndDownloadTo(OutputStream outputStream) throws IOException {
                super.executeMediaAndDownloadTo(outputStream);
            }

            @Override // com.google.api.client.googleapis.services.AbstractC15298b
            public InputStream executeMediaAsInputStream() throws IOException {
                return super.executeMediaAsInputStream();
            }

            @Override // com.google.api.client.googleapis.services.AbstractC15298b
            public C15343t executeUsingHead() throws IOException {
                return super.executeUsingHead();
            }

            public String getId() {
                return this.f55499id;
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

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                this.f55499id = str;
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
            @AbstractC15247q
            private String onBehalfOf;
            @AbstractC15247q
            private String onBehalfOfContentOwner;
            @AbstractC15247q
            private String part;
            @AbstractC15247q
            private Boolean sync;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected Insert(String str, Caption caption) {
                super(YouTube.this, "POST", REST_PATH, caption, Caption.class);
                Captions.this = r8;
                this.part = (String) C15207aa.m9282a(str, "Required parameter part must be specified.");
            }

            /* JADX WARN: Illegal instructions before constructor call */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            protected Insert(java.lang.String r9, com.google.api.services.youtube.model.Caption r10, com.google.api.client.http.AbstractC15322b r11) {
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
                    java.lang.Object r1 = com.google.api.client.p379a.C15207aa.m9282a(r1, r2)
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

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
            @AbstractC15247q

            /* renamed from: id */
            private String f55500id;
            @AbstractC15247q
            private String onBehalfOf;
            @AbstractC15247q
            private String onBehalfOfContentOwner;
            @AbstractC15247q
            private String part;
            @AbstractC15247q
            private String videoId;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected List(String str, String str2) {
                super(YouTube.this, "GET", REST_PATH, null, CaptionListResponse.class);
                Captions.this = r8;
                this.part = (String) C15207aa.m9282a(str, "Required parameter part must be specified.");
                this.videoId = (String) C15207aa.m9282a(str2, "Required parameter videoId must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.AbstractC15298b
            public C15340q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.AbstractC15298b
            public C15343t executeUsingHead() throws IOException {
                return super.executeUsingHead();
            }

            public String getId() {
                return this.f55500id;
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

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                this.f55500id = str;
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
            @AbstractC15247q
            private String onBehalfOf;
            @AbstractC15247q
            private String onBehalfOfContentOwner;
            @AbstractC15247q
            private String part;
            @AbstractC15247q
            private Boolean sync;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected Update(String str, Caption caption) {
                super(YouTube.this, "PUT", REST_PATH, caption, Caption.class);
                Captions.this = r8;
                this.part = (String) C15207aa.m9282a(str, "Required parameter part must be specified.");
                checkRequiredParameter(caption, Constants.VAST_TRACKER_CONTENT);
                checkRequiredParameter(caption.getId(), "Caption.getId()");
            }

            /* JADX WARN: Illegal instructions before constructor call */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            protected Update(java.lang.String r9, com.google.api.services.youtube.model.Caption r10, com.google.api.client.http.AbstractC15322b r11) {
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
                    java.lang.Object r1 = com.google.api.client.p379a.C15207aa.m9282a(r1, r2)
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

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
            YouTube.this = r4;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$ChannelBanners.class */
    public final class ChannelBanners {

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$ChannelBanners$Insert.class */
        public class Insert extends YouTubeRequest<ChannelBannerResource> {
            private static final String REST_PATH = "channelBanners/insert";
            @AbstractC15247q
            private String channelId;
            @AbstractC15247q
            private String onBehalfOfContentOwner;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected Insert(ChannelBannerResource channelBannerResource) {
                super(YouTube.this, "POST", REST_PATH, channelBannerResource, ChannelBannerResource.class);
                ChannelBanners.this = r8;
            }

            /* JADX WARN: Illegal instructions before constructor call */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            protected Insert(com.google.api.services.youtube.model.ChannelBannerResource r9, com.google.api.client.http.AbstractC15322b r10) {
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

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
            YouTube.this = r4;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$ChannelSections.class */
    public final class ChannelSections {

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$ChannelSections$Delete.class */
        public class Delete extends YouTubeRequest<Void> {
            private static final String REST_PATH = "channelSections";
            @AbstractC15247q

            /* renamed from: id */
            private String f55503id;
            @AbstractC15247q
            private String onBehalfOfContentOwner;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected Delete(String str) {
                super(YouTube.this, "DELETE", REST_PATH, null, Void.class);
                ChannelSections.this = r8;
                this.f55503id = (String) C15207aa.m9282a(str, "Required parameter id must be specified.");
            }

            public String getId() {
                return this.f55503id;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                this.f55503id = str;
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
            @AbstractC15247q
            private String onBehalfOfContentOwner;
            @AbstractC15247q
            private String onBehalfOfContentOwnerChannel;
            @AbstractC15247q
            private String part;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected Insert(String str, ChannelSection channelSection) {
                super(YouTube.this, "POST", REST_PATH, channelSection, ChannelSection.class);
                ChannelSections.this = r8;
                this.part = (String) C15207aa.m9282a(str, "Required parameter part must be specified.");
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

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
            @AbstractC15247q
            private String channelId;
            @AbstractC15247q

            /* renamed from: hl */
            private String f55504hl;
            @AbstractC15247q

            /* renamed from: id */
            private String f55505id;
            @AbstractC15247q
            private Boolean mine;
            @AbstractC15247q
            private String onBehalfOfContentOwner;
            @AbstractC15247q
            private String part;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected List(String str) {
                super(YouTube.this, "GET", REST_PATH, null, ChannelSectionListResponse.class);
                ChannelSections.this = r8;
                this.part = (String) C15207aa.m9282a(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.AbstractC15298b
            public C15340q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.AbstractC15298b
            public C15343t executeUsingHead() throws IOException {
                return super.executeUsingHead();
            }

            public String getChannelId() {
                return this.channelId;
            }

            public String getHl() {
                return this.f55504hl;
            }

            public String getId() {
                return this.f55505id;
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

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                this.f55504hl = str;
                return this;
            }

            public List setId(String str) {
                this.f55505id = str;
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
            @AbstractC15247q
            private String onBehalfOfContentOwner;
            @AbstractC15247q
            private String part;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected Update(String str, ChannelSection channelSection) {
                super(YouTube.this, "PUT", REST_PATH, channelSection, ChannelSection.class);
                ChannelSections.this = r8;
                this.part = (String) C15207aa.m9282a(str, "Required parameter part must be specified.");
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public String getPart() {
                return this.part;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
            YouTube.this = r4;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Channels.class */
    public final class Channels {

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Channels$List.class */
        public class List extends YouTubeRequest<ChannelListResponse> {
            private static final String REST_PATH = "channels";
            @AbstractC15247q
            private String categoryId;
            @AbstractC15247q
            private String forUsername;
            @AbstractC15247q

            /* renamed from: hl */
            private String f55507hl;
            @AbstractC15247q

            /* renamed from: id */
            private String f55508id;
            @AbstractC15247q
            private Boolean managedByMe;
            @AbstractC15247q
            private Long maxResults;
            @AbstractC15247q
            private Boolean mine;
            @AbstractC15247q
            private Boolean mySubscribers;
            @AbstractC15247q
            private String onBehalfOfContentOwner;
            @AbstractC15247q
            private String pageToken;
            @AbstractC15247q
            private String part;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected List(String str) {
                super(YouTube.this, "GET", REST_PATH, null, ChannelListResponse.class);
                Channels.this = r8;
                this.part = (String) C15207aa.m9282a(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.AbstractC15298b
            public C15340q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.AbstractC15298b
            public C15343t executeUsingHead() throws IOException {
                return super.executeUsingHead();
            }

            public String getCategoryId() {
                return this.categoryId;
            }

            public String getForUsername() {
                return this.forUsername;
            }

            public String getHl() {
                return this.f55507hl;
            }

            public String getId() {
                return this.f55508id;
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

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                this.f55507hl = str;
                return this;
            }

            public List setId(String str) {
                this.f55508id = str;
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
            @AbstractC15247q
            private String onBehalfOfContentOwner;
            @AbstractC15247q
            private String part;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected Update(String str, Channel channel) {
                super(YouTube.this, "PUT", REST_PATH, channel, Channel.class);
                Channels.this = r8;
                this.part = (String) C15207aa.m9282a(str, "Required parameter part must be specified.");
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public String getPart() {
                return this.part;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
            YouTube.this = r4;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$CommentThreads.class */
    public final class CommentThreads {

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$CommentThreads$Insert.class */
        public class Insert extends YouTubeRequest<CommentThread> {
            private static final String REST_PATH = "commentThreads";
            @AbstractC15247q
            private String part;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected Insert(String str, CommentThread commentThread) {
                super(YouTube.this, "POST", REST_PATH, commentThread, CommentThread.class);
                CommentThreads.this = r8;
                this.part = (String) C15207aa.m9282a(str, "Required parameter part must be specified.");
            }

            public String getPart() {
                return this.part;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
            @AbstractC15247q
            private String allThreadsRelatedToChannelId;
            @AbstractC15247q
            private String channelId;
            @AbstractC15247q

            /* renamed from: id */
            private String f55510id;
            @AbstractC15247q
            private Long maxResults;
            @AbstractC15247q
            private String moderationStatus;
            @AbstractC15247q
            private String order;
            @AbstractC15247q
            private String pageToken;
            @AbstractC15247q
            private String part;
            @AbstractC15247q
            private String searchTerms;
            @AbstractC15247q
            private String textFormat;
            @AbstractC15247q
            private String videoId;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected List(String str) {
                super(YouTube.this, "GET", REST_PATH, null, CommentThreadListResponse.class);
                CommentThreads.this = r8;
                this.part = (String) C15207aa.m9282a(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.AbstractC15298b
            public C15340q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.AbstractC15298b
            public C15343t executeUsingHead() throws IOException {
                return super.executeUsingHead();
            }

            public String getAllThreadsRelatedToChannelId() {
                return this.allThreadsRelatedToChannelId;
            }

            public String getChannelId() {
                return this.channelId;
            }

            public String getId() {
                return this.f55510id;
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

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                this.f55510id = str;
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
            @AbstractC15247q
            private String part;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected Update(String str, CommentThread commentThread) {
                super(YouTube.this, "PUT", REST_PATH, commentThread, CommentThread.class);
                CommentThreads.this = r8;
                this.part = (String) C15207aa.m9282a(str, "Required parameter part must be specified.");
            }

            public String getPart() {
                return this.part;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
            YouTube.this = r4;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Comments.class */
    public final class Comments {

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Comments$Delete.class */
        public class Delete extends YouTubeRequest<Void> {
            private static final String REST_PATH = "comments";
            @AbstractC15247q

            /* renamed from: id */
            private String f55512id;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected Delete(String str) {
                super(YouTube.this, "DELETE", REST_PATH, null, Void.class);
                Comments.this = r8;
                this.f55512id = (String) C15207aa.m9282a(str, "Required parameter id must be specified.");
            }

            public String getId() {
                return this.f55512id;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                this.f55512id = str;
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
            @AbstractC15247q
            private String part;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected Insert(String str, Comment comment) {
                super(YouTube.this, "POST", REST_PATH, comment, Comment.class);
                Comments.this = r8;
                this.part = (String) C15207aa.m9282a(str, "Required parameter part must be specified.");
            }

            public String getPart() {
                return this.part;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
            @AbstractC15247q

            /* renamed from: id */
            private String f55513id;
            @AbstractC15247q
            private Long maxResults;
            @AbstractC15247q
            private String pageToken;
            @AbstractC15247q
            private String parentId;
            @AbstractC15247q
            private String part;
            @AbstractC15247q
            private String textFormat;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected List(String str) {
                super(YouTube.this, "GET", REST_PATH, null, CommentListResponse.class);
                Comments.this = r8;
                this.part = (String) C15207aa.m9282a(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.AbstractC15298b
            public C15340q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.AbstractC15298b
            public C15343t executeUsingHead() throws IOException {
                return super.executeUsingHead();
            }

            public String getId() {
                return this.f55513id;
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

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                this.f55513id = str;
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
            @AbstractC15247q

            /* renamed from: id */
            private String f55514id;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected MarkAsSpam(String str) {
                super(YouTube.this, "POST", REST_PATH, null, Void.class);
                Comments.this = r8;
                this.f55514id = (String) C15207aa.m9282a(str, "Required parameter id must be specified.");
            }

            public String getId() {
                return this.f55514id;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                this.f55514id = str;
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
            @AbstractC15247q
            private Boolean banAuthor;
            @AbstractC15247q

            /* renamed from: id */
            private String f55515id;
            @AbstractC15247q
            private String moderationStatus;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected SetModerationStatus(String str, String str2) {
                super(YouTube.this, "POST", REST_PATH, null, Void.class);
                Comments.this = r8;
                this.f55515id = (String) C15207aa.m9282a(str, "Required parameter id must be specified.");
                this.moderationStatus = (String) C15207aa.m9282a(str2, "Required parameter moderationStatus must be specified.");
            }

            public Boolean getBanAuthor() {
                return this.banAuthor;
            }

            public String getId() {
                return this.f55515id;
            }

            public String getModerationStatus() {
                return this.moderationStatus;
            }

            public boolean isBanAuthor() {
                Boolean bool = this.banAuthor;
                if (bool == null || bool == C15232j.f55078a) {
                    return false;
                }
                return this.banAuthor.booleanValue();
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                this.f55515id = str;
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
            @AbstractC15247q
            private String part;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected Update(String str, Comment comment) {
                super(YouTube.this, "PUT", REST_PATH, comment, Comment.class);
                Comments.this = r8;
                this.part = (String) C15207aa.m9282a(str, "Required parameter part must be specified.");
            }

            public String getPart() {
                return this.part;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
            YouTube.this = r4;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$GuideCategories.class */
    public final class GuideCategories {

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$GuideCategories$List.class */
        public class List extends YouTubeRequest<GuideCategoryListResponse> {
            private static final String REST_PATH = "guideCategories";
            @AbstractC15247q

            /* renamed from: hl */
            private String f55517hl;
            @AbstractC15247q

            /* renamed from: id */
            private String f55518id;
            @AbstractC15247q
            private String part;
            @AbstractC15247q
            private String regionCode;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected List(String str) {
                super(YouTube.this, "GET", REST_PATH, null, GuideCategoryListResponse.class);
                GuideCategories.this = r8;
                this.part = (String) C15207aa.m9282a(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.AbstractC15298b
            public C15340q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.AbstractC15298b
            public C15343t executeUsingHead() throws IOException {
                return super.executeUsingHead();
            }

            public String getHl() {
                return this.f55517hl;
            }

            public String getId() {
                return this.f55518id;
            }

            public String getPart() {
                return this.part;
            }

            public String getRegionCode() {
                return this.regionCode;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                this.f55517hl = str;
                return this;
            }

            public List setId(String str) {
                this.f55518id = str;
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
            YouTube.this = r4;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$I18nLanguages.class */
    public final class I18nLanguages {

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$I18nLanguages$List.class */
        public class List extends YouTubeRequest<I18nLanguageListResponse> {
            private static final String REST_PATH = "i18nLanguages";
            @AbstractC15247q

            /* renamed from: hl */
            private String f55520hl;
            @AbstractC15247q
            private String part;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected List(String str) {
                super(YouTube.this, "GET", REST_PATH, null, I18nLanguageListResponse.class);
                I18nLanguages.this = r8;
                this.part = (String) C15207aa.m9282a(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.AbstractC15298b
            public C15340q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.AbstractC15298b
            public C15343t executeUsingHead() throws IOException {
                return super.executeUsingHead();
            }

            public String getHl() {
                return this.f55520hl;
            }

            public String getPart() {
                return this.part;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                this.f55520hl = str;
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
            YouTube.this = r4;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$I18nRegions.class */
    public final class I18nRegions {

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$I18nRegions$List.class */
        public class List extends YouTubeRequest<I18nRegionListResponse> {
            private static final String REST_PATH = "i18nRegions";
            @AbstractC15247q

            /* renamed from: hl */
            private String f55522hl;
            @AbstractC15247q
            private String part;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected List(String str) {
                super(YouTube.this, "GET", REST_PATH, null, I18nRegionListResponse.class);
                I18nRegions.this = r8;
                this.part = (String) C15207aa.m9282a(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.AbstractC15298b
            public C15340q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.AbstractC15298b
            public C15343t executeUsingHead() throws IOException {
                return super.executeUsingHead();
            }

            public String getHl() {
                return this.f55522hl;
            }

            public String getPart() {
                return this.part;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                this.f55522hl = str;
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
            YouTube.this = r4;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$LiveBroadcasts.class */
    public final class LiveBroadcasts {

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$LiveBroadcasts$Bind.class */
        public class Bind extends YouTubeRequest<LiveBroadcast> {
            private static final String REST_PATH = "liveBroadcasts/bind";
            @AbstractC15247q

            /* renamed from: id */
            private String f55524id;
            @AbstractC15247q
            private String onBehalfOfContentOwner;
            @AbstractC15247q
            private String onBehalfOfContentOwnerChannel;
            @AbstractC15247q
            private String part;
            @AbstractC15247q
            private String streamId;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected Bind(String str, String str2) {
                super(YouTube.this, "POST", REST_PATH, null, LiveBroadcast.class);
                LiveBroadcasts.this = r8;
                this.f55524id = (String) C15207aa.m9282a(str, "Required parameter id must be specified.");
                this.part = (String) C15207aa.m9282a(str2, "Required parameter part must be specified.");
            }

            public String getId() {
                return this.f55524id;
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

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                this.f55524id = str;
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
            @AbstractC15247q
            private Boolean displaySlate;
            @AbstractC15247q

            /* renamed from: id */
            private String f55525id;
            @AbstractC15247q
            private BigInteger offsetTimeMs;
            @AbstractC15247q
            private String onBehalfOfContentOwner;
            @AbstractC15247q
            private String onBehalfOfContentOwnerChannel;
            @AbstractC15247q
            private String part;
            @AbstractC15247q
            private C15237l walltime;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected Control(String str, String str2) {
                super(YouTube.this, "POST", REST_PATH, null, LiveBroadcast.class);
                LiveBroadcasts.this = r8;
                this.f55525id = (String) C15207aa.m9282a(str, "Required parameter id must be specified.");
                this.part = (String) C15207aa.m9282a(str2, "Required parameter part must be specified.");
            }

            public Boolean getDisplaySlate() {
                return this.displaySlate;
            }

            public String getId() {
                return this.f55525id;
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

            public C15237l getWalltime() {
                return this.walltime;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                this.f55525id = str;
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

            public Control setWalltime(C15237l c15237l) {
                this.walltime = c15237l;
                return this;
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$LiveBroadcasts$Delete.class */
        public class Delete extends YouTubeRequest<Void> {
            private static final String REST_PATH = "liveBroadcasts";
            @AbstractC15247q

            /* renamed from: id */
            private String f55526id;
            @AbstractC15247q
            private String onBehalfOfContentOwner;
            @AbstractC15247q
            private String onBehalfOfContentOwnerChannel;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected Delete(String str) {
                super(YouTube.this, "DELETE", REST_PATH, null, Void.class);
                LiveBroadcasts.this = r8;
                this.f55526id = (String) C15207aa.m9282a(str, "Required parameter id must be specified.");
            }

            public String getId() {
                return this.f55526id;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public String getOnBehalfOfContentOwnerChannel() {
                return this.onBehalfOfContentOwnerChannel;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                this.f55526id = str;
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
            @AbstractC15247q
            private String onBehalfOfContentOwner;
            @AbstractC15247q
            private String onBehalfOfContentOwnerChannel;
            @AbstractC15247q
            private String part;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected Insert(String str, LiveBroadcast liveBroadcast) {
                super(YouTube.this, "POST", REST_PATH, liveBroadcast, LiveBroadcast.class);
                LiveBroadcasts.this = r8;
                this.part = (String) C15207aa.m9282a(str, "Required parameter part must be specified.");
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

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
            @AbstractC15247q
            private String broadcastStatus;
            @AbstractC15247q
            private String broadcastType;
            @AbstractC15247q

            /* renamed from: id */
            private String f55527id;
            @AbstractC15247q
            private Long maxResults;
            @AbstractC15247q
            private Boolean mine;
            @AbstractC15247q
            private String onBehalfOfContentOwner;
            @AbstractC15247q
            private String onBehalfOfContentOwnerChannel;
            @AbstractC15247q
            private String pageToken;
            @AbstractC15247q
            private String part;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected List(String str) {
                super(YouTube.this, "GET", REST_PATH, null, LiveBroadcastListResponse.class);
                LiveBroadcasts.this = r8;
                this.part = (String) C15207aa.m9282a(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.AbstractC15298b
            public C15340q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.AbstractC15298b
            public C15343t executeUsingHead() throws IOException {
                return super.executeUsingHead();
            }

            public String getBroadcastStatus() {
                return this.broadcastStatus;
            }

            public String getBroadcastType() {
                return this.broadcastType;
            }

            public String getId() {
                return this.f55527id;
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

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                this.f55527id = str;
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
            @AbstractC15247q
            private String broadcastStatus;
            @AbstractC15247q

            /* renamed from: id */
            private String f55528id;
            @AbstractC15247q
            private String onBehalfOfContentOwner;
            @AbstractC15247q
            private String onBehalfOfContentOwnerChannel;
            @AbstractC15247q
            private String part;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected Transition(String str, String str2, String str3) {
                super(YouTube.this, "POST", REST_PATH, null, LiveBroadcast.class);
                LiveBroadcasts.this = r8;
                this.broadcastStatus = (String) C15207aa.m9282a(str, "Required parameter broadcastStatus must be specified.");
                this.f55528id = (String) C15207aa.m9282a(str2, "Required parameter id must be specified.");
                this.part = (String) C15207aa.m9282a(str3, "Required parameter part must be specified.");
            }

            public String getBroadcastStatus() {
                return this.broadcastStatus;
            }

            public String getId() {
                return this.f55528id;
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

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                this.f55528id = str;
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
            @AbstractC15247q
            private String onBehalfOfContentOwner;
            @AbstractC15247q
            private String onBehalfOfContentOwnerChannel;
            @AbstractC15247q
            private String part;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected Update(String str, LiveBroadcast liveBroadcast) {
                super(YouTube.this, "PUT", REST_PATH, liveBroadcast, LiveBroadcast.class);
                LiveBroadcasts.this = r8;
                this.part = (String) C15207aa.m9282a(str, "Required parameter part must be specified.");
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

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
            YouTube.this = r4;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$LiveChatBans.class */
    public final class LiveChatBans {

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$LiveChatBans$Delete.class */
        public class Delete extends YouTubeRequest<Void> {
            private static final String REST_PATH = "liveChat/bans";
            @AbstractC15247q

            /* renamed from: id */
            private String f55530id;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected Delete(String str) {
                super(YouTube.this, "DELETE", REST_PATH, null, Void.class);
                LiveChatBans.this = r8;
                this.f55530id = (String) C15207aa.m9282a(str, "Required parameter id must be specified.");
            }

            public String getId() {
                return this.f55530id;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                this.f55530id = str;
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
            @AbstractC15247q
            private String part;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected Insert(String str, LiveChatBan liveChatBan) {
                super(YouTube.this, "POST", REST_PATH, liveChatBan, LiveChatBan.class);
                LiveChatBans.this = r8;
                this.part = (String) C15207aa.m9282a(str, "Required parameter part must be specified.");
            }

            public String getPart() {
                return this.part;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
            YouTube.this = r4;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$LiveChatMessages.class */
    public final class LiveChatMessages {

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$LiveChatMessages$Delete.class */
        public class Delete extends YouTubeRequest<Void> {
            private static final String REST_PATH = "liveChat/messages";
            @AbstractC15247q

            /* renamed from: id */
            private String f55532id;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected Delete(String str) {
                super(YouTube.this, "DELETE", REST_PATH, null, Void.class);
                LiveChatMessages.this = r8;
                this.f55532id = (String) C15207aa.m9282a(str, "Required parameter id must be specified.");
            }

            public String getId() {
                return this.f55532id;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                this.f55532id = str;
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
            @AbstractC15247q
            private String part;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected Insert(String str, LiveChatMessage liveChatMessage) {
                super(YouTube.this, "POST", REST_PATH, liveChatMessage, LiveChatMessage.class);
                LiveChatMessages.this = r8;
                this.part = (String) C15207aa.m9282a(str, "Required parameter part must be specified.");
            }

            public String getPart() {
                return this.part;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
            @AbstractC15247q

            /* renamed from: hl */
            private String f55533hl;
            @AbstractC15247q
            private String liveChatId;
            @AbstractC15247q
            private Long maxResults;
            @AbstractC15247q
            private String pageToken;
            @AbstractC15247q
            private String part;
            @AbstractC15247q
            private Long profileImageSize;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected List(String str, String str2) {
                super(YouTube.this, "GET", REST_PATH, null, LiveChatMessageListResponse.class);
                LiveChatMessages.this = r8;
                this.liveChatId = (String) C15207aa.m9282a(str, "Required parameter liveChatId must be specified.");
                this.part = (String) C15207aa.m9282a(str2, "Required parameter part must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.AbstractC15298b
            public C15340q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.AbstractC15298b
            public C15343t executeUsingHead() throws IOException {
                return super.executeUsingHead();
            }

            public String getHl() {
                return this.f55533hl;
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

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                this.f55533hl = str;
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
            YouTube.this = r4;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$LiveChatModerators.class */
    public final class LiveChatModerators {

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$LiveChatModerators$Delete.class */
        public class Delete extends YouTubeRequest<Void> {
            private static final String REST_PATH = "liveChat/moderators";
            @AbstractC15247q

            /* renamed from: id */
            private String f55535id;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected Delete(String str) {
                super(YouTube.this, "DELETE", REST_PATH, null, Void.class);
                LiveChatModerators.this = r8;
                this.f55535id = (String) C15207aa.m9282a(str, "Required parameter id must be specified.");
            }

            public String getId() {
                return this.f55535id;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                this.f55535id = str;
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
            @AbstractC15247q
            private String part;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected Insert(String str, LiveChatModerator liveChatModerator) {
                super(YouTube.this, "POST", REST_PATH, liveChatModerator, LiveChatModerator.class);
                LiveChatModerators.this = r8;
                this.part = (String) C15207aa.m9282a(str, "Required parameter part must be specified.");
            }

            public String getPart() {
                return this.part;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
            @AbstractC15247q
            private String liveChatId;
            @AbstractC15247q
            private Long maxResults;
            @AbstractC15247q
            private String pageToken;
            @AbstractC15247q
            private String part;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected List(String str, String str2) {
                super(YouTube.this, "GET", REST_PATH, null, LiveChatModeratorListResponse.class);
                LiveChatModerators.this = r8;
                this.liveChatId = (String) C15207aa.m9282a(str, "Required parameter liveChatId must be specified.");
                this.part = (String) C15207aa.m9282a(str2, "Required parameter part must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.AbstractC15298b
            public C15340q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.AbstractC15298b
            public C15343t executeUsingHead() throws IOException {
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

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
            YouTube.this = r4;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$LiveStreams.class */
    public final class LiveStreams {

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$LiveStreams$Delete.class */
        public class Delete extends YouTubeRequest<Void> {
            private static final String REST_PATH = "liveStreams";
            @AbstractC15247q

            /* renamed from: id */
            private String f55537id;
            @AbstractC15247q
            private String onBehalfOfContentOwner;
            @AbstractC15247q
            private String onBehalfOfContentOwnerChannel;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected Delete(String str) {
                super(YouTube.this, "DELETE", REST_PATH, null, Void.class);
                LiveStreams.this = r8;
                this.f55537id = (String) C15207aa.m9282a(str, "Required parameter id must be specified.");
            }

            public String getId() {
                return this.f55537id;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public String getOnBehalfOfContentOwnerChannel() {
                return this.onBehalfOfContentOwnerChannel;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                this.f55537id = str;
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
            @AbstractC15247q
            private String onBehalfOfContentOwner;
            @AbstractC15247q
            private String onBehalfOfContentOwnerChannel;
            @AbstractC15247q
            private String part;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected Insert(String str, LiveStream liveStream) {
                super(YouTube.this, "POST", REST_PATH, liveStream, LiveStream.class);
                LiveStreams.this = r8;
                this.part = (String) C15207aa.m9282a(str, "Required parameter part must be specified.");
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

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
            @AbstractC15247q

            /* renamed from: id */
            private String f55538id;
            @AbstractC15247q
            private Long maxResults;
            @AbstractC15247q
            private Boolean mine;
            @AbstractC15247q
            private String onBehalfOfContentOwner;
            @AbstractC15247q
            private String onBehalfOfContentOwnerChannel;
            @AbstractC15247q
            private String pageToken;
            @AbstractC15247q
            private String part;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected List(String str) {
                super(YouTube.this, "GET", REST_PATH, null, LiveStreamListResponse.class);
                LiveStreams.this = r8;
                this.part = (String) C15207aa.m9282a(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.AbstractC15298b
            public C15340q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.AbstractC15298b
            public C15343t executeUsingHead() throws IOException {
                return super.executeUsingHead();
            }

            public String getId() {
                return this.f55538id;
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

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                this.f55538id = str;
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
            @AbstractC15247q
            private String onBehalfOfContentOwner;
            @AbstractC15247q
            private String onBehalfOfContentOwnerChannel;
            @AbstractC15247q
            private String part;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected Update(String str, LiveStream liveStream) {
                super(YouTube.this, "PUT", REST_PATH, liveStream, LiveStream.class);
                LiveStreams.this = r8;
                this.part = (String) C15207aa.m9282a(str, "Required parameter part must be specified.");
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

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
            YouTube.this = r4;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Members.class */
    public final class Members {

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Members$List.class */
        public class List extends YouTubeRequest<MemberListResponse> {
            private static final String REST_PATH = "members";
            @AbstractC15247q
            private String filterByMemberChannelId;
            @AbstractC15247q
            private String hasAccessToLevel;
            @AbstractC15247q
            private Long maxResults;
            @AbstractC15247q
            private String mode;
            @AbstractC15247q
            private String pageToken;
            @AbstractC15247q
            private String part;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected List(String str) {
                super(YouTube.this, "GET", REST_PATH, null, MemberListResponse.class);
                Members.this = r8;
                this.part = (String) C15207aa.m9282a(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.AbstractC15298b
            public C15340q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.AbstractC15298b
            public C15343t executeUsingHead() throws IOException {
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

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
            YouTube.this = r4;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$MembershipsLevels.class */
    public final class MembershipsLevels {

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$MembershipsLevels$List.class */
        public class List extends YouTubeRequest<MembershipsLevelListResponse> {
            private static final String REST_PATH = "membershipsLevels";
            @AbstractC15247q
            private String part;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected List(String str) {
                super(YouTube.this, "GET", REST_PATH, null, MembershipsLevelListResponse.class);
                MembershipsLevels.this = r8;
                this.part = (String) C15207aa.m9282a(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.AbstractC15298b
            public C15340q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.AbstractC15298b
            public C15343t executeUsingHead() throws IOException {
                return super.executeUsingHead();
            }

            public String getPart() {
                return this.part;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
            YouTube.this = r4;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$PlaylistItems.class */
    public final class PlaylistItems {

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$PlaylistItems$Delete.class */
        public class Delete extends YouTubeRequest<Void> {
            private static final String REST_PATH = "playlistItems";
            @AbstractC15247q

            /* renamed from: id */
            private String f55542id;
            @AbstractC15247q
            private String onBehalfOfContentOwner;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected Delete(String str) {
                super(YouTube.this, "DELETE", REST_PATH, null, Void.class);
                PlaylistItems.this = r8;
                this.f55542id = (String) C15207aa.m9282a(str, "Required parameter id must be specified.");
            }

            public String getId() {
                return this.f55542id;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                this.f55542id = str;
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
            @AbstractC15247q
            private String onBehalfOfContentOwner;
            @AbstractC15247q
            private String part;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected Insert(String str, PlaylistItem playlistItem) {
                super(YouTube.this, "POST", REST_PATH, playlistItem, PlaylistItem.class);
                PlaylistItems.this = r8;
                this.part = (String) C15207aa.m9282a(str, "Required parameter part must be specified.");
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public String getPart() {
                return this.part;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
            @AbstractC15247q

            /* renamed from: id */
            private String f55543id;
            @AbstractC15247q
            private Long maxResults;
            @AbstractC15247q
            private String onBehalfOfContentOwner;
            @AbstractC15247q
            private String pageToken;
            @AbstractC15247q
            private String part;
            @AbstractC15247q
            private String playlistId;
            @AbstractC15247q
            private String videoId;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected List(String str) {
                super(YouTube.this, "GET", REST_PATH, null, PlaylistItemListResponse.class);
                PlaylistItems.this = r8;
                this.part = (String) C15207aa.m9282a(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.AbstractC15298b
            public C15340q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.AbstractC15298b
            public C15343t executeUsingHead() throws IOException {
                return super.executeUsingHead();
            }

            public String getId() {
                return this.f55543id;
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

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                this.f55543id = str;
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
            @AbstractC15247q
            private String onBehalfOfContentOwner;
            @AbstractC15247q
            private String part;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected Update(String str, PlaylistItem playlistItem) {
                super(YouTube.this, "PUT", REST_PATH, playlistItem, PlaylistItem.class);
                PlaylistItems.this = r8;
                this.part = (String) C15207aa.m9282a(str, "Required parameter part must be specified.");
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public String getPart() {
                return this.part;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
            YouTube.this = r4;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Playlists.class */
    public final class Playlists {

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Playlists$Delete.class */
        public class Delete extends YouTubeRequest<Void> {
            private static final String REST_PATH = "playlists";
            @AbstractC15247q

            /* renamed from: id */
            private String f55545id;
            @AbstractC15247q
            private String onBehalfOfContentOwner;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected Delete(String str) {
                super(YouTube.this, "DELETE", REST_PATH, null, Void.class);
                Playlists.this = r8;
                this.f55545id = (String) C15207aa.m9282a(str, "Required parameter id must be specified.");
            }

            public String getId() {
                return this.f55545id;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                this.f55545id = str;
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
            @AbstractC15247q
            private String onBehalfOfContentOwner;
            @AbstractC15247q
            private String onBehalfOfContentOwnerChannel;
            @AbstractC15247q
            private String part;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected Insert(String str, Playlist playlist) {
                super(YouTube.this, "POST", REST_PATH, playlist, Playlist.class);
                Playlists.this = r8;
                this.part = (String) C15207aa.m9282a(str, "Required parameter part must be specified.");
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

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
            @AbstractC15247q
            private String channelId;
            @AbstractC15247q

            /* renamed from: hl */
            private String f55546hl;
            @AbstractC15247q

            /* renamed from: id */
            private String f55547id;
            @AbstractC15247q
            private Long maxResults;
            @AbstractC15247q
            private Boolean mine;
            @AbstractC15247q
            private String onBehalfOfContentOwner;
            @AbstractC15247q
            private String onBehalfOfContentOwnerChannel;
            @AbstractC15247q
            private String pageToken;
            @AbstractC15247q
            private String part;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected List(String str) {
                super(YouTube.this, "GET", REST_PATH, null, PlaylistListResponse.class);
                Playlists.this = r8;
                this.part = (String) C15207aa.m9282a(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.AbstractC15298b
            public C15340q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.AbstractC15298b
            public C15343t executeUsingHead() throws IOException {
                return super.executeUsingHead();
            }

            public String getChannelId() {
                return this.channelId;
            }

            public String getHl() {
                return this.f55546hl;
            }

            public String getId() {
                return this.f55547id;
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

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                this.f55546hl = str;
                return this;
            }

            public List setId(String str) {
                this.f55547id = str;
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
            @AbstractC15247q
            private String onBehalfOfContentOwner;
            @AbstractC15247q
            private String part;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected Update(String str, Playlist playlist) {
                super(YouTube.this, "PUT", REST_PATH, playlist, Playlist.class);
                Playlists.this = r8;
                this.part = (String) C15207aa.m9282a(str, "Required parameter part must be specified.");
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public String getPart() {
                return this.part;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
            YouTube.this = r4;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Search.class */
    public final class Search {

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Search$List.class */
        public class List extends YouTubeRequest<SearchListResponse> {
            private static final String REST_PATH = "search";
            @AbstractC15247q
            private String channelId;
            @AbstractC15247q
            private String channelType;
            @AbstractC15247q
            private String eventType;
            @AbstractC15247q
            private Boolean forContentOwner;
            @AbstractC15247q
            private Boolean forDeveloper;
            @AbstractC15247q
            private Boolean forMine;
            @AbstractC15247q
            private String location;
            @AbstractC15247q
            private String locationRadius;
            @AbstractC15247q
            private Long maxResults;
            @AbstractC15247q
            private String onBehalfOfContentOwner;
            @AbstractC15247q
            private String order;
            @AbstractC15247q
            private String pageToken;
            @AbstractC15247q
            private String part;
            @AbstractC15247q
            private C15237l publishedAfter;
            @AbstractC15247q
            private C15237l publishedBefore;
            @AbstractC15247q

            /* renamed from: q */
            private String f55549q;
            @AbstractC15247q
            private String regionCode;
            @AbstractC15247q
            private String relatedToVideoId;
            @AbstractC15247q
            private String relevanceLanguage;
            @AbstractC15247q
            private String safeSearch;
            @AbstractC15247q
            private String topicId;
            @AbstractC15247q
            private String type;
            @AbstractC15247q
            private String videoCaption;
            @AbstractC15247q
            private String videoCategoryId;
            @AbstractC15247q
            private String videoDefinition;
            @AbstractC15247q
            private String videoDimension;
            @AbstractC15247q
            private String videoDuration;
            @AbstractC15247q
            private String videoEmbeddable;
            @AbstractC15247q
            private String videoLicense;
            @AbstractC15247q
            private String videoSyndicated;
            @AbstractC15247q
            private String videoType;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected List(String str) {
                super(YouTube.this, "GET", REST_PATH, null, SearchListResponse.class);
                Search.this = r8;
                this.part = (String) C15207aa.m9282a(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.AbstractC15298b
            public C15340q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.AbstractC15298b
            public C15343t executeUsingHead() throws IOException {
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

            public C15237l getPublishedAfter() {
                return this.publishedAfter;
            }

            public C15237l getPublishedBefore() {
                return this.publishedBefore;
            }

            public String getQ() {
                return this.f55549q;
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

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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

            public List setPublishedAfter(C15237l c15237l) {
                this.publishedAfter = c15237l;
                return this;
            }

            public List setPublishedBefore(C15237l c15237l) {
                this.publishedBefore = c15237l;
                return this;
            }

            public List setQ(String str) {
                this.f55549q = str;
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
            YouTube.this = r4;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Sponsors.class */
    public final class Sponsors {

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Sponsors$List.class */
        public class List extends YouTubeRequest<SponsorListResponse> {
            private static final String REST_PATH = "sponsors";
            @AbstractC15247q
            private String filter;
            @AbstractC15247q
            private Long maxResults;
            @AbstractC15247q
            private String pageToken;
            @AbstractC15247q
            private String part;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected List(String str) {
                super(YouTube.this, "GET", REST_PATH, null, SponsorListResponse.class);
                Sponsors.this = r8;
                this.part = (String) C15207aa.m9282a(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.AbstractC15298b
            public C15340q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.AbstractC15298b
            public C15343t executeUsingHead() throws IOException {
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

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
            YouTube.this = r4;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Subscriptions.class */
    public final class Subscriptions {

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Subscriptions$Delete.class */
        public class Delete extends YouTubeRequest<Void> {
            private static final String REST_PATH = "subscriptions";
            @AbstractC15247q

            /* renamed from: id */
            private String f55552id;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected Delete(String str) {
                super(YouTube.this, "DELETE", REST_PATH, null, Void.class);
                Subscriptions.this = r8;
                this.f55552id = (String) C15207aa.m9282a(str, "Required parameter id must be specified.");
            }

            public String getId() {
                return this.f55552id;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                this.f55552id = str;
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
            @AbstractC15247q
            private String part;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected Insert(String str, Subscription subscription) {
                super(YouTube.this, "POST", REST_PATH, subscription, Subscription.class);
                Subscriptions.this = r8;
                this.part = (String) C15207aa.m9282a(str, "Required parameter part must be specified.");
            }

            public String getPart() {
                return this.part;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
            @AbstractC15247q
            private String channelId;
            @AbstractC15247q
            private String forChannelId;
            @AbstractC15247q

            /* renamed from: id */
            private String f55553id;
            @AbstractC15247q
            private Long maxResults;
            @AbstractC15247q
            private Boolean mine;
            @AbstractC15247q
            private Boolean myRecentSubscribers;
            @AbstractC15247q
            private Boolean mySubscribers;
            @AbstractC15247q
            private String onBehalfOfContentOwner;
            @AbstractC15247q
            private String onBehalfOfContentOwnerChannel;
            @AbstractC15247q
            private String order;
            @AbstractC15247q
            private String pageToken;
            @AbstractC15247q
            private String part;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected List(String str) {
                super(YouTube.this, "GET", REST_PATH, null, SubscriptionListResponse.class);
                Subscriptions.this = r8;
                this.part = (String) C15207aa.m9282a(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.AbstractC15298b
            public C15340q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.AbstractC15298b
            public C15343t executeUsingHead() throws IOException {
                return super.executeUsingHead();
            }

            public String getChannelId() {
                return this.channelId;
            }

            public String getForChannelId() {
                return this.forChannelId;
            }

            public String getId() {
                return this.f55553id;
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

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                this.f55553id = str;
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
            YouTube.this = r4;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$SuperChatEvents.class */
    public final class SuperChatEvents {

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$SuperChatEvents$List.class */
        public class List extends YouTubeRequest<SuperChatEventListResponse> {
            private static final String REST_PATH = "superChatEvents";
            @AbstractC15247q

            /* renamed from: hl */
            private String f55555hl;
            @AbstractC15247q
            private Long maxResults;
            @AbstractC15247q
            private String pageToken;
            @AbstractC15247q
            private String part;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected List(String str) {
                super(YouTube.this, "GET", REST_PATH, null, SuperChatEventListResponse.class);
                SuperChatEvents.this = r8;
                this.part = (String) C15207aa.m9282a(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.AbstractC15298b
            public C15340q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.AbstractC15298b
            public C15343t executeUsingHead() throws IOException {
                return super.executeUsingHead();
            }

            public String getHl() {
                return this.f55555hl;
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

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                this.f55555hl = str;
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
            YouTube.this = r4;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Thumbnails.class */
    public final class Thumbnails {

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Thumbnails$Set.class */
        public class Set extends YouTubeRequest<ThumbnailSetResponse> {
            private static final String REST_PATH = "thumbnails/set";
            @AbstractC15247q
            private String onBehalfOfContentOwner;
            @AbstractC15247q
            private String videoId;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected Set(String str) {
                super(YouTube.this, "POST", REST_PATH, null, ThumbnailSetResponse.class);
                Thumbnails.this = r8;
                this.videoId = (String) C15207aa.m9282a(str, "Required parameter videoId must be specified.");
            }

            /* JADX WARN: Illegal instructions before constructor call */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            protected Set(java.lang.String r9, com.google.api.client.http.AbstractC15322b r10) {
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
                    java.lang.Object r1 = com.google.api.client.p379a.C15207aa.m9282a(r1, r2)
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

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
            YouTube.this = r4;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$VideoAbuseReportReasons.class */
    public final class VideoAbuseReportReasons {

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$VideoAbuseReportReasons$List.class */
        public class List extends YouTubeRequest<VideoAbuseReportReasonListResponse> {
            private static final String REST_PATH = "videoAbuseReportReasons";
            @AbstractC15247q

            /* renamed from: hl */
            private String f55558hl;
            @AbstractC15247q
            private String part;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected List(String str) {
                super(YouTube.this, "GET", REST_PATH, null, VideoAbuseReportReasonListResponse.class);
                VideoAbuseReportReasons.this = r8;
                this.part = (String) C15207aa.m9282a(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.AbstractC15298b
            public C15340q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.AbstractC15298b
            public C15343t executeUsingHead() throws IOException {
                return super.executeUsingHead();
            }

            public String getHl() {
                return this.f55558hl;
            }

            public String getPart() {
                return this.part;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                this.f55558hl = str;
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
            YouTube.this = r4;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$VideoCategories.class */
    public final class VideoCategories {

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$VideoCategories$List.class */
        public class List extends YouTubeRequest<VideoCategoryListResponse> {
            private static final String REST_PATH = "videoCategories";
            @AbstractC15247q

            /* renamed from: hl */
            private String f55560hl;
            @AbstractC15247q

            /* renamed from: id */
            private String f55561id;
            @AbstractC15247q
            private String part;
            @AbstractC15247q
            private String regionCode;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected List(String str) {
                super(YouTube.this, "GET", REST_PATH, null, VideoCategoryListResponse.class);
                VideoCategories.this = r8;
                this.part = (String) C15207aa.m9282a(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.AbstractC15298b
            public C15340q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.AbstractC15298b
            public C15343t executeUsingHead() throws IOException {
                return super.executeUsingHead();
            }

            public String getHl() {
                return this.f55560hl;
            }

            public String getId() {
                return this.f55561id;
            }

            public String getPart() {
                return this.part;
            }

            public String getRegionCode() {
                return this.regionCode;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                this.f55560hl = str;
                return this;
            }

            public List setId(String str) {
                this.f55561id = str;
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
            YouTube.this = r4;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Videos.class */
    public final class Videos {

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Videos$Delete.class */
        public class Delete extends YouTubeRequest<Void> {
            private static final String REST_PATH = "videos";
            @AbstractC15247q

            /* renamed from: id */
            private String f55563id;
            @AbstractC15247q
            private String onBehalfOfContentOwner;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected Delete(String str) {
                super(YouTube.this, "DELETE", REST_PATH, null, Void.class);
                Videos.this = r8;
                this.f55563id = (String) C15207aa.m9282a(str, "Required parameter id must be specified.");
            }

            public String getId() {
                return this.f55563id;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                this.f55563id = str;
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
            @AbstractC15247q

            /* renamed from: id */
            private String f55564id;
            @AbstractC15247q
            private String onBehalfOfContentOwner;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected GetRating(String str) {
                super(YouTube.this, "GET", REST_PATH, null, VideoGetRatingResponse.class);
                Videos.this = r8;
                this.f55564id = (String) C15207aa.m9282a(str, "Required parameter id must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.AbstractC15298b
            public C15340q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.AbstractC15298b
            public C15343t executeUsingHead() throws IOException {
                return super.executeUsingHead();
            }

            public String getId() {
                return this.f55564id;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                this.f55564id = str;
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
            @AbstractC15247q
            private Boolean autoLevels;
            @AbstractC15247q
            private Boolean notifySubscribers;
            @AbstractC15247q
            private String onBehalfOfContentOwner;
            @AbstractC15247q
            private String onBehalfOfContentOwnerChannel;
            @AbstractC15247q
            private String part;
            @AbstractC15247q
            private Boolean stabilize;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected Insert(String str, Video video) {
                super(YouTube.this, "POST", REST_PATH, video, Video.class);
                Videos.this = r8;
                this.part = (String) C15207aa.m9282a(str, "Required parameter part must be specified.");
            }

            /* JADX WARN: Illegal instructions before constructor call */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            protected Insert(java.lang.String r9, com.google.api.services.youtube.model.Video r10, com.google.api.client.http.AbstractC15322b r11) {
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
                    java.lang.Object r1 = com.google.api.client.p379a.C15207aa.m9282a(r1, r2)
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
                if (bool == null || bool == C15232j.f55078a) {
                    return true;
                }
                return this.notifySubscribers.booleanValue();
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
            @AbstractC15247q
            private String chart;
            @AbstractC15247q

            /* renamed from: hl */
            private String f55565hl;
            @AbstractC15247q

            /* renamed from: id */
            private String f55566id;
            @AbstractC15247q
            private String locale;
            @AbstractC15247q
            private Long maxHeight;
            @AbstractC15247q
            private Long maxResults;
            @AbstractC15247q
            private Long maxWidth;
            @AbstractC15247q
            private String myRating;
            @AbstractC15247q
            private String onBehalfOfContentOwner;
            @AbstractC15247q
            private String pageToken;
            @AbstractC15247q
            private String part;
            @AbstractC15247q
            private String regionCode;
            @AbstractC15247q
            private String videoCategoryId;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected List(String str) {
                super(YouTube.this, "GET", REST_PATH, null, VideoListResponse.class);
                Videos.this = r8;
                this.part = (String) C15207aa.m9282a(str, "Required parameter part must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.AbstractC15298b
            public C15340q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.AbstractC15298b
            public C15343t executeUsingHead() throws IOException {
                return super.executeUsingHead();
            }

            public String getChart() {
                return this.chart;
            }

            public String getHl() {
                return this.f55565hl;
            }

            public String getId() {
                return this.f55566id;
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

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                this.f55565hl = str;
                return this;
            }

            public List setId(String str) {
                this.f55566id = str;
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
            @AbstractC15247q

            /* renamed from: id */
            private String f55567id;
            @AbstractC15247q
            private String rating;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected Rate(String str, String str2) {
                super(YouTube.this, "POST", REST_PATH, null, Void.class);
                Videos.this = r8;
                this.f55567id = (String) C15207aa.m9282a(str, "Required parameter id must be specified.");
                this.rating = (String) C15207aa.m9282a(str2, "Required parameter rating must be specified.");
            }

            public String getId() {
                return this.f55567id;
            }

            public String getRating() {
                return this.rating;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                this.f55567id = str;
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
            @AbstractC15247q
            private String onBehalfOfContentOwner;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected ReportAbuse(VideoAbuseReport videoAbuseReport) {
                super(YouTube.this, "POST", REST_PATH, videoAbuseReport, Void.class);
                Videos.this = r8;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
            @AbstractC15247q
            private String onBehalfOfContentOwner;
            @AbstractC15247q
            private String part;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected Update(String str, Video video) {
                super(YouTube.this, "PUT", REST_PATH, video, Video.class);
                Videos.this = r8;
                this.part = (String) C15207aa.m9282a(str, "Required parameter part must be specified.");
                checkRequiredParameter(video, Constants.VAST_TRACKER_CONTENT);
                checkRequiredParameter(video.getId(), "Video.getId()");
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            public String getPart() {
                return this.part;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
            YouTube.this = r4;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Watermarks.class */
    public final class Watermarks {

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTube$Watermarks$Set.class */
        public class Set extends YouTubeRequest<Void> {
            private static final String REST_PATH = "watermarks/set";
            @AbstractC15247q
            private String channelId;
            @AbstractC15247q
            private String onBehalfOfContentOwner;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected Set(String str, InvideoBranding invideoBranding) {
                super(YouTube.this, "POST", REST_PATH, invideoBranding, Void.class);
                Watermarks.this = r8;
                this.channelId = (String) C15207aa.m9282a(str, "Required parameter channelId must be specified.");
            }

            /* JADX WARN: Illegal instructions before constructor call */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            protected Set(java.lang.String r9, com.google.api.services.youtube.model.InvideoBranding r10, com.google.api.client.http.AbstractC15322b r11) {
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
                    java.lang.Object r1 = com.google.api.client.p379a.C15207aa.m9282a(r1, r2)
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

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
            @AbstractC15247q
            private String channelId;
            @AbstractC15247q
            private String onBehalfOfContentOwner;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected Unset(String str) {
                super(YouTube.this, "POST", REST_PATH, null, Void.class);
                Watermarks.this = r8;
                this.channelId = (String) C15207aa.m9282a(str, "Required parameter channelId must be specified.");
            }

            public String getChannelId() {
                return this.channelId;
            }

            public String getOnBehalfOfContentOwner() {
                return this.onBehalfOfContentOwner;
            }

            @Override // com.google.api.services.youtube.YouTubeRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
            YouTube.this = r4;
        }
    }

    static {
        C15207aa.m9277b(C15273a.f55188a.intValue() == 1 && C15273a.f55189b.intValue() >= 15, "You are currently running with version %s of google-api-client. You need at least version 1.15 of google-api-client to run version 1.25.0 of the YouTube Data API library.", C15273a.f55191d);
    }

    public YouTube(AbstractC15346w abstractC15346w, JsonFactory jsonFactory, AbstractC15342s abstractC15342s) {
        this(new Builder(abstractC15346w, jsonFactory, abstractC15342s));
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

    @Override // com.google.api.client.googleapis.services.AbstractC15296a
    public void initialize(AbstractC15298b<?> abstractC15298b) throws IOException {
        super.initialize(abstractC15298b);
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
