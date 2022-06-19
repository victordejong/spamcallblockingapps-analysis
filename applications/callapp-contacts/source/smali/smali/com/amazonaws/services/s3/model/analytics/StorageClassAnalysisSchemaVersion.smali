.class public final enum Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisSchemaVersion;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisSchemaVersion;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisSchemaVersion;

.field public static final enum V_1:Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisSchemaVersion;


# instance fields
.field private final version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 28
    new-instance v0, Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisSchemaVersion;

    const-string v1, "V_1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisSchemaVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisSchemaVersion;->V_1:Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisSchemaVersion;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisSchemaVersion;

    aput-object v0, v1, v2

    .line 23
    sput-object v1, Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisSchemaVersion;->$VALUES:[Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisSchemaVersion;

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

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisSchemaVersion;->version:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisSchemaVersion;
    .locals 1

    .line 23
    const-class v0, Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisSchemaVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisSchemaVersion;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisSchemaVersion;
    .locals 1

    .line 23
    sget-object v0, Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisSchemaVersion;->$VALUES:[Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisSchemaVersion;

    invoke-virtual {v0}, [Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisSchemaVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisSchemaVersion;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisSchemaVersion;->version:Ljava/lang/String;

    return-object v0
.end method
