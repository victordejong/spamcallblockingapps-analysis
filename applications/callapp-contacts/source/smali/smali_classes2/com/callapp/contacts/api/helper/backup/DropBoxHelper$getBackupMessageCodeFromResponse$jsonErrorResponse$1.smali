.class public final Lcom/callapp/contacts/api/helper/backup/DropBoxHelper$getBackupMessageCodeFromResponse$jsonErrorResponse$1;
.super Lcom/fasterxml/jackson/core/type/TypeReference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;->a(Lcom/dropbox/core/v2/files/UploadErrorException;)Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/core/type/TypeReference<",
        "Lcom/callapp/contacts/api/helper/backup/DropBoxErrorResponse;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "com/callapp/contacts/api/helper/backup/DropBoxHelper$getBackupMessageCodeFromResponse$jsonErrorResponse$1",
        "Lcom/fasterxml/jackson/core/type/TypeReference;",
        "Lcom/callapp/contacts/api/helper/backup/DropBoxErrorResponse;",
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
.method constructor <init>()V
    .locals 0

    .line 119
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/type/TypeReference;-><init>()V

    return-void
.end method
