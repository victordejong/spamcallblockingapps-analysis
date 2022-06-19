.class public final enum Lcom/callapp/contacts/api/helper/backup/BackupFileType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/api/helper/backup/BackupFileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/api/helper/backup/BackupFileType;

.field public static final enum CALLLOGS:Lcom/callapp/contacts/api/helper/backup/BackupFileType;

.field public static final enum CONTACTS:Lcom/callapp/contacts/api/helper/backup/BackupFileType;

.field public static final enum RECORDINGS:Lcom/callapp/contacts/api/helper/backup/BackupFileType;

.field public static final enum UN_SUPPORTED:Lcom/callapp/contacts/api/helper/backup/BackupFileType;

.field public static final enum VIDEO_RINGTONES:Lcom/callapp/contacts/api/helper/backup/BackupFileType;


# instance fields
.field private final folder:Ljava/lang/String;

.field private final replace:Z


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 4
    new-instance v0, Lcom/callapp/contacts/api/helper/backup/BackupFileType;

    const-string v1, "CALLLOGS"

    const/4 v2, 0x0

    const-string v3, "call-logs"

    invoke-direct {v0, v1, v2, v3}, Lcom/callapp/contacts/api/helper/backup/BackupFileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/callapp/contacts/api/helper/backup/BackupFileType;->CALLLOGS:Lcom/callapp/contacts/api/helper/backup/BackupFileType;

    .line 5
    new-instance v1, Lcom/callapp/contacts/api/helper/backup/BackupFileType;

    const-string v3, "RECORDINGS"

    const/4 v4, 0x1

    const-string v5, "recordings"

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/callapp/contacts/api/helper/backup/BackupFileType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v1, Lcom/callapp/contacts/api/helper/backup/BackupFileType;->RECORDINGS:Lcom/callapp/contacts/api/helper/backup/BackupFileType;

    .line 6
    new-instance v3, Lcom/callapp/contacts/api/helper/backup/BackupFileType;

    const-string v5, "CONTACTS"

    const/4 v6, 0x2

    const-string v7, "contacts"

    invoke-direct {v3, v5, v6, v7}, Lcom/callapp/contacts/api/helper/backup/BackupFileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/callapp/contacts/api/helper/backup/BackupFileType;->CONTACTS:Lcom/callapp/contacts/api/helper/backup/BackupFileType;

    .line 7
    new-instance v5, Lcom/callapp/contacts/api/helper/backup/BackupFileType;

    const-string v7, "VIDEO_RINGTONES"

    const/4 v8, 0x3

    const-string v9, "video-ringtones"

    invoke-direct {v5, v7, v8, v9, v2}, Lcom/callapp/contacts/api/helper/backup/BackupFileType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v5, Lcom/callapp/contacts/api/helper/backup/BackupFileType;->VIDEO_RINGTONES:Lcom/callapp/contacts/api/helper/backup/BackupFileType;

    .line 8
    new-instance v7, Lcom/callapp/contacts/api/helper/backup/BackupFileType;

    const-string v9, "UN_SUPPORTED"

    const/4 v10, 0x4

    const-string v11, ""

    invoke-direct {v7, v9, v10, v11}, Lcom/callapp/contacts/api/helper/backup/BackupFileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/callapp/contacts/api/helper/backup/BackupFileType;->UN_SUPPORTED:Lcom/callapp/contacts/api/helper/backup/BackupFileType;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/callapp/contacts/api/helper/backup/BackupFileType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 3
    sput-object v9, Lcom/callapp/contacts/api/helper/backup/BackupFileType;->$VALUES:[Lcom/callapp/contacts/api/helper/backup/BackupFileType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput-object p3, p0, Lcom/callapp/contacts/api/helper/backup/BackupFileType;->folder:Ljava/lang/String;

    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lcom/callapp/contacts/api/helper/backup/BackupFileType;->replace:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput-object p3, p0, Lcom/callapp/contacts/api/helper/backup/BackupFileType;->folder:Ljava/lang/String;

    .line 15
    iput-boolean p4, p0, Lcom/callapp/contacts/api/helper/backup/BackupFileType;->replace:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/api/helper/backup/BackupFileType;
    .locals 1

    .line 3
    const-class v0, Lcom/callapp/contacts/api/helper/backup/BackupFileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/api/helper/backup/BackupFileType;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/api/helper/backup/BackupFileType;
    .locals 1

    .line 3
    sget-object v0, Lcom/callapp/contacts/api/helper/backup/BackupFileType;->$VALUES:[Lcom/callapp/contacts/api/helper/backup/BackupFileType;

    invoke-virtual {v0}, [Lcom/callapp/contacts/api/helper/backup/BackupFileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/api/helper/backup/BackupFileType;

    return-object v0
.end method


# virtual methods
.method public final getFolderName()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/backup/BackupFileType;->folder:Ljava/lang/String;

    return-object v0
.end method

.method public final shouldDeleteFolder()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/callapp/contacts/api/helper/backup/BackupFileType;->replace:Z

    return v0
.end method
