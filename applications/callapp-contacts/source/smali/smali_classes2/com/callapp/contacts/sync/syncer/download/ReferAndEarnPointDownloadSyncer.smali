.class public final Lcom/callapp/contacts/sync/syncer/download/ReferAndEarnPointDownloadSyncer;
.super Lcom/callapp/contacts/sync/syncer/download/DownloadSyncer;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\n\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0016J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/callapp/contacts/sync/syncer/download/ReferAndEarnPointDownloadSyncer;",
        "Lcom/callapp/contacts/sync/syncer/download/DownloadSyncer;",
        "()V",
        "getHandler",
        "Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandler;",
        "getMethodName",
        "",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/callapp/contacts/sync/syncer/download/DownloadSyncer;-><init>()V

    return-void
.end method


# virtual methods
.method public final getHandler()Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandler;
    .locals 2

    .line 21
    const-class v0, Lcom/callapp/contacts/sync/syncer/download/ReferAndEarnPointDownloadSyncer;

    const-string v1, "getHandler"

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 22
    new-instance v0, Lcom/callapp/contacts/sync/syncer/download/ReferAndEarnPointDownloadSyncer$getHandler$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/sync/syncer/download/ReferAndEarnPointDownloadSyncer$getHandler$1;-><init>(Lcom/callapp/contacts/sync/syncer/download/ReferAndEarnPointDownloadSyncer;)V

    check-cast v0, Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandler;

    return-object v0
.end method

.method public final getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, "rp"

    return-object v0
.end method
