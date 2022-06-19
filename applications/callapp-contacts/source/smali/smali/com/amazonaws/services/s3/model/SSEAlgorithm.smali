.class public final enum Lcom/amazonaws/services/s3/model/SSEAlgorithm;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/services/s3/model/SSEAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/services/s3/model/SSEAlgorithm;

.field public static final enum AES256:Lcom/amazonaws/services/s3/model/SSEAlgorithm;

.field public static final enum KMS:Lcom/amazonaws/services/s3/model/SSEAlgorithm;


# instance fields
.field private final algorithm:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 21
    new-instance v0, Lcom/amazonaws/services/s3/model/SSEAlgorithm;

    const-string v1, "AES256"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/amazonaws/services/s3/model/SSEAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/SSEAlgorithm;->AES256:Lcom/amazonaws/services/s3/model/SSEAlgorithm;

    .line 22
    new-instance v1, Lcom/amazonaws/services/s3/model/SSEAlgorithm;

    const-string v3, "KMS"

    const/4 v4, 0x1

    const-string v5, "aws:kms"

    invoke-direct {v1, v3, v4, v5}, Lcom/amazonaws/services/s3/model/SSEAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazonaws/services/s3/model/SSEAlgorithm;->KMS:Lcom/amazonaws/services/s3/model/SSEAlgorithm;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazonaws/services/s3/model/SSEAlgorithm;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 20
    sput-object v3, Lcom/amazonaws/services/s3/model/SSEAlgorithm;->$VALUES:[Lcom/amazonaws/services/s3/model/SSEAlgorithm;

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

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/SSEAlgorithm;->algorithm:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/SSEAlgorithm;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 50
    :cond_0
    invoke-static {}, Lcom/amazonaws/services/s3/model/SSEAlgorithm;->values()[Lcom/amazonaws/services/s3/model/SSEAlgorithm;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 51
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/SSEAlgorithm;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 54
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Unsupported algorithm "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDefault()Lcom/amazonaws/services/s3/model/SSEAlgorithm;
    .locals 1

    .line 61
    sget-object v0, Lcom/amazonaws/services/s3/model/SSEAlgorithm;->AES256:Lcom/amazonaws/services/s3/model/SSEAlgorithm;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/SSEAlgorithm;
    .locals 1

    .line 20
    const-class v0, Lcom/amazonaws/services/s3/model/SSEAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/services/s3/model/SSEAlgorithm;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/services/s3/model/SSEAlgorithm;
    .locals 1

    .line 20
    sget-object v0, Lcom/amazonaws/services/s3/model/SSEAlgorithm;->$VALUES:[Lcom/amazonaws/services/s3/model/SSEAlgorithm;

    invoke-virtual {v0}, [Lcom/amazonaws/services/s3/model/SSEAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/services/s3/model/SSEAlgorithm;

    return-object v0
.end method


# virtual methods
.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SSEAlgorithm;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SSEAlgorithm;->algorithm:Ljava/lang/String;

    return-object v0
.end method
