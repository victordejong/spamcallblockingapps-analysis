.class public final Lcom/explorestack/protobuf/RpcUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/RpcUtil$AlreadyCalledException;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/explorestack/protobuf/Message;Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message;
    .locals 0

    .line 38
    invoke-static {p0, p1}, Lcom/explorestack/protobuf/RpcUtil;->copyAsType(Lcom/explorestack/protobuf/Message;Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    return-object p0
.end method

.method private static copyAsType(Lcom/explorestack/protobuf/Message;Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type::",
            "Lcom/explorestack/protobuf/Message;",
            ">(TType;",
            "Lcom/explorestack/protobuf/Message;",
            ")TType;"
        }
    .end annotation

    .line 91
    invoke-interface {p0}, Lcom/explorestack/protobuf/Message;->newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/explorestack/protobuf/Message$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;

    move-result-object p0

    invoke-interface {p0}, Lcom/explorestack/protobuf/Message$Builder;->build()Lcom/explorestack/protobuf/Message;

    move-result-object p0

    return-object p0
.end method

.method public static generalizeCallback(Lcom/explorestack/protobuf/RpcCallback;Ljava/lang/Class;Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/RpcCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type::",
            "Lcom/explorestack/protobuf/Message;",
            ">(",
            "Lcom/explorestack/protobuf/RpcCallback<",
            "TType;>;",
            "Ljava/lang/Class<",
            "TType;>;TType;)",
            "Lcom/explorestack/protobuf/RpcCallback<",
            "Lcom/explorestack/protobuf/Message;",
            ">;"
        }
    .end annotation

    .line 70
    new-instance v0, Lcom/explorestack/protobuf/RpcUtil$1;

    invoke-direct {v0, p1, p2, p0}, Lcom/explorestack/protobuf/RpcUtil$1;-><init>(Ljava/lang/Class;Lcom/explorestack/protobuf/Message;Lcom/explorestack/protobuf/RpcCallback;)V

    return-object v0
.end method

.method public static newOneTimeCallback(Lcom/explorestack/protobuf/RpcCallback;)Lcom/explorestack/protobuf/RpcCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ParameterType:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/RpcCallback<",
            "TParameterType;>;)",
            "Lcom/explorestack/protobuf/RpcCallback<",
            "TParameterType;>;"
        }
    .end annotation

    .line 101
    new-instance v0, Lcom/explorestack/protobuf/RpcUtil$2;

    invoke-direct {v0, p0}, Lcom/explorestack/protobuf/RpcUtil$2;-><init>(Lcom/explorestack/protobuf/RpcCallback;)V

    return-object v0
.end method

.method public static specializeCallback(Lcom/explorestack/protobuf/RpcCallback;)Lcom/explorestack/protobuf/RpcCallback;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type::",
            "Lcom/explorestack/protobuf/Message;",
            ">(",
            "Lcom/explorestack/protobuf/RpcCallback<",
            "Lcom/explorestack/protobuf/Message;",
            ">;)",
            "Lcom/explorestack/protobuf/RpcCallback<",
            "TType;>;"
        }
    .end annotation

    return-object p0
.end method
