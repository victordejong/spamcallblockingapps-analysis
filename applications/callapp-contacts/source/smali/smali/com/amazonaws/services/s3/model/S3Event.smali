.class public final enum Lcom/amazonaws/services/s3/model/S3Event;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/services/s3/model/S3Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/services/s3/model/S3Event;

.field public static final enum ObjectCreated:Lcom/amazonaws/services/s3/model/S3Event;

.field public static final enum ObjectCreatedByCompleteMultipartUpload:Lcom/amazonaws/services/s3/model/S3Event;

.field public static final enum ObjectCreatedByCopy:Lcom/amazonaws/services/s3/model/S3Event;

.field public static final enum ObjectCreatedByPost:Lcom/amazonaws/services/s3/model/S3Event;

.field public static final enum ObjectCreatedByPut:Lcom/amazonaws/services/s3/model/S3Event;

.field public static final enum ObjectRemoved:Lcom/amazonaws/services/s3/model/S3Event;

.field public static final enum ObjectRemovedDelete:Lcom/amazonaws/services/s3/model/S3Event;

.field public static final enum ObjectRemovedDeleteMarkerCreated:Lcom/amazonaws/services/s3/model/S3Event;

.field public static final enum ReducedRedundancyLostObject:Lcom/amazonaws/services/s3/model/S3Event;


# instance fields
.field private final event:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 22
    new-instance v0, Lcom/amazonaws/services/s3/model/S3Event;

    const-string v1, "ReducedRedundancyLostObject"

    const/4 v2, 0x0

    const-string v3, "s3:ReducedRedundancyLostObject"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/s3/model/S3Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/S3Event;->ReducedRedundancyLostObject:Lcom/amazonaws/services/s3/model/S3Event;

    .line 24
    new-instance v1, Lcom/amazonaws/services/s3/model/S3Event;

    const-string v3, "ObjectCreated"

    const/4 v4, 0x1

    const-string v5, "s3:ObjectCreated:*"

    invoke-direct {v1, v3, v4, v5}, Lcom/amazonaws/services/s3/model/S3Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazonaws/services/s3/model/S3Event;->ObjectCreated:Lcom/amazonaws/services/s3/model/S3Event;

    .line 26
    new-instance v3, Lcom/amazonaws/services/s3/model/S3Event;

    const-string v5, "ObjectCreatedByPut"

    const/4 v6, 0x2

    const-string v7, "s3:ObjectCreated:Put"

    invoke-direct {v3, v5, v6, v7}, Lcom/amazonaws/services/s3/model/S3Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/amazonaws/services/s3/model/S3Event;->ObjectCreatedByPut:Lcom/amazonaws/services/s3/model/S3Event;

    .line 28
    new-instance v5, Lcom/amazonaws/services/s3/model/S3Event;

    const-string v7, "ObjectCreatedByPost"

    const/4 v8, 0x3

    const-string v9, "s3:ObjectCreated:Post"

    invoke-direct {v5, v7, v8, v9}, Lcom/amazonaws/services/s3/model/S3Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/amazonaws/services/s3/model/S3Event;->ObjectCreatedByPost:Lcom/amazonaws/services/s3/model/S3Event;

    .line 30
    new-instance v7, Lcom/amazonaws/services/s3/model/S3Event;

    const-string v9, "ObjectCreatedByCopy"

    const/4 v10, 0x4

    const-string v11, "s3:ObjectCreated:Copy"

    invoke-direct {v7, v9, v10, v11}, Lcom/amazonaws/services/s3/model/S3Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/amazonaws/services/s3/model/S3Event;->ObjectCreatedByCopy:Lcom/amazonaws/services/s3/model/S3Event;

    .line 32
    new-instance v9, Lcom/amazonaws/services/s3/model/S3Event;

    const-string v11, "ObjectCreatedByCompleteMultipartUpload"

    const/4 v12, 0x5

    const-string v13, "s3:ObjectCreated:CompleteMultipartUpload"

    invoke-direct {v9, v11, v12, v13}, Lcom/amazonaws/services/s3/model/S3Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/amazonaws/services/s3/model/S3Event;->ObjectCreatedByCompleteMultipartUpload:Lcom/amazonaws/services/s3/model/S3Event;

    .line 34
    new-instance v11, Lcom/amazonaws/services/s3/model/S3Event;

    const-string v13, "ObjectRemoved"

    const/4 v14, 0x6

    const-string v15, "s3:ObjectRemoved:*"

    invoke-direct {v11, v13, v14, v15}, Lcom/amazonaws/services/s3/model/S3Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/amazonaws/services/s3/model/S3Event;->ObjectRemoved:Lcom/amazonaws/services/s3/model/S3Event;

    .line 36
    new-instance v13, Lcom/amazonaws/services/s3/model/S3Event;

    const-string v15, "ObjectRemovedDelete"

    const/4 v14, 0x7

    const-string v12, "s3:ObjectRemoved:Delete"

    invoke-direct {v13, v15, v14, v12}, Lcom/amazonaws/services/s3/model/S3Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/amazonaws/services/s3/model/S3Event;->ObjectRemovedDelete:Lcom/amazonaws/services/s3/model/S3Event;

    .line 38
    new-instance v12, Lcom/amazonaws/services/s3/model/S3Event;

    const-string v15, "ObjectRemovedDeleteMarkerCreated"

    const/16 v14, 0x8

    const-string v10, "s3:ObjectRemoved:DeleteMarkerCreated"

    invoke-direct {v12, v15, v14, v10}, Lcom/amazonaws/services/s3/model/S3Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/amazonaws/services/s3/model/S3Event;->ObjectRemovedDeleteMarkerCreated:Lcom/amazonaws/services/s3/model/S3Event;

    const/16 v10, 0x9

    new-array v10, v10, [Lcom/amazonaws/services/s3/model/S3Event;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    aput-object v5, v10, v8

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    aput-object v12, v10, v14

    .line 21
    sput-object v10, Lcom/amazonaws/services/s3/model/S3Event;->$VALUES:[Lcom/amazonaws/services/s3/model/S3Event;

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

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/S3Event;->event:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/S3Event;
    .locals 1

    .line 21
    const-class v0, Lcom/amazonaws/services/s3/model/S3Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/services/s3/model/S3Event;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/services/s3/model/S3Event;
    .locals 1

    .line 21
    sget-object v0, Lcom/amazonaws/services/s3/model/S3Event;->$VALUES:[Lcom/amazonaws/services/s3/model/S3Event;

    invoke-virtual {v0}, [Lcom/amazonaws/services/s3/model/S3Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/services/s3/model/S3Event;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3Event;->event:Ljava/lang/String;

    return-object v0
.end method
