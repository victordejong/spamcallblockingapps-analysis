.class public Lcom/callapp/contacts/sync/syncer/download/UserSpamDownloadSyncer;
.super Lcom/callapp/contacts/sync/syncer/download/DownloadSyncer;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/callapp/contacts/sync/syncer/download/DownloadSyncer;-><init>()V

    return-void
.end method


# virtual methods
.method public getHandler()Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandler;
    .locals 1

    .line 30
    new-instance v0, Lcom/callapp/contacts/sync/syncer/download/UserSpamDownloadSyncer$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/sync/syncer/download/UserSpamDownloadSyncer$1;-><init>(Lcom/callapp/contacts/sync/syncer/download/UserSpamDownloadSyncer;)V

    return-object v0
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, "us"

    return-object v0
.end method
