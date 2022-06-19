.class public final Lcom/callapp/contacts/api/helper/backup/BaseBackup$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/api/helper/backup/BaseBackup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/callapp/contacts/api/helper/backup/BaseBackup$Companion;",
        "",
        "()V",
        "getBackupHelper",
        "Lcom/callapp/contacts/api/helper/backup/BaseBackup;",
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
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/backup/BaseBackup$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBackupHelper()Lcom/callapp/contacts/api/helper/backup/BaseBackup;
    .locals 2

    .line 22
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hK:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/api/helper/backup/BackupViaType;

    if-nez v0, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    sget-object v1, Lcom/callapp/contacts/api/helper/backup/BaseBackup$Companion$WhenMappings;->a:[I

    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/backup/BackupViaType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 28
    :cond_1
    sget-object v0, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;->c:Lcom/callapp/contacts/api/helper/backup/DropBoxHelper$Companion;

    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper$Companion;->get()Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/api/helper/backup/BaseBackup;

    return-object v0

    .line 25
    :cond_2
    sget-object v0, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;->c:Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper$Companion;

    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper$Companion;->get()Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/api/helper/backup/BaseBackup;

    return-object v0
.end method
