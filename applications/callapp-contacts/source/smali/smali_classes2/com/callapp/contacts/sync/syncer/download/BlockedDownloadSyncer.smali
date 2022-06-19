.class public Lcom/callapp/contacts/sync/syncer/download/BlockedDownloadSyncer;
.super Lcom/callapp/contacts/sync/syncer/download/DownloadSyncer;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/callapp/contacts/sync/syncer/download/DownloadSyncer;-><init>()V

    return-void
.end method


# virtual methods
.method public getHandler()Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandler;
    .locals 1

    .line 33
    new-instance v0, Lcom/callapp/contacts/sync/syncer/download/BlockedDownloadSyncer$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/sync/syncer/download/BlockedDownloadSyncer$1;-><init>(Lcom/callapp/contacts/sync/syncer/download/BlockedDownloadSyncer;)V

    return-object v0
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, "ub"

    return-object v0
.end method
