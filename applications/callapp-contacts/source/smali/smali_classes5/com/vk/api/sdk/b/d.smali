.class public final Lcom/vk/api/sdk/b/d;
.super Lcom/vk/api/sdk/b/h;
.source "SourceFile"


# annotations
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
        "\u00000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B#\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008\u00a2\u0006\u0002\u0010\tJ\u0017\u0010\u000e\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u000f\u001a\u00020\u0010H\u0016\u00a2\u0006\u0002\u0010\u0011R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/vk/api/sdk/chain/InternalErrorRetryChainCall;",
        "T",
        "Lcom/vk/api/sdk/chain/RetryChainCall;",
        "manager",
        "Lcom/vk/api/sdk/VKApiManager;",
        "retryLimit",
        "",
        "chain",
        "Lcom/vk/api/sdk/chain/ChainCall;",
        "(Lcom/vk/api/sdk/VKApiManager;ILcom/vk/api/sdk/chain/ChainCall;)V",
        "backoff",
        "Lcom/vk/api/sdk/utils/ExponentialBackoff;",
        "getChain",
        "()Lcom/vk/api/sdk/chain/ChainCall;",
        "call",
        "args",
        "Lcom/vk/api/sdk/chain/ChainArgs;",
        "(Lcom/vk/api/sdk/chain/ChainArgs;)Ljava/lang/Object;",
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
.field private final a:Lcom/vk/api/sdk/e/b;

.field private final b:Lcom/vk/api/sdk/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vk/api/sdk/b/c<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/vk/api/sdk/g;ILcom/vk/api/sdk/b/c;)V
    .locals 10
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

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/vk/api/sdk/b/h;-><init>(Lcom/vk/api/sdk/g;I)V

    iput-object p3, p0, Lcom/vk/api/sdk/b/d;->b:Lcom/vk/api/sdk/b/c;

    .line 37
    new-instance p1, Lcom/vk/api/sdk/e/b;

    const-wide/16 v2, 0x3e8

    const-wide/32 v4, 0xea60

    const/high16 v6, 0x3fc00000    # 1.5f

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lcom/vk/api/sdk/e/b;-><init>(JJFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/vk/api/sdk/b/d;->a:Lcom/vk/api/sdk/e/b;

    return-void
.end method


# virtual methods
.method public final a(Lcom/vk/api/sdk/b/b;)Ljava/lang/Object;
    .locals 5
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

    const-string v0, ""

    const-string v1, "args"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 42
    :goto_0
    invoke-virtual {p0}, Lcom/vk/api/sdk/b/d;->b()I

    move-result v2

    if-ltz v2, :cond_2

    iget-object v2, p0, Lcom/vk/api/sdk/b/d;->a:Lcom/vk/api/sdk/e/b;

    .line 1046
    iget v2, v2, Lcom/vk/api/sdk/e/b;->b:I

    .line 42
    invoke-virtual {p0}, Lcom/vk/api/sdk/b/d;->b()I

    move-result v3

    if-gt v2, v3, :cond_0

    goto :goto_2

    :cond_0
    if-nez v1, :cond_1

    .line 68
    new-instance p1, Lcom/vk/api/sdk/exceptions/VKApiException;

    const-string v0, "api-call failed due to retry limits, but no exception has tracked"

    invoke-direct {p1, v0}, Lcom/vk/api/sdk/exceptions/VKApiException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    goto :goto_1

    .line 69
    :cond_1
    move-object p1, v1

    check-cast p1, Ljava/lang/Throwable;

    .line 67
    :goto_1
    throw p1

    .line 43
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/vk/api/sdk/b/d;->a:Lcom/vk/api/sdk/e/b;

    invoke-virtual {v1}, Lcom/vk/api/sdk/e/b;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 44
    iget-object v1, p0, Lcom/vk/api/sdk/b/d;->a:Lcom/vk/api/sdk/e/b;

    .line 2042
    iget-wide v1, v1, Lcom/vk/api/sdk/e/b;->a:J

    .line 44
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 47
    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/vk/api/sdk/b/d;->b:Lcom/vk/api/sdk/b/c;

    invoke-virtual {v1, p1}, Lcom/vk/api/sdk/b/c;->a(Lcom/vk/api/sdk/b/b;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lcom/vk/api/sdk/exceptions/VKApiExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/vk/api/sdk/exceptions/VKApiIllegalResponseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/vk/api/sdk/exceptions/VKInternalServerErrorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v1

    .line 61
    move-object v2, v1

    check-cast v2, Ljava/lang/Throwable;

    invoke-virtual {p0, v0, v2}, Lcom/vk/api/sdk/b/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    check-cast v1, Ljava/lang/Exception;

    .line 63
    iget-object v2, p0, Lcom/vk/api/sdk/b/d;->a:Lcom/vk/api/sdk/e/b;

    .line 5063
    invoke-virtual {v2}, Lcom/vk/api/sdk/e/b;->b()V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 57
    move-object v2, v1

    check-cast v2, Ljava/lang/Throwable;

    invoke-virtual {p0, v0, v2}, Lcom/vk/api/sdk/b/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    check-cast v1, Ljava/lang/Exception;

    .line 59
    iget-object v2, p0, Lcom/vk/api/sdk/b/d;->a:Lcom/vk/api/sdk/e/b;

    .line 4063
    invoke-virtual {v2}, Lcom/vk/api/sdk/e/b;->b()V

    goto :goto_0

    :catch_2
    move-exception v1

    .line 2063
    iget v2, v1, Lcom/vk/api/sdk/exceptions/VKApiExecutionException;->b:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/16 v4, 0xa

    if-eq v2, v4, :cond_4

    const/16 v4, 0xd

    if-eq v2, v4, :cond_4

    const/4 v3, 0x0

    :cond_4
    if-eqz v3, :cond_5

    .line 50
    move-object v2, v1

    check-cast v2, Ljava/lang/Throwable;

    invoke-virtual {p0, v0, v2}, Lcom/vk/api/sdk/b/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    check-cast v1, Ljava/lang/Exception;

    .line 52
    iget-object v2, p0, Lcom/vk/api/sdk/b/d;->a:Lcom/vk/api/sdk/e/b;

    .line 3063
    invoke-virtual {v2}, Lcom/vk/api/sdk/e/b;->b()V

    goto :goto_0

    .line 54
    :cond_5
    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method
