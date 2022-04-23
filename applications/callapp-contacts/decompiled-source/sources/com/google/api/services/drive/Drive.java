package com.google.api.services.drive;

import com.google.api.client.a.aa;
import com.google.api.client.a.j;
import com.google.api.client.googleapis.a;
import com.google.api.client.googleapis.services.d;
import com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient;
import com.google.api.client.http.ad;
import com.google.api.client.http.b;
import com.google.api.client.http.i;
import com.google.api.client.http.q;
import com.google.api.client.http.s;
import com.google.api.client.http.t;
import com.google.api.client.http.w;
import com.google.api.client.json.JsonFactory;
import com.google.api.services.drive.model.ChangeList;
import com.google.api.services.drive.model.Channel;
import com.google.api.services.drive.model.Comment;
import com.google.api.services.drive.model.CommentList;
import com.google.api.services.drive.model.DriveList;
import com.google.api.services.drive.model.File;
import com.google.api.services.drive.model.FileList;
import com.google.api.services.drive.model.GeneratedIds;
import com.google.api.services.drive.model.Permission;
import com.google.api.services.drive.model.PermissionList;
import com.google.api.services.drive.model.Reply;
import com.google.api.services.drive.model.ReplyList;
import com.google.api.services.drive.model.Revision;
import com.google.api.services.drive.model.RevisionList;
import com.google.api.services.drive.model.StartPageToken;
import com.google.api.services.drive.model.TeamDrive;
import com.google.api.services.drive.model.TeamDriveList;
import com.mopub.common.Constants;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/Drive.class */
public class Drive extends AbstractGoogleJsonClient {
    public static final String DEFAULT_BASE_URL = "https://www.googleapis.com/drive/v3/";
    public static final String DEFAULT_BATCH_PATH = "batch/drive/v3";
    public static final String DEFAULT_ROOT_URL = "https://www.googleapis.com/";
    public static final String DEFAULT_SERVICE_PATH = "drive/v3/";

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/Drive$About.class */
    public final class About {

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/Drive$About$Get.class */
        public class Get extends DriveRequest<com.google.api.services.drive.model.About> {
            private static final String REST_PATH = "about";

            protected Get() {
                super(Drive.this, "GET", REST_PATH, null, com.google.api.services.drive.model.About.class);
            }

            @Override // com.google.api.client.googleapis.services.b
            public q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.b
            public t executeUsingHead() throws IOException {
                return super.executeUsingHead();
            }

            @Override // com.google.api.services.drive.DriveRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Get set(String str, Object obj) {
                return (Get) super.set(str, obj);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setAlt */
            public DriveRequest<com.google.api.services.drive.model.About> setAlt2(String str) {
                return (Get) super.setAlt(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setFields */
            public DriveRequest<com.google.api.services.drive.model.About> setFields2(String str) {
                return (Get) super.setFields(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setKey */
            public DriveRequest<com.google.api.services.drive.model.About> setKey2(String str) {
                return (Get) super.setKey(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setOauthToken */
            public DriveRequest<com.google.api.services.drive.model.About> setOauthToken2(String str) {
                return (Get) super.setOauthToken(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setPrettyPrint */
            public DriveRequest<com.google.api.services.drive.model.About> setPrettyPrint2(Boolean bool) {
                return (Get) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setQuotaUser */
            public DriveRequest<com.google.api.services.drive.model.About> setQuotaUser2(String str) {
                return (Get) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setUserIp */
            public DriveRequest<com.google.api.services.drive.model.About> setUserIp2(String str) {
                return (Get) super.setUserIp(str);
            }
        }

        public About() {
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/Drive$Builder.class */
    public static final class Builder extends AbstractGoogleJsonClient.Builder {
        public Builder(w wVar, JsonFactory jsonFactory, s sVar) {
            super(wVar, jsonFactory, "https://www.googleapis.com/", Drive.DEFAULT_SERVICE_PATH, sVar, false);
            setBatchPath(Drive.DEFAULT_BATCH_PATH);
        }

        @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient.Builder, com.google.api.client.googleapis.services.a.AbstractC0505a
        public final Drive build() {
            return new Drive(this);
        }

        @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient.Builder, com.google.api.client.googleapis.services.a.AbstractC0505a
        public final Builder setApplicationName(String str) {
            return (Builder) super.setApplicationName(str);
        }

        @Override // com.google.api.client.googleapis.services.a.AbstractC0505a
        public final Builder setBatchPath(String str) {
            return (Builder) super.setBatchPath(str);
        }

        public final Builder setDriveRequestInitializer(DriveRequestInitializer driveRequestInitializer) {
            return (Builder) super.setGoogleClientRequestInitializer((d) driveRequestInitializer);
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
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/Drive$Changes.class */
    public final class Changes {

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/Drive$Changes$GetStartPageToken.class */
        public class GetStartPageToken extends DriveRequest<StartPageToken> {
            private static final String REST_PATH = "changes/startPageToken";
            @com.google.api.client.a.q
            private String driveId;
            @com.google.api.client.a.q
            private Boolean supportsAllDrives;
            @com.google.api.client.a.q
            private Boolean supportsTeamDrives;
            @com.google.api.client.a.q
            private String teamDriveId;

            protected GetStartPageToken() {
                super(Drive.this, "GET", REST_PATH, null, StartPageToken.class);
            }

            @Override // com.google.api.client.googleapis.services.b
            public q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.b
            public t executeUsingHead() throws IOException {
                return super.executeUsingHead();
            }

            public String getDriveId() {
                return this.driveId;
            }

            public Boolean getSupportsAllDrives() {
                return this.supportsAllDrives;
            }

            public Boolean getSupportsTeamDrives() {
                return this.supportsTeamDrives;
            }

            public String getTeamDriveId() {
                return this.teamDriveId;
            }

            public boolean isSupportsAllDrives() {
                Boolean bool = this.supportsAllDrives;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.supportsAllDrives.booleanValue();
            }

            public boolean isSupportsTeamDrives() {
                Boolean bool = this.supportsTeamDrives;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.supportsTeamDrives.booleanValue();
            }

            @Override // com.google.api.services.drive.DriveRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public GetStartPageToken set(String str, Object obj) {
                return (GetStartPageToken) super.set(str, obj);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setAlt */
            public DriveRequest<StartPageToken> setAlt2(String str) {
                return (GetStartPageToken) super.setAlt(str);
            }

            public GetStartPageToken setDriveId(String str) {
                this.driveId = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setFields */
            public DriveRequest<StartPageToken> setFields2(String str) {
                return (GetStartPageToken) super.setFields(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setKey */
            public DriveRequest<StartPageToken> setKey2(String str) {
                return (GetStartPageToken) super.setKey(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setOauthToken */
            public DriveRequest<StartPageToken> setOauthToken2(String str) {
                return (GetStartPageToken) super.setOauthToken(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setPrettyPrint */
            public DriveRequest<StartPageToken> setPrettyPrint2(Boolean bool) {
                return (GetStartPageToken) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setQuotaUser */
            public DriveRequest<StartPageToken> setQuotaUser2(String str) {
                return (GetStartPageToken) super.setQuotaUser(str);
            }

            public GetStartPageToken setSupportsAllDrives(Boolean bool) {
                this.supportsAllDrives = bool;
                return this;
            }

            public GetStartPageToken setSupportsTeamDrives(Boolean bool) {
                this.supportsTeamDrives = bool;
                return this;
            }

            public GetStartPageToken setTeamDriveId(String str) {
                this.teamDriveId = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setUserIp */
            public DriveRequest<StartPageToken> setUserIp2(String str) {
                return (GetStartPageToken) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/Drive$Changes$List.class */
        public class List extends DriveRequest<ChangeList> {
            private static final String REST_PATH = "changes";
            @com.google.api.client.a.q
            private String driveId;
            @com.google.api.client.a.q
            private Boolean includeCorpusRemovals;
            @com.google.api.client.a.q
            private Boolean includeItemsFromAllDrives;
            @com.google.api.client.a.q
            private Boolean includeRemoved;
            @com.google.api.client.a.q
            private Boolean includeTeamDriveItems;
            @com.google.api.client.a.q
            private Integer pageSize;
            @com.google.api.client.a.q
            private String pageToken;
            @com.google.api.client.a.q
            private Boolean restrictToMyDrive;
            @com.google.api.client.a.q
            private String spaces;
            @com.google.api.client.a.q
            private Boolean supportsAllDrives;
            @com.google.api.client.a.q
            private Boolean supportsTeamDrives;
            @com.google.api.client.a.q
            private String teamDriveId;

            protected List(String str) {
                super(Drive.this, "GET", REST_PATH, null, ChangeList.class);
                this.pageToken = (String) aa.a(str, "Required parameter pageToken must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.b
            public q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.b
            public t executeUsingHead() throws IOException {
                return super.executeUsingHead();
            }

            public String getDriveId() {
                return this.driveId;
            }

            public Boolean getIncludeCorpusRemovals() {
                return this.includeCorpusRemovals;
            }

            public Boolean getIncludeItemsFromAllDrives() {
                return this.includeItemsFromAllDrives;
            }

            public Boolean getIncludeRemoved() {
                return this.includeRemoved;
            }

            public Boolean getIncludeTeamDriveItems() {
                return this.includeTeamDriveItems;
            }

            public Integer getPageSize() {
                return this.pageSize;
            }

            public String getPageToken() {
                return this.pageToken;
            }

            public Boolean getRestrictToMyDrive() {
                return this.restrictToMyDrive;
            }

            public String getSpaces() {
                return this.spaces;
            }

            public Boolean getSupportsAllDrives() {
                return this.supportsAllDrives;
            }

            public Boolean getSupportsTeamDrives() {
                return this.supportsTeamDrives;
            }

            public String getTeamDriveId() {
                return this.teamDriveId;
            }

            public boolean isIncludeCorpusRemovals() {
                Boolean bool = this.includeCorpusRemovals;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.includeCorpusRemovals.booleanValue();
            }

            public boolean isIncludeItemsFromAllDrives() {
                Boolean bool = this.includeItemsFromAllDrives;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.includeItemsFromAllDrives.booleanValue();
            }

            public boolean isIncludeRemoved() {
                Boolean bool = this.includeRemoved;
                if (bool == null || bool == j.f31626a) {
                    return true;
                }
                return this.includeRemoved.booleanValue();
            }

            public boolean isIncludeTeamDriveItems() {
                Boolean bool = this.includeTeamDriveItems;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.includeTeamDriveItems.booleanValue();
            }

            public boolean isRestrictToMyDrive() {
                Boolean bool = this.restrictToMyDrive;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.restrictToMyDrive.booleanValue();
            }

            public boolean isSupportsAllDrives() {
                Boolean bool = this.supportsAllDrives;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.supportsAllDrives.booleanValue();
            }

            public boolean isSupportsTeamDrives() {
                Boolean bool = this.supportsTeamDrives;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.supportsTeamDrives.booleanValue();
            }

            @Override // com.google.api.services.drive.DriveRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public List set(String str, Object obj) {
                return (List) super.set(str, obj);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setAlt */
            public DriveRequest<ChangeList> setAlt2(String str) {
                return (List) super.setAlt(str);
            }

            public List setDriveId(String str) {
                this.driveId = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setFields */
            public DriveRequest<ChangeList> setFields2(String str) {
                return (List) super.setFields(str);
            }

            public List setIncludeCorpusRemovals(Boolean bool) {
                this.includeCorpusRemovals = bool;
                return this;
            }

            public List setIncludeItemsFromAllDrives(Boolean bool) {
                this.includeItemsFromAllDrives = bool;
                return this;
            }

            public List setIncludeRemoved(Boolean bool) {
                this.includeRemoved = bool;
                return this;
            }

            public List setIncludeTeamDriveItems(Boolean bool) {
                this.includeTeamDriveItems = bool;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setKey */
            public DriveRequest<ChangeList> setKey2(String str) {
                return (List) super.setKey(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setOauthToken */
            public DriveRequest<ChangeList> setOauthToken2(String str) {
                return (List) super.setOauthToken(str);
            }

            public List setPageSize(Integer num) {
                this.pageSize = num;
                return this;
            }

            public List setPageToken(String str) {
                this.pageToken = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setPrettyPrint */
            public DriveRequest<ChangeList> setPrettyPrint2(Boolean bool) {
                return (List) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setQuotaUser */
            public DriveRequest<ChangeList> setQuotaUser2(String str) {
                return (List) super.setQuotaUser(str);
            }

            public List setRestrictToMyDrive(Boolean bool) {
                this.restrictToMyDrive = bool;
                return this;
            }

            public List setSpaces(String str) {
                this.spaces = str;
                return this;
            }

            public List setSupportsAllDrives(Boolean bool) {
                this.supportsAllDrives = bool;
                return this;
            }

            public List setSupportsTeamDrives(Boolean bool) {
                this.supportsTeamDrives = bool;
                return this;
            }

            public List setTeamDriveId(String str) {
                this.teamDriveId = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setUserIp */
            public DriveRequest<ChangeList> setUserIp2(String str) {
                return (List) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/Drive$Changes$Watch.class */
        public class Watch extends DriveRequest<Channel> {
            private static final String REST_PATH = "changes/watch";
            @com.google.api.client.a.q
            private String driveId;
            @com.google.api.client.a.q
            private Boolean includeCorpusRemovals;
            @com.google.api.client.a.q
            private Boolean includeItemsFromAllDrives;
            @com.google.api.client.a.q
            private Boolean includeRemoved;
            @com.google.api.client.a.q
            private Boolean includeTeamDriveItems;
            @com.google.api.client.a.q
            private Integer pageSize;
            @com.google.api.client.a.q
            private String pageToken;
            @com.google.api.client.a.q
            private Boolean restrictToMyDrive;
            @com.google.api.client.a.q
            private String spaces;
            @com.google.api.client.a.q
            private Boolean supportsAllDrives;
            @com.google.api.client.a.q
            private Boolean supportsTeamDrives;
            @com.google.api.client.a.q
            private String teamDriveId;

            protected Watch(String str, Channel channel) {
                super(Drive.this, "POST", REST_PATH, channel, Channel.class);
                this.pageToken = (String) aa.a(str, "Required parameter pageToken must be specified.");
            }

            public String getDriveId() {
                return this.driveId;
            }

            public Boolean getIncludeCorpusRemovals() {
                return this.includeCorpusRemovals;
            }

            public Boolean getIncludeItemsFromAllDrives() {
                return this.includeItemsFromAllDrives;
            }

            public Boolean getIncludeRemoved() {
                return this.includeRemoved;
            }

            public Boolean getIncludeTeamDriveItems() {
                return this.includeTeamDriveItems;
            }

            public Integer getPageSize() {
                return this.pageSize;
            }

            public String getPageToken() {
                return this.pageToken;
            }

            public Boolean getRestrictToMyDrive() {
                return this.restrictToMyDrive;
            }

            public String getSpaces() {
                return this.spaces;
            }

            public Boolean getSupportsAllDrives() {
                return this.supportsAllDrives;
            }

            public Boolean getSupportsTeamDrives() {
                return this.supportsTeamDrives;
            }

            public String getTeamDriveId() {
                return this.teamDriveId;
            }

            public boolean isIncludeCorpusRemovals() {
                Boolean bool = this.includeCorpusRemovals;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.includeCorpusRemovals.booleanValue();
            }

            public boolean isIncludeItemsFromAllDrives() {
                Boolean bool = this.includeItemsFromAllDrives;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.includeItemsFromAllDrives.booleanValue();
            }

            public boolean isIncludeRemoved() {
                Boolean bool = this.includeRemoved;
                if (bool == null || bool == j.f31626a) {
                    return true;
                }
                return this.includeRemoved.booleanValue();
            }

            public boolean isIncludeTeamDriveItems() {
                Boolean bool = this.includeTeamDriveItems;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.includeTeamDriveItems.booleanValue();
            }

            public boolean isRestrictToMyDrive() {
                Boolean bool = this.restrictToMyDrive;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.restrictToMyDrive.booleanValue();
            }

            public boolean isSupportsAllDrives() {
                Boolean bool = this.supportsAllDrives;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.supportsAllDrives.booleanValue();
            }

            public boolean isSupportsTeamDrives() {
                Boolean bool = this.supportsTeamDrives;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.supportsTeamDrives.booleanValue();
            }

            @Override // com.google.api.services.drive.DriveRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Watch set(String str, Object obj) {
                return (Watch) super.set(str, obj);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setAlt */
            public DriveRequest<Channel> setAlt2(String str) {
                return (Watch) super.setAlt(str);
            }

            public Watch setDriveId(String str) {
                this.driveId = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setFields */
            public DriveRequest<Channel> setFields2(String str) {
                return (Watch) super.setFields(str);
            }

            public Watch setIncludeCorpusRemovals(Boolean bool) {
                this.includeCorpusRemovals = bool;
                return this;
            }

            public Watch setIncludeItemsFromAllDrives(Boolean bool) {
                this.includeItemsFromAllDrives = bool;
                return this;
            }

            public Watch setIncludeRemoved(Boolean bool) {
                this.includeRemoved = bool;
                return this;
            }

            public Watch setIncludeTeamDriveItems(Boolean bool) {
                this.includeTeamDriveItems = bool;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setKey */
            public DriveRequest<Channel> setKey2(String str) {
                return (Watch) super.setKey(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setOauthToken */
            public DriveRequest<Channel> setOauthToken2(String str) {
                return (Watch) super.setOauthToken(str);
            }

            public Watch setPageSize(Integer num) {
                this.pageSize = num;
                return this;
            }

            public Watch setPageToken(String str) {
                this.pageToken = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setPrettyPrint */
            public DriveRequest<Channel> setPrettyPrint2(Boolean bool) {
                return (Watch) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setQuotaUser */
            public DriveRequest<Channel> setQuotaUser2(String str) {
                return (Watch) super.setQuotaUser(str);
            }

            public Watch setRestrictToMyDrive(Boolean bool) {
                this.restrictToMyDrive = bool;
                return this;
            }

            public Watch setSpaces(String str) {
                this.spaces = str;
                return this;
            }

            public Watch setSupportsAllDrives(Boolean bool) {
                this.supportsAllDrives = bool;
                return this;
            }

            public Watch setSupportsTeamDrives(Boolean bool) {
                this.supportsTeamDrives = bool;
                return this;
            }

            public Watch setTeamDriveId(String str) {
                this.teamDriveId = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setUserIp */
            public DriveRequest<Channel> setUserIp2(String str) {
                return (Watch) super.setUserIp(str);
            }
        }

        public Changes() {
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/Drive$Channels.class */
    public final class Channels {

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/Drive$Channels$Stop.class */
        public class Stop extends DriveRequest<Void> {
            private static final String REST_PATH = "channels/stop";

            protected Stop(Channel channel) {
                super(Drive.this, "POST", REST_PATH, channel, Void.class);
            }

            @Override // com.google.api.services.drive.DriveRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Stop set(String str, Object obj) {
                return (Stop) super.set(str, obj);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setAlt */
            public DriveRequest<Void> setAlt2(String str) {
                return (Stop) super.setAlt(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setFields */
            public DriveRequest<Void> setFields2(String str) {
                return (Stop) super.setFields(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setKey */
            public DriveRequest<Void> setKey2(String str) {
                return (Stop) super.setKey(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setOauthToken */
            public DriveRequest<Void> setOauthToken2(String str) {
                return (Stop) super.setOauthToken(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setPrettyPrint */
            public DriveRequest<Void> setPrettyPrint2(Boolean bool) {
                return (Stop) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setQuotaUser */
            public DriveRequest<Void> setQuotaUser2(String str) {
                return (Stop) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setUserIp */
            public DriveRequest<Void> setUserIp2(String str) {
                return (Stop) super.setUserIp(str);
            }
        }

        public Channels() {
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/Drive$Comments.class */
    public final class Comments {

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/Drive$Comments$Create.class */
        public class Create extends DriveRequest<Comment> {
            private static final String REST_PATH = "files/{fileId}/comments";
            @com.google.api.client.a.q
            private String fileId;

            protected Create(String str, Comment comment) {
                super(Drive.this, "POST", REST_PATH, comment, Comment.class);
                this.fileId = (String) aa.a(str, "Required parameter fileId must be specified.");
                checkRequiredParameter(comment, Constants.VAST_TRACKER_CONTENT);
                checkRequiredParameter(comment.getContent(), "Comment.getContent()");
            }

            public String getFileId() {
                return this.fileId;
            }

            @Override // com.google.api.services.drive.DriveRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Create set(String str, Object obj) {
                return (Create) super.set(str, obj);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setAlt */
            public DriveRequest<Comment> setAlt2(String str) {
                return (Create) super.setAlt(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setFields */
            public DriveRequest<Comment> setFields2(String str) {
                return (Create) super.setFields(str);
            }

            public Create setFileId(String str) {
                this.fileId = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setKey */
            public DriveRequest<Comment> setKey2(String str) {
                return (Create) super.setKey(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setOauthToken */
            public DriveRequest<Comment> setOauthToken2(String str) {
                return (Create) super.setOauthToken(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setPrettyPrint */
            public DriveRequest<Comment> setPrettyPrint2(Boolean bool) {
                return (Create) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setQuotaUser */
            public DriveRequest<Comment> setQuotaUser2(String str) {
                return (Create) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setUserIp */
            public DriveRequest<Comment> setUserIp2(String str) {
                return (Create) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/Drive$Comments$Delete.class */
        public class Delete extends DriveRequest<Void> {
            private static final String REST_PATH = "files/{fileId}/comments/{commentId}";
            @com.google.api.client.a.q
            private String commentId;
            @com.google.api.client.a.q
            private String fileId;

            protected Delete(String str, String str2) {
                super(Drive.this, "DELETE", REST_PATH, null, Void.class);
                this.fileId = (String) aa.a(str, "Required parameter fileId must be specified.");
                this.commentId = (String) aa.a(str2, "Required parameter commentId must be specified.");
            }

            public String getCommentId() {
                return this.commentId;
            }

            public String getFileId() {
                return this.fileId;
            }

            @Override // com.google.api.services.drive.DriveRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Delete set(String str, Object obj) {
                return (Delete) super.set(str, obj);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setAlt */
            public DriveRequest<Void> setAlt2(String str) {
                return (Delete) super.setAlt(str);
            }

            public Delete setCommentId(String str) {
                this.commentId = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setFields */
            public DriveRequest<Void> setFields2(String str) {
                return (Delete) super.setFields(str);
            }

            public Delete setFileId(String str) {
                this.fileId = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setKey */
            public DriveRequest<Void> setKey2(String str) {
                return (Delete) super.setKey(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setOauthToken */
            public DriveRequest<Void> setOauthToken2(String str) {
                return (Delete) super.setOauthToken(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setPrettyPrint */
            public DriveRequest<Void> setPrettyPrint2(Boolean bool) {
                return (Delete) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setQuotaUser */
            public DriveRequest<Void> setQuotaUser2(String str) {
                return (Delete) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setUserIp */
            public DriveRequest<Void> setUserIp2(String str) {
                return (Delete) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/Drive$Comments$Get.class */
        public class Get extends DriveRequest<Comment> {
            private static final String REST_PATH = "files/{fileId}/comments/{commentId}";
            @com.google.api.client.a.q
            private String commentId;
            @com.google.api.client.a.q
            private String fileId;
            @com.google.api.client.a.q
            private Boolean includeDeleted;

            protected Get(String str, String str2) {
                super(Drive.this, "GET", REST_PATH, null, Comment.class);
                this.fileId = (String) aa.a(str, "Required parameter fileId must be specified.");
                this.commentId = (String) aa.a(str2, "Required parameter commentId must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.b
            public q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.b
            public t executeUsingHead() throws IOException {
                return super.executeUsingHead();
            }

            public String getCommentId() {
                return this.commentId;
            }

            public String getFileId() {
                return this.fileId;
            }

            public Boolean getIncludeDeleted() {
                return this.includeDeleted;
            }

            public boolean isIncludeDeleted() {
                Boolean bool = this.includeDeleted;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.includeDeleted.booleanValue();
            }

            @Override // com.google.api.services.drive.DriveRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Get set(String str, Object obj) {
                return (Get) super.set(str, obj);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setAlt */
            public DriveRequest<Comment> setAlt2(String str) {
                return (Get) super.setAlt(str);
            }

            public Get setCommentId(String str) {
                this.commentId = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setFields */
            public DriveRequest<Comment> setFields2(String str) {
                return (Get) super.setFields(str);
            }

            public Get setFileId(String str) {
                this.fileId = str;
                return this;
            }

            public Get setIncludeDeleted(Boolean bool) {
                this.includeDeleted = bool;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setKey */
            public DriveRequest<Comment> setKey2(String str) {
                return (Get) super.setKey(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setOauthToken */
            public DriveRequest<Comment> setOauthToken2(String str) {
                return (Get) super.setOauthToken(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setPrettyPrint */
            public DriveRequest<Comment> setPrettyPrint2(Boolean bool) {
                return (Get) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setQuotaUser */
            public DriveRequest<Comment> setQuotaUser2(String str) {
                return (Get) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setUserIp */
            public DriveRequest<Comment> setUserIp2(String str) {
                return (Get) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/Drive$Comments$List.class */
        public class List extends DriveRequest<CommentList> {
            private static final String REST_PATH = "files/{fileId}/comments";
            @com.google.api.client.a.q
            private String fileId;
            @com.google.api.client.a.q
            private Boolean includeDeleted;
            @com.google.api.client.a.q
            private Integer pageSize;
            @com.google.api.client.a.q
            private String pageToken;
            @com.google.api.client.a.q
            private String startModifiedTime;

            protected List(String str) {
                super(Drive.this, "GET", REST_PATH, null, CommentList.class);
                this.fileId = (String) aa.a(str, "Required parameter fileId must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.b
            public q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.b
            public t executeUsingHead() throws IOException {
                return super.executeUsingHead();
            }

            public String getFileId() {
                return this.fileId;
            }

            public Boolean getIncludeDeleted() {
                return this.includeDeleted;
            }

            public Integer getPageSize() {
                return this.pageSize;
            }

            public String getPageToken() {
                return this.pageToken;
            }

            public String getStartModifiedTime() {
                return this.startModifiedTime;
            }

            public boolean isIncludeDeleted() {
                Boolean bool = this.includeDeleted;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.includeDeleted.booleanValue();
            }

            @Override // com.google.api.services.drive.DriveRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public List set(String str, Object obj) {
                return (List) super.set(str, obj);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setAlt */
            public DriveRequest<CommentList> setAlt2(String str) {
                return (List) super.setAlt(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setFields */
            public DriveRequest<CommentList> setFields2(String str) {
                return (List) super.setFields(str);
            }

            public List setFileId(String str) {
                this.fileId = str;
                return this;
            }

            public List setIncludeDeleted(Boolean bool) {
                this.includeDeleted = bool;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setKey */
            public DriveRequest<CommentList> setKey2(String str) {
                return (List) super.setKey(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setOauthToken */
            public DriveRequest<CommentList> setOauthToken2(String str) {
                return (List) super.setOauthToken(str);
            }

            public List setPageSize(Integer num) {
                this.pageSize = num;
                return this;
            }

            public List setPageToken(String str) {
                this.pageToken = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setPrettyPrint */
            public DriveRequest<CommentList> setPrettyPrint2(Boolean bool) {
                return (List) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setQuotaUser */
            public DriveRequest<CommentList> setQuotaUser2(String str) {
                return (List) super.setQuotaUser(str);
            }

            public List setStartModifiedTime(String str) {
                this.startModifiedTime = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setUserIp */
            public DriveRequest<CommentList> setUserIp2(String str) {
                return (List) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/Drive$Comments$Update.class */
        public class Update extends DriveRequest<Comment> {
            private static final String REST_PATH = "files/{fileId}/comments/{commentId}";
            @com.google.api.client.a.q
            private String commentId;
            @com.google.api.client.a.q
            private String fileId;

            protected Update(String str, String str2, Comment comment) {
                super(Drive.this, "PATCH", REST_PATH, comment, Comment.class);
                this.fileId = (String) aa.a(str, "Required parameter fileId must be specified.");
                this.commentId = (String) aa.a(str2, "Required parameter commentId must be specified.");
                checkRequiredParameter(comment, Constants.VAST_TRACKER_CONTENT);
                checkRequiredParameter(comment.getContent(), "Comment.getContent()");
            }

            public String getCommentId() {
                return this.commentId;
            }

            public String getFileId() {
                return this.fileId;
            }

            @Override // com.google.api.services.drive.DriveRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Update set(String str, Object obj) {
                return (Update) super.set(str, obj);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setAlt */
            public DriveRequest<Comment> setAlt2(String str) {
                return (Update) super.setAlt(str);
            }

            public Update setCommentId(String str) {
                this.commentId = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setFields */
            public DriveRequest<Comment> setFields2(String str) {
                return (Update) super.setFields(str);
            }

            public Update setFileId(String str) {
                this.fileId = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setKey */
            public DriveRequest<Comment> setKey2(String str) {
                return (Update) super.setKey(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setOauthToken */
            public DriveRequest<Comment> setOauthToken2(String str) {
                return (Update) super.setOauthToken(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setPrettyPrint */
            public DriveRequest<Comment> setPrettyPrint2(Boolean bool) {
                return (Update) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setQuotaUser */
            public DriveRequest<Comment> setQuotaUser2(String str) {
                return (Update) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setUserIp */
            public DriveRequest<Comment> setUserIp2(String str) {
                return (Update) super.setUserIp(str);
            }
        }

        public Comments() {
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/Drive$Drives.class */
    public final class Drives {

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/Drive$Drives$Create.class */
        public class Create extends DriveRequest<com.google.api.services.drive.model.Drive> {
            private static final String REST_PATH = "drives";
            @com.google.api.client.a.q
            private String requestId;

            protected Create(String str, com.google.api.services.drive.model.Drive drive) {
                super(Drive.this, "POST", REST_PATH, drive, com.google.api.services.drive.model.Drive.class);
                this.requestId = (String) aa.a(str, "Required parameter requestId must be specified.");
            }

            public String getRequestId() {
                return this.requestId;
            }

            @Override // com.google.api.services.drive.DriveRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Create set(String str, Object obj) {
                return (Create) super.set(str, obj);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setAlt */
            public DriveRequest<com.google.api.services.drive.model.Drive> setAlt2(String str) {
                return (Create) super.setAlt(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setFields */
            public DriveRequest<com.google.api.services.drive.model.Drive> setFields2(String str) {
                return (Create) super.setFields(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setKey */
            public DriveRequest<com.google.api.services.drive.model.Drive> setKey2(String str) {
                return (Create) super.setKey(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setOauthToken */
            public DriveRequest<com.google.api.services.drive.model.Drive> setOauthToken2(String str) {
                return (Create) super.setOauthToken(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setPrettyPrint */
            public DriveRequest<com.google.api.services.drive.model.Drive> setPrettyPrint2(Boolean bool) {
                return (Create) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setQuotaUser */
            public DriveRequest<com.google.api.services.drive.model.Drive> setQuotaUser2(String str) {
                return (Create) super.setQuotaUser(str);
            }

            public Create setRequestId(String str) {
                this.requestId = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setUserIp */
            public DriveRequest<com.google.api.services.drive.model.Drive> setUserIp2(String str) {
                return (Create) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/Drive$Drives$Delete.class */
        public class Delete extends DriveRequest<Void> {
            private static final String REST_PATH = "drives/{driveId}";
            @com.google.api.client.a.q
            private String driveId;

            protected Delete(String str) {
                super(Drive.this, "DELETE", REST_PATH, null, Void.class);
                this.driveId = (String) aa.a(str, "Required parameter driveId must be specified.");
            }

            public String getDriveId() {
                return this.driveId;
            }

            @Override // com.google.api.services.drive.DriveRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Delete set(String str, Object obj) {
                return (Delete) super.set(str, obj);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setAlt */
            public DriveRequest<Void> setAlt2(String str) {
                return (Delete) super.setAlt(str);
            }

            public Delete setDriveId(String str) {
                this.driveId = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setFields */
            public DriveRequest<Void> setFields2(String str) {
                return (Delete) super.setFields(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setKey */
            public DriveRequest<Void> setKey2(String str) {
                return (Delete) super.setKey(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setOauthToken */
            public DriveRequest<Void> setOauthToken2(String str) {
                return (Delete) super.setOauthToken(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setPrettyPrint */
            public DriveRequest<Void> setPrettyPrint2(Boolean bool) {
                return (Delete) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setQuotaUser */
            public DriveRequest<Void> setQuotaUser2(String str) {
                return (Delete) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setUserIp */
            public DriveRequest<Void> setUserIp2(String str) {
                return (Delete) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/Drive$Drives$Get.class */
        public class Get extends DriveRequest<com.google.api.services.drive.model.Drive> {
            private static final String REST_PATH = "drives/{driveId}";
            @com.google.api.client.a.q
            private String driveId;
            @com.google.api.client.a.q
            private Boolean useDomainAdminAccess;

            protected Get(String str) {
                super(Drive.this, "GET", REST_PATH, null, com.google.api.services.drive.model.Drive.class);
                this.driveId = (String) aa.a(str, "Required parameter driveId must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.b
            public q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.b
            public t executeUsingHead() throws IOException {
                return super.executeUsingHead();
            }

            public String getDriveId() {
                return this.driveId;
            }

            public Boolean getUseDomainAdminAccess() {
                return this.useDomainAdminAccess;
            }

            public boolean isUseDomainAdminAccess() {
                Boolean bool = this.useDomainAdminAccess;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.useDomainAdminAccess.booleanValue();
            }

            @Override // com.google.api.services.drive.DriveRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Get set(String str, Object obj) {
                return (Get) super.set(str, obj);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setAlt */
            public DriveRequest<com.google.api.services.drive.model.Drive> setAlt2(String str) {
                return (Get) super.setAlt(str);
            }

            public Get setDriveId(String str) {
                this.driveId = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setFields */
            public DriveRequest<com.google.api.services.drive.model.Drive> setFields2(String str) {
                return (Get) super.setFields(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setKey */
            public DriveRequest<com.google.api.services.drive.model.Drive> setKey2(String str) {
                return (Get) super.setKey(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setOauthToken */
            public DriveRequest<com.google.api.services.drive.model.Drive> setOauthToken2(String str) {
                return (Get) super.setOauthToken(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setPrettyPrint */
            public DriveRequest<com.google.api.services.drive.model.Drive> setPrettyPrint2(Boolean bool) {
                return (Get) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setQuotaUser */
            public DriveRequest<com.google.api.services.drive.model.Drive> setQuotaUser2(String str) {
                return (Get) super.setQuotaUser(str);
            }

            public Get setUseDomainAdminAccess(Boolean bool) {
                this.useDomainAdminAccess = bool;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setUserIp */
            public DriveRequest<com.google.api.services.drive.model.Drive> setUserIp2(String str) {
                return (Get) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/Drive$Drives$Hide.class */
        public class Hide extends DriveRequest<com.google.api.services.drive.model.Drive> {
            private static final String REST_PATH = "drives/{driveId}/hide";
            @com.google.api.client.a.q
            private String driveId;

            protected Hide(String str) {
                super(Drive.this, "POST", REST_PATH, null, com.google.api.services.drive.model.Drive.class);
                this.driveId = (String) aa.a(str, "Required parameter driveId must be specified.");
            }

            public String getDriveId() {
                return this.driveId;
            }

            @Override // com.google.api.services.drive.DriveRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Hide set(String str, Object obj) {
                return (Hide) super.set(str, obj);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setAlt */
            public DriveRequest<com.google.api.services.drive.model.Drive> setAlt2(String str) {
                return (Hide) super.setAlt(str);
            }

            public Hide setDriveId(String str) {
                this.driveId = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setFields */
            public DriveRequest<com.google.api.services.drive.model.Drive> setFields2(String str) {
                return (Hide) super.setFields(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setKey */
            public DriveRequest<com.google.api.services.drive.model.Drive> setKey2(String str) {
                return (Hide) super.setKey(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setOauthToken */
            public DriveRequest<com.google.api.services.drive.model.Drive> setOauthToken2(String str) {
                return (Hide) super.setOauthToken(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setPrettyPrint */
            public DriveRequest<com.google.api.services.drive.model.Drive> setPrettyPrint2(Boolean bool) {
                return (Hide) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setQuotaUser */
            public DriveRequest<com.google.api.services.drive.model.Drive> setQuotaUser2(String str) {
                return (Hide) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setUserIp */
            public DriveRequest<com.google.api.services.drive.model.Drive> setUserIp2(String str) {
                return (Hide) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/Drive$Drives$List.class */
        public class List extends DriveRequest<DriveList> {
            private static final String REST_PATH = "drives";
            @com.google.api.client.a.q
            private Integer pageSize;
            @com.google.api.client.a.q
            private String pageToken;
            @com.google.api.client.a.q
            private String q;
            @com.google.api.client.a.q
            private Boolean useDomainAdminAccess;

            protected List() {
                super(Drive.this, "GET", REST_PATH, null, DriveList.class);
            }

            @Override // com.google.api.client.googleapis.services.b
            public q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.b
            public t executeUsingHead() throws IOException {
                return super.executeUsingHead();
            }

            public Integer getPageSize() {
                return this.pageSize;
            }

            public String getPageToken() {
                return this.pageToken;
            }

            public String getQ() {
                return this.q;
            }

            public Boolean getUseDomainAdminAccess() {
                return this.useDomainAdminAccess;
            }

            public boolean isUseDomainAdminAccess() {
                Boolean bool = this.useDomainAdminAccess;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.useDomainAdminAccess.booleanValue();
            }

            @Override // com.google.api.services.drive.DriveRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public List set(String str, Object obj) {
                return (List) super.set(str, obj);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setAlt */
            public DriveRequest<DriveList> setAlt2(String str) {
                return (List) super.setAlt(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setFields */
            public DriveRequest<DriveList> setFields2(String str) {
                return (List) super.setFields(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setKey */
            public DriveRequest<DriveList> setKey2(String str) {
                return (List) super.setKey(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setOauthToken */
            public DriveRequest<DriveList> setOauthToken2(String str) {
                return (List) super.setOauthToken(str);
            }

            public List setPageSize(Integer num) {
                this.pageSize = num;
                return this;
            }

            public List setPageToken(String str) {
                this.pageToken = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setPrettyPrint */
            public DriveRequest<DriveList> setPrettyPrint2(Boolean bool) {
                return (List) super.setPrettyPrint(bool);
            }

            public List setQ(String str) {
                this.q = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setQuotaUser */
            public DriveRequest<DriveList> setQuotaUser2(String str) {
                return (List) super.setQuotaUser(str);
            }

            public List setUseDomainAdminAccess(Boolean bool) {
                this.useDomainAdminAccess = bool;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setUserIp */
            public DriveRequest<DriveList> setUserIp2(String str) {
                return (List) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/Drive$Drives$Unhide.class */
        public class Unhide extends DriveRequest<com.google.api.services.drive.model.Drive> {
            private static final String REST_PATH = "drives/{driveId}/unhide";
            @com.google.api.client.a.q
            private String driveId;

            protected Unhide(String str) {
                super(Drive.this, "POST", REST_PATH, null, com.google.api.services.drive.model.Drive.class);
                this.driveId = (String) aa.a(str, "Required parameter driveId must be specified.");
            }

            public String getDriveId() {
                return this.driveId;
            }

            @Override // com.google.api.services.drive.DriveRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Unhide set(String str, Object obj) {
                return (Unhide) super.set(str, obj);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setAlt */
            public DriveRequest<com.google.api.services.drive.model.Drive> setAlt2(String str) {
                return (Unhide) super.setAlt(str);
            }

            public Unhide setDriveId(String str) {
                this.driveId = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setFields */
            public DriveRequest<com.google.api.services.drive.model.Drive> setFields2(String str) {
                return (Unhide) super.setFields(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setKey */
            public DriveRequest<com.google.api.services.drive.model.Drive> setKey2(String str) {
                return (Unhide) super.setKey(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setOauthToken */
            public DriveRequest<com.google.api.services.drive.model.Drive> setOauthToken2(String str) {
                return (Unhide) super.setOauthToken(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setPrettyPrint */
            public DriveRequest<com.google.api.services.drive.model.Drive> setPrettyPrint2(Boolean bool) {
                return (Unhide) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setQuotaUser */
            public DriveRequest<com.google.api.services.drive.model.Drive> setQuotaUser2(String str) {
                return (Unhide) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setUserIp */
            public DriveRequest<com.google.api.services.drive.model.Drive> setUserIp2(String str) {
                return (Unhide) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/Drive$Drives$Update.class */
        public class Update extends DriveRequest<com.google.api.services.drive.model.Drive> {
            private static final String REST_PATH = "drives/{driveId}";
            @com.google.api.client.a.q
            private String driveId;
            @com.google.api.client.a.q
            private Boolean useDomainAdminAccess;

            protected Update(String str, com.google.api.services.drive.model.Drive drive) {
                super(Drive.this, "PATCH", REST_PATH, drive, com.google.api.services.drive.model.Drive.class);
                this.driveId = (String) aa.a(str, "Required parameter driveId must be specified.");
            }

            public String getDriveId() {
                return this.driveId;
            }

            public Boolean getUseDomainAdminAccess() {
                return this.useDomainAdminAccess;
            }

            public boolean isUseDomainAdminAccess() {
                Boolean bool = this.useDomainAdminAccess;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.useDomainAdminAccess.booleanValue();
            }

            @Override // com.google.api.services.drive.DriveRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Update set(String str, Object obj) {
                return (Update) super.set(str, obj);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setAlt */
            public DriveRequest<com.google.api.services.drive.model.Drive> setAlt2(String str) {
                return (Update) super.setAlt(str);
            }

            public Update setDriveId(String str) {
                this.driveId = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setFields */
            public DriveRequest<com.google.api.services.drive.model.Drive> setFields2(String str) {
                return (Update) super.setFields(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setKey */
            public DriveRequest<com.google.api.services.drive.model.Drive> setKey2(String str) {
                return (Update) super.setKey(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setOauthToken */
            public DriveRequest<com.google.api.services.drive.model.Drive> setOauthToken2(String str) {
                return (Update) super.setOauthToken(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setPrettyPrint */
            public DriveRequest<com.google.api.services.drive.model.Drive> setPrettyPrint2(Boolean bool) {
                return (Update) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setQuotaUser */
            public DriveRequest<com.google.api.services.drive.model.Drive> setQuotaUser2(String str) {
                return (Update) super.setQuotaUser(str);
            }

            public Update setUseDomainAdminAccess(Boolean bool) {
                this.useDomainAdminAccess = bool;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setUserIp */
            public DriveRequest<com.google.api.services.drive.model.Drive> setUserIp2(String str) {
                return (Update) super.setUserIp(str);
            }
        }

        public Drives() {
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/Drive$Files.class */
    public final class Files {

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/Drive$Files$Copy.class */
        public class Copy extends DriveRequest<File> {
            private static final String REST_PATH = "files/{fileId}/copy";
            @com.google.api.client.a.q
            private Boolean enforceSingleParent;
            @com.google.api.client.a.q
            private String fileId;
            @com.google.api.client.a.q
            private Boolean ignoreDefaultVisibility;
            @com.google.api.client.a.q
            private Boolean keepRevisionForever;
            @com.google.api.client.a.q
            private String ocrLanguage;
            @com.google.api.client.a.q
            private Boolean supportsAllDrives;
            @com.google.api.client.a.q
            private Boolean supportsTeamDrives;

            protected Copy(String str, File file) {
                super(Drive.this, "POST", REST_PATH, file, File.class);
                this.fileId = (String) aa.a(str, "Required parameter fileId must be specified.");
            }

            public Boolean getEnforceSingleParent() {
                return this.enforceSingleParent;
            }

            public String getFileId() {
                return this.fileId;
            }

            public Boolean getIgnoreDefaultVisibility() {
                return this.ignoreDefaultVisibility;
            }

            public Boolean getKeepRevisionForever() {
                return this.keepRevisionForever;
            }

            public String getOcrLanguage() {
                return this.ocrLanguage;
            }

            public Boolean getSupportsAllDrives() {
                return this.supportsAllDrives;
            }

            public Boolean getSupportsTeamDrives() {
                return this.supportsTeamDrives;
            }

            public boolean isEnforceSingleParent() {
                Boolean bool = this.enforceSingleParent;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.enforceSingleParent.booleanValue();
            }

            public boolean isIgnoreDefaultVisibility() {
                Boolean bool = this.ignoreDefaultVisibility;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.ignoreDefaultVisibility.booleanValue();
            }

            public boolean isKeepRevisionForever() {
                Boolean bool = this.keepRevisionForever;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.keepRevisionForever.booleanValue();
            }

            public boolean isSupportsAllDrives() {
                Boolean bool = this.supportsAllDrives;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.supportsAllDrives.booleanValue();
            }

            public boolean isSupportsTeamDrives() {
                Boolean bool = this.supportsTeamDrives;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.supportsTeamDrives.booleanValue();
            }

            @Override // com.google.api.services.drive.DriveRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Copy set(String str, Object obj) {
                return (Copy) super.set(str, obj);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setAlt */
            public DriveRequest<File> setAlt2(String str) {
                return (Copy) super.setAlt(str);
            }

            public Copy setEnforceSingleParent(Boolean bool) {
                this.enforceSingleParent = bool;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setFields */
            public DriveRequest<File> setFields2(String str) {
                return (Copy) super.setFields(str);
            }

            public Copy setFileId(String str) {
                this.fileId = str;
                return this;
            }

            public Copy setIgnoreDefaultVisibility(Boolean bool) {
                this.ignoreDefaultVisibility = bool;
                return this;
            }

            public Copy setKeepRevisionForever(Boolean bool) {
                this.keepRevisionForever = bool;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setKey */
            public DriveRequest<File> setKey2(String str) {
                return (Copy) super.setKey(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setOauthToken */
            public DriveRequest<File> setOauthToken2(String str) {
                return (Copy) super.setOauthToken(str);
            }

            public Copy setOcrLanguage(String str) {
                this.ocrLanguage = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setPrettyPrint */
            public DriveRequest<File> setPrettyPrint2(Boolean bool) {
                return (Copy) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setQuotaUser */
            public DriveRequest<File> setQuotaUser2(String str) {
                return (Copy) super.setQuotaUser(str);
            }

            public Copy setSupportsAllDrives(Boolean bool) {
                this.supportsAllDrives = bool;
                return this;
            }

            public Copy setSupportsTeamDrives(Boolean bool) {
                this.supportsTeamDrives = bool;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setUserIp */
            public DriveRequest<File> setUserIp2(String str) {
                return (Copy) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/Drive$Files$Create.class */
        public class Create extends DriveRequest<File> {
            private static final String REST_PATH = "files";
            @com.google.api.client.a.q
            private Boolean enforceSingleParent;
            @com.google.api.client.a.q
            private Boolean ignoreDefaultVisibility;
            @com.google.api.client.a.q
            private Boolean keepRevisionForever;
            @com.google.api.client.a.q
            private String ocrLanguage;
            @com.google.api.client.a.q
            private Boolean supportsAllDrives;
            @com.google.api.client.a.q
            private Boolean supportsTeamDrives;
            @com.google.api.client.a.q
            private Boolean useContentAsIndexableText;

            protected Create(File file) {
                super(Drive.this, "POST", REST_PATH, file, File.class);
            }

            /* JADX WARN: Illegal instructions before constructor call */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            protected Create(com.google.api.services.drive.model.File r9, com.google.api.client.http.b r10) {
                /*
                    r7 = this;
                    r0 = r7
                    r1 = r8
                    com.google.api.services.drive.Drive.Files.this = r1
                    r0 = r8
                    com.google.api.services.drive.Drive r0 = com.google.api.services.drive.Drive.this
                    r11 = r0
                    java.lang.StringBuilder r0 = new java.lang.StringBuilder
                    r1 = r0
                    java.lang.String r2 = "/upload/"
                    r1.<init>(r2)
                    r12 = r0
                    r0 = r12
                    r1 = r8
                    com.google.api.services.drive.Drive r1 = com.google.api.services.drive.Drive.this
                    java.lang.String r1 = r1.getServicePath()
                    java.lang.StringBuilder r0 = r0.append(r1)
                    r0 = r12
                    java.lang.String r1 = "files"
                    java.lang.StringBuilder r0 = r0.append(r1)
                    r0 = r7
                    r1 = r11
                    java.lang.String r2 = "POST"
                    r3 = r12
                    java.lang.String r3 = r3.toString()
                    r4 = r9
                    java.lang.Class<com.google.api.services.drive.model.File> r5 = com.google.api.services.drive.model.File.class
                    r0.<init>(r1, r2, r3, r4, r5)
                    r0 = r7
                    r1 = r10
                    r0.initializeMediaUpload(r1)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.api.services.drive.Drive.Files.Create.<init>(com.google.api.services.drive.Drive$Files, com.google.api.services.drive.model.File, com.google.api.client.http.b):void");
            }

            public Boolean getEnforceSingleParent() {
                return this.enforceSingleParent;
            }

            public Boolean getIgnoreDefaultVisibility() {
                return this.ignoreDefaultVisibility;
            }

            public Boolean getKeepRevisionForever() {
                return this.keepRevisionForever;
            }

            public String getOcrLanguage() {
                return this.ocrLanguage;
            }

            public Boolean getSupportsAllDrives() {
                return this.supportsAllDrives;
            }

            public Boolean getSupportsTeamDrives() {
                return this.supportsTeamDrives;
            }

            public Boolean getUseContentAsIndexableText() {
                return this.useContentAsIndexableText;
            }

            public boolean isEnforceSingleParent() {
                Boolean bool = this.enforceSingleParent;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.enforceSingleParent.booleanValue();
            }

            public boolean isIgnoreDefaultVisibility() {
                Boolean bool = this.ignoreDefaultVisibility;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.ignoreDefaultVisibility.booleanValue();
            }

            public boolean isKeepRevisionForever() {
                Boolean bool = this.keepRevisionForever;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.keepRevisionForever.booleanValue();
            }

            public boolean isSupportsAllDrives() {
                Boolean bool = this.supportsAllDrives;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.supportsAllDrives.booleanValue();
            }

            public boolean isSupportsTeamDrives() {
                Boolean bool = this.supportsTeamDrives;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.supportsTeamDrives.booleanValue();
            }

            public boolean isUseContentAsIndexableText() {
                Boolean bool = this.useContentAsIndexableText;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.useContentAsIndexableText.booleanValue();
            }

            @Override // com.google.api.services.drive.DriveRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Create set(String str, Object obj) {
                return (Create) super.set(str, obj);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setAlt */
            public DriveRequest<File> setAlt2(String str) {
                return (Create) super.setAlt(str);
            }

            public Create setEnforceSingleParent(Boolean bool) {
                this.enforceSingleParent = bool;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setFields */
            public DriveRequest<File> setFields2(String str) {
                return (Create) super.setFields(str);
            }

            public Create setIgnoreDefaultVisibility(Boolean bool) {
                this.ignoreDefaultVisibility = bool;
                return this;
            }

            public Create setKeepRevisionForever(Boolean bool) {
                this.keepRevisionForever = bool;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setKey */
            public DriveRequest<File> setKey2(String str) {
                return (Create) super.setKey(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setOauthToken */
            public DriveRequest<File> setOauthToken2(String str) {
                return (Create) super.setOauthToken(str);
            }

            public Create setOcrLanguage(String str) {
                this.ocrLanguage = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setPrettyPrint */
            public DriveRequest<File> setPrettyPrint2(Boolean bool) {
                return (Create) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setQuotaUser */
            public DriveRequest<File> setQuotaUser2(String str) {
                return (Create) super.setQuotaUser(str);
            }

            public Create setSupportsAllDrives(Boolean bool) {
                this.supportsAllDrives = bool;
                return this;
            }

            public Create setSupportsTeamDrives(Boolean bool) {
                this.supportsTeamDrives = bool;
                return this;
            }

            public Create setUseContentAsIndexableText(Boolean bool) {
                this.useContentAsIndexableText = bool;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setUserIp */
            public DriveRequest<File> setUserIp2(String str) {
                return (Create) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/Drive$Files$Delete.class */
        public class Delete extends DriveRequest<Void> {
            private static final String REST_PATH = "files/{fileId}";
            @com.google.api.client.a.q
            private String fileId;
            @com.google.api.client.a.q
            private Boolean supportsAllDrives;
            @com.google.api.client.a.q
            private Boolean supportsTeamDrives;

            protected Delete(String str) {
                super(Drive.this, "DELETE", REST_PATH, null, Void.class);
                this.fileId = (String) aa.a(str, "Required parameter fileId must be specified.");
            }

            public String getFileId() {
                return this.fileId;
            }

            public Boolean getSupportsAllDrives() {
                return this.supportsAllDrives;
            }

            public Boolean getSupportsTeamDrives() {
                return this.supportsTeamDrives;
            }

            public boolean isSupportsAllDrives() {
                Boolean bool = this.supportsAllDrives;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.supportsAllDrives.booleanValue();
            }

            public boolean isSupportsTeamDrives() {
                Boolean bool = this.supportsTeamDrives;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.supportsTeamDrives.booleanValue();
            }

            @Override // com.google.api.services.drive.DriveRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Delete set(String str, Object obj) {
                return (Delete) super.set(str, obj);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setAlt */
            public DriveRequest<Void> setAlt2(String str) {
                return (Delete) super.setAlt(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setFields */
            public DriveRequest<Void> setFields2(String str) {
                return (Delete) super.setFields(str);
            }

            public Delete setFileId(String str) {
                this.fileId = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setKey */
            public DriveRequest<Void> setKey2(String str) {
                return (Delete) super.setKey(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setOauthToken */
            public DriveRequest<Void> setOauthToken2(String str) {
                return (Delete) super.setOauthToken(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setPrettyPrint */
            public DriveRequest<Void> setPrettyPrint2(Boolean bool) {
                return (Delete) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setQuotaUser */
            public DriveRequest<Void> setQuotaUser2(String str) {
                return (Delete) super.setQuotaUser(str);
            }

            public Delete setSupportsAllDrives(Boolean bool) {
                this.supportsAllDrives = bool;
                return this;
            }

            public Delete setSupportsTeamDrives(Boolean bool) {
                this.supportsTeamDrives = bool;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setUserIp */
            public DriveRequest<Void> setUserIp2(String str) {
                return (Delete) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/Drive$Files$EmptyTrash.class */
        public class EmptyTrash extends DriveRequest<Void> {
            private static final String REST_PATH = "files/trash";

            protected EmptyTrash() {
                super(Drive.this, "DELETE", REST_PATH, null, Void.class);
            }

            @Override // com.google.api.services.drive.DriveRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public EmptyTrash set(String str, Object obj) {
                return (EmptyTrash) super.set(str, obj);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setAlt */
            public DriveRequest<Void> setAlt2(String str) {
                return (EmptyTrash) super.setAlt(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setFields */
            public DriveRequest<Void> setFields2(String str) {
                return (EmptyTrash) super.setFields(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setKey */
            public DriveRequest<Void> setKey2(String str) {
                return (EmptyTrash) super.setKey(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setOauthToken */
            public DriveRequest<Void> setOauthToken2(String str) {
                return (EmptyTrash) super.setOauthToken(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setPrettyPrint */
            public DriveRequest<Void> setPrettyPrint2(Boolean bool) {
                return (EmptyTrash) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setQuotaUser */
            public DriveRequest<Void> setQuotaUser2(String str) {
                return (EmptyTrash) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setUserIp */
            public DriveRequest<Void> setUserIp2(String str) {
                return (EmptyTrash) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/Drive$Files$Export.class */
        public class Export extends DriveRequest<Void> {
            private static final String REST_PATH = "files/{fileId}/export";
            @com.google.api.client.a.q
            private String fileId;
            @com.google.api.client.a.q
            private String mimeType;

            protected Export(String str, String str2) {
                super(Drive.this, "GET", REST_PATH, null, Void.class);
                this.fileId = (String) aa.a(str, "Required parameter fileId must be specified.");
                this.mimeType = (String) aa.a(str2, "Required parameter mimeType must be specified.");
                initializeMediaDownload();
            }

            @Override // com.google.api.client.googleapis.services.b
            public q buildHttpRequestUsingHead() throws IOException {
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

            public String getFileId() {
                return this.fileId;
            }

            public String getMimeType() {
                return this.mimeType;
            }

            @Override // com.google.api.services.drive.DriveRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Export set(String str, Object obj) {
                return (Export) super.set(str, obj);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setAlt */
            public DriveRequest<Void> setAlt2(String str) {
                return (Export) super.setAlt(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setFields */
            public DriveRequest<Void> setFields2(String str) {
                return (Export) super.setFields(str);
            }

            public Export setFileId(String str) {
                this.fileId = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setKey */
            public DriveRequest<Void> setKey2(String str) {
                return (Export) super.setKey(str);
            }

            public Export setMimeType(String str) {
                this.mimeType = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setOauthToken */
            public DriveRequest<Void> setOauthToken2(String str) {
                return (Export) super.setOauthToken(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setPrettyPrint */
            public DriveRequest<Void> setPrettyPrint2(Boolean bool) {
                return (Export) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setQuotaUser */
            public DriveRequest<Void> setQuotaUser2(String str) {
                return (Export) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setUserIp */
            public DriveRequest<Void> setUserIp2(String str) {
                return (Export) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/Drive$Files$GenerateIds.class */
        public class GenerateIds extends DriveRequest<GeneratedIds> {
            private static final String REST_PATH = "files/generateIds";
            @com.google.api.client.a.q
            private Integer count;
            @com.google.api.client.a.q
            private String space;

            protected GenerateIds() {
                super(Drive.this, "GET", REST_PATH, null, GeneratedIds.class);
            }

            @Override // com.google.api.client.googleapis.services.b
            public q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.b
            public t executeUsingHead() throws IOException {
                return super.executeUsingHead();
            }

            public Integer getCount() {
                return this.count;
            }

            public String getSpace() {
                return this.space;
            }

            @Override // com.google.api.services.drive.DriveRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public GenerateIds set(String str, Object obj) {
                return (GenerateIds) super.set(str, obj);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setAlt */
            public DriveRequest<GeneratedIds> setAlt2(String str) {
                return (GenerateIds) super.setAlt(str);
            }

            public GenerateIds setCount(Integer num) {
                this.count = num;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setFields */
            public DriveRequest<GeneratedIds> setFields2(String str) {
                return (GenerateIds) super.setFields(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setKey */
            public DriveRequest<GeneratedIds> setKey2(String str) {
                return (GenerateIds) super.setKey(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setOauthToken */
            public DriveRequest<GeneratedIds> setOauthToken2(String str) {
                return (GenerateIds) super.setOauthToken(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setPrettyPrint */
            public DriveRequest<GeneratedIds> setPrettyPrint2(Boolean bool) {
                return (GenerateIds) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setQuotaUser */
            public DriveRequest<GeneratedIds> setQuotaUser2(String str) {
                return (GenerateIds) super.setQuotaUser(str);
            }

            public GenerateIds setSpace(String str) {
                this.space = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setUserIp */
            public DriveRequest<GeneratedIds> setUserIp2(String str) {
                return (GenerateIds) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/Drive$Files$Get.class */
        public class Get extends DriveRequest<File> {
            private static final String REST_PATH = "files/{fileId}";
            @com.google.api.client.a.q
            private Boolean acknowledgeAbuse;
            @com.google.api.client.a.q
            private String fileId;
            @com.google.api.client.a.q
            private Boolean supportsAllDrives;
            @com.google.api.client.a.q
            private Boolean supportsTeamDrives;

            protected Get(String str) {
                super(Drive.this, "GET", REST_PATH, null, File.class);
                this.fileId = (String) aa.a(str, "Required parameter fileId must be specified.");
                initializeMediaDownload();
            }

            @Override // com.google.api.client.googleapis.services.b
            public i buildHttpRequestUrl() {
                String str;
                if (!"media".equals(get("alt")) || getMediaHttpUploader() != null) {
                    str = Drive.this.getBaseUrl();
                } else {
                    str = Drive.this.getRootUrl() + "download/" + Drive.this.getServicePath();
                }
                return new i(ad.a(str, getUriTemplate(), this));
            }

            @Override // com.google.api.client.googleapis.services.b
            public q buildHttpRequestUsingHead() throws IOException {
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

            public Boolean getAcknowledgeAbuse() {
                return this.acknowledgeAbuse;
            }

            public String getFileId() {
                return this.fileId;
            }

            public Boolean getSupportsAllDrives() {
                return this.supportsAllDrives;
            }

            public Boolean getSupportsTeamDrives() {
                return this.supportsTeamDrives;
            }

            public boolean isAcknowledgeAbuse() {
                Boolean bool = this.acknowledgeAbuse;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.acknowledgeAbuse.booleanValue();
            }

            public boolean isSupportsAllDrives() {
                Boolean bool = this.supportsAllDrives;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.supportsAllDrives.booleanValue();
            }

            public boolean isSupportsTeamDrives() {
                Boolean bool = this.supportsTeamDrives;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.supportsTeamDrives.booleanValue();
            }

            @Override // com.google.api.services.drive.DriveRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Get set(String str, Object obj) {
                return (Get) super.set(str, obj);
            }

            public Get setAcknowledgeAbuse(Boolean bool) {
                this.acknowledgeAbuse = bool;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setAlt */
            public DriveRequest<File> setAlt2(String str) {
                return (Get) super.setAlt(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setFields */
            public DriveRequest<File> setFields2(String str) {
                return (Get) super.setFields(str);
            }

            public Get setFileId(String str) {
                this.fileId = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setKey */
            public DriveRequest<File> setKey2(String str) {
                return (Get) super.setKey(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setOauthToken */
            public DriveRequest<File> setOauthToken2(String str) {
                return (Get) super.setOauthToken(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setPrettyPrint */
            public DriveRequest<File> setPrettyPrint2(Boolean bool) {
                return (Get) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setQuotaUser */
            public DriveRequest<File> setQuotaUser2(String str) {
                return (Get) super.setQuotaUser(str);
            }

            public Get setSupportsAllDrives(Boolean bool) {
                this.supportsAllDrives = bool;
                return this;
            }

            public Get setSupportsTeamDrives(Boolean bool) {
                this.supportsTeamDrives = bool;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setUserIp */
            public DriveRequest<File> setUserIp2(String str) {
                return (Get) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/Drive$Files$List.class */
        public class List extends DriveRequest<FileList> {
            private static final String REST_PATH = "files";
            @com.google.api.client.a.q
            private String corpora;
            @com.google.api.client.a.q
            private String corpus;
            @com.google.api.client.a.q
            private String driveId;
            @com.google.api.client.a.q
            private Boolean includeItemsFromAllDrives;
            @com.google.api.client.a.q
            private Boolean includeTeamDriveItems;
            @com.google.api.client.a.q
            private String orderBy;
            @com.google.api.client.a.q
            private Integer pageSize;
            @com.google.api.client.a.q
            private String pageToken;
            @com.google.api.client.a.q
            private String q;
            @com.google.api.client.a.q
            private String spaces;
            @com.google.api.client.a.q
            private Boolean supportsAllDrives;
            @com.google.api.client.a.q
            private Boolean supportsTeamDrives;
            @com.google.api.client.a.q
            private String teamDriveId;

            protected List() {
                super(Drive.this, "GET", REST_PATH, null, FileList.class);
            }

            @Override // com.google.api.client.googleapis.services.b
            public q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.b
            public t executeUsingHead() throws IOException {
                return super.executeUsingHead();
            }

            public String getCorpora() {
                return this.corpora;
            }

            public String getCorpus() {
                return this.corpus;
            }

            public String getDriveId() {
                return this.driveId;
            }

            public Boolean getIncludeItemsFromAllDrives() {
                return this.includeItemsFromAllDrives;
            }

            public Boolean getIncludeTeamDriveItems() {
                return this.includeTeamDriveItems;
            }

            public String getOrderBy() {
                return this.orderBy;
            }

            public Integer getPageSize() {
                return this.pageSize;
            }

            public String getPageToken() {
                return this.pageToken;
            }

            public String getQ() {
                return this.q;
            }

            public String getSpaces() {
                return this.spaces;
            }

            public Boolean getSupportsAllDrives() {
                return this.supportsAllDrives;
            }

            public Boolean getSupportsTeamDrives() {
                return this.supportsTeamDrives;
            }

            public String getTeamDriveId() {
                return this.teamDriveId;
            }

            public boolean isIncludeItemsFromAllDrives() {
                Boolean bool = this.includeItemsFromAllDrives;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.includeItemsFromAllDrives.booleanValue();
            }

            public boolean isIncludeTeamDriveItems() {
                Boolean bool = this.includeTeamDriveItems;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.includeTeamDriveItems.booleanValue();
            }

            public boolean isSupportsAllDrives() {
                Boolean bool = this.supportsAllDrives;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.supportsAllDrives.booleanValue();
            }

            public boolean isSupportsTeamDrives() {
                Boolean bool = this.supportsTeamDrives;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.supportsTeamDrives.booleanValue();
            }

            @Override // com.google.api.services.drive.DriveRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public List set(String str, Object obj) {
                return (List) super.set(str, obj);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setAlt */
            public DriveRequest<FileList> setAlt2(String str) {
                return (List) super.setAlt(str);
            }

            public List setCorpora(String str) {
                this.corpora = str;
                return this;
            }

            public List setCorpus(String str) {
                this.corpus = str;
                return this;
            }

            public List setDriveId(String str) {
                this.driveId = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setFields */
            public DriveRequest<FileList> setFields2(String str) {
                return (List) super.setFields(str);
            }

            public List setIncludeItemsFromAllDrives(Boolean bool) {
                this.includeItemsFromAllDrives = bool;
                return this;
            }

            public List setIncludeTeamDriveItems(Boolean bool) {
                this.includeTeamDriveItems = bool;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setKey */
            public DriveRequest<FileList> setKey2(String str) {
                return (List) super.setKey(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setOauthToken */
            public DriveRequest<FileList> setOauthToken2(String str) {
                return (List) super.setOauthToken(str);
            }

            public List setOrderBy(String str) {
                this.orderBy = str;
                return this;
            }

            public List setPageSize(Integer num) {
                this.pageSize = num;
                return this;
            }

            public List setPageToken(String str) {
                this.pageToken = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setPrettyPrint */
            public DriveRequest<FileList> setPrettyPrint2(Boolean bool) {
                return (List) super.setPrettyPrint(bool);
            }

            public List setQ(String str) {
                this.q = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setQuotaUser */
            public DriveRequest<FileList> setQuotaUser2(String str) {
                return (List) super.setQuotaUser(str);
            }

            public List setSpaces(String str) {
                this.spaces = str;
                return this;
            }

            public List setSupportsAllDrives(Boolean bool) {
                this.supportsAllDrives = bool;
                return this;
            }

            public List setSupportsTeamDrives(Boolean bool) {
                this.supportsTeamDrives = bool;
                return this;
            }

            public List setTeamDriveId(String str) {
                this.teamDriveId = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setUserIp */
            public DriveRequest<FileList> setUserIp2(String str) {
                return (List) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/Drive$Files$Update.class */
        public class Update extends DriveRequest<File> {
            private static final String REST_PATH = "files/{fileId}";
            @com.google.api.client.a.q
            private String addParents;
            @com.google.api.client.a.q
            private Boolean enforceSingleParent;
            @com.google.api.client.a.q
            private String fileId;
            @com.google.api.client.a.q
            private Boolean keepRevisionForever;
            @com.google.api.client.a.q
            private String ocrLanguage;
            @com.google.api.client.a.q
            private String removeParents;
            @com.google.api.client.a.q
            private Boolean supportsAllDrives;
            @com.google.api.client.a.q
            private Boolean supportsTeamDrives;
            @com.google.api.client.a.q
            private Boolean useContentAsIndexableText;

            protected Update(String str, File file) {
                super(Drive.this, "PATCH", REST_PATH, file, File.class);
                this.fileId = (String) aa.a(str, "Required parameter fileId must be specified.");
            }

            /* JADX WARN: Illegal instructions before constructor call */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            protected Update(java.lang.String r9, com.google.api.services.drive.model.File r10, com.google.api.client.http.b r11) {
                /*
                    r7 = this;
                    r0 = r7
                    r1 = r8
                    com.google.api.services.drive.Drive.Files.this = r1
                    r0 = r8
                    com.google.api.services.drive.Drive r0 = com.google.api.services.drive.Drive.this
                    r12 = r0
                    java.lang.StringBuilder r0 = new java.lang.StringBuilder
                    r1 = r0
                    java.lang.String r2 = "/upload/"
                    r1.<init>(r2)
                    r13 = r0
                    r0 = r13
                    r1 = r8
                    com.google.api.services.drive.Drive r1 = com.google.api.services.drive.Drive.this
                    java.lang.String r1 = r1.getServicePath()
                    java.lang.StringBuilder r0 = r0.append(r1)
                    r0 = r13
                    java.lang.String r1 = "files/{fileId}"
                    java.lang.StringBuilder r0 = r0.append(r1)
                    r0 = r7
                    r1 = r12
                    java.lang.String r2 = "PATCH"
                    r3 = r13
                    java.lang.String r3 = r3.toString()
                    r4 = r10
                    java.lang.Class<com.google.api.services.drive.model.File> r5 = com.google.api.services.drive.model.File.class
                    r0.<init>(r1, r2, r3, r4, r5)
                    r0 = r7
                    r1 = r9
                    java.lang.String r2 = "Required parameter fileId must be specified."
                    java.lang.Object r1 = com.google.api.client.a.aa.a(r1, r2)
                    java.lang.String r1 = (java.lang.String) r1
                    r0.fileId = r1
                    r0 = r7
                    r1 = r11
                    r0.initializeMediaUpload(r1)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.api.services.drive.Drive.Files.Update.<init>(com.google.api.services.drive.Drive$Files, java.lang.String, com.google.api.services.drive.model.File, com.google.api.client.http.b):void");
            }

            public String getAddParents() {
                return this.addParents;
            }

            public Boolean getEnforceSingleParent() {
                return this.enforceSingleParent;
            }

            public String getFileId() {
                return this.fileId;
            }

            public Boolean getKeepRevisionForever() {
                return this.keepRevisionForever;
            }

            public String getOcrLanguage() {
                return this.ocrLanguage;
            }

            public String getRemoveParents() {
                return this.removeParents;
            }

            public Boolean getSupportsAllDrives() {
                return this.supportsAllDrives;
            }

            public Boolean getSupportsTeamDrives() {
                return this.supportsTeamDrives;
            }

            public Boolean getUseContentAsIndexableText() {
                return this.useContentAsIndexableText;
            }

            public boolean isEnforceSingleParent() {
                Boolean bool = this.enforceSingleParent;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.enforceSingleParent.booleanValue();
            }

            public boolean isKeepRevisionForever() {
                Boolean bool = this.keepRevisionForever;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.keepRevisionForever.booleanValue();
            }

            public boolean isSupportsAllDrives() {
                Boolean bool = this.supportsAllDrives;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.supportsAllDrives.booleanValue();
            }

            public boolean isSupportsTeamDrives() {
                Boolean bool = this.supportsTeamDrives;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.supportsTeamDrives.booleanValue();
            }

            public boolean isUseContentAsIndexableText() {
                Boolean bool = this.useContentAsIndexableText;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.useContentAsIndexableText.booleanValue();
            }

            @Override // com.google.api.services.drive.DriveRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Update set(String str, Object obj) {
                return (Update) super.set(str, obj);
            }

            public Update setAddParents(String str) {
                this.addParents = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setAlt */
            public DriveRequest<File> setAlt2(String str) {
                return (Update) super.setAlt(str);
            }

            public Update setEnforceSingleParent(Boolean bool) {
                this.enforceSingleParent = bool;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setFields */
            public DriveRequest<File> setFields2(String str) {
                return (Update) super.setFields(str);
            }

            public Update setFileId(String str) {
                this.fileId = str;
                return this;
            }

            public Update setKeepRevisionForever(Boolean bool) {
                this.keepRevisionForever = bool;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setKey */
            public DriveRequest<File> setKey2(String str) {
                return (Update) super.setKey(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setOauthToken */
            public DriveRequest<File> setOauthToken2(String str) {
                return (Update) super.setOauthToken(str);
            }

            public Update setOcrLanguage(String str) {
                this.ocrLanguage = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setPrettyPrint */
            public DriveRequest<File> setPrettyPrint2(Boolean bool) {
                return (Update) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setQuotaUser */
            public DriveRequest<File> setQuotaUser2(String str) {
                return (Update) super.setQuotaUser(str);
            }

            public Update setRemoveParents(String str) {
                this.removeParents = str;
                return this;
            }

            public Update setSupportsAllDrives(Boolean bool) {
                this.supportsAllDrives = bool;
                return this;
            }

            public Update setSupportsTeamDrives(Boolean bool) {
                this.supportsTeamDrives = bool;
                return this;
            }

            public Update setUseContentAsIndexableText(Boolean bool) {
                this.useContentAsIndexableText = bool;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setUserIp */
            public DriveRequest<File> setUserIp2(String str) {
                return (Update) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/Drive$Files$Watch.class */
        public class Watch extends DriveRequest<Channel> {
            private static final String REST_PATH = "files/{fileId}/watch";
            @com.google.api.client.a.q
            private Boolean acknowledgeAbuse;
            @com.google.api.client.a.q
            private String fileId;
            @com.google.api.client.a.q
            private Boolean supportsAllDrives;
            @com.google.api.client.a.q
            private Boolean supportsTeamDrives;

            protected Watch(String str, Channel channel) {
                super(Drive.this, "POST", REST_PATH, channel, Channel.class);
                this.fileId = (String) aa.a(str, "Required parameter fileId must be specified.");
                initializeMediaDownload();
            }

            @Override // com.google.api.client.googleapis.services.b
            public i buildHttpRequestUrl() {
                String str;
                if (!"media".equals(get("alt")) || getMediaHttpUploader() != null) {
                    str = Drive.this.getBaseUrl();
                } else {
                    str = Drive.this.getRootUrl() + "download/" + Drive.this.getServicePath();
                }
                return new i(ad.a(str, getUriTemplate(), this));
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

            public Boolean getAcknowledgeAbuse() {
                return this.acknowledgeAbuse;
            }

            public String getFileId() {
                return this.fileId;
            }

            public Boolean getSupportsAllDrives() {
                return this.supportsAllDrives;
            }

            public Boolean getSupportsTeamDrives() {
                return this.supportsTeamDrives;
            }

            public boolean isAcknowledgeAbuse() {
                Boolean bool = this.acknowledgeAbuse;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.acknowledgeAbuse.booleanValue();
            }

            public boolean isSupportsAllDrives() {
                Boolean bool = this.supportsAllDrives;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.supportsAllDrives.booleanValue();
            }

            public boolean isSupportsTeamDrives() {
                Boolean bool = this.supportsTeamDrives;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.supportsTeamDrives.booleanValue();
            }

            @Override // com.google.api.services.drive.DriveRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Watch set(String str, Object obj) {
                return (Watch) super.set(str, obj);
            }

            public Watch setAcknowledgeAbuse(Boolean bool) {
                this.acknowledgeAbuse = bool;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setAlt */
            public DriveRequest<Channel> setAlt2(String str) {
                return (Watch) super.setAlt(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setFields */
            public DriveRequest<Channel> setFields2(String str) {
                return (Watch) super.setFields(str);
            }

            public Watch setFileId(String str) {
                this.fileId = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setKey */
            public DriveRequest<Channel> setKey2(String str) {
                return (Watch) super.setKey(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setOauthToken */
            public DriveRequest<Channel> setOauthToken2(String str) {
                return (Watch) super.setOauthToken(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setPrettyPrint */
            public DriveRequest<Channel> setPrettyPrint2(Boolean bool) {
                return (Watch) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setQuotaUser */
            public DriveRequest<Channel> setQuotaUser2(String str) {
                return (Watch) super.setQuotaUser(str);
            }

            public Watch setSupportsAllDrives(Boolean bool) {
                this.supportsAllDrives = bool;
                return this;
            }

            public Watch setSupportsTeamDrives(Boolean bool) {
                this.supportsTeamDrives = bool;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setUserIp */
            public DriveRequest<Channel> setUserIp2(String str) {
                return (Watch) super.setUserIp(str);
            }
        }

        public Files() {
        }

        public final Create a(File file) throws IOException {
            Create create = new Create(file);
            Drive.this.initialize(create);
            return create;
        }

        public final Create a(File file, b bVar) throws IOException {
            Create create = new Create(file, bVar);
            Drive.this.initialize(create);
            return create;
        }

        public final Delete a(String str) throws IOException {
            Delete delete = new Delete(str);
            Drive.this.initialize(delete);
            return delete;
        }

        public final List a() throws IOException {
            List list = new List();
            Drive.this.initialize(list);
            return list;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/Drive$Permissions.class */
    public final class Permissions {

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/Drive$Permissions$Create.class */
        public class Create extends DriveRequest<Permission> {
            private static final String REST_PATH = "files/{fileId}/permissions";
            @com.google.api.client.a.q
            private String emailMessage;
            @com.google.api.client.a.q
            private Boolean enforceSingleParent;
            @com.google.api.client.a.q
            private String fileId;
            @com.google.api.client.a.q
            private Boolean moveToNewOwnersRoot;
            @com.google.api.client.a.q
            private Boolean sendNotificationEmail;
            @com.google.api.client.a.q
            private Boolean supportsAllDrives;
            @com.google.api.client.a.q
            private Boolean supportsTeamDrives;
            @com.google.api.client.a.q
            private Boolean transferOwnership;
            @com.google.api.client.a.q
            private Boolean useDomainAdminAccess;

            protected Create(String str, Permission permission) {
                super(Drive.this, "POST", REST_PATH, permission, Permission.class);
                this.fileId = (String) aa.a(str, "Required parameter fileId must be specified.");
                checkRequiredParameter(permission, Constants.VAST_TRACKER_CONTENT);
                checkRequiredParameter(permission.getRole(), "Permission.getRole()");
                checkRequiredParameter(permission, Constants.VAST_TRACKER_CONTENT);
                checkRequiredParameter(permission.getType(), "Permission.getType()");
            }

            public String getEmailMessage() {
                return this.emailMessage;
            }

            public Boolean getEnforceSingleParent() {
                return this.enforceSingleParent;
            }

            public String getFileId() {
                return this.fileId;
            }

            public Boolean getMoveToNewOwnersRoot() {
                return this.moveToNewOwnersRoot;
            }

            public Boolean getSendNotificationEmail() {
                return this.sendNotificationEmail;
            }

            public Boolean getSupportsAllDrives() {
                return this.supportsAllDrives;
            }

            public Boolean getSupportsTeamDrives() {
                return this.supportsTeamDrives;
            }

            public Boolean getTransferOwnership() {
                return this.transferOwnership;
            }

            public Boolean getUseDomainAdminAccess() {
                return this.useDomainAdminAccess;
            }

            public boolean isEnforceSingleParent() {
                Boolean bool = this.enforceSingleParent;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.enforceSingleParent.booleanValue();
            }

            public boolean isMoveToNewOwnersRoot() {
                Boolean bool = this.moveToNewOwnersRoot;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.moveToNewOwnersRoot.booleanValue();
            }

            public boolean isSupportsAllDrives() {
                Boolean bool = this.supportsAllDrives;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.supportsAllDrives.booleanValue();
            }

            public boolean isSupportsTeamDrives() {
                Boolean bool = this.supportsTeamDrives;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.supportsTeamDrives.booleanValue();
            }

            public boolean isTransferOwnership() {
                Boolean bool = this.transferOwnership;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.transferOwnership.booleanValue();
            }

            public boolean isUseDomainAdminAccess() {
                Boolean bool = this.useDomainAdminAccess;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.useDomainAdminAccess.booleanValue();
            }

            @Override // com.google.api.services.drive.DriveRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Create set(String str, Object obj) {
                return (Create) super.set(str, obj);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setAlt */
            public DriveRequest<Permission> setAlt2(String str) {
                return (Create) super.setAlt(str);
            }

            public Create setEmailMessage(String str) {
                this.emailMessage = str;
                return this;
            }

            public Create setEnforceSingleParent(Boolean bool) {
                this.enforceSingleParent = bool;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setFields */
            public DriveRequest<Permission> setFields2(String str) {
                return (Create) super.setFields(str);
            }

            public Create setFileId(String str) {
                this.fileId = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setKey */
            public DriveRequest<Permission> setKey2(String str) {
                return (Create) super.setKey(str);
            }

            public Create setMoveToNewOwnersRoot(Boolean bool) {
                this.moveToNewOwnersRoot = bool;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setOauthToken */
            public DriveRequest<Permission> setOauthToken2(String str) {
                return (Create) super.setOauthToken(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setPrettyPrint */
            public DriveRequest<Permission> setPrettyPrint2(Boolean bool) {
                return (Create) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setQuotaUser */
            public DriveRequest<Permission> setQuotaUser2(String str) {
                return (Create) super.setQuotaUser(str);
            }

            public Create setSendNotificationEmail(Boolean bool) {
                this.sendNotificationEmail = bool;
                return this;
            }

            public Create setSupportsAllDrives(Boolean bool) {
                this.supportsAllDrives = bool;
                return this;
            }

            public Create setSupportsTeamDrives(Boolean bool) {
                this.supportsTeamDrives = bool;
                return this;
            }

            public Create setTransferOwnership(Boolean bool) {
                this.transferOwnership = bool;
                return this;
            }

            public Create setUseDomainAdminAccess(Boolean bool) {
                this.useDomainAdminAccess = bool;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setUserIp */
            public DriveRequest<Permission> setUserIp2(String str) {
                return (Create) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/Drive$Permissions$Delete.class */
        public class Delete extends DriveRequest<Void> {
            private static final String REST_PATH = "files/{fileId}/permissions/{permissionId}";
            @com.google.api.client.a.q
            private String fileId;
            @com.google.api.client.a.q
            private String permissionId;
            @com.google.api.client.a.q
            private Boolean supportsAllDrives;
            @com.google.api.client.a.q
            private Boolean supportsTeamDrives;
            @com.google.api.client.a.q
            private Boolean useDomainAdminAccess;

            protected Delete(String str, String str2) {
                super(Drive.this, "DELETE", REST_PATH, null, Void.class);
                this.fileId = (String) aa.a(str, "Required parameter fileId must be specified.");
                this.permissionId = (String) aa.a(str2, "Required parameter permissionId must be specified.");
            }

            public String getFileId() {
                return this.fileId;
            }

            public String getPermissionId() {
                return this.permissionId;
            }

            public Boolean getSupportsAllDrives() {
                return this.supportsAllDrives;
            }

            public Boolean getSupportsTeamDrives() {
                return this.supportsTeamDrives;
            }

            public Boolean getUseDomainAdminAccess() {
                return this.useDomainAdminAccess;
            }

            public boolean isSupportsAllDrives() {
                Boolean bool = this.supportsAllDrives;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.supportsAllDrives.booleanValue();
            }

            public boolean isSupportsTeamDrives() {
                Boolean bool = this.supportsTeamDrives;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.supportsTeamDrives.booleanValue();
            }

            public boolean isUseDomainAdminAccess() {
                Boolean bool = this.useDomainAdminAccess;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.useDomainAdminAccess.booleanValue();
            }

            @Override // com.google.api.services.drive.DriveRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Delete set(String str, Object obj) {
                return (Delete) super.set(str, obj);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setAlt */
            public DriveRequest<Void> setAlt2(String str) {
                return (Delete) super.setAlt(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setFields */
            public DriveRequest<Void> setFields2(String str) {
                return (Delete) super.setFields(str);
            }

            public Delete setFileId(String str) {
                this.fileId = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setKey */
            public DriveRequest<Void> setKey2(String str) {
                return (Delete) super.setKey(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setOauthToken */
            public DriveRequest<Void> setOauthToken2(String str) {
                return (Delete) super.setOauthToken(str);
            }

            public Delete setPermissionId(String str) {
                this.permissionId = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setPrettyPrint */
            public DriveRequest<Void> setPrettyPrint2(Boolean bool) {
                return (Delete) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setQuotaUser */
            public DriveRequest<Void> setQuotaUser2(String str) {
                return (Delete) super.setQuotaUser(str);
            }

            public Delete setSupportsAllDrives(Boolean bool) {
                this.supportsAllDrives = bool;
                return this;
            }

            public Delete setSupportsTeamDrives(Boolean bool) {
                this.supportsTeamDrives = bool;
                return this;
            }

            public Delete setUseDomainAdminAccess(Boolean bool) {
                this.useDomainAdminAccess = bool;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setUserIp */
            public DriveRequest<Void> setUserIp2(String str) {
                return (Delete) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/Drive$Permissions$Get.class */
        public class Get extends DriveRequest<Permission> {
            private static final String REST_PATH = "files/{fileId}/permissions/{permissionId}";
            @com.google.api.client.a.q
            private String fileId;
            @com.google.api.client.a.q
            private String permissionId;
            @com.google.api.client.a.q
            private Boolean supportsAllDrives;
            @com.google.api.client.a.q
            private Boolean supportsTeamDrives;
            @com.google.api.client.a.q
            private Boolean useDomainAdminAccess;

            protected Get(String str, String str2) {
                super(Drive.this, "GET", REST_PATH, null, Permission.class);
                this.fileId = (String) aa.a(str, "Required parameter fileId must be specified.");
                this.permissionId = (String) aa.a(str2, "Required parameter permissionId must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.b
            public q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.b
            public t executeUsingHead() throws IOException {
                return super.executeUsingHead();
            }

            public String getFileId() {
                return this.fileId;
            }

            public String getPermissionId() {
                return this.permissionId;
            }

            public Boolean getSupportsAllDrives() {
                return this.supportsAllDrives;
            }

            public Boolean getSupportsTeamDrives() {
                return this.supportsTeamDrives;
            }

            public Boolean getUseDomainAdminAccess() {
                return this.useDomainAdminAccess;
            }

            public boolean isSupportsAllDrives() {
                Boolean bool = this.supportsAllDrives;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.supportsAllDrives.booleanValue();
            }

            public boolean isSupportsTeamDrives() {
                Boolean bool = this.supportsTeamDrives;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.supportsTeamDrives.booleanValue();
            }

            public boolean isUseDomainAdminAccess() {
                Boolean bool = this.useDomainAdminAccess;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.useDomainAdminAccess.booleanValue();
            }

            @Override // com.google.api.services.drive.DriveRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Get set(String str, Object obj) {
                return (Get) super.set(str, obj);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setAlt */
            public DriveRequest<Permission> setAlt2(String str) {
                return (Get) super.setAlt(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setFields */
            public DriveRequest<Permission> setFields2(String str) {
                return (Get) super.setFields(str);
            }

            public Get setFileId(String str) {
                this.fileId = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setKey */
            public DriveRequest<Permission> setKey2(String str) {
                return (Get) super.setKey(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setOauthToken */
            public DriveRequest<Permission> setOauthToken2(String str) {
                return (Get) super.setOauthToken(str);
            }

            public Get setPermissionId(String str) {
                this.permissionId = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setPrettyPrint */
            public DriveRequest<Permission> setPrettyPrint2(Boolean bool) {
                return (Get) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setQuotaUser */
            public DriveRequest<Permission> setQuotaUser2(String str) {
                return (Get) super.setQuotaUser(str);
            }

            public Get setSupportsAllDrives(Boolean bool) {
                this.supportsAllDrives = bool;
                return this;
            }

            public Get setSupportsTeamDrives(Boolean bool) {
                this.supportsTeamDrives = bool;
                return this;
            }

            public Get setUseDomainAdminAccess(Boolean bool) {
                this.useDomainAdminAccess = bool;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setUserIp */
            public DriveRequest<Permission> setUserIp2(String str) {
                return (Get) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/Drive$Permissions$List.class */
        public class List extends DriveRequest<PermissionList> {
            private static final String REST_PATH = "files/{fileId}/permissions";
            @com.google.api.client.a.q
            private String fileId;
            @com.google.api.client.a.q
            private Integer pageSize;
            @com.google.api.client.a.q
            private String pageToken;
            @com.google.api.client.a.q
            private Boolean supportsAllDrives;
            @com.google.api.client.a.q
            private Boolean supportsTeamDrives;
            @com.google.api.client.a.q
            private Boolean useDomainAdminAccess;

            protected List(String str) {
                super(Drive.this, "GET", REST_PATH, null, PermissionList.class);
                this.fileId = (String) aa.a(str, "Required parameter fileId must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.b
            public q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.b
            public t executeUsingHead() throws IOException {
                return super.executeUsingHead();
            }

            public String getFileId() {
                return this.fileId;
            }

            public Integer getPageSize() {
                return this.pageSize;
            }

            public String getPageToken() {
                return this.pageToken;
            }

            public Boolean getSupportsAllDrives() {
                return this.supportsAllDrives;
            }

            public Boolean getSupportsTeamDrives() {
                return this.supportsTeamDrives;
            }

            public Boolean getUseDomainAdminAccess() {
                return this.useDomainAdminAccess;
            }

            public boolean isSupportsAllDrives() {
                Boolean bool = this.supportsAllDrives;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.supportsAllDrives.booleanValue();
            }

            public boolean isSupportsTeamDrives() {
                Boolean bool = this.supportsTeamDrives;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.supportsTeamDrives.booleanValue();
            }

            public boolean isUseDomainAdminAccess() {
                Boolean bool = this.useDomainAdminAccess;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.useDomainAdminAccess.booleanValue();
            }

            @Override // com.google.api.services.drive.DriveRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public List set(String str, Object obj) {
                return (List) super.set(str, obj);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setAlt */
            public DriveRequest<PermissionList> setAlt2(String str) {
                return (List) super.setAlt(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setFields */
            public DriveRequest<PermissionList> setFields2(String str) {
                return (List) super.setFields(str);
            }

            public List setFileId(String str) {
                this.fileId = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setKey */
            public DriveRequest<PermissionList> setKey2(String str) {
                return (List) super.setKey(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setOauthToken */
            public DriveRequest<PermissionList> setOauthToken2(String str) {
                return (List) super.setOauthToken(str);
            }

            public List setPageSize(Integer num) {
                this.pageSize = num;
                return this;
            }

            public List setPageToken(String str) {
                this.pageToken = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setPrettyPrint */
            public DriveRequest<PermissionList> setPrettyPrint2(Boolean bool) {
                return (List) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setQuotaUser */
            public DriveRequest<PermissionList> setQuotaUser2(String str) {
                return (List) super.setQuotaUser(str);
            }

            public List setSupportsAllDrives(Boolean bool) {
                this.supportsAllDrives = bool;
                return this;
            }

            public List setSupportsTeamDrives(Boolean bool) {
                this.supportsTeamDrives = bool;
                return this;
            }

            public List setUseDomainAdminAccess(Boolean bool) {
                this.useDomainAdminAccess = bool;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setUserIp */
            public DriveRequest<PermissionList> setUserIp2(String str) {
                return (List) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/Drive$Permissions$Update.class */
        public class Update extends DriveRequest<Permission> {
            private static final String REST_PATH = "files/{fileId}/permissions/{permissionId}";
            @com.google.api.client.a.q
            private String fileId;
            @com.google.api.client.a.q
            private String permissionId;
            @com.google.api.client.a.q
            private Boolean removeExpiration;
            @com.google.api.client.a.q
            private Boolean supportsAllDrives;
            @com.google.api.client.a.q
            private Boolean supportsTeamDrives;
            @com.google.api.client.a.q
            private Boolean transferOwnership;
            @com.google.api.client.a.q
            private Boolean useDomainAdminAccess;

            protected Update(String str, String str2, Permission permission) {
                super(Drive.this, "PATCH", REST_PATH, permission, Permission.class);
                this.fileId = (String) aa.a(str, "Required parameter fileId must be specified.");
                this.permissionId = (String) aa.a(str2, "Required parameter permissionId must be specified.");
            }

            public String getFileId() {
                return this.fileId;
            }

            public String getPermissionId() {
                return this.permissionId;
            }

            public Boolean getRemoveExpiration() {
                return this.removeExpiration;
            }

            public Boolean getSupportsAllDrives() {
                return this.supportsAllDrives;
            }

            public Boolean getSupportsTeamDrives() {
                return this.supportsTeamDrives;
            }

            public Boolean getTransferOwnership() {
                return this.transferOwnership;
            }

            public Boolean getUseDomainAdminAccess() {
                return this.useDomainAdminAccess;
            }

            public boolean isRemoveExpiration() {
                Boolean bool = this.removeExpiration;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.removeExpiration.booleanValue();
            }

            public boolean isSupportsAllDrives() {
                Boolean bool = this.supportsAllDrives;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.supportsAllDrives.booleanValue();
            }

            public boolean isSupportsTeamDrives() {
                Boolean bool = this.supportsTeamDrives;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.supportsTeamDrives.booleanValue();
            }

            public boolean isTransferOwnership() {
                Boolean bool = this.transferOwnership;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.transferOwnership.booleanValue();
            }

            public boolean isUseDomainAdminAccess() {
                Boolean bool = this.useDomainAdminAccess;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.useDomainAdminAccess.booleanValue();
            }

            @Override // com.google.api.services.drive.DriveRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Update set(String str, Object obj) {
                return (Update) super.set(str, obj);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setAlt */
            public DriveRequest<Permission> setAlt2(String str) {
                return (Update) super.setAlt(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setFields */
            public DriveRequest<Permission> setFields2(String str) {
                return (Update) super.setFields(str);
            }

            public Update setFileId(String str) {
                this.fileId = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setKey */
            public DriveRequest<Permission> setKey2(String str) {
                return (Update) super.setKey(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setOauthToken */
            public DriveRequest<Permission> setOauthToken2(String str) {
                return (Update) super.setOauthToken(str);
            }

            public Update setPermissionId(String str) {
                this.permissionId = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setPrettyPrint */
            public DriveRequest<Permission> setPrettyPrint2(Boolean bool) {
                return (Update) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setQuotaUser */
            public DriveRequest<Permission> setQuotaUser2(String str) {
                return (Update) super.setQuotaUser(str);
            }

            public Update setRemoveExpiration(Boolean bool) {
                this.removeExpiration = bool;
                return this;
            }

            public Update setSupportsAllDrives(Boolean bool) {
                this.supportsAllDrives = bool;
                return this;
            }

            public Update setSupportsTeamDrives(Boolean bool) {
                this.supportsTeamDrives = bool;
                return this;
            }

            public Update setTransferOwnership(Boolean bool) {
                this.transferOwnership = bool;
                return this;
            }

            public Update setUseDomainAdminAccess(Boolean bool) {
                this.useDomainAdminAccess = bool;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setUserIp */
            public DriveRequest<Permission> setUserIp2(String str) {
                return (Update) super.setUserIp(str);
            }
        }

        public Permissions() {
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/Drive$Replies.class */
    public final class Replies {

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/Drive$Replies$Create.class */
        public class Create extends DriveRequest<Reply> {
            private static final String REST_PATH = "files/{fileId}/comments/{commentId}/replies";
            @com.google.api.client.a.q
            private String commentId;
            @com.google.api.client.a.q
            private String fileId;

            protected Create(String str, String str2, Reply reply) {
                super(Drive.this, "POST", REST_PATH, reply, Reply.class);
                this.fileId = (String) aa.a(str, "Required parameter fileId must be specified.");
                this.commentId = (String) aa.a(str2, "Required parameter commentId must be specified.");
            }

            public String getCommentId() {
                return this.commentId;
            }

            public String getFileId() {
                return this.fileId;
            }

            @Override // com.google.api.services.drive.DriveRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Create set(String str, Object obj) {
                return (Create) super.set(str, obj);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setAlt */
            public DriveRequest<Reply> setAlt2(String str) {
                return (Create) super.setAlt(str);
            }

            public Create setCommentId(String str) {
                this.commentId = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setFields */
            public DriveRequest<Reply> setFields2(String str) {
                return (Create) super.setFields(str);
            }

            public Create setFileId(String str) {
                this.fileId = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setKey */
            public DriveRequest<Reply> setKey2(String str) {
                return (Create) super.setKey(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setOauthToken */
            public DriveRequest<Reply> setOauthToken2(String str) {
                return (Create) super.setOauthToken(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setPrettyPrint */
            public DriveRequest<Reply> setPrettyPrint2(Boolean bool) {
                return (Create) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setQuotaUser */
            public DriveRequest<Reply> setQuotaUser2(String str) {
                return (Create) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setUserIp */
            public DriveRequest<Reply> setUserIp2(String str) {
                return (Create) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/Drive$Replies$Delete.class */
        public class Delete extends DriveRequest<Void> {
            private static final String REST_PATH = "files/{fileId}/comments/{commentId}/replies/{replyId}";
            @com.google.api.client.a.q
            private String commentId;
            @com.google.api.client.a.q
            private String fileId;
            @com.google.api.client.a.q
            private String replyId;

            protected Delete(String str, String str2, String str3) {
                super(Drive.this, "DELETE", REST_PATH, null, Void.class);
                this.fileId = (String) aa.a(str, "Required parameter fileId must be specified.");
                this.commentId = (String) aa.a(str2, "Required parameter commentId must be specified.");
                this.replyId = (String) aa.a(str3, "Required parameter replyId must be specified.");
            }

            public String getCommentId() {
                return this.commentId;
            }

            public String getFileId() {
                return this.fileId;
            }

            public String getReplyId() {
                return this.replyId;
            }

            @Override // com.google.api.services.drive.DriveRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Delete set(String str, Object obj) {
                return (Delete) super.set(str, obj);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setAlt */
            public DriveRequest<Void> setAlt2(String str) {
                return (Delete) super.setAlt(str);
            }

            public Delete setCommentId(String str) {
                this.commentId = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setFields */
            public DriveRequest<Void> setFields2(String str) {
                return (Delete) super.setFields(str);
            }

            public Delete setFileId(String str) {
                this.fileId = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setKey */
            public DriveRequest<Void> setKey2(String str) {
                return (Delete) super.setKey(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setOauthToken */
            public DriveRequest<Void> setOauthToken2(String str) {
                return (Delete) super.setOauthToken(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setPrettyPrint */
            public DriveRequest<Void> setPrettyPrint2(Boolean bool) {
                return (Delete) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setQuotaUser */
            public DriveRequest<Void> setQuotaUser2(String str) {
                return (Delete) super.setQuotaUser(str);
            }

            public Delete setReplyId(String str) {
                this.replyId = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setUserIp */
            public DriveRequest<Void> setUserIp2(String str) {
                return (Delete) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/Drive$Replies$Get.class */
        public class Get extends DriveRequest<Reply> {
            private static final String REST_PATH = "files/{fileId}/comments/{commentId}/replies/{replyId}";
            @com.google.api.client.a.q
            private String commentId;
            @com.google.api.client.a.q
            private String fileId;
            @com.google.api.client.a.q
            private Boolean includeDeleted;
            @com.google.api.client.a.q
            private String replyId;

            protected Get(String str, String str2, String str3) {
                super(Drive.this, "GET", REST_PATH, null, Reply.class);
                this.fileId = (String) aa.a(str, "Required parameter fileId must be specified.");
                this.commentId = (String) aa.a(str2, "Required parameter commentId must be specified.");
                this.replyId = (String) aa.a(str3, "Required parameter replyId must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.b
            public q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.b
            public t executeUsingHead() throws IOException {
                return super.executeUsingHead();
            }

            public String getCommentId() {
                return this.commentId;
            }

            public String getFileId() {
                return this.fileId;
            }

            public Boolean getIncludeDeleted() {
                return this.includeDeleted;
            }

            public String getReplyId() {
                return this.replyId;
            }

            public boolean isIncludeDeleted() {
                Boolean bool = this.includeDeleted;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.includeDeleted.booleanValue();
            }

            @Override // com.google.api.services.drive.DriveRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Get set(String str, Object obj) {
                return (Get) super.set(str, obj);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setAlt */
            public DriveRequest<Reply> setAlt2(String str) {
                return (Get) super.setAlt(str);
            }

            public Get setCommentId(String str) {
                this.commentId = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setFields */
            public DriveRequest<Reply> setFields2(String str) {
                return (Get) super.setFields(str);
            }

            public Get setFileId(String str) {
                this.fileId = str;
                return this;
            }

            public Get setIncludeDeleted(Boolean bool) {
                this.includeDeleted = bool;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setKey */
            public DriveRequest<Reply> setKey2(String str) {
                return (Get) super.setKey(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setOauthToken */
            public DriveRequest<Reply> setOauthToken2(String str) {
                return (Get) super.setOauthToken(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setPrettyPrint */
            public DriveRequest<Reply> setPrettyPrint2(Boolean bool) {
                return (Get) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setQuotaUser */
            public DriveRequest<Reply> setQuotaUser2(String str) {
                return (Get) super.setQuotaUser(str);
            }

            public Get setReplyId(String str) {
                this.replyId = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setUserIp */
            public DriveRequest<Reply> setUserIp2(String str) {
                return (Get) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/Drive$Replies$List.class */
        public class List extends DriveRequest<ReplyList> {
            private static final String REST_PATH = "files/{fileId}/comments/{commentId}/replies";
            @com.google.api.client.a.q
            private String commentId;
            @com.google.api.client.a.q
            private String fileId;
            @com.google.api.client.a.q
            private Boolean includeDeleted;
            @com.google.api.client.a.q
            private Integer pageSize;
            @com.google.api.client.a.q
            private String pageToken;

            protected List(String str, String str2) {
                super(Drive.this, "GET", REST_PATH, null, ReplyList.class);
                this.fileId = (String) aa.a(str, "Required parameter fileId must be specified.");
                this.commentId = (String) aa.a(str2, "Required parameter commentId must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.b
            public q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.b
            public t executeUsingHead() throws IOException {
                return super.executeUsingHead();
            }

            public String getCommentId() {
                return this.commentId;
            }

            public String getFileId() {
                return this.fileId;
            }

            public Boolean getIncludeDeleted() {
                return this.includeDeleted;
            }

            public Integer getPageSize() {
                return this.pageSize;
            }

            public String getPageToken() {
                return this.pageToken;
            }

            public boolean isIncludeDeleted() {
                Boolean bool = this.includeDeleted;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.includeDeleted.booleanValue();
            }

            @Override // com.google.api.services.drive.DriveRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public List set(String str, Object obj) {
                return (List) super.set(str, obj);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setAlt */
            public DriveRequest<ReplyList> setAlt2(String str) {
                return (List) super.setAlt(str);
            }

            public List setCommentId(String str) {
                this.commentId = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setFields */
            public DriveRequest<ReplyList> setFields2(String str) {
                return (List) super.setFields(str);
            }

            public List setFileId(String str) {
                this.fileId = str;
                return this;
            }

            public List setIncludeDeleted(Boolean bool) {
                this.includeDeleted = bool;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setKey */
            public DriveRequest<ReplyList> setKey2(String str) {
                return (List) super.setKey(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setOauthToken */
            public DriveRequest<ReplyList> setOauthToken2(String str) {
                return (List) super.setOauthToken(str);
            }

            public List setPageSize(Integer num) {
                this.pageSize = num;
                return this;
            }

            public List setPageToken(String str) {
                this.pageToken = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setPrettyPrint */
            public DriveRequest<ReplyList> setPrettyPrint2(Boolean bool) {
                return (List) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setQuotaUser */
            public DriveRequest<ReplyList> setQuotaUser2(String str) {
                return (List) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setUserIp */
            public DriveRequest<ReplyList> setUserIp2(String str) {
                return (List) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/Drive$Replies$Update.class */
        public class Update extends DriveRequest<Reply> {
            private static final String REST_PATH = "files/{fileId}/comments/{commentId}/replies/{replyId}";
            @com.google.api.client.a.q
            private String commentId;
            @com.google.api.client.a.q
            private String fileId;
            @com.google.api.client.a.q
            private String replyId;

            protected Update(String str, String str2, String str3, Reply reply) {
                super(Drive.this, "PATCH", REST_PATH, reply, Reply.class);
                this.fileId = (String) aa.a(str, "Required parameter fileId must be specified.");
                this.commentId = (String) aa.a(str2, "Required parameter commentId must be specified.");
                this.replyId = (String) aa.a(str3, "Required parameter replyId must be specified.");
                checkRequiredParameter(reply, Constants.VAST_TRACKER_CONTENT);
                checkRequiredParameter(reply.getContent(), "Reply.getContent()");
            }

            public String getCommentId() {
                return this.commentId;
            }

            public String getFileId() {
                return this.fileId;
            }

            public String getReplyId() {
                return this.replyId;
            }

            @Override // com.google.api.services.drive.DriveRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Update set(String str, Object obj) {
                return (Update) super.set(str, obj);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setAlt */
            public DriveRequest<Reply> setAlt2(String str) {
                return (Update) super.setAlt(str);
            }

            public Update setCommentId(String str) {
                this.commentId = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setFields */
            public DriveRequest<Reply> setFields2(String str) {
                return (Update) super.setFields(str);
            }

            public Update setFileId(String str) {
                this.fileId = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setKey */
            public DriveRequest<Reply> setKey2(String str) {
                return (Update) super.setKey(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setOauthToken */
            public DriveRequest<Reply> setOauthToken2(String str) {
                return (Update) super.setOauthToken(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setPrettyPrint */
            public DriveRequest<Reply> setPrettyPrint2(Boolean bool) {
                return (Update) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setQuotaUser */
            public DriveRequest<Reply> setQuotaUser2(String str) {
                return (Update) super.setQuotaUser(str);
            }

            public Update setReplyId(String str) {
                this.replyId = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setUserIp */
            public DriveRequest<Reply> setUserIp2(String str) {
                return (Update) super.setUserIp(str);
            }
        }

        public Replies() {
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/Drive$Revisions.class */
    public final class Revisions {

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/Drive$Revisions$Delete.class */
        public class Delete extends DriveRequest<Void> {
            private static final String REST_PATH = "files/{fileId}/revisions/{revisionId}";
            @com.google.api.client.a.q
            private String fileId;
            @com.google.api.client.a.q
            private String revisionId;

            protected Delete(String str, String str2) {
                super(Drive.this, "DELETE", REST_PATH, null, Void.class);
                this.fileId = (String) aa.a(str, "Required parameter fileId must be specified.");
                this.revisionId = (String) aa.a(str2, "Required parameter revisionId must be specified.");
            }

            public String getFileId() {
                return this.fileId;
            }

            public String getRevisionId() {
                return this.revisionId;
            }

            @Override // com.google.api.services.drive.DriveRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Delete set(String str, Object obj) {
                return (Delete) super.set(str, obj);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setAlt */
            public DriveRequest<Void> setAlt2(String str) {
                return (Delete) super.setAlt(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setFields */
            public DriveRequest<Void> setFields2(String str) {
                return (Delete) super.setFields(str);
            }

            public Delete setFileId(String str) {
                this.fileId = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setKey */
            public DriveRequest<Void> setKey2(String str) {
                return (Delete) super.setKey(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setOauthToken */
            public DriveRequest<Void> setOauthToken2(String str) {
                return (Delete) super.setOauthToken(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setPrettyPrint */
            public DriveRequest<Void> setPrettyPrint2(Boolean bool) {
                return (Delete) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setQuotaUser */
            public DriveRequest<Void> setQuotaUser2(String str) {
                return (Delete) super.setQuotaUser(str);
            }

            public Delete setRevisionId(String str) {
                this.revisionId = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setUserIp */
            public DriveRequest<Void> setUserIp2(String str) {
                return (Delete) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/Drive$Revisions$Get.class */
        public class Get extends DriveRequest<Revision> {
            private static final String REST_PATH = "files/{fileId}/revisions/{revisionId}";
            @com.google.api.client.a.q
            private Boolean acknowledgeAbuse;
            @com.google.api.client.a.q
            private String fileId;
            @com.google.api.client.a.q
            private String revisionId;

            protected Get(String str, String str2) {
                super(Drive.this, "GET", REST_PATH, null, Revision.class);
                this.fileId = (String) aa.a(str, "Required parameter fileId must be specified.");
                this.revisionId = (String) aa.a(str2, "Required parameter revisionId must be specified.");
                initializeMediaDownload();
            }

            @Override // com.google.api.client.googleapis.services.b
            public i buildHttpRequestUrl() {
                String str;
                if (!"media".equals(get("alt")) || getMediaHttpUploader() != null) {
                    str = Drive.this.getBaseUrl();
                } else {
                    str = Drive.this.getRootUrl() + "download/" + Drive.this.getServicePath();
                }
                return new i(ad.a(str, getUriTemplate(), this));
            }

            @Override // com.google.api.client.googleapis.services.b
            public q buildHttpRequestUsingHead() throws IOException {
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

            public Boolean getAcknowledgeAbuse() {
                return this.acknowledgeAbuse;
            }

            public String getFileId() {
                return this.fileId;
            }

            public String getRevisionId() {
                return this.revisionId;
            }

            public boolean isAcknowledgeAbuse() {
                Boolean bool = this.acknowledgeAbuse;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.acknowledgeAbuse.booleanValue();
            }

            @Override // com.google.api.services.drive.DriveRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Get set(String str, Object obj) {
                return (Get) super.set(str, obj);
            }

            public Get setAcknowledgeAbuse(Boolean bool) {
                this.acknowledgeAbuse = bool;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setAlt */
            public DriveRequest<Revision> setAlt2(String str) {
                return (Get) super.setAlt(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setFields */
            public DriveRequest<Revision> setFields2(String str) {
                return (Get) super.setFields(str);
            }

            public Get setFileId(String str) {
                this.fileId = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setKey */
            public DriveRequest<Revision> setKey2(String str) {
                return (Get) super.setKey(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setOauthToken */
            public DriveRequest<Revision> setOauthToken2(String str) {
                return (Get) super.setOauthToken(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setPrettyPrint */
            public DriveRequest<Revision> setPrettyPrint2(Boolean bool) {
                return (Get) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setQuotaUser */
            public DriveRequest<Revision> setQuotaUser2(String str) {
                return (Get) super.setQuotaUser(str);
            }

            public Get setRevisionId(String str) {
                this.revisionId = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setUserIp */
            public DriveRequest<Revision> setUserIp2(String str) {
                return (Get) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/Drive$Revisions$List.class */
        public class List extends DriveRequest<RevisionList> {
            private static final String REST_PATH = "files/{fileId}/revisions";
            @com.google.api.client.a.q
            private String fileId;
            @com.google.api.client.a.q
            private Integer pageSize;
            @com.google.api.client.a.q
            private String pageToken;

            protected List(String str) {
                super(Drive.this, "GET", REST_PATH, null, RevisionList.class);
                this.fileId = (String) aa.a(str, "Required parameter fileId must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.b
            public q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.b
            public t executeUsingHead() throws IOException {
                return super.executeUsingHead();
            }

            public String getFileId() {
                return this.fileId;
            }

            public Integer getPageSize() {
                return this.pageSize;
            }

            public String getPageToken() {
                return this.pageToken;
            }

            @Override // com.google.api.services.drive.DriveRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public List set(String str, Object obj) {
                return (List) super.set(str, obj);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setAlt */
            public DriveRequest<RevisionList> setAlt2(String str) {
                return (List) super.setAlt(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setFields */
            public DriveRequest<RevisionList> setFields2(String str) {
                return (List) super.setFields(str);
            }

            public List setFileId(String str) {
                this.fileId = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setKey */
            public DriveRequest<RevisionList> setKey2(String str) {
                return (List) super.setKey(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setOauthToken */
            public DriveRequest<RevisionList> setOauthToken2(String str) {
                return (List) super.setOauthToken(str);
            }

            public List setPageSize(Integer num) {
                this.pageSize = num;
                return this;
            }

            public List setPageToken(String str) {
                this.pageToken = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setPrettyPrint */
            public DriveRequest<RevisionList> setPrettyPrint2(Boolean bool) {
                return (List) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setQuotaUser */
            public DriveRequest<RevisionList> setQuotaUser2(String str) {
                return (List) super.setQuotaUser(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setUserIp */
            public DriveRequest<RevisionList> setUserIp2(String str) {
                return (List) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/Drive$Revisions$Update.class */
        public class Update extends DriveRequest<Revision> {
            private static final String REST_PATH = "files/{fileId}/revisions/{revisionId}";
            @com.google.api.client.a.q
            private String fileId;
            @com.google.api.client.a.q
            private String revisionId;

            protected Update(String str, String str2, Revision revision) {
                super(Drive.this, "PATCH", REST_PATH, revision, Revision.class);
                this.fileId = (String) aa.a(str, "Required parameter fileId must be specified.");
                this.revisionId = (String) aa.a(str2, "Required parameter revisionId must be specified.");
            }

            public String getFileId() {
                return this.fileId;
            }

            public String getRevisionId() {
                return this.revisionId;
            }

            @Override // com.google.api.services.drive.DriveRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Update set(String str, Object obj) {
                return (Update) super.set(str, obj);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setAlt */
            public DriveRequest<Revision> setAlt2(String str) {
                return (Update) super.setAlt(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setFields */
            public DriveRequest<Revision> setFields2(String str) {
                return (Update) super.setFields(str);
            }

            public Update setFileId(String str) {
                this.fileId = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setKey */
            public DriveRequest<Revision> setKey2(String str) {
                return (Update) super.setKey(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setOauthToken */
            public DriveRequest<Revision> setOauthToken2(String str) {
                return (Update) super.setOauthToken(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setPrettyPrint */
            public DriveRequest<Revision> setPrettyPrint2(Boolean bool) {
                return (Update) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setQuotaUser */
            public DriveRequest<Revision> setQuotaUser2(String str) {
                return (Update) super.setQuotaUser(str);
            }

            public Update setRevisionId(String str) {
                this.revisionId = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setUserIp */
            public DriveRequest<Revision> setUserIp2(String str) {
                return (Update) super.setUserIp(str);
            }
        }

        public Revisions() {
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/Drive$Teamdrives.class */
    public final class Teamdrives {

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/Drive$Teamdrives$Create.class */
        public class Create extends DriveRequest<TeamDrive> {
            private static final String REST_PATH = "teamdrives";
            @com.google.api.client.a.q
            private String requestId;

            protected Create(String str, TeamDrive teamDrive) {
                super(Drive.this, "POST", REST_PATH, teamDrive, TeamDrive.class);
                this.requestId = (String) aa.a(str, "Required parameter requestId must be specified.");
            }

            public String getRequestId() {
                return this.requestId;
            }

            @Override // com.google.api.services.drive.DriveRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Create set(String str, Object obj) {
                return (Create) super.set(str, obj);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setAlt */
            public DriveRequest<TeamDrive> setAlt2(String str) {
                return (Create) super.setAlt(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setFields */
            public DriveRequest<TeamDrive> setFields2(String str) {
                return (Create) super.setFields(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setKey */
            public DriveRequest<TeamDrive> setKey2(String str) {
                return (Create) super.setKey(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setOauthToken */
            public DriveRequest<TeamDrive> setOauthToken2(String str) {
                return (Create) super.setOauthToken(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setPrettyPrint */
            public DriveRequest<TeamDrive> setPrettyPrint2(Boolean bool) {
                return (Create) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setQuotaUser */
            public DriveRequest<TeamDrive> setQuotaUser2(String str) {
                return (Create) super.setQuotaUser(str);
            }

            public Create setRequestId(String str) {
                this.requestId = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setUserIp */
            public DriveRequest<TeamDrive> setUserIp2(String str) {
                return (Create) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/Drive$Teamdrives$Delete.class */
        public class Delete extends DriveRequest<Void> {
            private static final String REST_PATH = "teamdrives/{teamDriveId}";
            @com.google.api.client.a.q
            private String teamDriveId;

            protected Delete(String str) {
                super(Drive.this, "DELETE", REST_PATH, null, Void.class);
                this.teamDriveId = (String) aa.a(str, "Required parameter teamDriveId must be specified.");
            }

            public String getTeamDriveId() {
                return this.teamDriveId;
            }

            @Override // com.google.api.services.drive.DriveRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Delete set(String str, Object obj) {
                return (Delete) super.set(str, obj);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setAlt */
            public DriveRequest<Void> setAlt2(String str) {
                return (Delete) super.setAlt(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setFields */
            public DriveRequest<Void> setFields2(String str) {
                return (Delete) super.setFields(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setKey */
            public DriveRequest<Void> setKey2(String str) {
                return (Delete) super.setKey(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setOauthToken */
            public DriveRequest<Void> setOauthToken2(String str) {
                return (Delete) super.setOauthToken(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setPrettyPrint */
            public DriveRequest<Void> setPrettyPrint2(Boolean bool) {
                return (Delete) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setQuotaUser */
            public DriveRequest<Void> setQuotaUser2(String str) {
                return (Delete) super.setQuotaUser(str);
            }

            public Delete setTeamDriveId(String str) {
                this.teamDriveId = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setUserIp */
            public DriveRequest<Void> setUserIp2(String str) {
                return (Delete) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/Drive$Teamdrives$Get.class */
        public class Get extends DriveRequest<TeamDrive> {
            private static final String REST_PATH = "teamdrives/{teamDriveId}";
            @com.google.api.client.a.q
            private String teamDriveId;
            @com.google.api.client.a.q
            private Boolean useDomainAdminAccess;

            protected Get(String str) {
                super(Drive.this, "GET", REST_PATH, null, TeamDrive.class);
                this.teamDriveId = (String) aa.a(str, "Required parameter teamDriveId must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.b
            public q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.b
            public t executeUsingHead() throws IOException {
                return super.executeUsingHead();
            }

            public String getTeamDriveId() {
                return this.teamDriveId;
            }

            public Boolean getUseDomainAdminAccess() {
                return this.useDomainAdminAccess;
            }

            public boolean isUseDomainAdminAccess() {
                Boolean bool = this.useDomainAdminAccess;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.useDomainAdminAccess.booleanValue();
            }

            @Override // com.google.api.services.drive.DriveRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Get set(String str, Object obj) {
                return (Get) super.set(str, obj);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setAlt */
            public DriveRequest<TeamDrive> setAlt2(String str) {
                return (Get) super.setAlt(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setFields */
            public DriveRequest<TeamDrive> setFields2(String str) {
                return (Get) super.setFields(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setKey */
            public DriveRequest<TeamDrive> setKey2(String str) {
                return (Get) super.setKey(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setOauthToken */
            public DriveRequest<TeamDrive> setOauthToken2(String str) {
                return (Get) super.setOauthToken(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setPrettyPrint */
            public DriveRequest<TeamDrive> setPrettyPrint2(Boolean bool) {
                return (Get) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setQuotaUser */
            public DriveRequest<TeamDrive> setQuotaUser2(String str) {
                return (Get) super.setQuotaUser(str);
            }

            public Get setTeamDriveId(String str) {
                this.teamDriveId = str;
                return this;
            }

            public Get setUseDomainAdminAccess(Boolean bool) {
                this.useDomainAdminAccess = bool;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setUserIp */
            public DriveRequest<TeamDrive> setUserIp2(String str) {
                return (Get) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/Drive$Teamdrives$List.class */
        public class List extends DriveRequest<TeamDriveList> {
            private static final String REST_PATH = "teamdrives";
            @com.google.api.client.a.q
            private Integer pageSize;
            @com.google.api.client.a.q
            private String pageToken;
            @com.google.api.client.a.q
            private String q;
            @com.google.api.client.a.q
            private Boolean useDomainAdminAccess;

            protected List() {
                super(Drive.this, "GET", REST_PATH, null, TeamDriveList.class);
            }

            @Override // com.google.api.client.googleapis.services.b
            public q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.b
            public t executeUsingHead() throws IOException {
                return super.executeUsingHead();
            }

            public Integer getPageSize() {
                return this.pageSize;
            }

            public String getPageToken() {
                return this.pageToken;
            }

            public String getQ() {
                return this.q;
            }

            public Boolean getUseDomainAdminAccess() {
                return this.useDomainAdminAccess;
            }

            public boolean isUseDomainAdminAccess() {
                Boolean bool = this.useDomainAdminAccess;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.useDomainAdminAccess.booleanValue();
            }

            @Override // com.google.api.services.drive.DriveRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public List set(String str, Object obj) {
                return (List) super.set(str, obj);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setAlt */
            public DriveRequest<TeamDriveList> setAlt2(String str) {
                return (List) super.setAlt(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setFields */
            public DriveRequest<TeamDriveList> setFields2(String str) {
                return (List) super.setFields(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setKey */
            public DriveRequest<TeamDriveList> setKey2(String str) {
                return (List) super.setKey(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setOauthToken */
            public DriveRequest<TeamDriveList> setOauthToken2(String str) {
                return (List) super.setOauthToken(str);
            }

            public List setPageSize(Integer num) {
                this.pageSize = num;
                return this;
            }

            public List setPageToken(String str) {
                this.pageToken = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setPrettyPrint */
            public DriveRequest<TeamDriveList> setPrettyPrint2(Boolean bool) {
                return (List) super.setPrettyPrint(bool);
            }

            public List setQ(String str) {
                this.q = str;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setQuotaUser */
            public DriveRequest<TeamDriveList> setQuotaUser2(String str) {
                return (List) super.setQuotaUser(str);
            }

            public List setUseDomainAdminAccess(Boolean bool) {
                this.useDomainAdminAccess = bool;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setUserIp */
            public DriveRequest<TeamDriveList> setUserIp2(String str) {
                return (List) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/Drive$Teamdrives$Update.class */
        public class Update extends DriveRequest<TeamDrive> {
            private static final String REST_PATH = "teamdrives/{teamDriveId}";
            @com.google.api.client.a.q
            private String teamDriveId;
            @com.google.api.client.a.q
            private Boolean useDomainAdminAccess;

            protected Update(String str, TeamDrive teamDrive) {
                super(Drive.this, "PATCH", REST_PATH, teamDrive, TeamDrive.class);
                this.teamDriveId = (String) aa.a(str, "Required parameter teamDriveId must be specified.");
            }

            public String getTeamDriveId() {
                return this.teamDriveId;
            }

            public Boolean getUseDomainAdminAccess() {
                return this.useDomainAdminAccess;
            }

            public boolean isUseDomainAdminAccess() {
                Boolean bool = this.useDomainAdminAccess;
                if (bool == null || bool == j.f31626a) {
                    return false;
                }
                return this.useDomainAdminAccess.booleanValue();
            }

            @Override // com.google.api.services.drive.DriveRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Update set(String str, Object obj) {
                return (Update) super.set(str, obj);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setAlt */
            public DriveRequest<TeamDrive> setAlt2(String str) {
                return (Update) super.setAlt(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setFields */
            public DriveRequest<TeamDrive> setFields2(String str) {
                return (Update) super.setFields(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setKey */
            public DriveRequest<TeamDrive> setKey2(String str) {
                return (Update) super.setKey(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setOauthToken */
            public DriveRequest<TeamDrive> setOauthToken2(String str) {
                return (Update) super.setOauthToken(str);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setPrettyPrint */
            public DriveRequest<TeamDrive> setPrettyPrint2(Boolean bool) {
                return (Update) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setQuotaUser */
            public DriveRequest<TeamDrive> setQuotaUser2(String str) {
                return (Update) super.setQuotaUser(str);
            }

            public Update setTeamDriveId(String str) {
                this.teamDriveId = str;
                return this;
            }

            public Update setUseDomainAdminAccess(Boolean bool) {
                this.useDomainAdminAccess = bool;
                return this;
            }

            @Override // com.google.api.services.drive.DriveRequest
            /* renamed from: setUserIp */
            public DriveRequest<TeamDrive> setUserIp2(String str) {
                return (Update) super.setUserIp(str);
            }
        }

        public Teamdrives() {
        }
    }

    static {
        aa.b(a.f31706a.intValue() == 1 && a.f31707b.intValue() >= 15, "You are currently running with version %s of google-api-client. You need at least version 1.15 of google-api-client to run version 1.25.0 of the Drive API library.", a.f31709d);
    }

    public Drive(w wVar, JsonFactory jsonFactory, s sVar) {
        this(new Builder(wVar, jsonFactory, sVar));
    }

    Drive(Builder builder) {
        super(builder);
    }

    public About about() {
        return new About();
    }

    public Changes changes() {
        return new Changes();
    }

    public Channels channels() {
        return new Channels();
    }

    public Comments comments() {
        return new Comments();
    }

    public Drives drives() {
        return new Drives();
    }

    public Files files() {
        return new Files();
    }

    @Override // com.google.api.client.googleapis.services.a
    public void initialize(com.google.api.client.googleapis.services.b<?> bVar) throws IOException {
        super.initialize(bVar);
    }

    public Permissions permissions() {
        return new Permissions();
    }

    public Replies replies() {
        return new Replies();
    }

    public Revisions revisions() {
        return new Revisions();
    }

    public Teamdrives teamdrives() {
        return new Teamdrives();
    }
}
