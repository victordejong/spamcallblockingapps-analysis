package com.google.api.services.gmail;

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
        public Builder(AbstractC15346w abstractC15346w, JsonFactory jsonFactory, AbstractC15342s abstractC15342s) {
            super(abstractC15346w, jsonFactory, "https://www.googleapis.com/", Gmail.DEFAULT_SERVICE_PATH, abstractC15342s, false);
            setBatchPath(Gmail.DEFAULT_BATCH_PATH);
        }

        @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient.Builder, com.google.api.client.googleapis.services.AbstractC15296a.AbstractC15297a
        public final Gmail build() {
            return new Gmail(this);
        }

        @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient.Builder, com.google.api.client.googleapis.services.AbstractC15296a.AbstractC15297a
        public final Builder setApplicationName(String str) {
            return (Builder) super.setApplicationName(str);
        }

        @Override // com.google.api.client.googleapis.services.AbstractC15296a.AbstractC15297a
        public final Builder setBatchPath(String str) {
            return (Builder) super.setBatchPath(str);
        }

        public final Builder setGmailRequestInitializer(GmailRequestInitializer gmailRequestInitializer) {
            return (Builder) super.setGoogleClientRequestInitializer((AbstractC15301d) gmailRequestInitializer);
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
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users.class */
    public final class Users {

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Drafts.class */
        public final class Drafts {

            /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Drafts$Create.class */
            public class Create extends GmailRequest<Draft> {
                private static final String REST_PATH = "{userId}/drafts";
                @AbstractC15247q
                private String userId;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                protected Create(String str, Draft draft) {
                    super(Gmail.this, "POST", REST_PATH, draft, Draft.class);
                    Drafts.this = r8;
                    this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
                }

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                protected Create(java.lang.String r9, com.google.api.services.gmail.model.Draft r10, com.google.api.client.http.AbstractC15322b r11) {
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
                        java.lang.Object r1 = com.google.api.client.p379a.C15207aa.m9282a(r1, r2)
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

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                @AbstractC15247q

                /* renamed from: id */
                private String f55451id;
                @AbstractC15247q
                private String userId;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                protected Delete(String str, String str2) {
                    super(Gmail.this, "DELETE", REST_PATH, null, Void.class);
                    Drafts.this = r8;
                    this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
                    this.f55451id = (String) C15207aa.m9282a(str2, "Required parameter id must be specified.");
                }

                public String getId() {
                    return this.f55451id;
                }

                public String getUserId() {
                    return this.userId;
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                    this.f55451id = str;
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
                @AbstractC15247q
                private String format;
                @AbstractC15247q

                /* renamed from: id */
                private String f55452id;
                @AbstractC15247q
                private String userId;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                protected Get(String str, String str2) {
                    super(Gmail.this, "GET", REST_PATH, null, Draft.class);
                    Drafts.this = r8;
                    this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
                    this.f55452id = (String) C15207aa.m9282a(str2, "Required parameter id must be specified.");
                }

                @Override // com.google.api.client.googleapis.services.AbstractC15298b
                public C15340q buildHttpRequestUsingHead() throws IOException {
                    return super.buildHttpRequestUsingHead();
                }

                @Override // com.google.api.client.googleapis.services.AbstractC15298b
                public C15343t executeUsingHead() throws IOException {
                    return super.executeUsingHead();
                }

                public String getFormat() {
                    return this.format;
                }

                public String getId() {
                    return this.f55452id;
                }

                public String getUserId() {
                    return this.userId;
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                    this.f55452id = str;
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
                @AbstractC15247q
                private Boolean includeSpamTrash;
                @AbstractC15247q
                private Long maxResults;
                @AbstractC15247q
                private String pageToken;
                @AbstractC15247q

                /* renamed from: q */
                private String f55453q;
                @AbstractC15247q
                private String userId;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                protected List(String str) {
                    super(Gmail.this, "GET", REST_PATH, null, ListDraftsResponse.class);
                    Drafts.this = r8;
                    this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
                }

                @Override // com.google.api.client.googleapis.services.AbstractC15298b
                public C15340q buildHttpRequestUsingHead() throws IOException {
                    return super.buildHttpRequestUsingHead();
                }

                @Override // com.google.api.client.googleapis.services.AbstractC15298b
                public C15343t executeUsingHead() throws IOException {
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
                    return this.f55453q;
                }

                public String getUserId() {
                    return this.userId;
                }

                public boolean isIncludeSpamTrash() {
                    Boolean bool = this.includeSpamTrash;
                    if (bool == null || bool == C15232j.f55078a) {
                        return false;
                    }
                    return this.includeSpamTrash.booleanValue();
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                    this.f55453q = str;
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
                @AbstractC15247q
                private String userId;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                protected Send(String str, Draft draft) {
                    super(Gmail.this, "POST", REST_PATH, draft, Message.class);
                    Drafts.this = r8;
                    this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
                }

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                protected Send(java.lang.String r9, com.google.api.services.gmail.model.Draft r10, com.google.api.client.http.AbstractC15322b r11) {
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
                        java.lang.Object r1 = com.google.api.client.p379a.C15207aa.m9282a(r1, r2)
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

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                @AbstractC15247q

                /* renamed from: id */
                private String f55454id;
                @AbstractC15247q
                private String userId;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                protected Update(String str, String str2, Draft draft) {
                    super(Gmail.this, "PUT", REST_PATH, draft, Draft.class);
                    Drafts.this = r8;
                    this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
                    this.f55454id = (String) C15207aa.m9282a(str2, "Required parameter id must be specified.");
                }

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                protected Update(java.lang.String r9, java.lang.String r10, com.google.api.services.gmail.model.Draft r11, com.google.api.client.http.AbstractC15322b r12) {
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
                        java.lang.Object r1 = com.google.api.client.p379a.C15207aa.m9282a(r1, r2)
                        java.lang.String r1 = (java.lang.String) r1
                        r0.userId = r1
                        r0 = r7
                        r1 = r10
                        java.lang.String r2 = "Required parameter id must be specified."
                        java.lang.Object r1 = com.google.api.client.p379a.C15207aa.m9282a(r1, r2)
                        java.lang.String r1 = (java.lang.String) r1
                        r0.f55454id = r1
                        r0 = r7
                        r1 = r12
                        r0.initializeMediaUpload(r1)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.google.api.services.gmail.Gmail.Users.Drafts.Update.<init>(com.google.api.services.gmail.Gmail$Users$Drafts, java.lang.String, java.lang.String, com.google.api.services.gmail.model.Draft, com.google.api.client.http.b):void");
                }

                public String getId() {
                    return this.f55454id;
                }

                public String getUserId() {
                    return this.userId;
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                    this.f55454id = str;
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
                Users.this = r4;
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$GetProfile.class */
        public class GetProfile extends GmailRequest<Profile> {
            private static final String REST_PATH = "{userId}/profile";
            @AbstractC15247q
            private String userId;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected GetProfile(String str) {
                super(Gmail.this, "GET", REST_PATH, null, Profile.class);
                Users.this = r8;
                this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.AbstractC15298b
            public C15340q buildHttpRequestUsingHead() throws IOException {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.AbstractC15298b
            public C15343t executeUsingHead() throws IOException {
                return super.executeUsingHead();
            }

            public String getUserId() {
                return this.userId;
            }

            @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                @AbstractC15247q
                private java.util.List<String> historyTypes;
                @AbstractC15247q
                private String labelId;
                @AbstractC15247q
                private Long maxResults;
                @AbstractC15247q
                private String pageToken;
                @AbstractC15247q
                private BigInteger startHistoryId;
                @AbstractC15247q
                private String userId;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                protected List(String str) {
                    super(Gmail.this, "GET", REST_PATH, null, ListHistoryResponse.class);
                    History.this = r8;
                    this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
                }

                @Override // com.google.api.client.googleapis.services.AbstractC15298b
                public C15340q buildHttpRequestUsingHead() throws IOException {
                    return super.buildHttpRequestUsingHead();
                }

                @Override // com.google.api.client.googleapis.services.AbstractC15298b
                public C15343t executeUsingHead() throws IOException {
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

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                Users.this = r4;
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Labels.class */
        public final class Labels {

            /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Labels$Create.class */
            public class Create extends GmailRequest<Label> {
                private static final String REST_PATH = "{userId}/labels";
                @AbstractC15247q
                private String userId;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                protected Create(String str, Label label) {
                    super(Gmail.this, "POST", REST_PATH, label, Label.class);
                    Labels.this = r8;
                    this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
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

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                @AbstractC15247q

                /* renamed from: id */
                private String f55457id;
                @AbstractC15247q
                private String userId;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                protected Delete(String str, String str2) {
                    super(Gmail.this, "DELETE", REST_PATH, null, Void.class);
                    Labels.this = r8;
                    this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
                    this.f55457id = (String) C15207aa.m9282a(str2, "Required parameter id must be specified.");
                }

                public String getId() {
                    return this.f55457id;
                }

                public String getUserId() {
                    return this.userId;
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                    this.f55457id = str;
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
                @AbstractC15247q

                /* renamed from: id */
                private String f55458id;
                @AbstractC15247q
                private String userId;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                protected Get(String str, String str2) {
                    super(Gmail.this, "GET", REST_PATH, null, Label.class);
                    Labels.this = r8;
                    this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
                    this.f55458id = (String) C15207aa.m9282a(str2, "Required parameter id must be specified.");
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
                    return this.f55458id;
                }

                public String getUserId() {
                    return this.userId;
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                    this.f55458id = str;
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
                @AbstractC15247q
                private String userId;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                protected List(String str) {
                    super(Gmail.this, "GET", REST_PATH, null, ListLabelsResponse.class);
                    Labels.this = r8;
                    this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
                }

                @Override // com.google.api.client.googleapis.services.AbstractC15298b
                public C15340q buildHttpRequestUsingHead() throws IOException {
                    return super.buildHttpRequestUsingHead();
                }

                @Override // com.google.api.client.googleapis.services.AbstractC15298b
                public C15343t executeUsingHead() throws IOException {
                    return super.executeUsingHead();
                }

                public String getUserId() {
                    return this.userId;
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                @AbstractC15247q

                /* renamed from: id */
                private String f55459id;
                @AbstractC15247q
                private String userId;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                protected Patch(String str, String str2, Label label) {
                    super(Gmail.this, "PATCH", REST_PATH, label, Label.class);
                    Labels.this = r8;
                    this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
                    this.f55459id = (String) C15207aa.m9282a(str2, "Required parameter id must be specified.");
                }

                public String getId() {
                    return this.f55459id;
                }

                public String getUserId() {
                    return this.userId;
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                    this.f55459id = str;
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
                @AbstractC15247q

                /* renamed from: id */
                private String f55460id;
                @AbstractC15247q
                private String userId;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                protected Update(String str, String str2, Label label) {
                    super(Gmail.this, "PUT", REST_PATH, label, Label.class);
                    Labels.this = r8;
                    this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
                    this.f55460id = (String) C15207aa.m9282a(str2, "Required parameter id must be specified.");
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
                    return this.f55460id;
                }

                public String getUserId() {
                    return this.userId;
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                    this.f55460id = str;
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
                Users.this = r4;
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Messages.class */
        public final class Messages {

            /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Messages$Attachments.class */
            public final class Attachments {

                /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Messages$Attachments$Get.class */
                public class Get extends GmailRequest<MessagePartBody> {
                    private static final String REST_PATH = "{userId}/messages/{messageId}/attachments/{id}";
                    @AbstractC15247q

                    /* renamed from: id */
                    private String f55463id;
                    @AbstractC15247q
                    private String messageId;
                    @AbstractC15247q
                    private String userId;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    protected Get(String str, String str2, String str3) {
                        super(Gmail.this, "GET", REST_PATH, null, MessagePartBody.class);
                        Attachments.this = r8;
                        this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
                        this.messageId = (String) C15207aa.m9282a(str2, "Required parameter messageId must be specified.");
                        this.f55463id = (String) C15207aa.m9282a(str3, "Required parameter id must be specified.");
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
                        return this.f55463id;
                    }

                    public String getMessageId() {
                        return this.messageId;
                    }

                    public String getUserId() {
                        return this.userId;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                        this.f55463id = str;
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
                    Messages.this = r4;
                }
            }

            /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Messages$BatchDelete.class */
            public class BatchDelete extends GmailRequest<Void> {
                private static final String REST_PATH = "{userId}/messages/batchDelete";
                @AbstractC15247q
                private String userId;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                protected BatchDelete(String str, BatchDeleteMessagesRequest batchDeleteMessagesRequest) {
                    super(Gmail.this, "POST", REST_PATH, batchDeleteMessagesRequest, Void.class);
                    Messages.this = r8;
                    this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
                }

                public String getUserId() {
                    return this.userId;
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                @AbstractC15247q
                private String userId;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                protected BatchModify(String str, BatchModifyMessagesRequest batchModifyMessagesRequest) {
                    super(Gmail.this, "POST", REST_PATH, batchModifyMessagesRequest, Void.class);
                    Messages.this = r8;
                    this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
                }

                public String getUserId() {
                    return this.userId;
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                @AbstractC15247q

                /* renamed from: id */
                private String f55464id;
                @AbstractC15247q
                private String userId;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                protected Delete(String str, String str2) {
                    super(Gmail.this, "DELETE", REST_PATH, null, Void.class);
                    Messages.this = r8;
                    this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
                    this.f55464id = (String) C15207aa.m9282a(str2, "Required parameter id must be specified.");
                }

                public String getId() {
                    return this.f55464id;
                }

                public String getUserId() {
                    return this.userId;
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                    this.f55464id = str;
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
                @AbstractC15247q
                private String format;
                @AbstractC15247q

                /* renamed from: id */
                private String f55465id;
                @AbstractC15247q
                private java.util.List<String> metadataHeaders;
                @AbstractC15247q
                private String userId;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                protected Get(String str, String str2) {
                    super(Gmail.this, "GET", REST_PATH, null, Message.class);
                    Messages.this = r8;
                    this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
                    this.f55465id = (String) C15207aa.m9282a(str2, "Required parameter id must be specified.");
                }

                @Override // com.google.api.client.googleapis.services.AbstractC15298b
                public C15340q buildHttpRequestUsingHead() throws IOException {
                    return super.buildHttpRequestUsingHead();
                }

                @Override // com.google.api.client.googleapis.services.AbstractC15298b
                public C15343t executeUsingHead() throws IOException {
                    return super.executeUsingHead();
                }

                public String getFormat() {
                    return this.format;
                }

                public String getId() {
                    return this.f55465id;
                }

                public java.util.List<String> getMetadataHeaders() {
                    return this.metadataHeaders;
                }

                public String getUserId() {
                    return this.userId;
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                    this.f55465id = str;
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
                @AbstractC15247q
                private Boolean deleted;
                @AbstractC15247q
                private String internalDateSource;
                @AbstractC15247q
                private Boolean neverMarkSpam;
                @AbstractC15247q
                private Boolean processForCalendar;
                @AbstractC15247q
                private String userId;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                protected GmailImport(String str, Message message) {
                    super(Gmail.this, "POST", REST_PATH, message, Message.class);
                    Messages.this = r8;
                    this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
                }

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                protected GmailImport(java.lang.String r9, com.google.api.services.gmail.model.Message r10, com.google.api.client.http.AbstractC15322b r11) {
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
                        java.lang.Object r1 = com.google.api.client.p379a.C15207aa.m9282a(r1, r2)
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
                    if (bool == null || bool == C15232j.f55078a) {
                        return false;
                    }
                    return this.deleted.booleanValue();
                }

                public boolean isNeverMarkSpam() {
                    Boolean bool = this.neverMarkSpam;
                    if (bool == null || bool == C15232j.f55078a) {
                        return false;
                    }
                    return this.neverMarkSpam.booleanValue();
                }

                public boolean isProcessForCalendar() {
                    Boolean bool = this.processForCalendar;
                    if (bool == null || bool == C15232j.f55078a) {
                        return false;
                    }
                    return this.processForCalendar.booleanValue();
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                @AbstractC15247q
                private Boolean deleted;
                @AbstractC15247q
                private String internalDateSource;
                @AbstractC15247q
                private String userId;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                protected Insert(String str, Message message) {
                    super(Gmail.this, "POST", REST_PATH, message, Message.class);
                    Messages.this = r8;
                    this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
                    checkRequiredParameter(message, Constants.VAST_TRACKER_CONTENT);
                    checkRequiredParameter(message.getRaw(), "Message.getRaw()");
                }

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                protected Insert(java.lang.String r9, com.google.api.services.gmail.model.Message r10, com.google.api.client.http.AbstractC15322b r11) {
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
                        java.lang.Object r1 = com.google.api.client.p379a.C15207aa.m9282a(r1, r2)
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
                    if (bool == null || bool == C15232j.f55078a) {
                        return false;
                    }
                    return this.deleted.booleanValue();
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                @AbstractC15247q
                private Boolean includeSpamTrash;
                @AbstractC15247q
                private java.util.List<String> labelIds;
                @AbstractC15247q
                private Long maxResults;
                @AbstractC15247q
                private String pageToken;
                @AbstractC15247q

                /* renamed from: q */
                private String f55466q;
                @AbstractC15247q
                private String userId;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                protected List(String str) {
                    super(Gmail.this, "GET", REST_PATH, null, ListMessagesResponse.class);
                    Messages.this = r8;
                    this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
                }

                @Override // com.google.api.client.googleapis.services.AbstractC15298b
                public C15340q buildHttpRequestUsingHead() throws IOException {
                    return super.buildHttpRequestUsingHead();
                }

                @Override // com.google.api.client.googleapis.services.AbstractC15298b
                public C15343t executeUsingHead() throws IOException {
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
                    return this.f55466q;
                }

                public String getUserId() {
                    return this.userId;
                }

                public boolean isIncludeSpamTrash() {
                    Boolean bool = this.includeSpamTrash;
                    if (bool == null || bool == C15232j.f55078a) {
                        return false;
                    }
                    return this.includeSpamTrash.booleanValue();
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                    this.f55466q = str;
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
                @AbstractC15247q

                /* renamed from: id */
                private String f55467id;
                @AbstractC15247q
                private String userId;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                protected Modify(String str, String str2, ModifyMessageRequest modifyMessageRequest) {
                    super(Gmail.this, "POST", REST_PATH, modifyMessageRequest, Message.class);
                    Messages.this = r8;
                    this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
                    this.f55467id = (String) C15207aa.m9282a(str2, "Required parameter id must be specified.");
                }

                public String getId() {
                    return this.f55467id;
                }

                public String getUserId() {
                    return this.userId;
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                    this.f55467id = str;
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
                @AbstractC15247q
                private String userId;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                protected Send(String str, Message message) {
                    super(Gmail.this, "POST", REST_PATH, message, Message.class);
                    Messages.this = r8;
                    this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
                    checkRequiredParameter(message, Constants.VAST_TRACKER_CONTENT);
                    checkRequiredParameter(message.getRaw(), "Message.getRaw()");
                }

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                protected Send(java.lang.String r9, com.google.api.services.gmail.model.Message r10, com.google.api.client.http.AbstractC15322b r11) {
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
                        java.lang.Object r1 = com.google.api.client.p379a.C15207aa.m9282a(r1, r2)
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

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                @AbstractC15247q

                /* renamed from: id */
                private String f55468id;
                @AbstractC15247q
                private String userId;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                protected Trash(String str, String str2) {
                    super(Gmail.this, "POST", REST_PATH, null, Message.class);
                    Messages.this = r8;
                    this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
                    this.f55468id = (String) C15207aa.m9282a(str2, "Required parameter id must be specified.");
                }

                public String getId() {
                    return this.f55468id;
                }

                public String getUserId() {
                    return this.userId;
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                    this.f55468id = str;
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
                @AbstractC15247q

                /* renamed from: id */
                private String f55469id;
                @AbstractC15247q
                private String userId;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                protected Untrash(String str, String str2) {
                    super(Gmail.this, "POST", REST_PATH, null, Message.class);
                    Messages.this = r8;
                    this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
                    this.f55469id = (String) C15207aa.m9282a(str2, "Required parameter id must be specified.");
                }

                public String getId() {
                    return this.f55469id;
                }

                public String getUserId() {
                    return this.userId;
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                    this.f55469id = str;
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
                Users.this = r4;
            }

            /* renamed from: a */
            public final Get m8986a(String str, String str2) throws IOException {
                Get get = new Get(str, str2);
                Gmail.this.initialize(get);
                return get;
            }

            /* renamed from: a */
            public final List m8987a(String str) throws IOException {
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
                    @AbstractC15247q
                    private String userId;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    protected Create(String str, Delegate delegate) {
                        super(Gmail.this, "POST", REST_PATH, delegate, Delegate.class);
                        Delegates.this = r8;
                        this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
                    }

                    public String getUserId() {
                        return this.userId;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                    @AbstractC15247q
                    private String delegateEmail;
                    @AbstractC15247q
                    private String userId;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    protected Delete(String str, String str2) {
                        super(Gmail.this, "DELETE", REST_PATH, null, Void.class);
                        Delegates.this = r8;
                        this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
                        this.delegateEmail = (String) C15207aa.m9282a(str2, "Required parameter delegateEmail must be specified.");
                    }

                    public String getDelegateEmail() {
                        return this.delegateEmail;
                    }

                    public String getUserId() {
                        return this.userId;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                    @AbstractC15247q
                    private String delegateEmail;
                    @AbstractC15247q
                    private String userId;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    protected Get(String str, String str2) {
                        super(Gmail.this, "GET", REST_PATH, null, Delegate.class);
                        Delegates.this = r8;
                        this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
                        this.delegateEmail = (String) C15207aa.m9282a(str2, "Required parameter delegateEmail must be specified.");
                    }

                    @Override // com.google.api.client.googleapis.services.AbstractC15298b
                    public C15340q buildHttpRequestUsingHead() throws IOException {
                        return super.buildHttpRequestUsingHead();
                    }

                    @Override // com.google.api.client.googleapis.services.AbstractC15298b
                    public C15343t executeUsingHead() throws IOException {
                        return super.executeUsingHead();
                    }

                    public String getDelegateEmail() {
                        return this.delegateEmail;
                    }

                    public String getUserId() {
                        return this.userId;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                    @AbstractC15247q
                    private String userId;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    protected List(String str) {
                        super(Gmail.this, "GET", REST_PATH, null, ListDelegatesResponse.class);
                        Delegates.this = r8;
                        this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
                    }

                    @Override // com.google.api.client.googleapis.services.AbstractC15298b
                    public C15340q buildHttpRequestUsingHead() throws IOException {
                        return super.buildHttpRequestUsingHead();
                    }

                    @Override // com.google.api.client.googleapis.services.AbstractC15298b
                    public C15343t executeUsingHead() throws IOException {
                        return super.executeUsingHead();
                    }

                    public String getUserId() {
                        return this.userId;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                    Settings.this = r4;
                }
            }

            /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Settings$Filters.class */
            public final class Filters {

                /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Settings$Filters$Create.class */
                public class Create extends GmailRequest<Filter> {
                    private static final String REST_PATH = "{userId}/settings/filters";
                    @AbstractC15247q
                    private String userId;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    protected Create(String str, Filter filter) {
                        super(Gmail.this, "POST", REST_PATH, filter, Filter.class);
                        Filters.this = r8;
                        this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
                    }

                    public String getUserId() {
                        return this.userId;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                    @AbstractC15247q

                    /* renamed from: id */
                    private String f55473id;
                    @AbstractC15247q
                    private String userId;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    protected Delete(String str, String str2) {
                        super(Gmail.this, "DELETE", REST_PATH, null, Void.class);
                        Filters.this = r8;
                        this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
                        this.f55473id = (String) C15207aa.m9282a(str2, "Required parameter id must be specified.");
                    }

                    public String getId() {
                        return this.f55473id;
                    }

                    public String getUserId() {
                        return this.userId;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                        this.f55473id = str;
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
                    @AbstractC15247q

                    /* renamed from: id */
                    private String f55474id;
                    @AbstractC15247q
                    private String userId;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    protected Get(String str, String str2) {
                        super(Gmail.this, "GET", REST_PATH, null, Filter.class);
                        Filters.this = r8;
                        this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
                        this.f55474id = (String) C15207aa.m9282a(str2, "Required parameter id must be specified.");
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
                        return this.f55474id;
                    }

                    public String getUserId() {
                        return this.userId;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                        this.f55474id = str;
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
                    @AbstractC15247q
                    private String userId;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    protected List(String str) {
                        super(Gmail.this, "GET", REST_PATH, null, ListFiltersResponse.class);
                        Filters.this = r8;
                        this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
                    }

                    @Override // com.google.api.client.googleapis.services.AbstractC15298b
                    public C15340q buildHttpRequestUsingHead() throws IOException {
                        return super.buildHttpRequestUsingHead();
                    }

                    @Override // com.google.api.client.googleapis.services.AbstractC15298b
                    public C15343t executeUsingHead() throws IOException {
                        return super.executeUsingHead();
                    }

                    public String getUserId() {
                        return this.userId;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                    Settings.this = r4;
                }
            }

            /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Settings$ForwardingAddresses.class */
            public final class ForwardingAddresses {

                /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Settings$ForwardingAddresses$Create.class */
                public class Create extends GmailRequest<ForwardingAddress> {
                    private static final String REST_PATH = "{userId}/settings/forwardingAddresses";
                    @AbstractC15247q
                    private String userId;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    protected Create(String str, ForwardingAddress forwardingAddress) {
                        super(Gmail.this, "POST", REST_PATH, forwardingAddress, ForwardingAddress.class);
                        ForwardingAddresses.this = r8;
                        this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
                    }

                    public String getUserId() {
                        return this.userId;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                    @AbstractC15247q
                    private String forwardingEmail;
                    @AbstractC15247q
                    private String userId;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    protected Delete(String str, String str2) {
                        super(Gmail.this, "DELETE", REST_PATH, null, Void.class);
                        ForwardingAddresses.this = r8;
                        this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
                        this.forwardingEmail = (String) C15207aa.m9282a(str2, "Required parameter forwardingEmail must be specified.");
                    }

                    public String getForwardingEmail() {
                        return this.forwardingEmail;
                    }

                    public String getUserId() {
                        return this.userId;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                    @AbstractC15247q
                    private String forwardingEmail;
                    @AbstractC15247q
                    private String userId;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    protected Get(String str, String str2) {
                        super(Gmail.this, "GET", REST_PATH, null, ForwardingAddress.class);
                        ForwardingAddresses.this = r8;
                        this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
                        this.forwardingEmail = (String) C15207aa.m9282a(str2, "Required parameter forwardingEmail must be specified.");
                    }

                    @Override // com.google.api.client.googleapis.services.AbstractC15298b
                    public C15340q buildHttpRequestUsingHead() throws IOException {
                        return super.buildHttpRequestUsingHead();
                    }

                    @Override // com.google.api.client.googleapis.services.AbstractC15298b
                    public C15343t executeUsingHead() throws IOException {
                        return super.executeUsingHead();
                    }

                    public String getForwardingEmail() {
                        return this.forwardingEmail;
                    }

                    public String getUserId() {
                        return this.userId;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                    @AbstractC15247q
                    private String userId;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    protected List(String str) {
                        super(Gmail.this, "GET", REST_PATH, null, ListForwardingAddressesResponse.class);
                        ForwardingAddresses.this = r8;
                        this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
                    }

                    @Override // com.google.api.client.googleapis.services.AbstractC15298b
                    public C15340q buildHttpRequestUsingHead() throws IOException {
                        return super.buildHttpRequestUsingHead();
                    }

                    @Override // com.google.api.client.googleapis.services.AbstractC15298b
                    public C15343t executeUsingHead() throws IOException {
                        return super.executeUsingHead();
                    }

                    public String getUserId() {
                        return this.userId;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                    Settings.this = r4;
                }
            }

            /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Settings$GetAutoForwarding.class */
            public class GetAutoForwarding extends GmailRequest<AutoForwarding> {
                private static final String REST_PATH = "{userId}/settings/autoForwarding";
                @AbstractC15247q
                private String userId;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                protected GetAutoForwarding(String str) {
                    super(Gmail.this, "GET", REST_PATH, null, AutoForwarding.class);
                    Settings.this = r8;
                    this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
                }

                @Override // com.google.api.client.googleapis.services.AbstractC15298b
                public C15340q buildHttpRequestUsingHead() throws IOException {
                    return super.buildHttpRequestUsingHead();
                }

                @Override // com.google.api.client.googleapis.services.AbstractC15298b
                public C15343t executeUsingHead() throws IOException {
                    return super.executeUsingHead();
                }

                public String getUserId() {
                    return this.userId;
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                @AbstractC15247q
                private String userId;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                protected GetImap(String str) {
                    super(Gmail.this, "GET", REST_PATH, null, ImapSettings.class);
                    Settings.this = r8;
                    this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
                }

                @Override // com.google.api.client.googleapis.services.AbstractC15298b
                public C15340q buildHttpRequestUsingHead() throws IOException {
                    return super.buildHttpRequestUsingHead();
                }

                @Override // com.google.api.client.googleapis.services.AbstractC15298b
                public C15343t executeUsingHead() throws IOException {
                    return super.executeUsingHead();
                }

                public String getUserId() {
                    return this.userId;
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                @AbstractC15247q
                private String userId;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                protected GetLanguage(String str) {
                    super(Gmail.this, "GET", REST_PATH, null, LanguageSettings.class);
                    Settings.this = r8;
                    this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
                }

                @Override // com.google.api.client.googleapis.services.AbstractC15298b
                public C15340q buildHttpRequestUsingHead() throws IOException {
                    return super.buildHttpRequestUsingHead();
                }

                @Override // com.google.api.client.googleapis.services.AbstractC15298b
                public C15343t executeUsingHead() throws IOException {
                    return super.executeUsingHead();
                }

                public String getUserId() {
                    return this.userId;
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                @AbstractC15247q
                private String userId;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                protected GetPop(String str) {
                    super(Gmail.this, "GET", REST_PATH, null, PopSettings.class);
                    Settings.this = r8;
                    this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
                }

                @Override // com.google.api.client.googleapis.services.AbstractC15298b
                public C15340q buildHttpRequestUsingHead() throws IOException {
                    return super.buildHttpRequestUsingHead();
                }

                @Override // com.google.api.client.googleapis.services.AbstractC15298b
                public C15343t executeUsingHead() throws IOException {
                    return super.executeUsingHead();
                }

                public String getUserId() {
                    return this.userId;
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                @AbstractC15247q
                private String userId;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                protected GetVacation(String str) {
                    super(Gmail.this, "GET", REST_PATH, null, VacationSettings.class);
                    Settings.this = r8;
                    this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
                }

                @Override // com.google.api.client.googleapis.services.AbstractC15298b
                public C15340q buildHttpRequestUsingHead() throws IOException {
                    return super.buildHttpRequestUsingHead();
                }

                @Override // com.google.api.client.googleapis.services.AbstractC15298b
                public C15343t executeUsingHead() throws IOException {
                    return super.executeUsingHead();
                }

                public String getUserId() {
                    return this.userId;
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                    @AbstractC15247q
                    private String userId;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    protected Create(String str, com.google.api.services.gmail.model.SendAs sendAs) {
                        super(Gmail.this, "POST", REST_PATH, sendAs, com.google.api.services.gmail.model.SendAs.class);
                        SendAs.this = r8;
                        this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
                    }

                    public String getUserId() {
                        return this.userId;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                    @AbstractC15247q
                    private String sendAsEmail;
                    @AbstractC15247q
                    private String userId;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    protected Delete(String str, String str2) {
                        super(Gmail.this, "DELETE", REST_PATH, null, Void.class);
                        SendAs.this = r8;
                        this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
                        this.sendAsEmail = (String) C15207aa.m9282a(str2, "Required parameter sendAsEmail must be specified.");
                    }

                    public String getSendAsEmail() {
                        return this.sendAsEmail;
                    }

                    public String getUserId() {
                        return this.userId;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                    @AbstractC15247q
                    private String sendAsEmail;
                    @AbstractC15247q
                    private String userId;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    protected Get(String str, String str2) {
                        super(Gmail.this, "GET", REST_PATH, null, com.google.api.services.gmail.model.SendAs.class);
                        SendAs.this = r8;
                        this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
                        this.sendAsEmail = (String) C15207aa.m9282a(str2, "Required parameter sendAsEmail must be specified.");
                    }

                    @Override // com.google.api.client.googleapis.services.AbstractC15298b
                    public C15340q buildHttpRequestUsingHead() throws IOException {
                        return super.buildHttpRequestUsingHead();
                    }

                    @Override // com.google.api.client.googleapis.services.AbstractC15298b
                    public C15343t executeUsingHead() throws IOException {
                        return super.executeUsingHead();
                    }

                    public String getSendAsEmail() {
                        return this.sendAsEmail;
                    }

                    public String getUserId() {
                        return this.userId;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                    @AbstractC15247q
                    private String userId;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    protected List(String str) {
                        super(Gmail.this, "GET", REST_PATH, null, ListSendAsResponse.class);
                        SendAs.this = r8;
                        this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
                    }

                    @Override // com.google.api.client.googleapis.services.AbstractC15298b
                    public C15340q buildHttpRequestUsingHead() throws IOException {
                        return super.buildHttpRequestUsingHead();
                    }

                    @Override // com.google.api.client.googleapis.services.AbstractC15298b
                    public C15343t executeUsingHead() throws IOException {
                        return super.executeUsingHead();
                    }

                    public String getUserId() {
                        return this.userId;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                    @AbstractC15247q
                    private String sendAsEmail;
                    @AbstractC15247q
                    private String userId;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    protected Patch(String str, String str2, com.google.api.services.gmail.model.SendAs sendAs) {
                        super(Gmail.this, "PATCH", REST_PATH, sendAs, com.google.api.services.gmail.model.SendAs.class);
                        SendAs.this = r8;
                        this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
                        this.sendAsEmail = (String) C15207aa.m9282a(str2, "Required parameter sendAsEmail must be specified.");
                    }

                    public String getSendAsEmail() {
                        return this.sendAsEmail;
                    }

                    public String getUserId() {
                        return this.userId;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                        @AbstractC15247q

                        /* renamed from: id */
                        private String f55478id;
                        @AbstractC15247q
                        private String sendAsEmail;
                        @AbstractC15247q
                        private String userId;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        protected Delete(String str, String str2, String str3) {
                            super(Gmail.this, "DELETE", REST_PATH, null, Void.class);
                            SmimeInfo.this = r8;
                            this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
                            this.sendAsEmail = (String) C15207aa.m9282a(str2, "Required parameter sendAsEmail must be specified.");
                            this.f55478id = (String) C15207aa.m9282a(str3, "Required parameter id must be specified.");
                        }

                        public String getId() {
                            return this.f55478id;
                        }

                        public String getSendAsEmail() {
                            return this.sendAsEmail;
                        }

                        public String getUserId() {
                            return this.userId;
                        }

                        @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                            this.f55478id = str;
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
                        @AbstractC15247q

                        /* renamed from: id */
                        private String f55479id;
                        @AbstractC15247q
                        private String sendAsEmail;
                        @AbstractC15247q
                        private String userId;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        protected Get(String str, String str2, String str3) {
                            super(Gmail.this, "GET", REST_PATH, null, com.google.api.services.gmail.model.SmimeInfo.class);
                            SmimeInfo.this = r8;
                            this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
                            this.sendAsEmail = (String) C15207aa.m9282a(str2, "Required parameter sendAsEmail must be specified.");
                            this.f55479id = (String) C15207aa.m9282a(str3, "Required parameter id must be specified.");
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
                            return this.f55479id;
                        }

                        public String getSendAsEmail() {
                            return this.sendAsEmail;
                        }

                        public String getUserId() {
                            return this.userId;
                        }

                        @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                            this.f55479id = str;
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
                        @AbstractC15247q
                        private String sendAsEmail;
                        @AbstractC15247q
                        private String userId;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        protected Insert(String str, String str2, com.google.api.services.gmail.model.SmimeInfo smimeInfo) {
                            super(Gmail.this, "POST", REST_PATH, smimeInfo, com.google.api.services.gmail.model.SmimeInfo.class);
                            SmimeInfo.this = r8;
                            this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
                            this.sendAsEmail = (String) C15207aa.m9282a(str2, "Required parameter sendAsEmail must be specified.");
                        }

                        public String getSendAsEmail() {
                            return this.sendAsEmail;
                        }

                        public String getUserId() {
                            return this.userId;
                        }

                        @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                        @AbstractC15247q
                        private String sendAsEmail;
                        @AbstractC15247q
                        private String userId;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        protected List(String str, String str2) {
                            super(Gmail.this, "GET", REST_PATH, null, ListSmimeInfoResponse.class);
                            SmimeInfo.this = r8;
                            this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
                            this.sendAsEmail = (String) C15207aa.m9282a(str2, "Required parameter sendAsEmail must be specified.");
                        }

                        @Override // com.google.api.client.googleapis.services.AbstractC15298b
                        public C15340q buildHttpRequestUsingHead() throws IOException {
                            return super.buildHttpRequestUsingHead();
                        }

                        @Override // com.google.api.client.googleapis.services.AbstractC15298b
                        public C15343t executeUsingHead() throws IOException {
                            return super.executeUsingHead();
                        }

                        public String getSendAsEmail() {
                            return this.sendAsEmail;
                        }

                        public String getUserId() {
                            return this.userId;
                        }

                        @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                        @AbstractC15247q

                        /* renamed from: id */
                        private String f55480id;
                        @AbstractC15247q
                        private String sendAsEmail;
                        @AbstractC15247q
                        private String userId;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        protected SetDefault(String str, String str2, String str3) {
                            super(Gmail.this, "POST", REST_PATH, null, Void.class);
                            SmimeInfo.this = r8;
                            this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
                            this.sendAsEmail = (String) C15207aa.m9282a(str2, "Required parameter sendAsEmail must be specified.");
                            this.f55480id = (String) C15207aa.m9282a(str3, "Required parameter id must be specified.");
                        }

                        public String getId() {
                            return this.f55480id;
                        }

                        public String getSendAsEmail() {
                            return this.sendAsEmail;
                        }

                        public String getUserId() {
                            return this.userId;
                        }

                        @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                            this.f55480id = str;
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
                        SendAs.this = r4;
                    }
                }

                /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Settings$SendAs$Update.class */
                public class Update extends GmailRequest<com.google.api.services.gmail.model.SendAs> {
                    private static final String REST_PATH = "{userId}/settings/sendAs/{sendAsEmail}";
                    @AbstractC15247q
                    private String sendAsEmail;
                    @AbstractC15247q
                    private String userId;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    protected Update(String str, String str2, com.google.api.services.gmail.model.SendAs sendAs) {
                        super(Gmail.this, "PUT", REST_PATH, sendAs, com.google.api.services.gmail.model.SendAs.class);
                        SendAs.this = r8;
                        this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
                        this.sendAsEmail = (String) C15207aa.m9282a(str2, "Required parameter sendAsEmail must be specified.");
                    }

                    public String getSendAsEmail() {
                        return this.sendAsEmail;
                    }

                    public String getUserId() {
                        return this.userId;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                    @AbstractC15247q
                    private String sendAsEmail;
                    @AbstractC15247q
                    private String userId;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    protected Verify(String str, String str2) {
                        super(Gmail.this, "POST", REST_PATH, null, Void.class);
                        SendAs.this = r8;
                        this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
                        this.sendAsEmail = (String) C15207aa.m9282a(str2, "Required parameter sendAsEmail must be specified.");
                    }

                    public String getSendAsEmail() {
                        return this.sendAsEmail;
                    }

                    public String getUserId() {
                        return this.userId;
                    }

                    @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                    Settings.this = r4;
                }
            }

            /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Settings$UpdateAutoForwarding.class */
            public class UpdateAutoForwarding extends GmailRequest<AutoForwarding> {
                private static final String REST_PATH = "{userId}/settings/autoForwarding";
                @AbstractC15247q
                private String userId;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                protected UpdateAutoForwarding(String str, AutoForwarding autoForwarding) {
                    super(Gmail.this, "PUT", REST_PATH, autoForwarding, AutoForwarding.class);
                    Settings.this = r8;
                    this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
                }

                public String getUserId() {
                    return this.userId;
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                @AbstractC15247q
                private String userId;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                protected UpdateImap(String str, ImapSettings imapSettings) {
                    super(Gmail.this, "PUT", REST_PATH, imapSettings, ImapSettings.class);
                    Settings.this = r8;
                    this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
                }

                public String getUserId() {
                    return this.userId;
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                @AbstractC15247q
                private String userId;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                protected UpdateLanguage(String str, LanguageSettings languageSettings) {
                    super(Gmail.this, "PUT", REST_PATH, languageSettings, LanguageSettings.class);
                    Settings.this = r8;
                    this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
                }

                public String getUserId() {
                    return this.userId;
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                @AbstractC15247q
                private String userId;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                protected UpdatePop(String str, PopSettings popSettings) {
                    super(Gmail.this, "PUT", REST_PATH, popSettings, PopSettings.class);
                    Settings.this = r8;
                    this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
                }

                public String getUserId() {
                    return this.userId;
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                @AbstractC15247q
                private String userId;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                protected UpdateVacation(String str, VacationSettings vacationSettings) {
                    super(Gmail.this, "PUT", REST_PATH, vacationSettings, VacationSettings.class);
                    Settings.this = r8;
                    this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
                }

                public String getUserId() {
                    return this.userId;
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                Users.this = r4;
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Stop.class */
        public class Stop extends GmailRequest<Void> {
            private static final String REST_PATH = "{userId}/stop";
            @AbstractC15247q
            private String userId;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected Stop(String str) {
                super(Gmail.this, "POST", REST_PATH, null, Void.class);
                Users.this = r8;
                this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
            }

            public String getUserId() {
                return this.userId;
            }

            @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                @AbstractC15247q

                /* renamed from: id */
                private String f55482id;
                @AbstractC15247q
                private String userId;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                protected Delete(String str, String str2) {
                    super(Gmail.this, "DELETE", REST_PATH, null, Void.class);
                    Threads.this = r8;
                    this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
                    this.f55482id = (String) C15207aa.m9282a(str2, "Required parameter id must be specified.");
                }

                public String getId() {
                    return this.f55482id;
                }

                public String getUserId() {
                    return this.userId;
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                    this.f55482id = str;
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
                @AbstractC15247q
                private String format;
                @AbstractC15247q

                /* renamed from: id */
                private String f55483id;
                @AbstractC15247q
                private java.util.List<String> metadataHeaders;
                @AbstractC15247q
                private String userId;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                protected Get(String str, String str2) {
                    super(Gmail.this, "GET", REST_PATH, null, Thread.class);
                    Threads.this = r8;
                    this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
                    this.f55483id = (String) C15207aa.m9282a(str2, "Required parameter id must be specified.");
                }

                @Override // com.google.api.client.googleapis.services.AbstractC15298b
                public C15340q buildHttpRequestUsingHead() throws IOException {
                    return super.buildHttpRequestUsingHead();
                }

                @Override // com.google.api.client.googleapis.services.AbstractC15298b
                public C15343t executeUsingHead() throws IOException {
                    return super.executeUsingHead();
                }

                public String getFormat() {
                    return this.format;
                }

                public String getId() {
                    return this.f55483id;
                }

                public java.util.List<String> getMetadataHeaders() {
                    return this.metadataHeaders;
                }

                public String getUserId() {
                    return this.userId;
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                    this.f55483id = str;
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
                @AbstractC15247q
                private Boolean includeSpamTrash;
                @AbstractC15247q
                private java.util.List<String> labelIds;
                @AbstractC15247q
                private Long maxResults;
                @AbstractC15247q
                private String pageToken;
                @AbstractC15247q

                /* renamed from: q */
                private String f55484q;
                @AbstractC15247q
                private String userId;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                protected List(String str) {
                    super(Gmail.this, "GET", REST_PATH, null, ListThreadsResponse.class);
                    Threads.this = r8;
                    this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
                }

                @Override // com.google.api.client.googleapis.services.AbstractC15298b
                public C15340q buildHttpRequestUsingHead() throws IOException {
                    return super.buildHttpRequestUsingHead();
                }

                @Override // com.google.api.client.googleapis.services.AbstractC15298b
                public C15343t executeUsingHead() throws IOException {
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
                    return this.f55484q;
                }

                public String getUserId() {
                    return this.userId;
                }

                public boolean isIncludeSpamTrash() {
                    Boolean bool = this.includeSpamTrash;
                    if (bool == null || bool == C15232j.f55078a) {
                        return false;
                    }
                    return this.includeSpamTrash.booleanValue();
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                    this.f55484q = str;
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
                @AbstractC15247q

                /* renamed from: id */
                private String f55485id;
                @AbstractC15247q
                private String userId;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                protected Modify(String str, String str2, ModifyThreadRequest modifyThreadRequest) {
                    super(Gmail.this, "POST", REST_PATH, modifyThreadRequest, Thread.class);
                    Threads.this = r8;
                    this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
                    this.f55485id = (String) C15207aa.m9282a(str2, "Required parameter id must be specified.");
                }

                public String getId() {
                    return this.f55485id;
                }

                public String getUserId() {
                    return this.userId;
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                    this.f55485id = str;
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
                @AbstractC15247q

                /* renamed from: id */
                private String f55486id;
                @AbstractC15247q
                private String userId;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                protected Trash(String str, String str2) {
                    super(Gmail.this, "POST", REST_PATH, null, Thread.class);
                    Threads.this = r8;
                    this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
                    this.f55486id = (String) C15207aa.m9282a(str2, "Required parameter id must be specified.");
                }

                public String getId() {
                    return this.f55486id;
                }

                public String getUserId() {
                    return this.userId;
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                    this.f55486id = str;
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
                @AbstractC15247q

                /* renamed from: id */
                private String f55487id;
                @AbstractC15247q
                private String userId;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                protected Untrash(String str, String str2) {
                    super(Gmail.this, "POST", REST_PATH, null, Thread.class);
                    Threads.this = r8;
                    this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
                    this.f55487id = (String) C15207aa.m9282a(str2, "Required parameter id must be specified.");
                }

                public String getId() {
                    return this.f55487id;
                }

                public String getUserId() {
                    return this.userId;
                }

                @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
                    this.f55487id = str;
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
                Users.this = r4;
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/Gmail$Users$Watch.class */
        public class Watch extends GmailRequest<WatchResponse> {
            private static final String REST_PATH = "{userId}/watch";
            @AbstractC15247q
            private String userId;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            protected Watch(String str, WatchRequest watchRequest) {
                super(Gmail.this, "POST", REST_PATH, watchRequest, WatchResponse.class);
                Users.this = r8;
                this.userId = (String) C15207aa.m9282a(str, "Required parameter userId must be specified.");
            }

            public String getUserId() {
                return this.userId;
            }

            @Override // com.google.api.services.gmail.GmailRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
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
            Gmail.this = r4;
        }

        /* renamed from: a */
        public final Messages m8988a() {
            return new Messages();
        }
    }

    static {
        C15207aa.m9277b(C15273a.f55188a.intValue() == 1 && C15273a.f55189b.intValue() >= 15, "You are currently running with version %s of google-api-client. You need at least version 1.15 of google-api-client to run version 1.25.0 of the Gmail API library.", C15273a.f55191d);
    }

    public Gmail(AbstractC15346w abstractC15346w, JsonFactory jsonFactory, AbstractC15342s abstractC15342s) {
        this(new Builder(abstractC15346w, jsonFactory, abstractC15342s));
    }

    Gmail(Builder builder) {
        super(builder);
    }

    @Override // com.google.api.client.googleapis.services.AbstractC15296a
    public void initialize(AbstractC15298b<?> abstractC15298b) throws IOException {
        super.initialize(abstractC15298b);
    }

    public Users users() {
        return new Users();
    }
}
