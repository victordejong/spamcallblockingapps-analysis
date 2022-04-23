package com.google.api.services.gmail;

import com.google.api.client.a.aa;
import com.google.api.client.a.j;
import com.google.api.client.a.q;
import com.google.api.client.googleapis.a;
import com.google.api.client.googleapis.services.b;
import com.google.api.client.googleapis.services.d;
import com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient;
import com.google.api.client.http.s;
import com.google.api.client.http.t;
import com.google.api.client.http.w;
import com.google.api.client.json.JsonFactory;
import com.google.api.services.gmail.model.AutoForwarding;
import com.google.api.services.gmail.model.BatchDeleteMessagesRequest;
import com.google.api.services.gmail.model.BatchModifyMessagesRequest;
import com.google.api.services.gmail.model.Delegate;
import com.google.api.services.gmail.model.Draft;
import com.google.api.services.gmail.model.Filter;
import com.google.api.services.gmail.model.ForwardingAddress;
import com.google.api.services.gmail.model.ImapSettings;
import com.google.api.services.gmail.model.Label;
import com.google.api.services.gmail.model.LanguageSettings;
import com.google.api.services.gmail.model.ListDelegatesResponse;
import com.google.api.services.gmail.model.ListDraftsResponse;
import com.google.api.services.gmail.model.ListFiltersResponse;
import com.google.api.services.gmail.model.ListForwardingAddressesResponse;
import com.google.api.services.gmail.model.ListHistoryResponse;
import com.google.api.services.gmail.model.ListLabelsResponse;
import com.google.api.services.gmail.model.ListMessagesResponse;
import com.google.api.services.gmail.model.ListSendAsResponse;
import com.google.api.services.gmail.model.ListSmimeInfoResponse;
import com.google.api.services.gmail.model.ListThreadsResponse;
import com.google.api.services.gmail.model.Message;
import com.google.api.services.gmail.model.MessagePartBody;
import com.google.api.services.gmail.model.ModifyMessageRequest;
import com.google.api.services.gmail.model.ModifyThreadRequest;
import com.google.api.services.gmail.model.PopSettings;
import com.google.api.services.gmail.model.Profile;
import com.google.api.services.gmail.model.Thread;
import com.google.api.services.gmail.model.VacationSettings;
import com.google.api.services.gmail.model.WatchRequest;
import com.google.api.services.gmail.model.WatchResponse;
import com.mopub.common.Constants;
import java.io.IOException;
import java.math.BigInteger;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail.class */
public class Gmail extends AbstractGoogleJsonClient {
    public static final String DEFAULT_BASE_URL = "https://www.googleapis.com/gmail/v1/users/";
    public static final String DEFAULT_BATCH_PATH = "batch/gmail/v1";
    public static final String DEFAULT_ROOT_URL = "https://www.googleapis.com/";
    public static final String DEFAULT_SERVICE_PATH = "gmail/v1/users/";

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Builder.class */
    public static final class Builder extends AbstractGoogleJsonClient.Builder {
        public Builder(w wVar, JsonFactory jsonFactory, s sVar) {
            super(wVar, jsonFactory, "https://www.googleapis.com/", Gmail.DEFAULT_SERVICE_PATH, sVar, false);
            setBatchPath(Gmail.DEFAULT_BATCH_PATH);
        }

        @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient.Builder, com.google.api.client.googleapis.services.a.AbstractC0505a
        public final Gmail build() {
            return new Gmail(this);
        }

        @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient.Builder, com.google.api.client.googleapis.services.a.AbstractC0505a
        public final Builder setApplicationName(String str) {
            return (Builder) super.setApplicationName(str);
        }

        @Override // com.google.api.client.googleapis.services.a.AbstractC0505a
        public final Builder setBatchPath(String str) {
            return (Builder) super.setBatchPath(str);
        }

        public final Builder setGmailRequestInitializer(GmailRequestInitializer gmailRequestInitializer) {
            return (Builder) super.setGoogleClientRequestInitializer((d) gmailRequestInitializer);
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

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users.class */
    public final class Users {

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Drafts.class */
        public final class Drafts {

            /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Drafts$Create.class */
            public class Create extends GmailRequest<Draft> {
                private static final String REST_PATH = "{userId}/drafts";
                @q
                private String userId;

                protected Create(String str, Draft draft) {
                    super(Gmail.this, "POST", REST_PATH, draft, Draft.class);
                    this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
                }

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                protected Create(java.lang.String r9, com.google.api.services.gmail.model.Draft r10, com.google.api.client.http.b r11) {
                    /*
                        r7 = this;
                        r0 = r7
                        r1 = r8
                        com.google.api.services.gmail.Gmail.Users.Drafts.this = r1
                        r0 = r8
                        com.google.api.services.gmail.Gmail$Users r0 = com.google.api.services.gmail.Gmail.Users.this
                        com.google.api.services.gmail.Gmail r0 = com.google.api.services.gmail.Gmail.this
                        r12 = r0
                        java.lang.StringBuilder r0 = new java.lang.StringBuilder
                        r1 = r0
                        java.lang.String r2 = "/upload/"
                        r1.<init>(r2)
                        r13 = r0
                        r0 = r13
                        r1 = r8
                        com.google.api.services.gmail.Gmail$Users r1 = com.google.api.services.gmail.Gmail.Users.this
                        com.google.api.services.gmail.Gmail r1 = com.google.api.services.gmail.Gmail.this
                        java.lang.String r1 = r1.getServicePath()
                        java.lang.StringBuilder r0 = r0.append(r1)
                        r0 = r13
                        java.lang.String r1 = "{userId}/drafts"
                        java.lang.StringBuilder r0 = r0.append(r1)
                        r0 = r7
                        r1 = r12
                        java.lang.String r2 = "POST"
                        r3 = r13
                        java.lang.String r3 = r3.toString()
                        r4 = r10
                        java.lang.Class<com.google.api.services.gmail.model.Draft> r5 = com.google.api.services.gmail.model.Draft.class
                        r0.<init>(r1, r2, r3, r4, r5)
                        r0 = r7
                        r1 = r9
                        java.lang.String r2 = "Required parameter userId must be specified."
                        java.lang.Object r1 = com.google.api.client.a.aa.a(r1, r2)
                        java.lang.String r1 = (java.lang.String) r1
                        r0.userId = r1
                        r0 = r7
                        r1 = r11
                        r0.initializeMediaUpload(r1)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.google.api.services.gmail.Gmail.Users.Drafts.Create.<init>(com.google.api.services.gmail.Gmail$Users$Drafts, java.lang.String, com.google.api.services.gmail.model.Draft, com.google.api.client.http.b):void");
                }

                public String getUserId() {
                    return this.userId;
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
                public Create set(String str, Object obj) {
                    return (Create) super.set(str, obj);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setAlt */
                public GmailRequest<Draft> setAlt2(String str) {
                    return (Create) super.setAlt(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setFields */
                public GmailRequest<Draft> setFields2(String str) {
                    return (Create) super.setFields(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setKey */
                public GmailRequest<Draft> setKey2(String str) {
                    return (Create) super.setKey(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setOauthToken */
                public GmailRequest<Draft> setOauthToken2(String str) {
                    return (Create) super.setOauthToken(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setPrettyPrint */
                public GmailRequest<Draft> setPrettyPrint2(Boolean bool) {
                    return (Create) super.setPrettyPrint(bool);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setQuotaUser */
                public GmailRequest<Draft> setQuotaUser2(String str) {
                    return (Create) super.setQuotaUser(str);
                }

                public Create setUserId(String str) {
                    this.userId = str;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setUserIp */
                public GmailRequest<Draft> setUserIp2(String str) {
                    return (Create) super.setUserIp(str);
                }
            }

            /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Drafts$Delete.class */
            public class Delete extends GmailRequest<Void> {
                private static final String REST_PATH = "{userId}/drafts/{id}";
                @q
                private String id;
                @q
                private String userId;

                protected Delete(String str, String str2) {
                    super(Gmail.this, "DELETE", REST_PATH, null, Void.class);
                    this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
                    this.id = (String) aa.a(str2, "Required parameter id must be specified.");
                }

                public String getId() {
                    return this.id;
                }

                public String getUserId() {
                    return this.userId;
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
                public Delete set(String str, Object obj) {
                    return (Delete) super.set(str, obj);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setAlt */
                public GmailRequest<Void> setAlt2(String str) {
                    return (Delete) super.setAlt(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setFields */
                public GmailRequest<Void> setFields2(String str) {
                    return (Delete) super.setFields(str);
                }

                public Delete setId(String str) {
                    this.id = str;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setKey */
                public GmailRequest<Void> setKey2(String str) {
                    return (Delete) super.setKey(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setOauthToken */
                public GmailRequest<Void> setOauthToken2(String str) {
                    return (Delete) super.setOauthToken(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setPrettyPrint */
                public GmailRequest<Void> setPrettyPrint2(Boolean bool) {
                    return (Delete) super.setPrettyPrint(bool);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setQuotaUser */
                public GmailRequest<Void> setQuotaUser2(String str) {
                    return (Delete) super.setQuotaUser(str);
                }

                public Delete setUserId(String str) {
                    this.userId = str;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setUserIp */
                public GmailRequest<Void> setUserIp2(String str) {
                    return (Delete) super.setUserIp(str);
                }
            }

            /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Drafts$Get.class */
            public class Get extends GmailRequest<Draft> {
                private static final String REST_PATH = "{userId}/drafts/{id}";
                @q
                private String format;
                @q
                private String id;
                @q
                private String userId;

                protected Get(String str, String str2) {
                    super(Gmail.this, "GET", REST_PATH, null, Draft.class);
                    this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
                    this.id = (String) aa.a(str2, "Required parameter id must be specified.");
                }

                @Override // com.google.api.client.googleapis.services.b
                public com.google.api.client.http.q buildHttpRequestUsingHead() throws IOException {
                    return super.buildHttpRequestUsingHead();
                }

                @Override // com.google.api.client.googleapis.services.b
                public t executeUsingHead() throws IOException {
                    return super.executeUsingHead();
                }

                public String getFormat() {
                    return this.format;
                }

                public String getId() {
                    return this.id;
                }

                public String getUserId() {
                    return this.userId;
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
                public Get set(String str, Object obj) {
                    return (Get) super.set(str, obj);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setAlt */
                public GmailRequest<Draft> setAlt2(String str) {
                    return (Get) super.setAlt(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setFields */
                public GmailRequest<Draft> setFields2(String str) {
                    return (Get) super.setFields(str);
                }

                public Get setFormat(String str) {
                    this.format = str;
                    return this;
                }

                public Get setId(String str) {
                    this.id = str;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setKey */
                public GmailRequest<Draft> setKey2(String str) {
                    return (Get) super.setKey(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setOauthToken */
                public GmailRequest<Draft> setOauthToken2(String str) {
                    return (Get) super.setOauthToken(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setPrettyPrint */
                public GmailRequest<Draft> setPrettyPrint2(Boolean bool) {
                    return (Get) super.setPrettyPrint(bool);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setQuotaUser */
                public GmailRequest<Draft> setQuotaUser2(String str) {
                    return (Get) super.setQuotaUser(str);
                }

                public Get setUserId(String str) {
                    this.userId = str;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setUserIp */
                public GmailRequest<Draft> setUserIp2(String str) {
                    return (Get) super.setUserIp(str);
                }
            }

            /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Drafts$List.class */
            public class List extends GmailRequest<ListDraftsResponse> {
                private static final String REST_PATH = "{userId}/drafts";
                @q
                private Boolean includeSpamTrash;
                @q
                private Long maxResults;
                @q
                private String pageToken;
                @q
                private String q;
                @q
                private String userId;

                protected List(String str) {
                    super(Gmail.this, "GET", REST_PATH, null, ListDraftsResponse.class);
                    this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
                }

                @Override // com.google.api.client.googleapis.services.b
                public com.google.api.client.http.q buildHttpRequestUsingHead() throws IOException {
                    return super.buildHttpRequestUsingHead();
                }

                @Override // com.google.api.client.googleapis.services.b
                public t executeUsingHead() throws IOException {
                    return super.executeUsingHead();
                }

                public Boolean getIncludeSpamTrash() {
                    return this.includeSpamTrash;
                }

                public Long getMaxResults() {
                    return this.maxResults;
                }

                public String getPageToken() {
                    return this.pageToken;
                }

                public String getQ() {
                    return this.q;
                }

                public String getUserId() {
                    return this.userId;
                }

                public boolean isIncludeSpamTrash() {
                    Boolean bool = this.includeSpamTrash;
                    if (bool == null || bool == j.f31626a) {
                        return false;
                    }
                    return this.includeSpamTrash.booleanValue();
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
                public List set(String str, Object obj) {
                    return (List) super.set(str, obj);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setAlt */
                public GmailRequest<ListDraftsResponse> setAlt2(String str) {
                    return (List) super.setAlt(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setFields */
                public GmailRequest<ListDraftsResponse> setFields2(String str) {
                    return (List) super.setFields(str);
                }

                public List setIncludeSpamTrash(Boolean bool) {
                    this.includeSpamTrash = bool;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setKey */
                public GmailRequest<ListDraftsResponse> setKey2(String str) {
                    return (List) super.setKey(str);
                }

                public List setMaxResults(Long l) {
                    this.maxResults = l;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setOauthToken */
                public GmailRequest<ListDraftsResponse> setOauthToken2(String str) {
                    return (List) super.setOauthToken(str);
                }

                public List setPageToken(String str) {
                    this.pageToken = str;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setPrettyPrint */
                public GmailRequest<ListDraftsResponse> setPrettyPrint2(Boolean bool) {
                    return (List) super.setPrettyPrint(bool);
                }

                public List setQ(String str) {
                    this.q = str;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setQuotaUser */
                public GmailRequest<ListDraftsResponse> setQuotaUser2(String str) {
                    return (List) super.setQuotaUser(str);
                }

                public List setUserId(String str) {
                    this.userId = str;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setUserIp */
                public GmailRequest<ListDraftsResponse> setUserIp2(String str) {
                    return (List) super.setUserIp(str);
                }
            }

            /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Drafts$Send.class */
            public class Send extends GmailRequest<Message> {
                private static final String REST_PATH = "{userId}/drafts/send";
                @q
                private String userId;

                protected Send(String str, Draft draft) {
                    super(Gmail.this, "POST", REST_PATH, draft, Message.class);
                    this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
                }

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                protected Send(java.lang.String r9, com.google.api.services.gmail.model.Draft r10, com.google.api.client.http.b r11) {
                    /*
                        r7 = this;
                        r0 = r7
                        r1 = r8
                        com.google.api.services.gmail.Gmail.Users.Drafts.this = r1
                        r0 = r8
                        com.google.api.services.gmail.Gmail$Users r0 = com.google.api.services.gmail.Gmail.Users.this
                        com.google.api.services.gmail.Gmail r0 = com.google.api.services.gmail.Gmail.this
                        r12 = r0
                        java.lang.StringBuilder r0 = new java.lang.StringBuilder
                        r1 = r0
                        java.lang.String r2 = "/upload/"
                        r1.<init>(r2)
                        r13 = r0
                        r0 = r13
                        r1 = r8
                        com.google.api.services.gmail.Gmail$Users r1 = com.google.api.services.gmail.Gmail.Users.this
                        com.google.api.services.gmail.Gmail r1 = com.google.api.services.gmail.Gmail.this
                        java.lang.String r1 = r1.getServicePath()
                        java.lang.StringBuilder r0 = r0.append(r1)
                        r0 = r13
                        java.lang.String r1 = "{userId}/drafts/send"
                        java.lang.StringBuilder r0 = r0.append(r1)
                        r0 = r7
                        r1 = r12
                        java.lang.String r2 = "POST"
                        r3 = r13
                        java.lang.String r3 = r3.toString()
                        r4 = r10
                        java.lang.Class<com.google.api.services.gmail.model.Message> r5 = com.google.api.services.gmail.model.Message.class
                        r0.<init>(r1, r2, r3, r4, r5)
                        r0 = r7
                        r1 = r9
                        java.lang.String r2 = "Required parameter userId must be specified."
                        java.lang.Object r1 = com.google.api.client.a.aa.a(r1, r2)
                        java.lang.String r1 = (java.lang.String) r1
                        r0.userId = r1
                        r0 = r7
                        r1 = r11
                        r0.initializeMediaUpload(r1)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.google.api.services.gmail.Gmail.Users.Drafts.Send.<init>(com.google.api.services.gmail.Gmail$Users$Drafts, java.lang.String, com.google.api.services.gmail.model.Draft, com.google.api.client.http.b):void");
                }

                public String getUserId() {
                    return this.userId;
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
                public Send set(String str, Object obj) {
                    return (Send) super.set(str, obj);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setAlt */
                public GmailRequest<Message> setAlt2(String str) {
                    return (Send) super.setAlt(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setFields */
                public GmailRequest<Message> setFields2(String str) {
                    return (Send) super.setFields(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setKey */
                public GmailRequest<Message> setKey2(String str) {
                    return (Send) super.setKey(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setOauthToken */
                public GmailRequest<Message> setOauthToken2(String str) {
                    return (Send) super.setOauthToken(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setPrettyPrint */
                public GmailRequest<Message> setPrettyPrint2(Boolean bool) {
                    return (Send) super.setPrettyPrint(bool);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setQuotaUser */
                public GmailRequest<Message> setQuotaUser2(String str) {
                    return (Send) super.setQuotaUser(str);
                }

                public Send setUserId(String str) {
                    this.userId = str;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setUserIp */
                public GmailRequest<Message> setUserIp2(String str) {
                    return (Send) super.setUserIp(str);
                }
            }

            /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Drafts$Update.class */
            public class Update extends GmailRequest<Draft> {
                private static final String REST_PATH = "{userId}/drafts/{id}";
                @q
                private String id;
                @q
                private String userId;

                protected Update(String str, String str2, Draft draft) {
                    super(Gmail.this, "PUT", REST_PATH, draft, Draft.class);
                    this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
                    this.id = (String) aa.a(str2, "Required parameter id must be specified.");
                }

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                protected Update(java.lang.String r9, java.lang.String r10, com.google.api.services.gmail.model.Draft r11, com.google.api.client.http.b r12) {
                    /*
                        r7 = this;
                        r0 = r7
                        r1 = r8
                        com.google.api.services.gmail.Gmail.Users.Drafts.this = r1
                        r0 = r8
                        com.google.api.services.gmail.Gmail$Users r0 = com.google.api.services.gmail.Gmail.Users.this
                        com.google.api.services.gmail.Gmail r0 = com.google.api.services.gmail.Gmail.this
                        r13 = r0
                        java.lang.StringBuilder r0 = new java.lang.StringBuilder
                        r1 = r0
                        java.lang.String r2 = "/upload/"
                        r1.<init>(r2)
                        r14 = r0
                        r0 = r14
                        r1 = r8
                        com.google.api.services.gmail.Gmail$Users r1 = com.google.api.services.gmail.Gmail.Users.this
                        com.google.api.services.gmail.Gmail r1 = com.google.api.services.gmail.Gmail.this
                        java.lang.String r1 = r1.getServicePath()
                        java.lang.StringBuilder r0 = r0.append(r1)
                        r0 = r14
                        java.lang.String r1 = "{userId}/drafts/{id}"
                        java.lang.StringBuilder r0 = r0.append(r1)
                        r0 = r7
                        r1 = r13
                        java.lang.String r2 = "PUT"
                        r3 = r14
                        java.lang.String r3 = r3.toString()
                        r4 = r11
                        java.lang.Class<com.google.api.services.gmail.model.Draft> r5 = com.google.api.services.gmail.model.Draft.class
                        r0.<init>(r1, r2, r3, r4, r5)
                        r0 = r7
                        r1 = r9
                        java.lang.String r2 = "Required parameter userId must be specified."
                        java.lang.Object r1 = com.google.api.client.a.aa.a(r1, r2)
                        java.lang.String r1 = (java.lang.String) r1
                        r0.userId = r1
                        r0 = r7
                        r1 = r10
                        java.lang.String r2 = "Required parameter id must be specified."
                        java.lang.Object r1 = com.google.api.client.a.aa.a(r1, r2)
                        java.lang.String r1 = (java.lang.String) r1
                        r0.id = r1
                        r0 = r7
                        r1 = r12
                        r0.initializeMediaUpload(r1)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.google.api.services.gmail.Gmail.Users.Drafts.Update.<init>(com.google.api.services.gmail.Gmail$Users$Drafts, java.lang.String, java.lang.String, com.google.api.services.gmail.model.Draft, com.google.api.client.http.b):void");
                }

                public String getId() {
                    return this.id;
                }

                public String getUserId() {
                    return this.userId;
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
                public Update set(String str, Object obj) {
                    return (Update) super.set(str, obj);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setAlt */
                public GmailRequest<Draft> setAlt2(String str) {
                    return (Update) super.setAlt(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setFields */
                public GmailRequest<Draft> setFields2(String str) {
                    return (Update) super.setFields(str);
                }

                public Update setId(String str) {
                    this.id = str;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setKey */
                public GmailRequest<Draft> setKey2(String str) {
                    return (Update) super.setKey(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setOauthToken */
                public GmailRequest<Draft> setOauthToken2(String str) {
                    return (Update) super.setOauthToken(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setPrettyPrint */
                public GmailRequest<Draft> setPrettyPrint2(Boolean bool) {
                    return (Update) super.setPrettyPrint(bool);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setQuotaUser */
                public GmailRequest<Draft> setQuotaUser2(String str) {
                    return (Update) super.setQuotaUser(str);
                }

                public Update setUserId(String str) {
                    this.userId = str;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setUserIp */
                public GmailRequest<Draft> setUserIp2(String str) {
                    return (Update) super.setUserIp(str);
                }
            }

            public Drafts() {
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$GetProfile.class */
        public class GetProfile extends GmailRequest<Profile> {
            private static final String REST_PATH = "{userId}/profile";
            @q
            private String userId;

            protected GetProfile(String str) {
                super(Gmail.this, "GET", REST_PATH, null, Profile.class);
                this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.b
            public com.google.api.client.http.q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.b
            public t executeUsingHead() throws IOException {
                return super.executeUsingHead();
            }

            public String getUserId() {
                return this.userId;
            }

            @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public GetProfile set(String str, Object obj) {
                return (GetProfile) super.set(str, obj);
            }

            @Override // com.google.api.services.gmail.GmailRequest
            /* renamed from: setAlt */
            public GmailRequest<Profile> setAlt2(String str) {
                return (GetProfile) super.setAlt(str);
            }

            @Override // com.google.api.services.gmail.GmailRequest
            /* renamed from: setFields */
            public GmailRequest<Profile> setFields2(String str) {
                return (GetProfile) super.setFields(str);
            }

            @Override // com.google.api.services.gmail.GmailRequest
            /* renamed from: setKey */
            public GmailRequest<Profile> setKey2(String str) {
                return (GetProfile) super.setKey(str);
            }

            @Override // com.google.api.services.gmail.GmailRequest
            /* renamed from: setOauthToken */
            public GmailRequest<Profile> setOauthToken2(String str) {
                return (GetProfile) super.setOauthToken(str);
            }

            @Override // com.google.api.services.gmail.GmailRequest
            /* renamed from: setPrettyPrint */
            public GmailRequest<Profile> setPrettyPrint2(Boolean bool) {
                return (GetProfile) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.gmail.GmailRequest
            /* renamed from: setQuotaUser */
            public GmailRequest<Profile> setQuotaUser2(String str) {
                return (GetProfile) super.setQuotaUser(str);
            }

            public GetProfile setUserId(String str) {
                this.userId = str;
                return this;
            }

            @Override // com.google.api.services.gmail.GmailRequest
            /* renamed from: setUserIp */
            public GmailRequest<Profile> setUserIp2(String str) {
                return (GetProfile) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$History.class */
        public final class History {

            /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$History$List.class */
            public class List extends GmailRequest<ListHistoryResponse> {
                private static final String REST_PATH = "{userId}/history";
                @q
                private java.util.List<String> historyTypes;
                @q
                private String labelId;
                @q
                private Long maxResults;
                @q
                private String pageToken;
                @q
                private BigInteger startHistoryId;
                @q
                private String userId;

                protected List(String str) {
                    super(Gmail.this, "GET", REST_PATH, null, ListHistoryResponse.class);
                    this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
                }

                @Override // com.google.api.client.googleapis.services.b
                public com.google.api.client.http.q buildHttpRequestUsingHead() throws IOException {
                    return super.buildHttpRequestUsingHead();
                }

                @Override // com.google.api.client.googleapis.services.b
                public t executeUsingHead() throws IOException {
                    return super.executeUsingHead();
                }

                public java.util.List<String> getHistoryTypes() {
                    return this.historyTypes;
                }

                public String getLabelId() {
                    return this.labelId;
                }

                public Long getMaxResults() {
                    return this.maxResults;
                }

                public String getPageToken() {
                    return this.pageToken;
                }

                public BigInteger getStartHistoryId() {
                    return this.startHistoryId;
                }

                public String getUserId() {
                    return this.userId;
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
                public List set(String str, Object obj) {
                    return (List) super.set(str, obj);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setAlt */
                public GmailRequest<ListHistoryResponse> setAlt2(String str) {
                    return (List) super.setAlt(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setFields */
                public GmailRequest<ListHistoryResponse> setFields2(String str) {
                    return (List) super.setFields(str);
                }

                public List setHistoryTypes(java.util.List<String> list) {
                    this.historyTypes = list;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setKey */
                public GmailRequest<ListHistoryResponse> setKey2(String str) {
                    return (List) super.setKey(str);
                }

                public List setLabelId(String str) {
                    this.labelId = str;
                    return this;
                }

                public List setMaxResults(Long l) {
                    this.maxResults = l;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setOauthToken */
                public GmailRequest<ListHistoryResponse> setOauthToken2(String str) {
                    return (List) super.setOauthToken(str);
                }

                public List setPageToken(String str) {
                    this.pageToken = str;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setPrettyPrint */
                public GmailRequest<ListHistoryResponse> setPrettyPrint2(Boolean bool) {
                    return (List) super.setPrettyPrint(bool);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setQuotaUser */
                public GmailRequest<ListHistoryResponse> setQuotaUser2(String str) {
                    return (List) super.setQuotaUser(str);
                }

                public List setStartHistoryId(BigInteger bigInteger) {
                    this.startHistoryId = bigInteger;
                    return this;
                }

                public List setUserId(String str) {
                    this.userId = str;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setUserIp */
                public GmailRequest<ListHistoryResponse> setUserIp2(String str) {
                    return (List) super.setUserIp(str);
                }
            }

            public History() {
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Labels.class */
        public final class Labels {

            /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Labels$Create.class */
            public class Create extends GmailRequest<Label> {
                private static final String REST_PATH = "{userId}/labels";
                @q
                private String userId;

                protected Create(String str, Label label) {
                    super(Gmail.this, "POST", REST_PATH, label, Label.class);
                    this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
                    checkRequiredParameter(label, Constants.VAST_TRACKER_CONTENT);
                    checkRequiredParameter(label.getLabelListVisibility(), "Label.getLabelListVisibility()");
                    checkRequiredParameter(label, Constants.VAST_TRACKER_CONTENT);
                    checkRequiredParameter(label.getMessageListVisibility(), "Label.getMessageListVisibility()");
                    checkRequiredParameter(label, Constants.VAST_TRACKER_CONTENT);
                    checkRequiredParameter(label.getName(), "Label.getName()");
                }

                public String getUserId() {
                    return this.userId;
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
                public Create set(String str, Object obj) {
                    return (Create) super.set(str, obj);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setAlt */
                public GmailRequest<Label> setAlt2(String str) {
                    return (Create) super.setAlt(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setFields */
                public GmailRequest<Label> setFields2(String str) {
                    return (Create) super.setFields(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setKey */
                public GmailRequest<Label> setKey2(String str) {
                    return (Create) super.setKey(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setOauthToken */
                public GmailRequest<Label> setOauthToken2(String str) {
                    return (Create) super.setOauthToken(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setPrettyPrint */
                public GmailRequest<Label> setPrettyPrint2(Boolean bool) {
                    return (Create) super.setPrettyPrint(bool);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setQuotaUser */
                public GmailRequest<Label> setQuotaUser2(String str) {
                    return (Create) super.setQuotaUser(str);
                }

                public Create setUserId(String str) {
                    this.userId = str;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setUserIp */
                public GmailRequest<Label> setUserIp2(String str) {
                    return (Create) super.setUserIp(str);
                }
            }

            /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Labels$Delete.class */
            public class Delete extends GmailRequest<Void> {
                private static final String REST_PATH = "{userId}/labels/{id}";
                @q
                private String id;
                @q
                private String userId;

                protected Delete(String str, String str2) {
                    super(Gmail.this, "DELETE", REST_PATH, null, Void.class);
                    this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
                    this.id = (String) aa.a(str2, "Required parameter id must be specified.");
                }

                public String getId() {
                    return this.id;
                }

                public String getUserId() {
                    return this.userId;
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
                public Delete set(String str, Object obj) {
                    return (Delete) super.set(str, obj);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setAlt */
                public GmailRequest<Void> setAlt2(String str) {
                    return (Delete) super.setAlt(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setFields */
                public GmailRequest<Void> setFields2(String str) {
                    return (Delete) super.setFields(str);
                }

                public Delete setId(String str) {
                    this.id = str;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setKey */
                public GmailRequest<Void> setKey2(String str) {
                    return (Delete) super.setKey(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setOauthToken */
                public GmailRequest<Void> setOauthToken2(String str) {
                    return (Delete) super.setOauthToken(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setPrettyPrint */
                public GmailRequest<Void> setPrettyPrint2(Boolean bool) {
                    return (Delete) super.setPrettyPrint(bool);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setQuotaUser */
                public GmailRequest<Void> setQuotaUser2(String str) {
                    return (Delete) super.setQuotaUser(str);
                }

                public Delete setUserId(String str) {
                    this.userId = str;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setUserIp */
                public GmailRequest<Void> setUserIp2(String str) {
                    return (Delete) super.setUserIp(str);
                }
            }

            /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Labels$Get.class */
            public class Get extends GmailRequest<Label> {
                private static final String REST_PATH = "{userId}/labels/{id}";
                @q
                private String id;
                @q
                private String userId;

                protected Get(String str, String str2) {
                    super(Gmail.this, "GET", REST_PATH, null, Label.class);
                    this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
                    this.id = (String) aa.a(str2, "Required parameter id must be specified.");
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

                public String getUserId() {
                    return this.userId;
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
                public Get set(String str, Object obj) {
                    return (Get) super.set(str, obj);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setAlt */
                public GmailRequest<Label> setAlt2(String str) {
                    return (Get) super.setAlt(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setFields */
                public GmailRequest<Label> setFields2(String str) {
                    return (Get) super.setFields(str);
                }

                public Get setId(String str) {
                    this.id = str;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setKey */
                public GmailRequest<Label> setKey2(String str) {
                    return (Get) super.setKey(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setOauthToken */
                public GmailRequest<Label> setOauthToken2(String str) {
                    return (Get) super.setOauthToken(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setPrettyPrint */
                public GmailRequest<Label> setPrettyPrint2(Boolean bool) {
                    return (Get) super.setPrettyPrint(bool);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setQuotaUser */
                public GmailRequest<Label> setQuotaUser2(String str) {
                    return (Get) super.setQuotaUser(str);
                }

                public Get setUserId(String str) {
                    this.userId = str;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setUserIp */
                public GmailRequest<Label> setUserIp2(String str) {
                    return (Get) super.setUserIp(str);
                }
            }

            /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Labels$List.class */
            public class List extends GmailRequest<ListLabelsResponse> {
                private static final String REST_PATH = "{userId}/labels";
                @q
                private String userId;

                protected List(String str) {
                    super(Gmail.this, "GET", REST_PATH, null, ListLabelsResponse.class);
                    this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
                }

                @Override // com.google.api.client.googleapis.services.b
                public com.google.api.client.http.q buildHttpRequestUsingHead() throws IOException {
                    return super.buildHttpRequestUsingHead();
                }

                @Override // com.google.api.client.googleapis.services.b
                public t executeUsingHead() throws IOException {
                    return super.executeUsingHead();
                }

                public String getUserId() {
                    return this.userId;
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
                public List set(String str, Object obj) {
                    return (List) super.set(str, obj);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setAlt */
                public GmailRequest<ListLabelsResponse> setAlt2(String str) {
                    return (List) super.setAlt(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setFields */
                public GmailRequest<ListLabelsResponse> setFields2(String str) {
                    return (List) super.setFields(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setKey */
                public GmailRequest<ListLabelsResponse> setKey2(String str) {
                    return (List) super.setKey(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setOauthToken */
                public GmailRequest<ListLabelsResponse> setOauthToken2(String str) {
                    return (List) super.setOauthToken(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setPrettyPrint */
                public GmailRequest<ListLabelsResponse> setPrettyPrint2(Boolean bool) {
                    return (List) super.setPrettyPrint(bool);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setQuotaUser */
                public GmailRequest<ListLabelsResponse> setQuotaUser2(String str) {
                    return (List) super.setQuotaUser(str);
                }

                public List setUserId(String str) {
                    this.userId = str;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setUserIp */
                public GmailRequest<ListLabelsResponse> setUserIp2(String str) {
                    return (List) super.setUserIp(str);
                }
            }

            /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Labels$Patch.class */
            public class Patch extends GmailRequest<Label> {
                private static final String REST_PATH = "{userId}/labels/{id}";
                @q
                private String id;
                @q
                private String userId;

                protected Patch(String str, String str2, Label label) {
                    super(Gmail.this, "PATCH", REST_PATH, label, Label.class);
                    this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
                    this.id = (String) aa.a(str2, "Required parameter id must be specified.");
                }

                public String getId() {
                    return this.id;
                }

                public String getUserId() {
                    return this.userId;
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
                public Patch set(String str, Object obj) {
                    return (Patch) super.set(str, obj);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setAlt */
                public GmailRequest<Label> setAlt2(String str) {
                    return (Patch) super.setAlt(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setFields */
                public GmailRequest<Label> setFields2(String str) {
                    return (Patch) super.setFields(str);
                }

                public Patch setId(String str) {
                    this.id = str;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setKey */
                public GmailRequest<Label> setKey2(String str) {
                    return (Patch) super.setKey(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setOauthToken */
                public GmailRequest<Label> setOauthToken2(String str) {
                    return (Patch) super.setOauthToken(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setPrettyPrint */
                public GmailRequest<Label> setPrettyPrint2(Boolean bool) {
                    return (Patch) super.setPrettyPrint(bool);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setQuotaUser */
                public GmailRequest<Label> setQuotaUser2(String str) {
                    return (Patch) super.setQuotaUser(str);
                }

                public Patch setUserId(String str) {
                    this.userId = str;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setUserIp */
                public GmailRequest<Label> setUserIp2(String str) {
                    return (Patch) super.setUserIp(str);
                }
            }

            /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Labels$Update.class */
            public class Update extends GmailRequest<Label> {
                private static final String REST_PATH = "{userId}/labels/{id}";
                @q
                private String id;
                @q
                private String userId;

                protected Update(String str, String str2, Label label) {
                    super(Gmail.this, "PUT", REST_PATH, label, Label.class);
                    this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
                    this.id = (String) aa.a(str2, "Required parameter id must be specified.");
                    checkRequiredParameter(label, Constants.VAST_TRACKER_CONTENT);
                    checkRequiredParameter(label.getId(), "Label.getId()");
                    checkRequiredParameter(label, Constants.VAST_TRACKER_CONTENT);
                    checkRequiredParameter(label.getLabelListVisibility(), "Label.getLabelListVisibility()");
                    checkRequiredParameter(label, Constants.VAST_TRACKER_CONTENT);
                    checkRequiredParameter(label.getMessageListVisibility(), "Label.getMessageListVisibility()");
                    checkRequiredParameter(label, Constants.VAST_TRACKER_CONTENT);
                    checkRequiredParameter(label.getName(), "Label.getName()");
                }

                public String getId() {
                    return this.id;
                }

                public String getUserId() {
                    return this.userId;
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
                public Update set(String str, Object obj) {
                    return (Update) super.set(str, obj);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setAlt */
                public GmailRequest<Label> setAlt2(String str) {
                    return (Update) super.setAlt(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setFields */
                public GmailRequest<Label> setFields2(String str) {
                    return (Update) super.setFields(str);
                }

                public Update setId(String str) {
                    this.id = str;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setKey */
                public GmailRequest<Label> setKey2(String str) {
                    return (Update) super.setKey(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setOauthToken */
                public GmailRequest<Label> setOauthToken2(String str) {
                    return (Update) super.setOauthToken(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setPrettyPrint */
                public GmailRequest<Label> setPrettyPrint2(Boolean bool) {
                    return (Update) super.setPrettyPrint(bool);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setQuotaUser */
                public GmailRequest<Label> setQuotaUser2(String str) {
                    return (Update) super.setQuotaUser(str);
                }

                public Update setUserId(String str) {
                    this.userId = str;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setUserIp */
                public GmailRequest<Label> setUserIp2(String str) {
                    return (Update) super.setUserIp(str);
                }
            }

            public Labels() {
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Messages.class */
        public final class Messages {

            /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Messages$Attachments.class */
            public final class Attachments {

                /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Messages$Attachments$Get.class */
                public class Get extends GmailRequest<MessagePartBody> {
                    private static final String REST_PATH = "{userId}/messages/{messageId}/attachments/{id}";
                    @q
                    private String id;
                    @q
                    private String messageId;
                    @q
                    private String userId;

                    protected Get(String str, String str2, String str3) {
                        super(Gmail.this, "GET", REST_PATH, null, MessagePartBody.class);
                        this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
                        this.messageId = (String) aa.a(str2, "Required parameter messageId must be specified.");
                        this.id = (String) aa.a(str3, "Required parameter id must be specified.");
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

                    public String getMessageId() {
                        return this.messageId;
                    }

                    public String getUserId() {
                        return this.userId;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
                    public Get set(String str, Object obj) {
                        return (Get) super.set(str, obj);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setAlt */
                    public GmailRequest<MessagePartBody> setAlt2(String str) {
                        return (Get) super.setAlt(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setFields */
                    public GmailRequest<MessagePartBody> setFields2(String str) {
                        return (Get) super.setFields(str);
                    }

                    public Get setId(String str) {
                        this.id = str;
                        return this;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setKey */
                    public GmailRequest<MessagePartBody> setKey2(String str) {
                        return (Get) super.setKey(str);
                    }

                    public Get setMessageId(String str) {
                        this.messageId = str;
                        return this;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setOauthToken */
                    public GmailRequest<MessagePartBody> setOauthToken2(String str) {
                        return (Get) super.setOauthToken(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setPrettyPrint */
                    public GmailRequest<MessagePartBody> setPrettyPrint2(Boolean bool) {
                        return (Get) super.setPrettyPrint(bool);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setQuotaUser */
                    public GmailRequest<MessagePartBody> setQuotaUser2(String str) {
                        return (Get) super.setQuotaUser(str);
                    }

                    public Get setUserId(String str) {
                        this.userId = str;
                        return this;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setUserIp */
                    public GmailRequest<MessagePartBody> setUserIp2(String str) {
                        return (Get) super.setUserIp(str);
                    }
                }

                public Attachments() {
                }
            }

            /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Messages$BatchDelete.class */
            public class BatchDelete extends GmailRequest<Void> {
                private static final String REST_PATH = "{userId}/messages/batchDelete";
                @q
                private String userId;

                protected BatchDelete(String str, BatchDeleteMessagesRequest batchDeleteMessagesRequest) {
                    super(Gmail.this, "POST", REST_PATH, batchDeleteMessagesRequest, Void.class);
                    this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
                }

                public String getUserId() {
                    return this.userId;
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
                public BatchDelete set(String str, Object obj) {
                    return (BatchDelete) super.set(str, obj);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setAlt */
                public GmailRequest<Void> setAlt2(String str) {
                    return (BatchDelete) super.setAlt(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setFields */
                public GmailRequest<Void> setFields2(String str) {
                    return (BatchDelete) super.setFields(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setKey */
                public GmailRequest<Void> setKey2(String str) {
                    return (BatchDelete) super.setKey(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setOauthToken */
                public GmailRequest<Void> setOauthToken2(String str) {
                    return (BatchDelete) super.setOauthToken(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setPrettyPrint */
                public GmailRequest<Void> setPrettyPrint2(Boolean bool) {
                    return (BatchDelete) super.setPrettyPrint(bool);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setQuotaUser */
                public GmailRequest<Void> setQuotaUser2(String str) {
                    return (BatchDelete) super.setQuotaUser(str);
                }

                public BatchDelete setUserId(String str) {
                    this.userId = str;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setUserIp */
                public GmailRequest<Void> setUserIp2(String str) {
                    return (BatchDelete) super.setUserIp(str);
                }
            }

            /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Messages$BatchModify.class */
            public class BatchModify extends GmailRequest<Void> {
                private static final String REST_PATH = "{userId}/messages/batchModify";
                @q
                private String userId;

                protected BatchModify(String str, BatchModifyMessagesRequest batchModifyMessagesRequest) {
                    super(Gmail.this, "POST", REST_PATH, batchModifyMessagesRequest, Void.class);
                    this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
                }

                public String getUserId() {
                    return this.userId;
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
                public BatchModify set(String str, Object obj) {
                    return (BatchModify) super.set(str, obj);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setAlt */
                public GmailRequest<Void> setAlt2(String str) {
                    return (BatchModify) super.setAlt(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setFields */
                public GmailRequest<Void> setFields2(String str) {
                    return (BatchModify) super.setFields(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setKey */
                public GmailRequest<Void> setKey2(String str) {
                    return (BatchModify) super.setKey(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setOauthToken */
                public GmailRequest<Void> setOauthToken2(String str) {
                    return (BatchModify) super.setOauthToken(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setPrettyPrint */
                public GmailRequest<Void> setPrettyPrint2(Boolean bool) {
                    return (BatchModify) super.setPrettyPrint(bool);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setQuotaUser */
                public GmailRequest<Void> setQuotaUser2(String str) {
                    return (BatchModify) super.setQuotaUser(str);
                }

                public BatchModify setUserId(String str) {
                    this.userId = str;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setUserIp */
                public GmailRequest<Void> setUserIp2(String str) {
                    return (BatchModify) super.setUserIp(str);
                }
            }

            /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Messages$Delete.class */
            public class Delete extends GmailRequest<Void> {
                private static final String REST_PATH = "{userId}/messages/{id}";
                @q
                private String id;
                @q
                private String userId;

                protected Delete(String str, String str2) {
                    super(Gmail.this, "DELETE", REST_PATH, null, Void.class);
                    this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
                    this.id = (String) aa.a(str2, "Required parameter id must be specified.");
                }

                public String getId() {
                    return this.id;
                }

                public String getUserId() {
                    return this.userId;
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
                public Delete set(String str, Object obj) {
                    return (Delete) super.set(str, obj);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setAlt */
                public GmailRequest<Void> setAlt2(String str) {
                    return (Delete) super.setAlt(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setFields */
                public GmailRequest<Void> setFields2(String str) {
                    return (Delete) super.setFields(str);
                }

                public Delete setId(String str) {
                    this.id = str;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setKey */
                public GmailRequest<Void> setKey2(String str) {
                    return (Delete) super.setKey(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setOauthToken */
                public GmailRequest<Void> setOauthToken2(String str) {
                    return (Delete) super.setOauthToken(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setPrettyPrint */
                public GmailRequest<Void> setPrettyPrint2(Boolean bool) {
                    return (Delete) super.setPrettyPrint(bool);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setQuotaUser */
                public GmailRequest<Void> setQuotaUser2(String str) {
                    return (Delete) super.setQuotaUser(str);
                }

                public Delete setUserId(String str) {
                    this.userId = str;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setUserIp */
                public GmailRequest<Void> setUserIp2(String str) {
                    return (Delete) super.setUserIp(str);
                }
            }

            /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Messages$Get.class */
            public class Get extends GmailRequest<Message> {
                private static final String REST_PATH = "{userId}/messages/{id}";
                @q
                private String format;
                @q
                private String id;
                @q
                private java.util.List<String> metadataHeaders;
                @q
                private String userId;

                protected Get(String str, String str2) {
                    super(Gmail.this, "GET", REST_PATH, null, Message.class);
                    this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
                    this.id = (String) aa.a(str2, "Required parameter id must be specified.");
                }

                @Override // com.google.api.client.googleapis.services.b
                public com.google.api.client.http.q buildHttpRequestUsingHead() throws IOException {
                    return super.buildHttpRequestUsingHead();
                }

                @Override // com.google.api.client.googleapis.services.b
                public t executeUsingHead() throws IOException {
                    return super.executeUsingHead();
                }

                public String getFormat() {
                    return this.format;
                }

                public String getId() {
                    return this.id;
                }

                public java.util.List<String> getMetadataHeaders() {
                    return this.metadataHeaders;
                }

                public String getUserId() {
                    return this.userId;
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
                public Get set(String str, Object obj) {
                    return (Get) super.set(str, obj);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setAlt */
                public GmailRequest<Message> setAlt2(String str) {
                    return (Get) super.setAlt(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setFields */
                public GmailRequest<Message> setFields2(String str) {
                    return (Get) super.setFields(str);
                }

                public Get setFormat(String str) {
                    this.format = str;
                    return this;
                }

                public Get setId(String str) {
                    this.id = str;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setKey */
                public GmailRequest<Message> setKey2(String str) {
                    return (Get) super.setKey(str);
                }

                public Get setMetadataHeaders(java.util.List<String> list) {
                    this.metadataHeaders = list;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setOauthToken */
                public GmailRequest<Message> setOauthToken2(String str) {
                    return (Get) super.setOauthToken(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setPrettyPrint */
                public GmailRequest<Message> setPrettyPrint2(Boolean bool) {
                    return (Get) super.setPrettyPrint(bool);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setQuotaUser */
                public GmailRequest<Message> setQuotaUser2(String str) {
                    return (Get) super.setQuotaUser(str);
                }

                public Get setUserId(String str) {
                    this.userId = str;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setUserIp */
                public GmailRequest<Message> setUserIp2(String str) {
                    return (Get) super.setUserIp(str);
                }
            }

            /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Messages$GmailImport.class */
            public class GmailImport extends GmailRequest<Message> {
                private static final String REST_PATH = "{userId}/messages/import";
                @q
                private Boolean deleted;
                @q
                private String internalDateSource;
                @q
                private Boolean neverMarkSpam;
                @q
                private Boolean processForCalendar;
                @q
                private String userId;

                protected GmailImport(String str, Message message) {
                    super(Gmail.this, "POST", REST_PATH, message, Message.class);
                    this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
                }

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                protected GmailImport(java.lang.String r9, com.google.api.services.gmail.model.Message r10, com.google.api.client.http.b r11) {
                    /*
                        r7 = this;
                        r0 = r7
                        r1 = r8
                        com.google.api.services.gmail.Gmail.Users.Messages.this = r1
                        r0 = r8
                        com.google.api.services.gmail.Gmail$Users r0 = com.google.api.services.gmail.Gmail.Users.this
                        com.google.api.services.gmail.Gmail r0 = com.google.api.services.gmail.Gmail.this
                        r12 = r0
                        java.lang.StringBuilder r0 = new java.lang.StringBuilder
                        r1 = r0
                        java.lang.String r2 = "/upload/"
                        r1.<init>(r2)
                        r13 = r0
                        r0 = r13
                        r1 = r8
                        com.google.api.services.gmail.Gmail$Users r1 = com.google.api.services.gmail.Gmail.Users.this
                        com.google.api.services.gmail.Gmail r1 = com.google.api.services.gmail.Gmail.this
                        java.lang.String r1 = r1.getServicePath()
                        java.lang.StringBuilder r0 = r0.append(r1)
                        r0 = r13
                        java.lang.String r1 = "{userId}/messages/import"
                        java.lang.StringBuilder r0 = r0.append(r1)
                        r0 = r7
                        r1 = r12
                        java.lang.String r2 = "POST"
                        r3 = r13
                        java.lang.String r3 = r3.toString()
                        r4 = r10
                        java.lang.Class<com.google.api.services.gmail.model.Message> r5 = com.google.api.services.gmail.model.Message.class
                        r0.<init>(r1, r2, r3, r4, r5)
                        r0 = r7
                        r1 = r9
                        java.lang.String r2 = "Required parameter userId must be specified."
                        java.lang.Object r1 = com.google.api.client.a.aa.a(r1, r2)
                        java.lang.String r1 = (java.lang.String) r1
                        r0.userId = r1
                        r0 = r7
                        r1 = r11
                        r0.initializeMediaUpload(r1)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.google.api.services.gmail.Gmail.Users.Messages.GmailImport.<init>(com.google.api.services.gmail.Gmail$Users$Messages, java.lang.String, com.google.api.services.gmail.model.Message, com.google.api.client.http.b):void");
                }

                public Boolean getDeleted() {
                    return this.deleted;
                }

                public String getInternalDateSource() {
                    return this.internalDateSource;
                }

                public Boolean getNeverMarkSpam() {
                    return this.neverMarkSpam;
                }

                public Boolean getProcessForCalendar() {
                    return this.processForCalendar;
                }

                public String getUserId() {
                    return this.userId;
                }

                public boolean isDeleted() {
                    Boolean bool = this.deleted;
                    if (bool == null || bool == j.f31626a) {
                        return false;
                    }
                    return this.deleted.booleanValue();
                }

                public boolean isNeverMarkSpam() {
                    Boolean bool = this.neverMarkSpam;
                    if (bool == null || bool == j.f31626a) {
                        return false;
                    }
                    return this.neverMarkSpam.booleanValue();
                }

                public boolean isProcessForCalendar() {
                    Boolean bool = this.processForCalendar;
                    if (bool == null || bool == j.f31626a) {
                        return false;
                    }
                    return this.processForCalendar.booleanValue();
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
                public GmailImport set(String str, Object obj) {
                    return (GmailImport) super.set(str, obj);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setAlt */
                public GmailRequest<Message> setAlt2(String str) {
                    return (GmailImport) super.setAlt(str);
                }

                public GmailImport setDeleted(Boolean bool) {
                    this.deleted = bool;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setFields */
                public GmailRequest<Message> setFields2(String str) {
                    return (GmailImport) super.setFields(str);
                }

                public GmailImport setInternalDateSource(String str) {
                    this.internalDateSource = str;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setKey */
                public GmailRequest<Message> setKey2(String str) {
                    return (GmailImport) super.setKey(str);
                }

                public GmailImport setNeverMarkSpam(Boolean bool) {
                    this.neverMarkSpam = bool;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setOauthToken */
                public GmailRequest<Message> setOauthToken2(String str) {
                    return (GmailImport) super.setOauthToken(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setPrettyPrint */
                public GmailRequest<Message> setPrettyPrint2(Boolean bool) {
                    return (GmailImport) super.setPrettyPrint(bool);
                }

                public GmailImport setProcessForCalendar(Boolean bool) {
                    this.processForCalendar = bool;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setQuotaUser */
                public GmailRequest<Message> setQuotaUser2(String str) {
                    return (GmailImport) super.setQuotaUser(str);
                }

                public GmailImport setUserId(String str) {
                    this.userId = str;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setUserIp */
                public GmailRequest<Message> setUserIp2(String str) {
                    return (GmailImport) super.setUserIp(str);
                }
            }

            /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Messages$Insert.class */
            public class Insert extends GmailRequest<Message> {
                private static final String REST_PATH = "{userId}/messages";
                @q
                private Boolean deleted;
                @q
                private String internalDateSource;
                @q
                private String userId;

                protected Insert(String str, Message message) {
                    super(Gmail.this, "POST", REST_PATH, message, Message.class);
                    this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
                    checkRequiredParameter(message, Constants.VAST_TRACKER_CONTENT);
                    checkRequiredParameter(message.getRaw(), "Message.getRaw()");
                }

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                protected Insert(java.lang.String r9, com.google.api.services.gmail.model.Message r10, com.google.api.client.http.b r11) {
                    /*
                        r7 = this;
                        r0 = r7
                        r1 = r8
                        com.google.api.services.gmail.Gmail.Users.Messages.this = r1
                        r0 = r8
                        com.google.api.services.gmail.Gmail$Users r0 = com.google.api.services.gmail.Gmail.Users.this
                        com.google.api.services.gmail.Gmail r0 = com.google.api.services.gmail.Gmail.this
                        r12 = r0
                        java.lang.StringBuilder r0 = new java.lang.StringBuilder
                        r1 = r0
                        java.lang.String r2 = "/upload/"
                        r1.<init>(r2)
                        r13 = r0
                        r0 = r13
                        r1 = r8
                        com.google.api.services.gmail.Gmail$Users r1 = com.google.api.services.gmail.Gmail.Users.this
                        com.google.api.services.gmail.Gmail r1 = com.google.api.services.gmail.Gmail.this
                        java.lang.String r1 = r1.getServicePath()
                        java.lang.StringBuilder r0 = r0.append(r1)
                        r0 = r13
                        java.lang.String r1 = "{userId}/messages"
                        java.lang.StringBuilder r0 = r0.append(r1)
                        r0 = r7
                        r1 = r12
                        java.lang.String r2 = "POST"
                        r3 = r13
                        java.lang.String r3 = r3.toString()
                        r4 = r10
                        java.lang.Class<com.google.api.services.gmail.model.Message> r5 = com.google.api.services.gmail.model.Message.class
                        r0.<init>(r1, r2, r3, r4, r5)
                        r0 = r7
                        r1 = r9
                        java.lang.String r2 = "Required parameter userId must be specified."
                        java.lang.Object r1 = com.google.api.client.a.aa.a(r1, r2)
                        java.lang.String r1 = (java.lang.String) r1
                        r0.userId = r1
                        r0 = r7
                        r1 = r11
                        r0.initializeMediaUpload(r1)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.google.api.services.gmail.Gmail.Users.Messages.Insert.<init>(com.google.api.services.gmail.Gmail$Users$Messages, java.lang.String, com.google.api.services.gmail.model.Message, com.google.api.client.http.b):void");
                }

                public Boolean getDeleted() {
                    return this.deleted;
                }

                public String getInternalDateSource() {
                    return this.internalDateSource;
                }

                public String getUserId() {
                    return this.userId;
                }

                public boolean isDeleted() {
                    Boolean bool = this.deleted;
                    if (bool == null || bool == j.f31626a) {
                        return false;
                    }
                    return this.deleted.booleanValue();
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
                public Insert set(String str, Object obj) {
                    return (Insert) super.set(str, obj);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setAlt */
                public GmailRequest<Message> setAlt2(String str) {
                    return (Insert) super.setAlt(str);
                }

                public Insert setDeleted(Boolean bool) {
                    this.deleted = bool;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setFields */
                public GmailRequest<Message> setFields2(String str) {
                    return (Insert) super.setFields(str);
                }

                public Insert setInternalDateSource(String str) {
                    this.internalDateSource = str;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setKey */
                public GmailRequest<Message> setKey2(String str) {
                    return (Insert) super.setKey(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setOauthToken */
                public GmailRequest<Message> setOauthToken2(String str) {
                    return (Insert) super.setOauthToken(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setPrettyPrint */
                public GmailRequest<Message> setPrettyPrint2(Boolean bool) {
                    return (Insert) super.setPrettyPrint(bool);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setQuotaUser */
                public GmailRequest<Message> setQuotaUser2(String str) {
                    return (Insert) super.setQuotaUser(str);
                }

                public Insert setUserId(String str) {
                    this.userId = str;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setUserIp */
                public GmailRequest<Message> setUserIp2(String str) {
                    return (Insert) super.setUserIp(str);
                }
            }

            /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Messages$List.class */
            public class List extends GmailRequest<ListMessagesResponse> {
                private static final String REST_PATH = "{userId}/messages";
                @q
                private Boolean includeSpamTrash;
                @q
                private java.util.List<String> labelIds;
                @q
                private Long maxResults;
                @q
                private String pageToken;
                @q
                private String q;
                @q
                private String userId;

                protected List(String str) {
                    super(Gmail.this, "GET", REST_PATH, null, ListMessagesResponse.class);
                    this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
                }

                @Override // com.google.api.client.googleapis.services.b
                public com.google.api.client.http.q buildHttpRequestUsingHead() throws IOException {
                    return super.buildHttpRequestUsingHead();
                }

                @Override // com.google.api.client.googleapis.services.b
                public t executeUsingHead() throws IOException {
                    return super.executeUsingHead();
                }

                public Boolean getIncludeSpamTrash() {
                    return this.includeSpamTrash;
                }

                public java.util.List<String> getLabelIds() {
                    return this.labelIds;
                }

                public Long getMaxResults() {
                    return this.maxResults;
                }

                public String getPageToken() {
                    return this.pageToken;
                }

                public String getQ() {
                    return this.q;
                }

                public String getUserId() {
                    return this.userId;
                }

                public boolean isIncludeSpamTrash() {
                    Boolean bool = this.includeSpamTrash;
                    if (bool == null || bool == j.f31626a) {
                        return false;
                    }
                    return this.includeSpamTrash.booleanValue();
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
                public List set(String str, Object obj) {
                    return (List) super.set(str, obj);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setAlt */
                public GmailRequest<ListMessagesResponse> setAlt2(String str) {
                    return (List) super.setAlt(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setFields */
                public GmailRequest<ListMessagesResponse> setFields2(String str) {
                    return (List) super.setFields(str);
                }

                public List setIncludeSpamTrash(Boolean bool) {
                    this.includeSpamTrash = bool;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setKey */
                public GmailRequest<ListMessagesResponse> setKey2(String str) {
                    return (List) super.setKey(str);
                }

                public List setLabelIds(java.util.List<String> list) {
                    this.labelIds = list;
                    return this;
                }

                public List setMaxResults(Long l) {
                    this.maxResults = l;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setOauthToken */
                public GmailRequest<ListMessagesResponse> setOauthToken2(String str) {
                    return (List) super.setOauthToken(str);
                }

                public List setPageToken(String str) {
                    this.pageToken = str;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setPrettyPrint */
                public GmailRequest<ListMessagesResponse> setPrettyPrint2(Boolean bool) {
                    return (List) super.setPrettyPrint(bool);
                }

                public List setQ(String str) {
                    this.q = str;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setQuotaUser */
                public GmailRequest<ListMessagesResponse> setQuotaUser2(String str) {
                    return (List) super.setQuotaUser(str);
                }

                public List setUserId(String str) {
                    this.userId = str;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setUserIp */
                public GmailRequest<ListMessagesResponse> setUserIp2(String str) {
                    return (List) super.setUserIp(str);
                }
            }

            /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Messages$Modify.class */
            public class Modify extends GmailRequest<Message> {
                private static final String REST_PATH = "{userId}/messages/{id}/modify";
                @q
                private String id;
                @q
                private String userId;

                protected Modify(String str, String str2, ModifyMessageRequest modifyMessageRequest) {
                    super(Gmail.this, "POST", REST_PATH, modifyMessageRequest, Message.class);
                    this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
                    this.id = (String) aa.a(str2, "Required parameter id must be specified.");
                }

                public String getId() {
                    return this.id;
                }

                public String getUserId() {
                    return this.userId;
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
                public Modify set(String str, Object obj) {
                    return (Modify) super.set(str, obj);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setAlt */
                public GmailRequest<Message> setAlt2(String str) {
                    return (Modify) super.setAlt(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setFields */
                public GmailRequest<Message> setFields2(String str) {
                    return (Modify) super.setFields(str);
                }

                public Modify setId(String str) {
                    this.id = str;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setKey */
                public GmailRequest<Message> setKey2(String str) {
                    return (Modify) super.setKey(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setOauthToken */
                public GmailRequest<Message> setOauthToken2(String str) {
                    return (Modify) super.setOauthToken(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setPrettyPrint */
                public GmailRequest<Message> setPrettyPrint2(Boolean bool) {
                    return (Modify) super.setPrettyPrint(bool);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setQuotaUser */
                public GmailRequest<Message> setQuotaUser2(String str) {
                    return (Modify) super.setQuotaUser(str);
                }

                public Modify setUserId(String str) {
                    this.userId = str;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setUserIp */
                public GmailRequest<Message> setUserIp2(String str) {
                    return (Modify) super.setUserIp(str);
                }
            }

            /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Messages$Send.class */
            public class Send extends GmailRequest<Message> {
                private static final String REST_PATH = "{userId}/messages/send";
                @q
                private String userId;

                protected Send(String str, Message message) {
                    super(Gmail.this, "POST", REST_PATH, message, Message.class);
                    this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
                    checkRequiredParameter(message, Constants.VAST_TRACKER_CONTENT);
                    checkRequiredParameter(message.getRaw(), "Message.getRaw()");
                }

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                protected Send(java.lang.String r9, com.google.api.services.gmail.model.Message r10, com.google.api.client.http.b r11) {
                    /*
                        r7 = this;
                        r0 = r7
                        r1 = r8
                        com.google.api.services.gmail.Gmail.Users.Messages.this = r1
                        r0 = r8
                        com.google.api.services.gmail.Gmail$Users r0 = com.google.api.services.gmail.Gmail.Users.this
                        com.google.api.services.gmail.Gmail r0 = com.google.api.services.gmail.Gmail.this
                        r12 = r0
                        java.lang.StringBuilder r0 = new java.lang.StringBuilder
                        r1 = r0
                        java.lang.String r2 = "/upload/"
                        r1.<init>(r2)
                        r13 = r0
                        r0 = r13
                        r1 = r8
                        com.google.api.services.gmail.Gmail$Users r1 = com.google.api.services.gmail.Gmail.Users.this
                        com.google.api.services.gmail.Gmail r1 = com.google.api.services.gmail.Gmail.this
                        java.lang.String r1 = r1.getServicePath()
                        java.lang.StringBuilder r0 = r0.append(r1)
                        r0 = r13
                        java.lang.String r1 = "{userId}/messages/send"
                        java.lang.StringBuilder r0 = r0.append(r1)
                        r0 = r7
                        r1 = r12
                        java.lang.String r2 = "POST"
                        r3 = r13
                        java.lang.String r3 = r3.toString()
                        r4 = r10
                        java.lang.Class<com.google.api.services.gmail.model.Message> r5 = com.google.api.services.gmail.model.Message.class
                        r0.<init>(r1, r2, r3, r4, r5)
                        r0 = r7
                        r1 = r9
                        java.lang.String r2 = "Required parameter userId must be specified."
                        java.lang.Object r1 = com.google.api.client.a.aa.a(r1, r2)
                        java.lang.String r1 = (java.lang.String) r1
                        r0.userId = r1
                        r0 = r7
                        r1 = r11
                        r0.initializeMediaUpload(r1)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.google.api.services.gmail.Gmail.Users.Messages.Send.<init>(com.google.api.services.gmail.Gmail$Users$Messages, java.lang.String, com.google.api.services.gmail.model.Message, com.google.api.client.http.b):void");
                }

                public String getUserId() {
                    return this.userId;
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
                public Send set(String str, Object obj) {
                    return (Send) super.set(str, obj);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setAlt */
                public GmailRequest<Message> setAlt2(String str) {
                    return (Send) super.setAlt(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setFields */
                public GmailRequest<Message> setFields2(String str) {
                    return (Send) super.setFields(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setKey */
                public GmailRequest<Message> setKey2(String str) {
                    return (Send) super.setKey(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setOauthToken */
                public GmailRequest<Message> setOauthToken2(String str) {
                    return (Send) super.setOauthToken(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setPrettyPrint */
                public GmailRequest<Message> setPrettyPrint2(Boolean bool) {
                    return (Send) super.setPrettyPrint(bool);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setQuotaUser */
                public GmailRequest<Message> setQuotaUser2(String str) {
                    return (Send) super.setQuotaUser(str);
                }

                public Send setUserId(String str) {
                    this.userId = str;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setUserIp */
                public GmailRequest<Message> setUserIp2(String str) {
                    return (Send) super.setUserIp(str);
                }
            }

            /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Messages$Trash.class */
            public class Trash extends GmailRequest<Message> {
                private static final String REST_PATH = "{userId}/messages/{id}/trash";
                @q
                private String id;
                @q
                private String userId;

                protected Trash(String str, String str2) {
                    super(Gmail.this, "POST", REST_PATH, null, Message.class);
                    this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
                    this.id = (String) aa.a(str2, "Required parameter id must be specified.");
                }

                public String getId() {
                    return this.id;
                }

                public String getUserId() {
                    return this.userId;
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
                public Trash set(String str, Object obj) {
                    return (Trash) super.set(str, obj);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setAlt */
                public GmailRequest<Message> setAlt2(String str) {
                    return (Trash) super.setAlt(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setFields */
                public GmailRequest<Message> setFields2(String str) {
                    return (Trash) super.setFields(str);
                }

                public Trash setId(String str) {
                    this.id = str;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setKey */
                public GmailRequest<Message> setKey2(String str) {
                    return (Trash) super.setKey(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setOauthToken */
                public GmailRequest<Message> setOauthToken2(String str) {
                    return (Trash) super.setOauthToken(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setPrettyPrint */
                public GmailRequest<Message> setPrettyPrint2(Boolean bool) {
                    return (Trash) super.setPrettyPrint(bool);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setQuotaUser */
                public GmailRequest<Message> setQuotaUser2(String str) {
                    return (Trash) super.setQuotaUser(str);
                }

                public Trash setUserId(String str) {
                    this.userId = str;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setUserIp */
                public GmailRequest<Message> setUserIp2(String str) {
                    return (Trash) super.setUserIp(str);
                }
            }

            /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Messages$Untrash.class */
            public class Untrash extends GmailRequest<Message> {
                private static final String REST_PATH = "{userId}/messages/{id}/untrash";
                @q
                private String id;
                @q
                private String userId;

                protected Untrash(String str, String str2) {
                    super(Gmail.this, "POST", REST_PATH, null, Message.class);
                    this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
                    this.id = (String) aa.a(str2, "Required parameter id must be specified.");
                }

                public String getId() {
                    return this.id;
                }

                public String getUserId() {
                    return this.userId;
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
                public Untrash set(String str, Object obj) {
                    return (Untrash) super.set(str, obj);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setAlt */
                public GmailRequest<Message> setAlt2(String str) {
                    return (Untrash) super.setAlt(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setFields */
                public GmailRequest<Message> setFields2(String str) {
                    return (Untrash) super.setFields(str);
                }

                public Untrash setId(String str) {
                    this.id = str;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setKey */
                public GmailRequest<Message> setKey2(String str) {
                    return (Untrash) super.setKey(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setOauthToken */
                public GmailRequest<Message> setOauthToken2(String str) {
                    return (Untrash) super.setOauthToken(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setPrettyPrint */
                public GmailRequest<Message> setPrettyPrint2(Boolean bool) {
                    return (Untrash) super.setPrettyPrint(bool);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setQuotaUser */
                public GmailRequest<Message> setQuotaUser2(String str) {
                    return (Untrash) super.setQuotaUser(str);
                }

                public Untrash setUserId(String str) {
                    this.userId = str;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setUserIp */
                public GmailRequest<Message> setUserIp2(String str) {
                    return (Untrash) super.setUserIp(str);
                }
            }

            public Messages() {
            }

            public final Get a(String str, String str2) throws IOException {
                Get get = new Get(str, str2);
                Gmail.this.initialize(get);
                return get;
            }

            public final List a(String str) throws IOException {
                List list = new List(str);
                Gmail.this.initialize(list);
                return list;
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Settings.class */
        public final class Settings {

            /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Settings$Delegates.class */
            public final class Delegates {

                /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Settings$Delegates$Create.class */
                public class Create extends GmailRequest<Delegate> {
                    private static final String REST_PATH = "{userId}/settings/delegates";
                    @q
                    private String userId;

                    protected Create(String str, Delegate delegate) {
                        super(Gmail.this, "POST", REST_PATH, delegate, Delegate.class);
                        this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
                    }

                    public String getUserId() {
                        return this.userId;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
                    public Create set(String str, Object obj) {
                        return (Create) super.set(str, obj);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setAlt */
                    public GmailRequest<Delegate> setAlt2(String str) {
                        return (Create) super.setAlt(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setFields */
                    public GmailRequest<Delegate> setFields2(String str) {
                        return (Create) super.setFields(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setKey */
                    public GmailRequest<Delegate> setKey2(String str) {
                        return (Create) super.setKey(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setOauthToken */
                    public GmailRequest<Delegate> setOauthToken2(String str) {
                        return (Create) super.setOauthToken(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setPrettyPrint */
                    public GmailRequest<Delegate> setPrettyPrint2(Boolean bool) {
                        return (Create) super.setPrettyPrint(bool);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setQuotaUser */
                    public GmailRequest<Delegate> setQuotaUser2(String str) {
                        return (Create) super.setQuotaUser(str);
                    }

                    public Create setUserId(String str) {
                        this.userId = str;
                        return this;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setUserIp */
                    public GmailRequest<Delegate> setUserIp2(String str) {
                        return (Create) super.setUserIp(str);
                    }
                }

                /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Settings$Delegates$Delete.class */
                public class Delete extends GmailRequest<Void> {
                    private static final String REST_PATH = "{userId}/settings/delegates/{delegateEmail}";
                    @q
                    private String delegateEmail;
                    @q
                    private String userId;

                    protected Delete(String str, String str2) {
                        super(Gmail.this, "DELETE", REST_PATH, null, Void.class);
                        this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
                        this.delegateEmail = (String) aa.a(str2, "Required parameter delegateEmail must be specified.");
                    }

                    public String getDelegateEmail() {
                        return this.delegateEmail;
                    }

                    public String getUserId() {
                        return this.userId;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
                    public Delete set(String str, Object obj) {
                        return (Delete) super.set(str, obj);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setAlt */
                    public GmailRequest<Void> setAlt2(String str) {
                        return (Delete) super.setAlt(str);
                    }

                    public Delete setDelegateEmail(String str) {
                        this.delegateEmail = str;
                        return this;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setFields */
                    public GmailRequest<Void> setFields2(String str) {
                        return (Delete) super.setFields(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setKey */
                    public GmailRequest<Void> setKey2(String str) {
                        return (Delete) super.setKey(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setOauthToken */
                    public GmailRequest<Void> setOauthToken2(String str) {
                        return (Delete) super.setOauthToken(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setPrettyPrint */
                    public GmailRequest<Void> setPrettyPrint2(Boolean bool) {
                        return (Delete) super.setPrettyPrint(bool);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setQuotaUser */
                    public GmailRequest<Void> setQuotaUser2(String str) {
                        return (Delete) super.setQuotaUser(str);
                    }

                    public Delete setUserId(String str) {
                        this.userId = str;
                        return this;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setUserIp */
                    public GmailRequest<Void> setUserIp2(String str) {
                        return (Delete) super.setUserIp(str);
                    }
                }

                /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Settings$Delegates$Get.class */
                public class Get extends GmailRequest<Delegate> {
                    private static final String REST_PATH = "{userId}/settings/delegates/{delegateEmail}";
                    @q
                    private String delegateEmail;
                    @q
                    private String userId;

                    protected Get(String str, String str2) {
                        super(Gmail.this, "GET", REST_PATH, null, Delegate.class);
                        this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
                        this.delegateEmail = (String) aa.a(str2, "Required parameter delegateEmail must be specified.");
                    }

                    @Override // com.google.api.client.googleapis.services.b
                    public com.google.api.client.http.q buildHttpRequestUsingHead() throws IOException {
                        return super.buildHttpRequestUsingHead();
                    }

                    @Override // com.google.api.client.googleapis.services.b
                    public t executeUsingHead() throws IOException {
                        return super.executeUsingHead();
                    }

                    public String getDelegateEmail() {
                        return this.delegateEmail;
                    }

                    public String getUserId() {
                        return this.userId;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
                    public Get set(String str, Object obj) {
                        return (Get) super.set(str, obj);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setAlt */
                    public GmailRequest<Delegate> setAlt2(String str) {
                        return (Get) super.setAlt(str);
                    }

                    public Get setDelegateEmail(String str) {
                        this.delegateEmail = str;
                        return this;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setFields */
                    public GmailRequest<Delegate> setFields2(String str) {
                        return (Get) super.setFields(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setKey */
                    public GmailRequest<Delegate> setKey2(String str) {
                        return (Get) super.setKey(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setOauthToken */
                    public GmailRequest<Delegate> setOauthToken2(String str) {
                        return (Get) super.setOauthToken(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setPrettyPrint */
                    public GmailRequest<Delegate> setPrettyPrint2(Boolean bool) {
                        return (Get) super.setPrettyPrint(bool);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setQuotaUser */
                    public GmailRequest<Delegate> setQuotaUser2(String str) {
                        return (Get) super.setQuotaUser(str);
                    }

                    public Get setUserId(String str) {
                        this.userId = str;
                        return this;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setUserIp */
                    public GmailRequest<Delegate> setUserIp2(String str) {
                        return (Get) super.setUserIp(str);
                    }
                }

                /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Settings$Delegates$List.class */
                public class List extends GmailRequest<ListDelegatesResponse> {
                    private static final String REST_PATH = "{userId}/settings/delegates";
                    @q
                    private String userId;

                    protected List(String str) {
                        super(Gmail.this, "GET", REST_PATH, null, ListDelegatesResponse.class);
                        this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
                    }

                    @Override // com.google.api.client.googleapis.services.b
                    public com.google.api.client.http.q buildHttpRequestUsingHead() throws IOException {
                        return super.buildHttpRequestUsingHead();
                    }

                    @Override // com.google.api.client.googleapis.services.b
                    public t executeUsingHead() throws IOException {
                        return super.executeUsingHead();
                    }

                    public String getUserId() {
                        return this.userId;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
                    public List set(String str, Object obj) {
                        return (List) super.set(str, obj);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setAlt */
                    public GmailRequest<ListDelegatesResponse> setAlt2(String str) {
                        return (List) super.setAlt(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setFields */
                    public GmailRequest<ListDelegatesResponse> setFields2(String str) {
                        return (List) super.setFields(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setKey */
                    public GmailRequest<ListDelegatesResponse> setKey2(String str) {
                        return (List) super.setKey(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setOauthToken */
                    public GmailRequest<ListDelegatesResponse> setOauthToken2(String str) {
                        return (List) super.setOauthToken(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setPrettyPrint */
                    public GmailRequest<ListDelegatesResponse> setPrettyPrint2(Boolean bool) {
                        return (List) super.setPrettyPrint(bool);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setQuotaUser */
                    public GmailRequest<ListDelegatesResponse> setQuotaUser2(String str) {
                        return (List) super.setQuotaUser(str);
                    }

                    public List setUserId(String str) {
                        this.userId = str;
                        return this;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setUserIp */
                    public GmailRequest<ListDelegatesResponse> setUserIp2(String str) {
                        return (List) super.setUserIp(str);
                    }
                }

                public Delegates() {
                }
            }

            /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Settings$Filters.class */
            public final class Filters {

                /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Settings$Filters$Create.class */
                public class Create extends GmailRequest<Filter> {
                    private static final String REST_PATH = "{userId}/settings/filters";
                    @q
                    private String userId;

                    protected Create(String str, Filter filter) {
                        super(Gmail.this, "POST", REST_PATH, filter, Filter.class);
                        this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
                    }

                    public String getUserId() {
                        return this.userId;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
                    public Create set(String str, Object obj) {
                        return (Create) super.set(str, obj);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setAlt */
                    public GmailRequest<Filter> setAlt2(String str) {
                        return (Create) super.setAlt(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setFields */
                    public GmailRequest<Filter> setFields2(String str) {
                        return (Create) super.setFields(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setKey */
                    public GmailRequest<Filter> setKey2(String str) {
                        return (Create) super.setKey(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setOauthToken */
                    public GmailRequest<Filter> setOauthToken2(String str) {
                        return (Create) super.setOauthToken(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setPrettyPrint */
                    public GmailRequest<Filter> setPrettyPrint2(Boolean bool) {
                        return (Create) super.setPrettyPrint(bool);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setQuotaUser */
                    public GmailRequest<Filter> setQuotaUser2(String str) {
                        return (Create) super.setQuotaUser(str);
                    }

                    public Create setUserId(String str) {
                        this.userId = str;
                        return this;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setUserIp */
                    public GmailRequest<Filter> setUserIp2(String str) {
                        return (Create) super.setUserIp(str);
                    }
                }

                /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Settings$Filters$Delete.class */
                public class Delete extends GmailRequest<Void> {
                    private static final String REST_PATH = "{userId}/settings/filters/{id}";
                    @q
                    private String id;
                    @q
                    private String userId;

                    protected Delete(String str, String str2) {
                        super(Gmail.this, "DELETE", REST_PATH, null, Void.class);
                        this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
                        this.id = (String) aa.a(str2, "Required parameter id must be specified.");
                    }

                    public String getId() {
                        return this.id;
                    }

                    public String getUserId() {
                        return this.userId;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
                    public Delete set(String str, Object obj) {
                        return (Delete) super.set(str, obj);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setAlt */
                    public GmailRequest<Void> setAlt2(String str) {
                        return (Delete) super.setAlt(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setFields */
                    public GmailRequest<Void> setFields2(String str) {
                        return (Delete) super.setFields(str);
                    }

                    public Delete setId(String str) {
                        this.id = str;
                        return this;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setKey */
                    public GmailRequest<Void> setKey2(String str) {
                        return (Delete) super.setKey(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setOauthToken */
                    public GmailRequest<Void> setOauthToken2(String str) {
                        return (Delete) super.setOauthToken(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setPrettyPrint */
                    public GmailRequest<Void> setPrettyPrint2(Boolean bool) {
                        return (Delete) super.setPrettyPrint(bool);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setQuotaUser */
                    public GmailRequest<Void> setQuotaUser2(String str) {
                        return (Delete) super.setQuotaUser(str);
                    }

                    public Delete setUserId(String str) {
                        this.userId = str;
                        return this;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setUserIp */
                    public GmailRequest<Void> setUserIp2(String str) {
                        return (Delete) super.setUserIp(str);
                    }
                }

                /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Settings$Filters$Get.class */
                public class Get extends GmailRequest<Filter> {
                    private static final String REST_PATH = "{userId}/settings/filters/{id}";
                    @q
                    private String id;
                    @q
                    private String userId;

                    protected Get(String str, String str2) {
                        super(Gmail.this, "GET", REST_PATH, null, Filter.class);
                        this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
                        this.id = (String) aa.a(str2, "Required parameter id must be specified.");
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

                    public String getUserId() {
                        return this.userId;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
                    public Get set(String str, Object obj) {
                        return (Get) super.set(str, obj);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setAlt */
                    public GmailRequest<Filter> setAlt2(String str) {
                        return (Get) super.setAlt(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setFields */
                    public GmailRequest<Filter> setFields2(String str) {
                        return (Get) super.setFields(str);
                    }

                    public Get setId(String str) {
                        this.id = str;
                        return this;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setKey */
                    public GmailRequest<Filter> setKey2(String str) {
                        return (Get) super.setKey(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setOauthToken */
                    public GmailRequest<Filter> setOauthToken2(String str) {
                        return (Get) super.setOauthToken(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setPrettyPrint */
                    public GmailRequest<Filter> setPrettyPrint2(Boolean bool) {
                        return (Get) super.setPrettyPrint(bool);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setQuotaUser */
                    public GmailRequest<Filter> setQuotaUser2(String str) {
                        return (Get) super.setQuotaUser(str);
                    }

                    public Get setUserId(String str) {
                        this.userId = str;
                        return this;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setUserIp */
                    public GmailRequest<Filter> setUserIp2(String str) {
                        return (Get) super.setUserIp(str);
                    }
                }

                /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Settings$Filters$List.class */
                public class List extends GmailRequest<ListFiltersResponse> {
                    private static final String REST_PATH = "{userId}/settings/filters";
                    @q
                    private String userId;

                    protected List(String str) {
                        super(Gmail.this, "GET", REST_PATH, null, ListFiltersResponse.class);
                        this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
                    }

                    @Override // com.google.api.client.googleapis.services.b
                    public com.google.api.client.http.q buildHttpRequestUsingHead() throws IOException {
                        return super.buildHttpRequestUsingHead();
                    }

                    @Override // com.google.api.client.googleapis.services.b
                    public t executeUsingHead() throws IOException {
                        return super.executeUsingHead();
                    }

                    public String getUserId() {
                        return this.userId;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
                    public List set(String str, Object obj) {
                        return (List) super.set(str, obj);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setAlt */
                    public GmailRequest<ListFiltersResponse> setAlt2(String str) {
                        return (List) super.setAlt(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setFields */
                    public GmailRequest<ListFiltersResponse> setFields2(String str) {
                        return (List) super.setFields(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setKey */
                    public GmailRequest<ListFiltersResponse> setKey2(String str) {
                        return (List) super.setKey(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setOauthToken */
                    public GmailRequest<ListFiltersResponse> setOauthToken2(String str) {
                        return (List) super.setOauthToken(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setPrettyPrint */
                    public GmailRequest<ListFiltersResponse> setPrettyPrint2(Boolean bool) {
                        return (List) super.setPrettyPrint(bool);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setQuotaUser */
                    public GmailRequest<ListFiltersResponse> setQuotaUser2(String str) {
                        return (List) super.setQuotaUser(str);
                    }

                    public List setUserId(String str) {
                        this.userId = str;
                        return this;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setUserIp */
                    public GmailRequest<ListFiltersResponse> setUserIp2(String str) {
                        return (List) super.setUserIp(str);
                    }
                }

                public Filters() {
                }
            }

            /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Settings$ForwardingAddresses.class */
            public final class ForwardingAddresses {

                /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Settings$ForwardingAddresses$Create.class */
                public class Create extends GmailRequest<ForwardingAddress> {
                    private static final String REST_PATH = "{userId}/settings/forwardingAddresses";
                    @q
                    private String userId;

                    protected Create(String str, ForwardingAddress forwardingAddress) {
                        super(Gmail.this, "POST", REST_PATH, forwardingAddress, ForwardingAddress.class);
                        this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
                    }

                    public String getUserId() {
                        return this.userId;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
                    public Create set(String str, Object obj) {
                        return (Create) super.set(str, obj);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setAlt */
                    public GmailRequest<ForwardingAddress> setAlt2(String str) {
                        return (Create) super.setAlt(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setFields */
                    public GmailRequest<ForwardingAddress> setFields2(String str) {
                        return (Create) super.setFields(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setKey */
                    public GmailRequest<ForwardingAddress> setKey2(String str) {
                        return (Create) super.setKey(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setOauthToken */
                    public GmailRequest<ForwardingAddress> setOauthToken2(String str) {
                        return (Create) super.setOauthToken(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setPrettyPrint */
                    public GmailRequest<ForwardingAddress> setPrettyPrint2(Boolean bool) {
                        return (Create) super.setPrettyPrint(bool);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setQuotaUser */
                    public GmailRequest<ForwardingAddress> setQuotaUser2(String str) {
                        return (Create) super.setQuotaUser(str);
                    }

                    public Create setUserId(String str) {
                        this.userId = str;
                        return this;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setUserIp */
                    public GmailRequest<ForwardingAddress> setUserIp2(String str) {
                        return (Create) super.setUserIp(str);
                    }
                }

                /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Settings$ForwardingAddresses$Delete.class */
                public class Delete extends GmailRequest<Void> {
                    private static final String REST_PATH = "{userId}/settings/forwardingAddresses/{forwardingEmail}";
                    @q
                    private String forwardingEmail;
                    @q
                    private String userId;

                    protected Delete(String str, String str2) {
                        super(Gmail.this, "DELETE", REST_PATH, null, Void.class);
                        this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
                        this.forwardingEmail = (String) aa.a(str2, "Required parameter forwardingEmail must be specified.");
                    }

                    public String getForwardingEmail() {
                        return this.forwardingEmail;
                    }

                    public String getUserId() {
                        return this.userId;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
                    public Delete set(String str, Object obj) {
                        return (Delete) super.set(str, obj);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setAlt */
                    public GmailRequest<Void> setAlt2(String str) {
                        return (Delete) super.setAlt(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setFields */
                    public GmailRequest<Void> setFields2(String str) {
                        return (Delete) super.setFields(str);
                    }

                    public Delete setForwardingEmail(String str) {
                        this.forwardingEmail = str;
                        return this;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setKey */
                    public GmailRequest<Void> setKey2(String str) {
                        return (Delete) super.setKey(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setOauthToken */
                    public GmailRequest<Void> setOauthToken2(String str) {
                        return (Delete) super.setOauthToken(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setPrettyPrint */
                    public GmailRequest<Void> setPrettyPrint2(Boolean bool) {
                        return (Delete) super.setPrettyPrint(bool);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setQuotaUser */
                    public GmailRequest<Void> setQuotaUser2(String str) {
                        return (Delete) super.setQuotaUser(str);
                    }

                    public Delete setUserId(String str) {
                        this.userId = str;
                        return this;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setUserIp */
                    public GmailRequest<Void> setUserIp2(String str) {
                        return (Delete) super.setUserIp(str);
                    }
                }

                /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Settings$ForwardingAddresses$Get.class */
                public class Get extends GmailRequest<ForwardingAddress> {
                    private static final String REST_PATH = "{userId}/settings/forwardingAddresses/{forwardingEmail}";
                    @q
                    private String forwardingEmail;
                    @q
                    private String userId;

                    protected Get(String str, String str2) {
                        super(Gmail.this, "GET", REST_PATH, null, ForwardingAddress.class);
                        this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
                        this.forwardingEmail = (String) aa.a(str2, "Required parameter forwardingEmail must be specified.");
                    }

                    @Override // com.google.api.client.googleapis.services.b
                    public com.google.api.client.http.q buildHttpRequestUsingHead() throws IOException {
                        return super.buildHttpRequestUsingHead();
                    }

                    @Override // com.google.api.client.googleapis.services.b
                    public t executeUsingHead() throws IOException {
                        return super.executeUsingHead();
                    }

                    public String getForwardingEmail() {
                        return this.forwardingEmail;
                    }

                    public String getUserId() {
                        return this.userId;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
                    public Get set(String str, Object obj) {
                        return (Get) super.set(str, obj);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setAlt */
                    public GmailRequest<ForwardingAddress> setAlt2(String str) {
                        return (Get) super.setAlt(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setFields */
                    public GmailRequest<ForwardingAddress> setFields2(String str) {
                        return (Get) super.setFields(str);
                    }

                    public Get setForwardingEmail(String str) {
                        this.forwardingEmail = str;
                        return this;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setKey */
                    public GmailRequest<ForwardingAddress> setKey2(String str) {
                        return (Get) super.setKey(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setOauthToken */
                    public GmailRequest<ForwardingAddress> setOauthToken2(String str) {
                        return (Get) super.setOauthToken(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setPrettyPrint */
                    public GmailRequest<ForwardingAddress> setPrettyPrint2(Boolean bool) {
                        return (Get) super.setPrettyPrint(bool);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setQuotaUser */
                    public GmailRequest<ForwardingAddress> setQuotaUser2(String str) {
                        return (Get) super.setQuotaUser(str);
                    }

                    public Get setUserId(String str) {
                        this.userId = str;
                        return this;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setUserIp */
                    public GmailRequest<ForwardingAddress> setUserIp2(String str) {
                        return (Get) super.setUserIp(str);
                    }
                }

                /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Settings$ForwardingAddresses$List.class */
                public class List extends GmailRequest<ListForwardingAddressesResponse> {
                    private static final String REST_PATH = "{userId}/settings/forwardingAddresses";
                    @q
                    private String userId;

                    protected List(String str) {
                        super(Gmail.this, "GET", REST_PATH, null, ListForwardingAddressesResponse.class);
                        this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
                    }

                    @Override // com.google.api.client.googleapis.services.b
                    public com.google.api.client.http.q buildHttpRequestUsingHead() throws IOException {
                        return super.buildHttpRequestUsingHead();
                    }

                    @Override // com.google.api.client.googleapis.services.b
                    public t executeUsingHead() throws IOException {
                        return super.executeUsingHead();
                    }

                    public String getUserId() {
                        return this.userId;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
                    public List set(String str, Object obj) {
                        return (List) super.set(str, obj);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setAlt */
                    public GmailRequest<ListForwardingAddressesResponse> setAlt2(String str) {
                        return (List) super.setAlt(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setFields */
                    public GmailRequest<ListForwardingAddressesResponse> setFields2(String str) {
                        return (List) super.setFields(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setKey */
                    public GmailRequest<ListForwardingAddressesResponse> setKey2(String str) {
                        return (List) super.setKey(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setOauthToken */
                    public GmailRequest<ListForwardingAddressesResponse> setOauthToken2(String str) {
                        return (List) super.setOauthToken(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setPrettyPrint */
                    public GmailRequest<ListForwardingAddressesResponse> setPrettyPrint2(Boolean bool) {
                        return (List) super.setPrettyPrint(bool);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setQuotaUser */
                    public GmailRequest<ListForwardingAddressesResponse> setQuotaUser2(String str) {
                        return (List) super.setQuotaUser(str);
                    }

                    public List setUserId(String str) {
                        this.userId = str;
                        return this;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setUserIp */
                    public GmailRequest<ListForwardingAddressesResponse> setUserIp2(String str) {
                        return (List) super.setUserIp(str);
                    }
                }

                public ForwardingAddresses() {
                }
            }

            /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Settings$GetAutoForwarding.class */
            public class GetAutoForwarding extends GmailRequest<AutoForwarding> {
                private static final String REST_PATH = "{userId}/settings/autoForwarding";
                @q
                private String userId;

                protected GetAutoForwarding(String str) {
                    super(Gmail.this, "GET", REST_PATH, null, AutoForwarding.class);
                    this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
                }

                @Override // com.google.api.client.googleapis.services.b
                public com.google.api.client.http.q buildHttpRequestUsingHead() throws IOException {
                    return super.buildHttpRequestUsingHead();
                }

                @Override // com.google.api.client.googleapis.services.b
                public t executeUsingHead() throws IOException {
                    return super.executeUsingHead();
                }

                public String getUserId() {
                    return this.userId;
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
                public GetAutoForwarding set(String str, Object obj) {
                    return (GetAutoForwarding) super.set(str, obj);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setAlt */
                public GmailRequest<AutoForwarding> setAlt2(String str) {
                    return (GetAutoForwarding) super.setAlt(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setFields */
                public GmailRequest<AutoForwarding> setFields2(String str) {
                    return (GetAutoForwarding) super.setFields(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setKey */
                public GmailRequest<AutoForwarding> setKey2(String str) {
                    return (GetAutoForwarding) super.setKey(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setOauthToken */
                public GmailRequest<AutoForwarding> setOauthToken2(String str) {
                    return (GetAutoForwarding) super.setOauthToken(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setPrettyPrint */
                public GmailRequest<AutoForwarding> setPrettyPrint2(Boolean bool) {
                    return (GetAutoForwarding) super.setPrettyPrint(bool);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setQuotaUser */
                public GmailRequest<AutoForwarding> setQuotaUser2(String str) {
                    return (GetAutoForwarding) super.setQuotaUser(str);
                }

                public GetAutoForwarding setUserId(String str) {
                    this.userId = str;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setUserIp */
                public GmailRequest<AutoForwarding> setUserIp2(String str) {
                    return (GetAutoForwarding) super.setUserIp(str);
                }
            }

            /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Settings$GetImap.class */
            public class GetImap extends GmailRequest<ImapSettings> {
                private static final String REST_PATH = "{userId}/settings/imap";
                @q
                private String userId;

                protected GetImap(String str) {
                    super(Gmail.this, "GET", REST_PATH, null, ImapSettings.class);
                    this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
                }

                @Override // com.google.api.client.googleapis.services.b
                public com.google.api.client.http.q buildHttpRequestUsingHead() throws IOException {
                    return super.buildHttpRequestUsingHead();
                }

                @Override // com.google.api.client.googleapis.services.b
                public t executeUsingHead() throws IOException {
                    return super.executeUsingHead();
                }

                public String getUserId() {
                    return this.userId;
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
                public GetImap set(String str, Object obj) {
                    return (GetImap) super.set(str, obj);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setAlt */
                public GmailRequest<ImapSettings> setAlt2(String str) {
                    return (GetImap) super.setAlt(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setFields */
                public GmailRequest<ImapSettings> setFields2(String str) {
                    return (GetImap) super.setFields(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setKey */
                public GmailRequest<ImapSettings> setKey2(String str) {
                    return (GetImap) super.setKey(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setOauthToken */
                public GmailRequest<ImapSettings> setOauthToken2(String str) {
                    return (GetImap) super.setOauthToken(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setPrettyPrint */
                public GmailRequest<ImapSettings> setPrettyPrint2(Boolean bool) {
                    return (GetImap) super.setPrettyPrint(bool);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setQuotaUser */
                public GmailRequest<ImapSettings> setQuotaUser2(String str) {
                    return (GetImap) super.setQuotaUser(str);
                }

                public GetImap setUserId(String str) {
                    this.userId = str;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setUserIp */
                public GmailRequest<ImapSettings> setUserIp2(String str) {
                    return (GetImap) super.setUserIp(str);
                }
            }

            /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Settings$GetLanguage.class */
            public class GetLanguage extends GmailRequest<LanguageSettings> {
                private static final String REST_PATH = "{userId}/settings/language";
                @q
                private String userId;

                protected GetLanguage(String str) {
                    super(Gmail.this, "GET", REST_PATH, null, LanguageSettings.class);
                    this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
                }

                @Override // com.google.api.client.googleapis.services.b
                public com.google.api.client.http.q buildHttpRequestUsingHead() throws IOException {
                    return super.buildHttpRequestUsingHead();
                }

                @Override // com.google.api.client.googleapis.services.b
                public t executeUsingHead() throws IOException {
                    return super.executeUsingHead();
                }

                public String getUserId() {
                    return this.userId;
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
                public GetLanguage set(String str, Object obj) {
                    return (GetLanguage) super.set(str, obj);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setAlt */
                public GmailRequest<LanguageSettings> setAlt2(String str) {
                    return (GetLanguage) super.setAlt(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setFields */
                public GmailRequest<LanguageSettings> setFields2(String str) {
                    return (GetLanguage) super.setFields(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setKey */
                public GmailRequest<LanguageSettings> setKey2(String str) {
                    return (GetLanguage) super.setKey(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setOauthToken */
                public GmailRequest<LanguageSettings> setOauthToken2(String str) {
                    return (GetLanguage) super.setOauthToken(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setPrettyPrint */
                public GmailRequest<LanguageSettings> setPrettyPrint2(Boolean bool) {
                    return (GetLanguage) super.setPrettyPrint(bool);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setQuotaUser */
                public GmailRequest<LanguageSettings> setQuotaUser2(String str) {
                    return (GetLanguage) super.setQuotaUser(str);
                }

                public GetLanguage setUserId(String str) {
                    this.userId = str;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setUserIp */
                public GmailRequest<LanguageSettings> setUserIp2(String str) {
                    return (GetLanguage) super.setUserIp(str);
                }
            }

            /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Settings$GetPop.class */
            public class GetPop extends GmailRequest<PopSettings> {
                private static final String REST_PATH = "{userId}/settings/pop";
                @q
                private String userId;

                protected GetPop(String str) {
                    super(Gmail.this, "GET", REST_PATH, null, PopSettings.class);
                    this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
                }

                @Override // com.google.api.client.googleapis.services.b
                public com.google.api.client.http.q buildHttpRequestUsingHead() throws IOException {
                    return super.buildHttpRequestUsingHead();
                }

                @Override // com.google.api.client.googleapis.services.b
                public t executeUsingHead() throws IOException {
                    return super.executeUsingHead();
                }

                public String getUserId() {
                    return this.userId;
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
                public GetPop set(String str, Object obj) {
                    return (GetPop) super.set(str, obj);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setAlt */
                public GmailRequest<PopSettings> setAlt2(String str) {
                    return (GetPop) super.setAlt(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setFields */
                public GmailRequest<PopSettings> setFields2(String str) {
                    return (GetPop) super.setFields(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setKey */
                public GmailRequest<PopSettings> setKey2(String str) {
                    return (GetPop) super.setKey(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setOauthToken */
                public GmailRequest<PopSettings> setOauthToken2(String str) {
                    return (GetPop) super.setOauthToken(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setPrettyPrint */
                public GmailRequest<PopSettings> setPrettyPrint2(Boolean bool) {
                    return (GetPop) super.setPrettyPrint(bool);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setQuotaUser */
                public GmailRequest<PopSettings> setQuotaUser2(String str) {
                    return (GetPop) super.setQuotaUser(str);
                }

                public GetPop setUserId(String str) {
                    this.userId = str;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setUserIp */
                public GmailRequest<PopSettings> setUserIp2(String str) {
                    return (GetPop) super.setUserIp(str);
                }
            }

            /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Settings$GetVacation.class */
            public class GetVacation extends GmailRequest<VacationSettings> {
                private static final String REST_PATH = "{userId}/settings/vacation";
                @q
                private String userId;

                protected GetVacation(String str) {
                    super(Gmail.this, "GET", REST_PATH, null, VacationSettings.class);
                    this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
                }

                @Override // com.google.api.client.googleapis.services.b
                public com.google.api.client.http.q buildHttpRequestUsingHead() throws IOException {
                    return super.buildHttpRequestUsingHead();
                }

                @Override // com.google.api.client.googleapis.services.b
                public t executeUsingHead() throws IOException {
                    return super.executeUsingHead();
                }

                public String getUserId() {
                    return this.userId;
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
                public GetVacation set(String str, Object obj) {
                    return (GetVacation) super.set(str, obj);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setAlt */
                public GmailRequest<VacationSettings> setAlt2(String str) {
                    return (GetVacation) super.setAlt(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setFields */
                public GmailRequest<VacationSettings> setFields2(String str) {
                    return (GetVacation) super.setFields(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setKey */
                public GmailRequest<VacationSettings> setKey2(String str) {
                    return (GetVacation) super.setKey(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setOauthToken */
                public GmailRequest<VacationSettings> setOauthToken2(String str) {
                    return (GetVacation) super.setOauthToken(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setPrettyPrint */
                public GmailRequest<VacationSettings> setPrettyPrint2(Boolean bool) {
                    return (GetVacation) super.setPrettyPrint(bool);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setQuotaUser */
                public GmailRequest<VacationSettings> setQuotaUser2(String str) {
                    return (GetVacation) super.setQuotaUser(str);
                }

                public GetVacation setUserId(String str) {
                    this.userId = str;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setUserIp */
                public GmailRequest<VacationSettings> setUserIp2(String str) {
                    return (GetVacation) super.setUserIp(str);
                }
            }

            /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Settings$SendAs.class */
            public final class SendAs {

                /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Settings$SendAs$Create.class */
                public class Create extends GmailRequest<com.google.api.services.gmail.model.SendAs> {
                    private static final String REST_PATH = "{userId}/settings/sendAs";
                    @q
                    private String userId;

                    protected Create(String str, com.google.api.services.gmail.model.SendAs sendAs) {
                        super(Gmail.this, "POST", REST_PATH, sendAs, com.google.api.services.gmail.model.SendAs.class);
                        this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
                    }

                    public String getUserId() {
                        return this.userId;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
                    public Create set(String str, Object obj) {
                        return (Create) super.set(str, obj);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setAlt */
                    public GmailRequest<com.google.api.services.gmail.model.SendAs> setAlt2(String str) {
                        return (Create) super.setAlt(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setFields */
                    public GmailRequest<com.google.api.services.gmail.model.SendAs> setFields2(String str) {
                        return (Create) super.setFields(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setKey */
                    public GmailRequest<com.google.api.services.gmail.model.SendAs> setKey2(String str) {
                        return (Create) super.setKey(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setOauthToken */
                    public GmailRequest<com.google.api.services.gmail.model.SendAs> setOauthToken2(String str) {
                        return (Create) super.setOauthToken(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setPrettyPrint */
                    public GmailRequest<com.google.api.services.gmail.model.SendAs> setPrettyPrint2(Boolean bool) {
                        return (Create) super.setPrettyPrint(bool);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setQuotaUser */
                    public GmailRequest<com.google.api.services.gmail.model.SendAs> setQuotaUser2(String str) {
                        return (Create) super.setQuotaUser(str);
                    }

                    public Create setUserId(String str) {
                        this.userId = str;
                        return this;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setUserIp */
                    public GmailRequest<com.google.api.services.gmail.model.SendAs> setUserIp2(String str) {
                        return (Create) super.setUserIp(str);
                    }
                }

                /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Settings$SendAs$Delete.class */
                public class Delete extends GmailRequest<Void> {
                    private static final String REST_PATH = "{userId}/settings/sendAs/{sendAsEmail}";
                    @q
                    private String sendAsEmail;
                    @q
                    private String userId;

                    protected Delete(String str, String str2) {
                        super(Gmail.this, "DELETE", REST_PATH, null, Void.class);
                        this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
                        this.sendAsEmail = (String) aa.a(str2, "Required parameter sendAsEmail must be specified.");
                    }

                    public String getSendAsEmail() {
                        return this.sendAsEmail;
                    }

                    public String getUserId() {
                        return this.userId;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
                    public Delete set(String str, Object obj) {
                        return (Delete) super.set(str, obj);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setAlt */
                    public GmailRequest<Void> setAlt2(String str) {
                        return (Delete) super.setAlt(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setFields */
                    public GmailRequest<Void> setFields2(String str) {
                        return (Delete) super.setFields(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setKey */
                    public GmailRequest<Void> setKey2(String str) {
                        return (Delete) super.setKey(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setOauthToken */
                    public GmailRequest<Void> setOauthToken2(String str) {
                        return (Delete) super.setOauthToken(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setPrettyPrint */
                    public GmailRequest<Void> setPrettyPrint2(Boolean bool) {
                        return (Delete) super.setPrettyPrint(bool);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setQuotaUser */
                    public GmailRequest<Void> setQuotaUser2(String str) {
                        return (Delete) super.setQuotaUser(str);
                    }

                    public Delete setSendAsEmail(String str) {
                        this.sendAsEmail = str;
                        return this;
                    }

                    public Delete setUserId(String str) {
                        this.userId = str;
                        return this;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setUserIp */
                    public GmailRequest<Void> setUserIp2(String str) {
                        return (Delete) super.setUserIp(str);
                    }
                }

                /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Settings$SendAs$Get.class */
                public class Get extends GmailRequest<com.google.api.services.gmail.model.SendAs> {
                    private static final String REST_PATH = "{userId}/settings/sendAs/{sendAsEmail}";
                    @q
                    private String sendAsEmail;
                    @q
                    private String userId;

                    protected Get(String str, String str2) {
                        super(Gmail.this, "GET", REST_PATH, null, com.google.api.services.gmail.model.SendAs.class);
                        this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
                        this.sendAsEmail = (String) aa.a(str2, "Required parameter sendAsEmail must be specified.");
                    }

                    @Override // com.google.api.client.googleapis.services.b
                    public com.google.api.client.http.q buildHttpRequestUsingHead() throws IOException {
                        return super.buildHttpRequestUsingHead();
                    }

                    @Override // com.google.api.client.googleapis.services.b
                    public t executeUsingHead() throws IOException {
                        return super.executeUsingHead();
                    }

                    public String getSendAsEmail() {
                        return this.sendAsEmail;
                    }

                    public String getUserId() {
                        return this.userId;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
                    public Get set(String str, Object obj) {
                        return (Get) super.set(str, obj);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setAlt */
                    public GmailRequest<com.google.api.services.gmail.model.SendAs> setAlt2(String str) {
                        return (Get) super.setAlt(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setFields */
                    public GmailRequest<com.google.api.services.gmail.model.SendAs> setFields2(String str) {
                        return (Get) super.setFields(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setKey */
                    public GmailRequest<com.google.api.services.gmail.model.SendAs> setKey2(String str) {
                        return (Get) super.setKey(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setOauthToken */
                    public GmailRequest<com.google.api.services.gmail.model.SendAs> setOauthToken2(String str) {
                        return (Get) super.setOauthToken(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setPrettyPrint */
                    public GmailRequest<com.google.api.services.gmail.model.SendAs> setPrettyPrint2(Boolean bool) {
                        return (Get) super.setPrettyPrint(bool);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setQuotaUser */
                    public GmailRequest<com.google.api.services.gmail.model.SendAs> setQuotaUser2(String str) {
                        return (Get) super.setQuotaUser(str);
                    }

                    public Get setSendAsEmail(String str) {
                        this.sendAsEmail = str;
                        return this;
                    }

                    public Get setUserId(String str) {
                        this.userId = str;
                        return this;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setUserIp */
                    public GmailRequest<com.google.api.services.gmail.model.SendAs> setUserIp2(String str) {
                        return (Get) super.setUserIp(str);
                    }
                }

                /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Settings$SendAs$List.class */
                public class List extends GmailRequest<ListSendAsResponse> {
                    private static final String REST_PATH = "{userId}/settings/sendAs";
                    @q
                    private String userId;

                    protected List(String str) {
                        super(Gmail.this, "GET", REST_PATH, null, ListSendAsResponse.class);
                        this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
                    }

                    @Override // com.google.api.client.googleapis.services.b
                    public com.google.api.client.http.q buildHttpRequestUsingHead() throws IOException {
                        return super.buildHttpRequestUsingHead();
                    }

                    @Override // com.google.api.client.googleapis.services.b
                    public t executeUsingHead() throws IOException {
                        return super.executeUsingHead();
                    }

                    public String getUserId() {
                        return this.userId;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
                    public List set(String str, Object obj) {
                        return (List) super.set(str, obj);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setAlt */
                    public GmailRequest<ListSendAsResponse> setAlt2(String str) {
                        return (List) super.setAlt(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setFields */
                    public GmailRequest<ListSendAsResponse> setFields2(String str) {
                        return (List) super.setFields(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setKey */
                    public GmailRequest<ListSendAsResponse> setKey2(String str) {
                        return (List) super.setKey(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setOauthToken */
                    public GmailRequest<ListSendAsResponse> setOauthToken2(String str) {
                        return (List) super.setOauthToken(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setPrettyPrint */
                    public GmailRequest<ListSendAsResponse> setPrettyPrint2(Boolean bool) {
                        return (List) super.setPrettyPrint(bool);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setQuotaUser */
                    public GmailRequest<ListSendAsResponse> setQuotaUser2(String str) {
                        return (List) super.setQuotaUser(str);
                    }

                    public List setUserId(String str) {
                        this.userId = str;
                        return this;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setUserIp */
                    public GmailRequest<ListSendAsResponse> setUserIp2(String str) {
                        return (List) super.setUserIp(str);
                    }
                }

                /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Settings$SendAs$Patch.class */
                public class Patch extends GmailRequest<com.google.api.services.gmail.model.SendAs> {
                    private static final String REST_PATH = "{userId}/settings/sendAs/{sendAsEmail}";
                    @q
                    private String sendAsEmail;
                    @q
                    private String userId;

                    protected Patch(String str, String str2, com.google.api.services.gmail.model.SendAs sendAs) {
                        super(Gmail.this, "PATCH", REST_PATH, sendAs, com.google.api.services.gmail.model.SendAs.class);
                        this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
                        this.sendAsEmail = (String) aa.a(str2, "Required parameter sendAsEmail must be specified.");
                    }

                    public String getSendAsEmail() {
                        return this.sendAsEmail;
                    }

                    public String getUserId() {
                        return this.userId;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
                    public Patch set(String str, Object obj) {
                        return (Patch) super.set(str, obj);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setAlt */
                    public GmailRequest<com.google.api.services.gmail.model.SendAs> setAlt2(String str) {
                        return (Patch) super.setAlt(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setFields */
                    public GmailRequest<com.google.api.services.gmail.model.SendAs> setFields2(String str) {
                        return (Patch) super.setFields(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setKey */
                    public GmailRequest<com.google.api.services.gmail.model.SendAs> setKey2(String str) {
                        return (Patch) super.setKey(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setOauthToken */
                    public GmailRequest<com.google.api.services.gmail.model.SendAs> setOauthToken2(String str) {
                        return (Patch) super.setOauthToken(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setPrettyPrint */
                    public GmailRequest<com.google.api.services.gmail.model.SendAs> setPrettyPrint2(Boolean bool) {
                        return (Patch) super.setPrettyPrint(bool);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setQuotaUser */
                    public GmailRequest<com.google.api.services.gmail.model.SendAs> setQuotaUser2(String str) {
                        return (Patch) super.setQuotaUser(str);
                    }

                    public Patch setSendAsEmail(String str) {
                        this.sendAsEmail = str;
                        return this;
                    }

                    public Patch setUserId(String str) {
                        this.userId = str;
                        return this;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setUserIp */
                    public GmailRequest<com.google.api.services.gmail.model.SendAs> setUserIp2(String str) {
                        return (Patch) super.setUserIp(str);
                    }
                }

                /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Settings$SendAs$SmimeInfo.class */
                public final class SmimeInfo {

                    /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Settings$SendAs$SmimeInfo$Delete.class */
                    public class Delete extends GmailRequest<Void> {
                        private static final String REST_PATH = "{userId}/settings/sendAs/{sendAsEmail}/smimeInfo/{id}";
                        @q
                        private String id;
                        @q
                        private String sendAsEmail;
                        @q
                        private String userId;

                        protected Delete(String str, String str2, String str3) {
                            super(Gmail.this, "DELETE", REST_PATH, null, Void.class);
                            this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
                            this.sendAsEmail = (String) aa.a(str2, "Required parameter sendAsEmail must be specified.");
                            this.id = (String) aa.a(str3, "Required parameter id must be specified.");
                        }

                        public String getId() {
                            return this.id;
                        }

                        public String getSendAsEmail() {
                            return this.sendAsEmail;
                        }

                        public String getUserId() {
                            return this.userId;
                        }

                        @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
                        public Delete set(String str, Object obj) {
                            return (Delete) super.set(str, obj);
                        }

                        @Override // com.google.api.services.gmail.GmailRequest
                        /* renamed from: setAlt */
                        public GmailRequest<Void> setAlt2(String str) {
                            return (Delete) super.setAlt(str);
                        }

                        @Override // com.google.api.services.gmail.GmailRequest
                        /* renamed from: setFields */
                        public GmailRequest<Void> setFields2(String str) {
                            return (Delete) super.setFields(str);
                        }

                        public Delete setId(String str) {
                            this.id = str;
                            return this;
                        }

                        @Override // com.google.api.services.gmail.GmailRequest
                        /* renamed from: setKey */
                        public GmailRequest<Void> setKey2(String str) {
                            return (Delete) super.setKey(str);
                        }

                        @Override // com.google.api.services.gmail.GmailRequest
                        /* renamed from: setOauthToken */
                        public GmailRequest<Void> setOauthToken2(String str) {
                            return (Delete) super.setOauthToken(str);
                        }

                        @Override // com.google.api.services.gmail.GmailRequest
                        /* renamed from: setPrettyPrint */
                        public GmailRequest<Void> setPrettyPrint2(Boolean bool) {
                            return (Delete) super.setPrettyPrint(bool);
                        }

                        @Override // com.google.api.services.gmail.GmailRequest
                        /* renamed from: setQuotaUser */
                        public GmailRequest<Void> setQuotaUser2(String str) {
                            return (Delete) super.setQuotaUser(str);
                        }

                        public Delete setSendAsEmail(String str) {
                            this.sendAsEmail = str;
                            return this;
                        }

                        public Delete setUserId(String str) {
                            this.userId = str;
                            return this;
                        }

                        @Override // com.google.api.services.gmail.GmailRequest
                        /* renamed from: setUserIp */
                        public GmailRequest<Void> setUserIp2(String str) {
                            return (Delete) super.setUserIp(str);
                        }
                    }

                    /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Settings$SendAs$SmimeInfo$Get.class */
                    public class Get extends GmailRequest<com.google.api.services.gmail.model.SmimeInfo> {
                        private static final String REST_PATH = "{userId}/settings/sendAs/{sendAsEmail}/smimeInfo/{id}";
                        @q
                        private String id;
                        @q
                        private String sendAsEmail;
                        @q
                        private String userId;

                        protected Get(String str, String str2, String str3) {
                            super(Gmail.this, "GET", REST_PATH, null, com.google.api.services.gmail.model.SmimeInfo.class);
                            this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
                            this.sendAsEmail = (String) aa.a(str2, "Required parameter sendAsEmail must be specified.");
                            this.id = (String) aa.a(str3, "Required parameter id must be specified.");
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

                        public String getSendAsEmail() {
                            return this.sendAsEmail;
                        }

                        public String getUserId() {
                            return this.userId;
                        }

                        @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
                        public Get set(String str, Object obj) {
                            return (Get) super.set(str, obj);
                        }

                        @Override // com.google.api.services.gmail.GmailRequest
                        /* renamed from: setAlt */
                        public GmailRequest<com.google.api.services.gmail.model.SmimeInfo> setAlt2(String str) {
                            return (Get) super.setAlt(str);
                        }

                        @Override // com.google.api.services.gmail.GmailRequest
                        /* renamed from: setFields */
                        public GmailRequest<com.google.api.services.gmail.model.SmimeInfo> setFields2(String str) {
                            return (Get) super.setFields(str);
                        }

                        public Get setId(String str) {
                            this.id = str;
                            return this;
                        }

                        @Override // com.google.api.services.gmail.GmailRequest
                        /* renamed from: setKey */
                        public GmailRequest<com.google.api.services.gmail.model.SmimeInfo> setKey2(String str) {
                            return (Get) super.setKey(str);
                        }

                        @Override // com.google.api.services.gmail.GmailRequest
                        /* renamed from: setOauthToken */
                        public GmailRequest<com.google.api.services.gmail.model.SmimeInfo> setOauthToken2(String str) {
                            return (Get) super.setOauthToken(str);
                        }

                        @Override // com.google.api.services.gmail.GmailRequest
                        /* renamed from: setPrettyPrint */
                        public GmailRequest<com.google.api.services.gmail.model.SmimeInfo> setPrettyPrint2(Boolean bool) {
                            return (Get) super.setPrettyPrint(bool);
                        }

                        @Override // com.google.api.services.gmail.GmailRequest
                        /* renamed from: setQuotaUser */
                        public GmailRequest<com.google.api.services.gmail.model.SmimeInfo> setQuotaUser2(String str) {
                            return (Get) super.setQuotaUser(str);
                        }

                        public Get setSendAsEmail(String str) {
                            this.sendAsEmail = str;
                            return this;
                        }

                        public Get setUserId(String str) {
                            this.userId = str;
                            return this;
                        }

                        @Override // com.google.api.services.gmail.GmailRequest
                        /* renamed from: setUserIp */
                        public GmailRequest<com.google.api.services.gmail.model.SmimeInfo> setUserIp2(String str) {
                            return (Get) super.setUserIp(str);
                        }
                    }

                    /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Settings$SendAs$SmimeInfo$Insert.class */
                    public class Insert extends GmailRequest<com.google.api.services.gmail.model.SmimeInfo> {
                        private static final String REST_PATH = "{userId}/settings/sendAs/{sendAsEmail}/smimeInfo";
                        @q
                        private String sendAsEmail;
                        @q
                        private String userId;

                        protected Insert(String str, String str2, com.google.api.services.gmail.model.SmimeInfo smimeInfo) {
                            super(Gmail.this, "POST", REST_PATH, smimeInfo, com.google.api.services.gmail.model.SmimeInfo.class);
                            this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
                            this.sendAsEmail = (String) aa.a(str2, "Required parameter sendAsEmail must be specified.");
                        }

                        public String getSendAsEmail() {
                            return this.sendAsEmail;
                        }

                        public String getUserId() {
                            return this.userId;
                        }

                        @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
                        public Insert set(String str, Object obj) {
                            return (Insert) super.set(str, obj);
                        }

                        @Override // com.google.api.services.gmail.GmailRequest
                        /* renamed from: setAlt */
                        public GmailRequest<com.google.api.services.gmail.model.SmimeInfo> setAlt2(String str) {
                            return (Insert) super.setAlt(str);
                        }

                        @Override // com.google.api.services.gmail.GmailRequest
                        /* renamed from: setFields */
                        public GmailRequest<com.google.api.services.gmail.model.SmimeInfo> setFields2(String str) {
                            return (Insert) super.setFields(str);
                        }

                        @Override // com.google.api.services.gmail.GmailRequest
                        /* renamed from: setKey */
                        public GmailRequest<com.google.api.services.gmail.model.SmimeInfo> setKey2(String str) {
                            return (Insert) super.setKey(str);
                        }

                        @Override // com.google.api.services.gmail.GmailRequest
                        /* renamed from: setOauthToken */
                        public GmailRequest<com.google.api.services.gmail.model.SmimeInfo> setOauthToken2(String str) {
                            return (Insert) super.setOauthToken(str);
                        }

                        @Override // com.google.api.services.gmail.GmailRequest
                        /* renamed from: setPrettyPrint */
                        public GmailRequest<com.google.api.services.gmail.model.SmimeInfo> setPrettyPrint2(Boolean bool) {
                            return (Insert) super.setPrettyPrint(bool);
                        }

                        @Override // com.google.api.services.gmail.GmailRequest
                        /* renamed from: setQuotaUser */
                        public GmailRequest<com.google.api.services.gmail.model.SmimeInfo> setQuotaUser2(String str) {
                            return (Insert) super.setQuotaUser(str);
                        }

                        public Insert setSendAsEmail(String str) {
                            this.sendAsEmail = str;
                            return this;
                        }

                        public Insert setUserId(String str) {
                            this.userId = str;
                            return this;
                        }

                        @Override // com.google.api.services.gmail.GmailRequest
                        /* renamed from: setUserIp */
                        public GmailRequest<com.google.api.services.gmail.model.SmimeInfo> setUserIp2(String str) {
                            return (Insert) super.setUserIp(str);
                        }
                    }

                    /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Settings$SendAs$SmimeInfo$List.class */
                    public class List extends GmailRequest<ListSmimeInfoResponse> {
                        private static final String REST_PATH = "{userId}/settings/sendAs/{sendAsEmail}/smimeInfo";
                        @q
                        private String sendAsEmail;
                        @q
                        private String userId;

                        protected List(String str, String str2) {
                            super(Gmail.this, "GET", REST_PATH, null, ListSmimeInfoResponse.class);
                            this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
                            this.sendAsEmail = (String) aa.a(str2, "Required parameter sendAsEmail must be specified.");
                        }

                        @Override // com.google.api.client.googleapis.services.b
                        public com.google.api.client.http.q buildHttpRequestUsingHead() throws IOException {
                            return super.buildHttpRequestUsingHead();
                        }

                        @Override // com.google.api.client.googleapis.services.b
                        public t executeUsingHead() throws IOException {
                            return super.executeUsingHead();
                        }

                        public String getSendAsEmail() {
                            return this.sendAsEmail;
                        }

                        public String getUserId() {
                            return this.userId;
                        }

                        @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
                        public List set(String str, Object obj) {
                            return (List) super.set(str, obj);
                        }

                        @Override // com.google.api.services.gmail.GmailRequest
                        /* renamed from: setAlt */
                        public GmailRequest<ListSmimeInfoResponse> setAlt2(String str) {
                            return (List) super.setAlt(str);
                        }

                        @Override // com.google.api.services.gmail.GmailRequest
                        /* renamed from: setFields */
                        public GmailRequest<ListSmimeInfoResponse> setFields2(String str) {
                            return (List) super.setFields(str);
                        }

                        @Override // com.google.api.services.gmail.GmailRequest
                        /* renamed from: setKey */
                        public GmailRequest<ListSmimeInfoResponse> setKey2(String str) {
                            return (List) super.setKey(str);
                        }

                        @Override // com.google.api.services.gmail.GmailRequest
                        /* renamed from: setOauthToken */
                        public GmailRequest<ListSmimeInfoResponse> setOauthToken2(String str) {
                            return (List) super.setOauthToken(str);
                        }

                        @Override // com.google.api.services.gmail.GmailRequest
                        /* renamed from: setPrettyPrint */
                        public GmailRequest<ListSmimeInfoResponse> setPrettyPrint2(Boolean bool) {
                            return (List) super.setPrettyPrint(bool);
                        }

                        @Override // com.google.api.services.gmail.GmailRequest
                        /* renamed from: setQuotaUser */
                        public GmailRequest<ListSmimeInfoResponse> setQuotaUser2(String str) {
                            return (List) super.setQuotaUser(str);
                        }

                        public List setSendAsEmail(String str) {
                            this.sendAsEmail = str;
                            return this;
                        }

                        public List setUserId(String str) {
                            this.userId = str;
                            return this;
                        }

                        @Override // com.google.api.services.gmail.GmailRequest
                        /* renamed from: setUserIp */
                        public GmailRequest<ListSmimeInfoResponse> setUserIp2(String str) {
                            return (List) super.setUserIp(str);
                        }
                    }

                    /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Settings$SendAs$SmimeInfo$SetDefault.class */
                    public class SetDefault extends GmailRequest<Void> {
                        private static final String REST_PATH = "{userId}/settings/sendAs/{sendAsEmail}/smimeInfo/{id}/setDefault";
                        @q
                        private String id;
                        @q
                        private String sendAsEmail;
                        @q
                        private String userId;

                        protected SetDefault(String str, String str2, String str3) {
                            super(Gmail.this, "POST", REST_PATH, null, Void.class);
                            this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
                            this.sendAsEmail = (String) aa.a(str2, "Required parameter sendAsEmail must be specified.");
                            this.id = (String) aa.a(str3, "Required parameter id must be specified.");
                        }

                        public String getId() {
                            return this.id;
                        }

                        public String getSendAsEmail() {
                            return this.sendAsEmail;
                        }

                        public String getUserId() {
                            return this.userId;
                        }

                        @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
                        public SetDefault set(String str, Object obj) {
                            return (SetDefault) super.set(str, obj);
                        }

                        @Override // com.google.api.services.gmail.GmailRequest
                        /* renamed from: setAlt */
                        public GmailRequest<Void> setAlt2(String str) {
                            return (SetDefault) super.setAlt(str);
                        }

                        @Override // com.google.api.services.gmail.GmailRequest
                        /* renamed from: setFields */
                        public GmailRequest<Void> setFields2(String str) {
                            return (SetDefault) super.setFields(str);
                        }

                        public SetDefault setId(String str) {
                            this.id = str;
                            return this;
                        }

                        @Override // com.google.api.services.gmail.GmailRequest
                        /* renamed from: setKey */
                        public GmailRequest<Void> setKey2(String str) {
                            return (SetDefault) super.setKey(str);
                        }

                        @Override // com.google.api.services.gmail.GmailRequest
                        /* renamed from: setOauthToken */
                        public GmailRequest<Void> setOauthToken2(String str) {
                            return (SetDefault) super.setOauthToken(str);
                        }

                        @Override // com.google.api.services.gmail.GmailRequest
                        /* renamed from: setPrettyPrint */
                        public GmailRequest<Void> setPrettyPrint2(Boolean bool) {
                            return (SetDefault) super.setPrettyPrint(bool);
                        }

                        @Override // com.google.api.services.gmail.GmailRequest
                        /* renamed from: setQuotaUser */
                        public GmailRequest<Void> setQuotaUser2(String str) {
                            return (SetDefault) super.setQuotaUser(str);
                        }

                        public SetDefault setSendAsEmail(String str) {
                            this.sendAsEmail = str;
                            return this;
                        }

                        public SetDefault setUserId(String str) {
                            this.userId = str;
                            return this;
                        }

                        @Override // com.google.api.services.gmail.GmailRequest
                        /* renamed from: setUserIp */
                        public GmailRequest<Void> setUserIp2(String str) {
                            return (SetDefault) super.setUserIp(str);
                        }
                    }

                    public SmimeInfo() {
                    }
                }

                /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Settings$SendAs$Update.class */
                public class Update extends GmailRequest<com.google.api.services.gmail.model.SendAs> {
                    private static final String REST_PATH = "{userId}/settings/sendAs/{sendAsEmail}";
                    @q
                    private String sendAsEmail;
                    @q
                    private String userId;

                    protected Update(String str, String str2, com.google.api.services.gmail.model.SendAs sendAs) {
                        super(Gmail.this, "PUT", REST_PATH, sendAs, com.google.api.services.gmail.model.SendAs.class);
                        this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
                        this.sendAsEmail = (String) aa.a(str2, "Required parameter sendAsEmail must be specified.");
                    }

                    public String getSendAsEmail() {
                        return this.sendAsEmail;
                    }

                    public String getUserId() {
                        return this.userId;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
                    public Update set(String str, Object obj) {
                        return (Update) super.set(str, obj);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setAlt */
                    public GmailRequest<com.google.api.services.gmail.model.SendAs> setAlt2(String str) {
                        return (Update) super.setAlt(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setFields */
                    public GmailRequest<com.google.api.services.gmail.model.SendAs> setFields2(String str) {
                        return (Update) super.setFields(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setKey */
                    public GmailRequest<com.google.api.services.gmail.model.SendAs> setKey2(String str) {
                        return (Update) super.setKey(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setOauthToken */
                    public GmailRequest<com.google.api.services.gmail.model.SendAs> setOauthToken2(String str) {
                        return (Update) super.setOauthToken(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setPrettyPrint */
                    public GmailRequest<com.google.api.services.gmail.model.SendAs> setPrettyPrint2(Boolean bool) {
                        return (Update) super.setPrettyPrint(bool);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setQuotaUser */
                    public GmailRequest<com.google.api.services.gmail.model.SendAs> setQuotaUser2(String str) {
                        return (Update) super.setQuotaUser(str);
                    }

                    public Update setSendAsEmail(String str) {
                        this.sendAsEmail = str;
                        return this;
                    }

                    public Update setUserId(String str) {
                        this.userId = str;
                        return this;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setUserIp */
                    public GmailRequest<com.google.api.services.gmail.model.SendAs> setUserIp2(String str) {
                        return (Update) super.setUserIp(str);
                    }
                }

                /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Settings$SendAs$Verify.class */
                public class Verify extends GmailRequest<Void> {
                    private static final String REST_PATH = "{userId}/settings/sendAs/{sendAsEmail}/verify";
                    @q
                    private String sendAsEmail;
                    @q
                    private String userId;

                    protected Verify(String str, String str2) {
                        super(Gmail.this, "POST", REST_PATH, null, Void.class);
                        this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
                        this.sendAsEmail = (String) aa.a(str2, "Required parameter sendAsEmail must be specified.");
                    }

                    public String getSendAsEmail() {
                        return this.sendAsEmail;
                    }

                    public String getUserId() {
                        return this.userId;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
                    public Verify set(String str, Object obj) {
                        return (Verify) super.set(str, obj);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setAlt */
                    public GmailRequest<Void> setAlt2(String str) {
                        return (Verify) super.setAlt(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setFields */
                    public GmailRequest<Void> setFields2(String str) {
                        return (Verify) super.setFields(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setKey */
                    public GmailRequest<Void> setKey2(String str) {
                        return (Verify) super.setKey(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setOauthToken */
                    public GmailRequest<Void> setOauthToken2(String str) {
                        return (Verify) super.setOauthToken(str);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setPrettyPrint */
                    public GmailRequest<Void> setPrettyPrint2(Boolean bool) {
                        return (Verify) super.setPrettyPrint(bool);
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setQuotaUser */
                    public GmailRequest<Void> setQuotaUser2(String str) {
                        return (Verify) super.setQuotaUser(str);
                    }

                    public Verify setSendAsEmail(String str) {
                        this.sendAsEmail = str;
                        return this;
                    }

                    public Verify setUserId(String str) {
                        this.userId = str;
                        return this;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest
                    /* renamed from: setUserIp */
                    public GmailRequest<Void> setUserIp2(String str) {
                        return (Verify) super.setUserIp(str);
                    }
                }

                public SendAs() {
                }
            }

            /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Settings$UpdateAutoForwarding.class */
            public class UpdateAutoForwarding extends GmailRequest<AutoForwarding> {
                private static final String REST_PATH = "{userId}/settings/autoForwarding";
                @q
                private String userId;

                protected UpdateAutoForwarding(String str, AutoForwarding autoForwarding) {
                    super(Gmail.this, "PUT", REST_PATH, autoForwarding, AutoForwarding.class);
                    this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
                }

                public String getUserId() {
                    return this.userId;
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
                public UpdateAutoForwarding set(String str, Object obj) {
                    return (UpdateAutoForwarding) super.set(str, obj);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setAlt */
                public GmailRequest<AutoForwarding> setAlt2(String str) {
                    return (UpdateAutoForwarding) super.setAlt(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setFields */
                public GmailRequest<AutoForwarding> setFields2(String str) {
                    return (UpdateAutoForwarding) super.setFields(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setKey */
                public GmailRequest<AutoForwarding> setKey2(String str) {
                    return (UpdateAutoForwarding) super.setKey(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setOauthToken */
                public GmailRequest<AutoForwarding> setOauthToken2(String str) {
                    return (UpdateAutoForwarding) super.setOauthToken(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setPrettyPrint */
                public GmailRequest<AutoForwarding> setPrettyPrint2(Boolean bool) {
                    return (UpdateAutoForwarding) super.setPrettyPrint(bool);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setQuotaUser */
                public GmailRequest<AutoForwarding> setQuotaUser2(String str) {
                    return (UpdateAutoForwarding) super.setQuotaUser(str);
                }

                public UpdateAutoForwarding setUserId(String str) {
                    this.userId = str;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setUserIp */
                public GmailRequest<AutoForwarding> setUserIp2(String str) {
                    return (UpdateAutoForwarding) super.setUserIp(str);
                }
            }

            /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Settings$UpdateImap.class */
            public class UpdateImap extends GmailRequest<ImapSettings> {
                private static final String REST_PATH = "{userId}/settings/imap";
                @q
                private String userId;

                protected UpdateImap(String str, ImapSettings imapSettings) {
                    super(Gmail.this, "PUT", REST_PATH, imapSettings, ImapSettings.class);
                    this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
                }

                public String getUserId() {
                    return this.userId;
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
                public UpdateImap set(String str, Object obj) {
                    return (UpdateImap) super.set(str, obj);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setAlt */
                public GmailRequest<ImapSettings> setAlt2(String str) {
                    return (UpdateImap) super.setAlt(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setFields */
                public GmailRequest<ImapSettings> setFields2(String str) {
                    return (UpdateImap) super.setFields(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setKey */
                public GmailRequest<ImapSettings> setKey2(String str) {
                    return (UpdateImap) super.setKey(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setOauthToken */
                public GmailRequest<ImapSettings> setOauthToken2(String str) {
                    return (UpdateImap) super.setOauthToken(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setPrettyPrint */
                public GmailRequest<ImapSettings> setPrettyPrint2(Boolean bool) {
                    return (UpdateImap) super.setPrettyPrint(bool);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setQuotaUser */
                public GmailRequest<ImapSettings> setQuotaUser2(String str) {
                    return (UpdateImap) super.setQuotaUser(str);
                }

                public UpdateImap setUserId(String str) {
                    this.userId = str;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setUserIp */
                public GmailRequest<ImapSettings> setUserIp2(String str) {
                    return (UpdateImap) super.setUserIp(str);
                }
            }

            /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Settings$UpdateLanguage.class */
            public class UpdateLanguage extends GmailRequest<LanguageSettings> {
                private static final String REST_PATH = "{userId}/settings/language";
                @q
                private String userId;

                protected UpdateLanguage(String str, LanguageSettings languageSettings) {
                    super(Gmail.this, "PUT", REST_PATH, languageSettings, LanguageSettings.class);
                    this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
                }

                public String getUserId() {
                    return this.userId;
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
                public UpdateLanguage set(String str, Object obj) {
                    return (UpdateLanguage) super.set(str, obj);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setAlt */
                public GmailRequest<LanguageSettings> setAlt2(String str) {
                    return (UpdateLanguage) super.setAlt(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setFields */
                public GmailRequest<LanguageSettings> setFields2(String str) {
                    return (UpdateLanguage) super.setFields(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setKey */
                public GmailRequest<LanguageSettings> setKey2(String str) {
                    return (UpdateLanguage) super.setKey(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setOauthToken */
                public GmailRequest<LanguageSettings> setOauthToken2(String str) {
                    return (UpdateLanguage) super.setOauthToken(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setPrettyPrint */
                public GmailRequest<LanguageSettings> setPrettyPrint2(Boolean bool) {
                    return (UpdateLanguage) super.setPrettyPrint(bool);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setQuotaUser */
                public GmailRequest<LanguageSettings> setQuotaUser2(String str) {
                    return (UpdateLanguage) super.setQuotaUser(str);
                }

                public UpdateLanguage setUserId(String str) {
                    this.userId = str;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setUserIp */
                public GmailRequest<LanguageSettings> setUserIp2(String str) {
                    return (UpdateLanguage) super.setUserIp(str);
                }
            }

            /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Settings$UpdatePop.class */
            public class UpdatePop extends GmailRequest<PopSettings> {
                private static final String REST_PATH = "{userId}/settings/pop";
                @q
                private String userId;

                protected UpdatePop(String str, PopSettings popSettings) {
                    super(Gmail.this, "PUT", REST_PATH, popSettings, PopSettings.class);
                    this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
                }

                public String getUserId() {
                    return this.userId;
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
                public UpdatePop set(String str, Object obj) {
                    return (UpdatePop) super.set(str, obj);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setAlt */
                public GmailRequest<PopSettings> setAlt2(String str) {
                    return (UpdatePop) super.setAlt(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setFields */
                public GmailRequest<PopSettings> setFields2(String str) {
                    return (UpdatePop) super.setFields(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setKey */
                public GmailRequest<PopSettings> setKey2(String str) {
                    return (UpdatePop) super.setKey(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setOauthToken */
                public GmailRequest<PopSettings> setOauthToken2(String str) {
                    return (UpdatePop) super.setOauthToken(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setPrettyPrint */
                public GmailRequest<PopSettings> setPrettyPrint2(Boolean bool) {
                    return (UpdatePop) super.setPrettyPrint(bool);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setQuotaUser */
                public GmailRequest<PopSettings> setQuotaUser2(String str) {
                    return (UpdatePop) super.setQuotaUser(str);
                }

                public UpdatePop setUserId(String str) {
                    this.userId = str;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setUserIp */
                public GmailRequest<PopSettings> setUserIp2(String str) {
                    return (UpdatePop) super.setUserIp(str);
                }
            }

            /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Settings$UpdateVacation.class */
            public class UpdateVacation extends GmailRequest<VacationSettings> {
                private static final String REST_PATH = "{userId}/settings/vacation";
                @q
                private String userId;

                protected UpdateVacation(String str, VacationSettings vacationSettings) {
                    super(Gmail.this, "PUT", REST_PATH, vacationSettings, VacationSettings.class);
                    this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
                }

                public String getUserId() {
                    return this.userId;
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
                public UpdateVacation set(String str, Object obj) {
                    return (UpdateVacation) super.set(str, obj);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setAlt */
                public GmailRequest<VacationSettings> setAlt2(String str) {
                    return (UpdateVacation) super.setAlt(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setFields */
                public GmailRequest<VacationSettings> setFields2(String str) {
                    return (UpdateVacation) super.setFields(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setKey */
                public GmailRequest<VacationSettings> setKey2(String str) {
                    return (UpdateVacation) super.setKey(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setOauthToken */
                public GmailRequest<VacationSettings> setOauthToken2(String str) {
                    return (UpdateVacation) super.setOauthToken(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setPrettyPrint */
                public GmailRequest<VacationSettings> setPrettyPrint2(Boolean bool) {
                    return (UpdateVacation) super.setPrettyPrint(bool);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setQuotaUser */
                public GmailRequest<VacationSettings> setQuotaUser2(String str) {
                    return (UpdateVacation) super.setQuotaUser(str);
                }

                public UpdateVacation setUserId(String str) {
                    this.userId = str;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setUserIp */
                public GmailRequest<VacationSettings> setUserIp2(String str) {
                    return (UpdateVacation) super.setUserIp(str);
                }
            }

            public Settings() {
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Stop.class */
        public class Stop extends GmailRequest<Void> {
            private static final String REST_PATH = "{userId}/stop";
            @q
            private String userId;

            protected Stop(String str) {
                super(Gmail.this, "POST", REST_PATH, null, Void.class);
                this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
            }

            public String getUserId() {
                return this.userId;
            }

            @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Stop set(String str, Object obj) {
                return (Stop) super.set(str, obj);
            }

            @Override // com.google.api.services.gmail.GmailRequest
            /* renamed from: setAlt */
            public GmailRequest<Void> setAlt2(String str) {
                return (Stop) super.setAlt(str);
            }

            @Override // com.google.api.services.gmail.GmailRequest
            /* renamed from: setFields */
            public GmailRequest<Void> setFields2(String str) {
                return (Stop) super.setFields(str);
            }

            @Override // com.google.api.services.gmail.GmailRequest
            /* renamed from: setKey */
            public GmailRequest<Void> setKey2(String str) {
                return (Stop) super.setKey(str);
            }

            @Override // com.google.api.services.gmail.GmailRequest
            /* renamed from: setOauthToken */
            public GmailRequest<Void> setOauthToken2(String str) {
                return (Stop) super.setOauthToken(str);
            }

            @Override // com.google.api.services.gmail.GmailRequest
            /* renamed from: setPrettyPrint */
            public GmailRequest<Void> setPrettyPrint2(Boolean bool) {
                return (Stop) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.gmail.GmailRequest
            /* renamed from: setQuotaUser */
            public GmailRequest<Void> setQuotaUser2(String str) {
                return (Stop) super.setQuotaUser(str);
            }

            public Stop setUserId(String str) {
                this.userId = str;
                return this;
            }

            @Override // com.google.api.services.gmail.GmailRequest
            /* renamed from: setUserIp */
            public GmailRequest<Void> setUserIp2(String str) {
                return (Stop) super.setUserIp(str);
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Threads.class */
        public final class Threads {

            /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Threads$Delete.class */
            public class Delete extends GmailRequest<Void> {
                private static final String REST_PATH = "{userId}/threads/{id}";
                @q
                private String id;
                @q
                private String userId;

                protected Delete(String str, String str2) {
                    super(Gmail.this, "DELETE", REST_PATH, null, Void.class);
                    this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
                    this.id = (String) aa.a(str2, "Required parameter id must be specified.");
                }

                public String getId() {
                    return this.id;
                }

                public String getUserId() {
                    return this.userId;
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
                public Delete set(String str, Object obj) {
                    return (Delete) super.set(str, obj);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setAlt */
                public GmailRequest<Void> setAlt2(String str) {
                    return (Delete) super.setAlt(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setFields */
                public GmailRequest<Void> setFields2(String str) {
                    return (Delete) super.setFields(str);
                }

                public Delete setId(String str) {
                    this.id = str;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setKey */
                public GmailRequest<Void> setKey2(String str) {
                    return (Delete) super.setKey(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setOauthToken */
                public GmailRequest<Void> setOauthToken2(String str) {
                    return (Delete) super.setOauthToken(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setPrettyPrint */
                public GmailRequest<Void> setPrettyPrint2(Boolean bool) {
                    return (Delete) super.setPrettyPrint(bool);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setQuotaUser */
                public GmailRequest<Void> setQuotaUser2(String str) {
                    return (Delete) super.setQuotaUser(str);
                }

                public Delete setUserId(String str) {
                    this.userId = str;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setUserIp */
                public GmailRequest<Void> setUserIp2(String str) {
                    return (Delete) super.setUserIp(str);
                }
            }

            /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Threads$Get.class */
            public class Get extends GmailRequest<Thread> {
                private static final String REST_PATH = "{userId}/threads/{id}";
                @q
                private String format;
                @q
                private String id;
                @q
                private java.util.List<String> metadataHeaders;
                @q
                private String userId;

                protected Get(String str, String str2) {
                    super(Gmail.this, "GET", REST_PATH, null, Thread.class);
                    this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
                    this.id = (String) aa.a(str2, "Required parameter id must be specified.");
                }

                @Override // com.google.api.client.googleapis.services.b
                public com.google.api.client.http.q buildHttpRequestUsingHead() throws IOException {
                    return super.buildHttpRequestUsingHead();
                }

                @Override // com.google.api.client.googleapis.services.b
                public t executeUsingHead() throws IOException {
                    return super.executeUsingHead();
                }

                public String getFormat() {
                    return this.format;
                }

                public String getId() {
                    return this.id;
                }

                public java.util.List<String> getMetadataHeaders() {
                    return this.metadataHeaders;
                }

                public String getUserId() {
                    return this.userId;
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
                public Get set(String str, Object obj) {
                    return (Get) super.set(str, obj);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setAlt */
                public GmailRequest<Thread> setAlt2(String str) {
                    return (Get) super.setAlt(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setFields */
                public GmailRequest<Thread> setFields2(String str) {
                    return (Get) super.setFields(str);
                }

                public Get setFormat(String str) {
                    this.format = str;
                    return this;
                }

                public Get setId(String str) {
                    this.id = str;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setKey */
                public GmailRequest<Thread> setKey2(String str) {
                    return (Get) super.setKey(str);
                }

                public Get setMetadataHeaders(java.util.List<String> list) {
                    this.metadataHeaders = list;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setOauthToken */
                public GmailRequest<Thread> setOauthToken2(String str) {
                    return (Get) super.setOauthToken(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setPrettyPrint */
                public GmailRequest<Thread> setPrettyPrint2(Boolean bool) {
                    return (Get) super.setPrettyPrint(bool);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setQuotaUser */
                public GmailRequest<Thread> setQuotaUser2(String str) {
                    return (Get) super.setQuotaUser(str);
                }

                public Get setUserId(String str) {
                    this.userId = str;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setUserIp */
                public GmailRequest<Thread> setUserIp2(String str) {
                    return (Get) super.setUserIp(str);
                }
            }

            /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Threads$List.class */
            public class List extends GmailRequest<ListThreadsResponse> {
                private static final String REST_PATH = "{userId}/threads";
                @q
                private Boolean includeSpamTrash;
                @q
                private java.util.List<String> labelIds;
                @q
                private Long maxResults;
                @q
                private String pageToken;
                @q
                private String q;
                @q
                private String userId;

                protected List(String str) {
                    super(Gmail.this, "GET", REST_PATH, null, ListThreadsResponse.class);
                    this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
                }

                @Override // com.google.api.client.googleapis.services.b
                public com.google.api.client.http.q buildHttpRequestUsingHead() throws IOException {
                    return super.buildHttpRequestUsingHead();
                }

                @Override // com.google.api.client.googleapis.services.b
                public t executeUsingHead() throws IOException {
                    return super.executeUsingHead();
                }

                public Boolean getIncludeSpamTrash() {
                    return this.includeSpamTrash;
                }

                public java.util.List<String> getLabelIds() {
                    return this.labelIds;
                }

                public Long getMaxResults() {
                    return this.maxResults;
                }

                public String getPageToken() {
                    return this.pageToken;
                }

                public String getQ() {
                    return this.q;
                }

                public String getUserId() {
                    return this.userId;
                }

                public boolean isIncludeSpamTrash() {
                    Boolean bool = this.includeSpamTrash;
                    if (bool == null || bool == j.f31626a) {
                        return false;
                    }
                    return this.includeSpamTrash.booleanValue();
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
                public List set(String str, Object obj) {
                    return (List) super.set(str, obj);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setAlt */
                public GmailRequest<ListThreadsResponse> setAlt2(String str) {
                    return (List) super.setAlt(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setFields */
                public GmailRequest<ListThreadsResponse> setFields2(String str) {
                    return (List) super.setFields(str);
                }

                public List setIncludeSpamTrash(Boolean bool) {
                    this.includeSpamTrash = bool;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setKey */
                public GmailRequest<ListThreadsResponse> setKey2(String str) {
                    return (List) super.setKey(str);
                }

                public List setLabelIds(java.util.List<String> list) {
                    this.labelIds = list;
                    return this;
                }

                public List setMaxResults(Long l) {
                    this.maxResults = l;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setOauthToken */
                public GmailRequest<ListThreadsResponse> setOauthToken2(String str) {
                    return (List) super.setOauthToken(str);
                }

                public List setPageToken(String str) {
                    this.pageToken = str;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setPrettyPrint */
                public GmailRequest<ListThreadsResponse> setPrettyPrint2(Boolean bool) {
                    return (List) super.setPrettyPrint(bool);
                }

                public List setQ(String str) {
                    this.q = str;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setQuotaUser */
                public GmailRequest<ListThreadsResponse> setQuotaUser2(String str) {
                    return (List) super.setQuotaUser(str);
                }

                public List setUserId(String str) {
                    this.userId = str;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setUserIp */
                public GmailRequest<ListThreadsResponse> setUserIp2(String str) {
                    return (List) super.setUserIp(str);
                }
            }

            /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Threads$Modify.class */
            public class Modify extends GmailRequest<Thread> {
                private static final String REST_PATH = "{userId}/threads/{id}/modify";
                @q
                private String id;
                @q
                private String userId;

                protected Modify(String str, String str2, ModifyThreadRequest modifyThreadRequest) {
                    super(Gmail.this, "POST", REST_PATH, modifyThreadRequest, Thread.class);
                    this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
                    this.id = (String) aa.a(str2, "Required parameter id must be specified.");
                }

                public String getId() {
                    return this.id;
                }

                public String getUserId() {
                    return this.userId;
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
                public Modify set(String str, Object obj) {
                    return (Modify) super.set(str, obj);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setAlt */
                public GmailRequest<Thread> setAlt2(String str) {
                    return (Modify) super.setAlt(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setFields */
                public GmailRequest<Thread> setFields2(String str) {
                    return (Modify) super.setFields(str);
                }

                public Modify setId(String str) {
                    this.id = str;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setKey */
                public GmailRequest<Thread> setKey2(String str) {
                    return (Modify) super.setKey(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setOauthToken */
                public GmailRequest<Thread> setOauthToken2(String str) {
                    return (Modify) super.setOauthToken(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setPrettyPrint */
                public GmailRequest<Thread> setPrettyPrint2(Boolean bool) {
                    return (Modify) super.setPrettyPrint(bool);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setQuotaUser */
                public GmailRequest<Thread> setQuotaUser2(String str) {
                    return (Modify) super.setQuotaUser(str);
                }

                public Modify setUserId(String str) {
                    this.userId = str;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setUserIp */
                public GmailRequest<Thread> setUserIp2(String str) {
                    return (Modify) super.setUserIp(str);
                }
            }

            /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Threads$Trash.class */
            public class Trash extends GmailRequest<Thread> {
                private static final String REST_PATH = "{userId}/threads/{id}/trash";
                @q
                private String id;
                @q
                private String userId;

                protected Trash(String str, String str2) {
                    super(Gmail.this, "POST", REST_PATH, null, Thread.class);
                    this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
                    this.id = (String) aa.a(str2, "Required parameter id must be specified.");
                }

                public String getId() {
                    return this.id;
                }

                public String getUserId() {
                    return this.userId;
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
                public Trash set(String str, Object obj) {
                    return (Trash) super.set(str, obj);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setAlt */
                public GmailRequest<Thread> setAlt2(String str) {
                    return (Trash) super.setAlt(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setFields */
                public GmailRequest<Thread> setFields2(String str) {
                    return (Trash) super.setFields(str);
                }

                public Trash setId(String str) {
                    this.id = str;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setKey */
                public GmailRequest<Thread> setKey2(String str) {
                    return (Trash) super.setKey(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setOauthToken */
                public GmailRequest<Thread> setOauthToken2(String str) {
                    return (Trash) super.setOauthToken(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setPrettyPrint */
                public GmailRequest<Thread> setPrettyPrint2(Boolean bool) {
                    return (Trash) super.setPrettyPrint(bool);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setQuotaUser */
                public GmailRequest<Thread> setQuotaUser2(String str) {
                    return (Trash) super.setQuotaUser(str);
                }

                public Trash setUserId(String str) {
                    this.userId = str;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setUserIp */
                public GmailRequest<Thread> setUserIp2(String str) {
                    return (Trash) super.setUserIp(str);
                }
            }

            /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Threads$Untrash.class */
            public class Untrash extends GmailRequest<Thread> {
                private static final String REST_PATH = "{userId}/threads/{id}/untrash";
                @q
                private String id;
                @q
                private String userId;

                protected Untrash(String str, String str2) {
                    super(Gmail.this, "POST", REST_PATH, null, Thread.class);
                    this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
                    this.id = (String) aa.a(str2, "Required parameter id must be specified.");
                }

                public String getId() {
                    return this.id;
                }

                public String getUserId() {
                    return this.userId;
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
                public Untrash set(String str, Object obj) {
                    return (Untrash) super.set(str, obj);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setAlt */
                public GmailRequest<Thread> setAlt2(String str) {
                    return (Untrash) super.setAlt(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setFields */
                public GmailRequest<Thread> setFields2(String str) {
                    return (Untrash) super.setFields(str);
                }

                public Untrash setId(String str) {
                    this.id = str;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setKey */
                public GmailRequest<Thread> setKey2(String str) {
                    return (Untrash) super.setKey(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setOauthToken */
                public GmailRequest<Thread> setOauthToken2(String str) {
                    return (Untrash) super.setOauthToken(str);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setPrettyPrint */
                public GmailRequest<Thread> setPrettyPrint2(Boolean bool) {
                    return (Untrash) super.setPrettyPrint(bool);
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setQuotaUser */
                public GmailRequest<Thread> setQuotaUser2(String str) {
                    return (Untrash) super.setQuotaUser(str);
                }

                public Untrash setUserId(String str) {
                    this.userId = str;
                    return this;
                }

                @Override // com.google.api.services.gmail.GmailRequest
                /* renamed from: setUserIp */
                public GmailRequest<Thread> setUserIp2(String str) {
                    return (Untrash) super.setUserIp(str);
                }
            }

            public Threads() {
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Watch.class */
        public class Watch extends GmailRequest<WatchResponse> {
            private static final String REST_PATH = "{userId}/watch";
            @q
            private String userId;

            protected Watch(String str, WatchRequest watchRequest) {
                super(Gmail.this, "POST", REST_PATH, watchRequest, WatchResponse.class);
                this.userId = (String) aa.a(str, "Required parameter userId must be specified.");
            }

            public String getUserId() {
                return this.userId;
            }

            @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
            public Watch set(String str, Object obj) {
                return (Watch) super.set(str, obj);
            }

            @Override // com.google.api.services.gmail.GmailRequest
            /* renamed from: setAlt */
            public GmailRequest<WatchResponse> setAlt2(String str) {
                return (Watch) super.setAlt(str);
            }

            @Override // com.google.api.services.gmail.GmailRequest
            /* renamed from: setFields */
            public GmailRequest<WatchResponse> setFields2(String str) {
                return (Watch) super.setFields(str);
            }

            @Override // com.google.api.services.gmail.GmailRequest
            /* renamed from: setKey */
            public GmailRequest<WatchResponse> setKey2(String str) {
                return (Watch) super.setKey(str);
            }

            @Override // com.google.api.services.gmail.GmailRequest
            /* renamed from: setOauthToken */
            public GmailRequest<WatchResponse> setOauthToken2(String str) {
                return (Watch) super.setOauthToken(str);
            }

            @Override // com.google.api.services.gmail.GmailRequest
            /* renamed from: setPrettyPrint */
            public GmailRequest<WatchResponse> setPrettyPrint2(Boolean bool) {
                return (Watch) super.setPrettyPrint(bool);
            }

            @Override // com.google.api.services.gmail.GmailRequest
            /* renamed from: setQuotaUser */
            public GmailRequest<WatchResponse> setQuotaUser2(String str) {
                return (Watch) super.setQuotaUser(str);
            }

            public Watch setUserId(String str) {
                this.userId = str;
                return this;
            }

            @Override // com.google.api.services.gmail.GmailRequest
            /* renamed from: setUserIp */
            public GmailRequest<WatchResponse> setUserIp2(String str) {
                return (Watch) super.setUserIp(str);
            }
        }

        public Users() {
        }

        public final Messages a() {
            return new Messages();
        }
    }

    static {
        aa.b(a.f31706a.intValue() == 1 && a.f31707b.intValue() >= 15, "You are currently running with version %s of google-api-client. You need at least version 1.15 of google-api-client to run version 1.25.0 of the Gmail API library.", a.f31709d);
    }

    public Gmail(w wVar, JsonFactory jsonFactory, s sVar) {
        this(new Builder(wVar, jsonFactory, sVar));
    }

    Gmail(Builder builder) {
        super(builder);
    }

    @Override // com.google.api.client.googleapis.services.a
    public void initialize(b<?> bVar) throws IOException {
        super.initialize(bVar);
    }

    public Users users() {
        return new Users();
    }
}
