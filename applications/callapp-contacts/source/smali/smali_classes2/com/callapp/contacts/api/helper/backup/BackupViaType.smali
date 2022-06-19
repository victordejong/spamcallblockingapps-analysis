.class public final enum Lcom/callapp/contacts/api/helper/backup/BackupViaType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/api/helper/backup/BackupViaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/api/helper/backup/BackupViaType;

.field public static final enum DROP_BOX:Lcom/callapp/contacts/api/helper/backup/BackupViaType;

.field public static final enum GOOGLE_DRIVE:Lcom/callapp/contacts/api/helper/backup/BackupViaType;

.field public static final enum UN_KNOWN:Lcom/callapp/contacts/api/helper/backup/BackupViaType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 4
    new-instance v0, Lcom/callapp/contacts/api/helper/backup/BackupViaType;

    const-string v1, "GOOGLE_DRIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/callapp/contacts/api/helper/backup/BackupViaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/callapp/contacts/api/helper/backup/BackupViaType;->GOOGLE_DRIVE:Lcom/callapp/contacts/api/helper/backup/BackupViaType;

    .line 5
    new-instance v1, Lcom/callapp/contacts/api/helper/backup/BackupViaType;

    const-string v3, "DROP_BOX"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/callapp/contacts/api/helper/backup/BackupViaType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/callapp/contacts/api/helper/backup/BackupViaType;->DROP_BOX:Lcom/callapp/contacts/api/helper/backup/BackupViaType;

    .line 6
    new-instance v3, Lcom/callapp/contacts/api/helper/backup/BackupViaType;

    const-string v5, "UN_KNOWN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/callapp/contacts/api/helper/backup/BackupViaType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/callapp/contacts/api/helper/backup/BackupViaType;->UN_KNOWN:Lcom/callapp/contacts/api/helper/backup/BackupViaType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/callapp/contacts/api/helper/backup/BackupViaType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 3
    sput-object v5, Lcom/callapp/contacts/api/helper/backup/BackupViaType;->$VALUES:[Lcom/callapp/contacts/api/helper/backup/BackupViaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/api/helper/backup/BackupViaType;
    .locals 1

    .line 3
    const-class v0, Lcom/callapp/contacts/api/helper/backup/BackupViaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/api/helper/backup/BackupViaType;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/api/helper/backup/BackupViaType;
    .locals 1

    .line 3
    sget-object v0, Lcom/callapp/contacts/api/helper/backup/BackupViaType;->$VALUES:[Lcom/callapp/contacts/api/helper/backup/BackupViaType;

    invoke-virtual {v0}, [Lcom/callapp/contacts/api/helper/backup/BackupViaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/api/helper/backup/BackupViaType;

    return-object v0
.end method
