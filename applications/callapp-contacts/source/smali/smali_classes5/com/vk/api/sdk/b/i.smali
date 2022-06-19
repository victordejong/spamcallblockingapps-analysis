.class public final Lcom/vk/api/sdk/b/i;
.super Lcom/vk/api/sdk/b/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/api/sdk/b/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/vk/api/sdk/b/h<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002:\u0001\u0010B#\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008\u00a2\u0006\u0002\u0010\tJ\u0017\u0010\u000c\u001a\u0004\u0018\u00018\u00002\u0006\u0010\r\u001a\u00020\u000eH\u0016\u00a2\u0006\u0002\u0010\u000fR\u0017\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/vk/api/sdk/chain/TooManyRequestRetryChainCall;",
        "T",
        "Lcom/vk/api/sdk/chain/RetryChainCall;",
        "manager",
        "Lcom/vk/api/sdk/VKApiManager;",
        "retryLimit",
        "",
        "chain",
        "Lcom/vk/api/sdk/chain/ChainCall;",
        "(Lcom/vk/api/sdk/VKApiManager;ILcom/vk/api/sdk/chain/ChainCall;)V",
        "getChain",
        "()Lcom/vk/api/sdk/chain/ChainCall;",
        "call",
        "args",
        "Lcom/vk/api/sdk/chain/ChainArgs;",
        "(Lcom/vk/api/sdk/chain/ChainArgs;)Ljava/lang/Object;",
        "Backoff",
        "libapi-sdk-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final a:Lcom/vk/api/sdk/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vk/api/sdk/b/c<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/vk/api/sdk/g;ILcom/vk/api/sdk/b/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/api/sdk/g;",
            "I",
            "Lcom/vk/api/sdk/b/c<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "manager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chain"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/vk/api/sdk/b/h;-><init>(Lcom/vk/api/sdk/g;I)V

    iput-object p3, p0, Lcom/vk/api/sdk/b/i;->a:Lcom/vk/api/sdk/b/c;

    return-void
.end method


# virtual methods
.method public final a(Lcom/vk/api/sdk/b/b;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/api/sdk/b/b;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Lcom/vk/api/sdk/b/i;->b()I

    move-result v0

    if-ltz v0, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 36
    :goto_0
    sget-object v3, Lcom/vk/api/sdk/b/i$a;->a:Lcom/vk/api/sdk/b/i$a;

    invoke-virtual {v3}, Lcom/vk/api/sdk/b/i$a;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 37
    sget-object v3, Lcom/vk/api/sdk/b/i$a;->a:Lcom/vk/api/sdk/b/i$a;

    invoke-virtual {v3}, Lcom/vk/api/sdk/b/i$a;->d()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 40
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/vk/api/sdk/b/i;->a:Lcom/vk/api/sdk/b/c;

    invoke-virtual {v3, p1}, Lcom/vk/api/sdk/b/c;->a(Lcom/vk/api/sdk/b/b;)Ljava/lang/Object;

    move-result-object v3

    .line 41
    sget-object v4, Lcom/vk/api/sdk/b/i$a;->a:Lcom/vk/api/sdk/b/i$a;

    invoke-virtual {v4}, Lcom/vk/api/sdk/b/i$a;->c()V
    :try_end_0
    .catch Lcom/vk/api/sdk/exceptions/VKApiExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v3

    .line 1073
    iget v4, v3, Lcom/vk/api/sdk/exceptions/VKApiExecutionException;->b:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    :goto_1
    if-eqz v4, :cond_2

    .line 45
    check-cast v3, Ljava/lang/Throwable;

    const-string v4, "Too many requests"

    invoke-virtual {p0, v4, v3}, Lcom/vk/api/sdk/b/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    sget-object v3, Lcom/vk/api/sdk/b/i$a;->a:Lcom/vk/api/sdk/b/i$a;

    invoke-virtual {v3}, Lcom/vk/api/sdk/b/i$a;->b()V

    if-eq v2, v0, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 48
    :cond_2
    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 52
    :cond_3
    new-instance p1, Lcom/vk/api/sdk/exceptions/VKApiException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t handle too many requests due to retry limit! (retryLimit="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vk/api/sdk/b/i;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/vk/api/sdk/exceptions/VKApiException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method
