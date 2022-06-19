.class Lnet/pubnative/lite/sdk/utils/json/JsonModel$JsonModelMetadata;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/lite/sdk/utils/json/JsonModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JsonModelMetadata"
.end annotation


# instance fields
.field collectionType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field entityType:Ljava/lang/Class;

.field isArray:Z

.field isDescendantFromModel:Z

.field isMap:Z

.field key:Ljava/lang/String;

.field keyType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 7

    .line 57
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lnet/pubnative/lite/sdk/utils/json/JsonModel$JsonModelMetadata;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;ZZ)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 7

    .line 61
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lnet/pubnative/lite/sdk/utils/json/JsonModel$JsonModelMetadata;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;ZZ)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 65
    invoke-direct/range {v0 .. v6}, Lnet/pubnative/lite/sdk/utils/json/JsonModel$JsonModelMetadata;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;ZZ)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;ZZ)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lnet/pubnative/lite/sdk/utils/json/JsonModel$JsonModelMetadata;->isArray:Z

    .line 53
    iput-boolean v0, p0, Lnet/pubnative/lite/sdk/utils/json/JsonModel$JsonModelMetadata;->isMap:Z

    .line 69
    iput-object p1, p0, Lnet/pubnative/lite/sdk/utils/json/JsonModel$JsonModelMetadata;->key:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lnet/pubnative/lite/sdk/utils/json/JsonModel$JsonModelMetadata;->keyType:Ljava/lang/Class;

    .line 71
    iput-object p3, p0, Lnet/pubnative/lite/sdk/utils/json/JsonModel$JsonModelMetadata;->entityType:Ljava/lang/Class;

    .line 72
    iput-object p4, p0, Lnet/pubnative/lite/sdk/utils/json/JsonModel$JsonModelMetadata;->collectionType:Ljava/lang/Class;

    .line 73
    iput-boolean p5, p0, Lnet/pubnative/lite/sdk/utils/json/JsonModel$JsonModelMetadata;->isArray:Z

    .line 74
    iput-boolean p6, p0, Lnet/pubnative/lite/sdk/utils/json/JsonModel$JsonModelMetadata;->isMap:Z

    .line 75
    const-class p1, Lnet/pubnative/lite/sdk/utils/json/JsonModel;

    invoke-virtual {p1, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    iput-boolean p1, p0, Lnet/pubnative/lite/sdk/utils/json/JsonModel$JsonModelMetadata;->isDescendantFromModel:Z

    return-void
.end method
