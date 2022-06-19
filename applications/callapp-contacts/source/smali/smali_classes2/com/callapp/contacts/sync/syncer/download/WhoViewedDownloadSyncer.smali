.class public Lcom/callapp/contacts/sync/syncer/download/WhoViewedDownloadSyncer;
.super Lcom/callapp/contacts/sync/syncer/download/DownloadSyncer;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/callapp/contacts/sync/syncer/download/DownloadSyncer;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/callapp/common/model/json/WhoViewedMyProfileJSONContact;)Lcom/callapp/contacts/model/objectbox/ProfileViewedData;
    .locals 11

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1102
    :cond_0
    new-instance v10, Lcom/callapp/contacts/model/objectbox/ProfileViewedData;

    const-wide/16 v1, 0x0

    invoke-virtual {p0}, Lcom/callapp/common/model/json/WhoViewedMyProfileJSONContact;->getPhone()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;->values()[Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

    move-result-object v0

    invoke-virtual {p0}, Lcom/callapp/common/model/json/WhoViewedMyProfileJSONContact;->getEntryPoint()I

    move-result v4

    aget-object v4, v0, v4

    invoke-virtual {p0}, Lcom/callapp/common/model/json/WhoViewedMyProfileJSONContact;->getLastSeen()J

    move-result-wide v5

    invoke-virtual {p0}, Lcom/callapp/common/model/json/WhoViewedMyProfileJSONContact;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/callapp/common/model/json/WhoViewedMyProfileJSONContact;->getCount()I

    move-result v8

    invoke-static {}, Lcom/callapp/contacts/model/objectbox/TYPE;->values()[Lcom/callapp/contacts/model/objectbox/TYPE;

    move-result-object v0

    invoke-virtual {p0}, Lcom/callapp/common/model/json/WhoViewedMyProfileJSONContact;->getType()I

    move-result p0

    aget-object v9, v0, p0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/callapp/contacts/model/objectbox/ProfileViewedData;-><init>(JLjava/lang/String;Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;JLjava/lang/String;ILcom/callapp/contacts/model/objectbox/TYPE;)V

    return-object v10
.end method


# virtual methods
.method public getHandler()Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandler;
    .locals 1

    const-string v0, "WhoViewedDownloadSyncer"

    .line 35
    invoke-static {v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 36
    new-instance v0, Lcom/callapp/contacts/sync/syncer/download/WhoViewedDownloadSyncer$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/sync/syncer/download/WhoViewedDownloadSyncer$1;-><init>(Lcom/callapp/contacts/sync/syncer/download/WhoViewedDownloadSyncer;)V

    return-object v0
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, "wvmpd"

    return-object v0
.end method
