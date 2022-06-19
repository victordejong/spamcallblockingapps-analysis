.class public final enum Lcom/amazonaws/services/s3/model/CryptoStorageMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/services/s3/model/CryptoStorageMode;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/services/s3/model/CryptoStorageMode;

.field public static final enum InstructionFile:Lcom/amazonaws/services/s3/model/CryptoStorageMode;

.field public static final enum ObjectMetadata:Lcom/amazonaws/services/s3/model/CryptoStorageMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 40
    new-instance v0, Lcom/amazonaws/services/s3/model/CryptoStorageMode;

    const-string v1, "InstructionFile"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/services/s3/model/CryptoStorageMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/services/s3/model/CryptoStorageMode;->InstructionFile:Lcom/amazonaws/services/s3/model/CryptoStorageMode;

    .line 41
    new-instance v1, Lcom/amazonaws/services/s3/model/CryptoStorageMode;

    const-string v3, "ObjectMetadata"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/amazonaws/services/s3/model/CryptoStorageMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazonaws/services/s3/model/CryptoStorageMode;->ObjectMetadata:Lcom/amazonaws/services/s3/model/CryptoStorageMode;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazonaws/services/s3/model/CryptoStorageMode;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 38
    sput-object v3, Lcom/amazonaws/services/s3/model/CryptoStorageMode;->$VALUES:[Lcom/amazonaws/services/s3/model/CryptoStorageMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CryptoStorageMode;
    .locals 1

    .line 38
    const-class v0, Lcom/amazonaws/services/s3/model/CryptoStorageMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/services/s3/model/CryptoStorageMode;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/services/s3/model/CryptoStorageMode;
    .locals 1

    .line 38
    sget-object v0, Lcom/amazonaws/services/s3/model/CryptoStorageMode;->$VALUES:[Lcom/amazonaws/services/s3/model/CryptoStorageMode;

    invoke-virtual {v0}, [Lcom/amazonaws/services/s3/model/CryptoStorageMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/services/s3/model/CryptoStorageMode;

    return-object v0
.end method
