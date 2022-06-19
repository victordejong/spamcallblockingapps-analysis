.class public final Lcom/callapp/contacts/api/helper/backup/BackupUtils$logoutAndStopAllBackups$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/api/helper/backup/BackupUtils;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/callapp/contacts/api/helper/backup/BackupUtils$logoutAndStopAllBackups$1",
        "Lcom/callapp/contacts/manager/task/Task;",
        "doTask",
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
.method constructor <init>()V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 1

    .line 112
    sget-object v0, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;->c:Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper$Companion;

    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper$Companion;->get()Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;->d()V

    .line 113
    sget-object v0, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;->c:Lcom/callapp/contacts/api/helper/backup/DropBoxHelper$Companion;

    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper$Companion;->get()Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;->d()V

    return-void
.end method
