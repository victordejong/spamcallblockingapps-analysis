.class public Lcom/amazonaws/services/kms/model/transform/DisconnectCustomKeyStoreResultJsonUnmarshaller;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller<",
        "Lcom/amazonaws/services/kms/model/DisconnectCustomKeyStoreResult;",
        "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/amazonaws/services/kms/model/transform/DisconnectCustomKeyStoreResultJsonUnmarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/services/kms/model/transform/DisconnectCustomKeyStoreResultJsonUnmarshaller;
    .locals 1

    .line 39
    sget-object v0, Lcom/amazonaws/services/kms/model/transform/DisconnectCustomKeyStoreResultJsonUnmarshaller;->instance:Lcom/amazonaws/services/kms/model/transform/DisconnectCustomKeyStoreResultJsonUnmarshaller;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/amazonaws/services/kms/model/transform/DisconnectCustomKeyStoreResultJsonUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/kms/model/transform/DisconnectCustomKeyStoreResultJsonUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/kms/model/transform/DisconnectCustomKeyStoreResultJsonUnmarshaller;->instance:Lcom/amazonaws/services/kms/model/transform/DisconnectCustomKeyStoreResultJsonUnmarshaller;

    .line 41
    :cond_0
    sget-object v0, Lcom/amazonaws/services/kms/model/transform/DisconnectCustomKeyStoreResultJsonUnmarshaller;->instance:Lcom/amazonaws/services/kms/model/transform/DisconnectCustomKeyStoreResultJsonUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/kms/model/DisconnectCustomKeyStoreResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 31
    new-instance p1, Lcom/amazonaws/services/kms/model/DisconnectCustomKeyStoreResult;

    invoke-direct {p1}, Lcom/amazonaws/services/kms/model/DisconnectCustomKeyStoreResult;-><init>()V

    return-object p1
.end method

.method public bridge synthetic unmarshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 26
    check-cast p1, Lcom/amazonaws/transform/JsonUnmarshallerContext;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/model/transform/DisconnectCustomKeyStoreResultJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/kms/model/DisconnectCustomKeyStoreResult;

    move-result-object p1

    return-object p1
.end method
