.class public Lcom/callapp/contacts/sync/syncer/download/UserCorrectedInfoDownloadSyncer;
.super Lcom/callapp/contacts/sync/syncer/download/DownloadSyncer;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/callapp/contacts/sync/syncer/download/DownloadSyncer;-><init>()V

    return-void
.end method


# virtual methods
.method public getHandler()Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandler;
    .locals 1

    .line 31
    new-instance v0, Lcom/callapp/contacts/sync/syncer/download/UserCorrectedInfoDownloadSyncer$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/sync/syncer/download/UserCorrectedInfoDownloadSyncer$1;-><init>(Lcom/callapp/contacts/sync/syncer/download/UserCorrectedInfoDownloadSyncer;)V

    return-object v0
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, "ucid"

    return-object v0
.end method
