.class public final synthetic Lcom/callapp/contacts/api/helper/backup/BackupUtils$WhenMappings;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 7

    invoke-static {}, Lcom/callapp/contacts/api/helper/backup/BackupFileType;->values()[Lcom/callapp/contacts/api/helper/backup/BackupFileType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/callapp/contacts/api/helper/backup/BackupUtils$WhenMappings;->a:[I

    sget-object v1, Lcom/callapp/contacts/api/helper/backup/BackupFileType;->RECORDINGS:Lcom/callapp/contacts/api/helper/backup/BackupFileType;

    invoke-virtual {v1}, Lcom/callapp/contacts/api/helper/backup/BackupFileType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/callapp/contacts/api/helper/backup/BackupFileType;->VIDEO_RINGTONES:Lcom/callapp/contacts/api/helper/backup/BackupFileType;

    invoke-virtual {v1}, Lcom/callapp/contacts/api/helper/backup/BackupFileType;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v1, Lcom/callapp/contacts/api/helper/backup/BackupFileType;->CONTACTS:Lcom/callapp/contacts/api/helper/backup/BackupFileType;

    invoke-virtual {v1}, Lcom/callapp/contacts/api/helper/backup/BackupFileType;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    sget-object v1, Lcom/callapp/contacts/api/helper/backup/BackupFileType;->CALLLOGS:Lcom/callapp/contacts/api/helper/backup/BackupFileType;

    invoke-virtual {v1}, Lcom/callapp/contacts/api/helper/backup/BackupFileType;->ordinal()I

    move-result v1

    const/4 v5, 0x4

    aput v5, v0, v1

    sget-object v1, Lcom/callapp/contacts/api/helper/backup/BackupFileType;->UN_SUPPORTED:Lcom/callapp/contacts/api/helper/backup/BackupFileType;

    invoke-virtual {v1}, Lcom/callapp/contacts/api/helper/backup/BackupFileType;->ordinal()I

    move-result v1

    const/4 v6, 0x5

    aput v6, v0, v1

    invoke-static {}, Lcom/callapp/contacts/api/helper/backup/BackupFileType;->values()[Lcom/callapp/contacts/api/helper/backup/BackupFileType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/callapp/contacts/api/helper/backup/BackupUtils$WhenMappings;->b:[I

    sget-object v1, Lcom/callapp/contacts/api/helper/backup/BackupFileType;->CALLLOGS:Lcom/callapp/contacts/api/helper/backup/BackupFileType;

    invoke-virtual {v1}, Lcom/callapp/contacts/api/helper/backup/BackupFileType;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/callapp/contacts/api/helper/backup/BackupFileType;->CONTACTS:Lcom/callapp/contacts/api/helper/backup/BackupFileType;

    invoke-virtual {v1}, Lcom/callapp/contacts/api/helper/backup/BackupFileType;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v1, Lcom/callapp/contacts/api/helper/backup/BackupFileType;->RECORDINGS:Lcom/callapp/contacts/api/helper/backup/BackupFileType;

    invoke-virtual {v1}, Lcom/callapp/contacts/api/helper/backup/BackupFileType;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v1, Lcom/callapp/contacts/api/helper/backup/BackupFileType;->VIDEO_RINGTONES:Lcom/callapp/contacts/api/helper/backup/BackupFileType;

    invoke-virtual {v1}, Lcom/callapp/contacts/api/helper/backup/BackupFileType;->ordinal()I

    move-result v1

    aput v5, v0, v1

    return-void
.end method
