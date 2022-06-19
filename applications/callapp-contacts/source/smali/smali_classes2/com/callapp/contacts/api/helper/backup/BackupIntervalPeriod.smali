.class public final enum Lcom/callapp/contacts/api/helper/backup/BackupIntervalPeriod;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/api/helper/backup/BackupIntervalPeriod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/api/helper/backup/BackupIntervalPeriod;

.field public static final enum HALF_MONTH:Lcom/callapp/contacts/api/helper/backup/BackupIntervalPeriod;

.field public static final enum MONTH:Lcom/callapp/contacts/api/helper/backup/BackupIntervalPeriod;

.field public static final enum TWO_DAYS:Lcom/callapp/contacts/api/helper/backup/BackupIntervalPeriod;


# instance fields
.field private final interval:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 5
    new-instance v0, Lcom/callapp/contacts/api/helper/backup/BackupIntervalPeriod;

    const-string v1, "TWO_DAYS"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/callapp/contacts/api/helper/backup/BackupIntervalPeriod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/callapp/contacts/api/helper/backup/BackupIntervalPeriod;->TWO_DAYS:Lcom/callapp/contacts/api/helper/backup/BackupIntervalPeriod;

    .line 6
    new-instance v1, Lcom/callapp/contacts/api/helper/backup/BackupIntervalPeriod;

    const-string v4, "HALF_MONTH"

    const/4 v5, 0x1

    const/16 v6, 0xe

    invoke-direct {v1, v4, v5, v6}, Lcom/callapp/contacts/api/helper/backup/BackupIntervalPeriod;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/callapp/contacts/api/helper/backup/BackupIntervalPeriod;->HALF_MONTH:Lcom/callapp/contacts/api/helper/backup/BackupIntervalPeriod;

    .line 7
    new-instance v4, Lcom/callapp/contacts/api/helper/backup/BackupIntervalPeriod;

    const-string v6, "MONTH"

    const/16 v7, 0x1e

    invoke-direct {v4, v6, v3, v7}, Lcom/callapp/contacts/api/helper/backup/BackupIntervalPeriod;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/callapp/contacts/api/helper/backup/BackupIntervalPeriod;->MONTH:Lcom/callapp/contacts/api/helper/backup/BackupIntervalPeriod;

    const/4 v6, 0x3

    new-array v6, v6, [Lcom/callapp/contacts/api/helper/backup/BackupIntervalPeriod;

    aput-object v0, v6, v2

    aput-object v1, v6, v5

    aput-object v4, v6, v3

    .line 4
    sput-object v6, Lcom/callapp/contacts/api/helper/backup/BackupIntervalPeriod;->$VALUES:[Lcom/callapp/contacts/api/helper/backup/BackupIntervalPeriod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput p3, p0, Lcom/callapp/contacts/api/helper/backup/BackupIntervalPeriod;->interval:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/api/helper/backup/BackupIntervalPeriod;
    .locals 1

    .line 4
    const-class v0, Lcom/callapp/contacts/api/helper/backup/BackupIntervalPeriod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/api/helper/backup/BackupIntervalPeriod;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/api/helper/backup/BackupIntervalPeriod;
    .locals 1

    .line 4
    sget-object v0, Lcom/callapp/contacts/api/helper/backup/BackupIntervalPeriod;->$VALUES:[Lcom/callapp/contacts/api/helper/backup/BackupIntervalPeriod;

    invoke-virtual {v0}, [Lcom/callapp/contacts/api/helper/backup/BackupIntervalPeriod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/api/helper/backup/BackupIntervalPeriod;

    return-object v0
.end method


# virtual methods
.method public final getDaysInterval()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/callapp/contacts/api/helper/backup/BackupIntervalPeriod;->interval:I

    return v0
.end method
