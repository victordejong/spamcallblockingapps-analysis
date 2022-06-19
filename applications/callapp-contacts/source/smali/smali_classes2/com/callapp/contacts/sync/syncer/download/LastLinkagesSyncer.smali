.class public Lcom/callapp/contacts/sync/syncer/download/LastLinkagesSyncer;
.super Lcom/callapp/contacts/sync/syncer/download/DownloadSyncer;
.source "SourceFile"


# instance fields
.field private a:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/callapp/contacts/sync/syncer/download/DownloadSyncer;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/sync/syncer/download/LastLinkagesSyncer;)Lcom/callapp/contacts/sync/model/SyncContext;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/callapp/contacts/sync/syncer/download/LastLinkagesSyncer;->syncContext:Lcom/callapp/contacts/sync/model/SyncContext;

    return-object p0
.end method

.method static synthetic a(Lcom/callapp/common/model/json/JSONContact;)Ljava/util/Map;
    .locals 3

    .line 1184
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    .line 1187
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/callapp/common/model/json/JSONContact;->getFacebookID()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xa

    .line 1188
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/callapp/common/model/json/JSONContact;->getVkID()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    .line 1189
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/callapp/common/model/json/JSONContact;->getLinkedinPubProfileUrl()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 1190
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/callapp/common/model/json/JSONContact;->getLinkedinID()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    .line 1191
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/callapp/common/model/json/JSONContact;->getTwitterScreenName()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x5

    .line 1192
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/callapp/common/model/json/JSONContact;->getGooglePlusID()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x6

    .line 1193
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/callapp/common/model/json/JSONContact;->getFoursquareID()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x7

    .line 1194
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/callapp/common/model/json/JSONContact;->getInstagramID()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8

    .line 1195
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/callapp/common/model/json/JSONContact;->getXingID()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x9

    .line 1196
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/callapp/common/model/json/JSONContact;->getPinterestID()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method static synthetic b(Lcom/callapp/contacts/sync/syncer/download/LastLinkagesSyncer;)Lcom/callapp/contacts/manager/preferences/prefs/LongPref;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/callapp/contacts/sync/syncer/download/LastLinkagesSyncer;->lastSyncPref:Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    return-object p0
.end method

.method static synthetic b(Lcom/callapp/common/model/json/JSONContact;)Ljava/util/Map;
    .locals 3

    .line 1202
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    .line 1205
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/callapp/common/model/json/JSONContact;->getFacebookNegatives()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xa

    .line 1206
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/callapp/common/model/json/JSONContact;->getVkNegatives()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 1207
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/callapp/common/model/json/JSONContact;->getLinkedinNegatives()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    .line 1208
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/callapp/common/model/json/JSONContact;->getTwitterNegatives()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x5

    .line 1209
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/callapp/common/model/json/JSONContact;->getGooglePlusNegatives()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x6

    .line 1210
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/callapp/common/model/json/JSONContact;->getFoursquareNegatives()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x7

    .line 1211
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/callapp/common/model/json/JSONContact;->getInstagramNegatives()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8

    .line 1212
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/callapp/common/model/json/JSONContact;->getXingNegatives()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x9

    .line 1213
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/callapp/common/model/json/JSONContact;->getPinterestNegatives()Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getHandler()Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandler;
    .locals 1

    .line 42
    new-instance v0, Lcom/callapp/contacts/sync/syncer/download/LastLinkagesSyncer$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/sync/syncer/download/LastLinkagesSyncer$1;-><init>(Lcom/callapp/contacts/sync/syncer/download/LastLinkagesSyncer;)V

    return-object v0
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, "ul"

    return-object v0
.end method

.method public onSyncStart()V
    .locals 2

    .line 176
    invoke-virtual {p0}, Lcom/callapp/contacts/sync/syncer/download/LastLinkagesSyncer;->shouldSync()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 179
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/callapp/contacts/sync/syncer/download/LastLinkagesSyncer;->a:J

    .line 180
    invoke-super {p0}, Lcom/callapp/contacts/sync/syncer/download/DownloadSyncer;->onSyncStart()V

    return-void
.end method
