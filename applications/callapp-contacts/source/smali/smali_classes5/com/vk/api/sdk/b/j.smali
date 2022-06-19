.class public final Lcom/vk/api/sdk/b/j;
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
        "\u0000R\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B#\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008\u00a2\u0006\u0002\u0010\tJX\u0010\u000c\u001a\u0004\u0018\u0001H\u0001\"\u0004\u0008\u0001\u0010\u0001\"\u0004\u0008\u0002\u0010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u0001H\r2)\u0010\u0011\u001a%\u0012\u0004\u0012\u0002H\r\u0012\u0004\u0012\u00020\u000f\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00010\u0013\u0012\u0004\u0012\u00020\u00140\u0012\u00a2\u0006\u0002\u0008\u0015H\u0004\u00a2\u0006\u0002\u0010\u0016J\u0017\u0010\u0017\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u0018\u001a\u00020\u0019H\u0016\u00a2\u0006\u0002\u0010\u001aJ\u0018\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0018\u0010\u001e\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0018\u0010\u001f\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0010\u0010 \u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J\u001a\u0010!\u001a\u00020\u00142\u0008\u0010\"\u001a\u0004\u0018\u00010#2\u0006\u0010\u001c\u001a\u00020\u001dH\u0004R\u0017\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006$"
    }
    d2 = {
        "Lcom/vk/api/sdk/chain/ValidationHandlerChainCall;",
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
        "awaitValidation",
        "H",
        "extra",
        "",
        "handler",
        "handlerMethod",
        "Lkotlin/Function3;",
        "Lcom/vk/api/sdk/VKApiValidationHandler$Callback;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)Ljava/lang/Object;",
        "call",
        "args",
        "Lcom/vk/api/sdk/chain/ChainArgs;",
        "(Lcom/vk/api/sdk/chain/ChainArgs;)Ljava/lang/Object;",
        "handleCaptcha",
        "ex",
        "Lcom/vk/api/sdk/exceptions/VKApiExecutionException;",
        "handleException",
        "handleUserConfirmation",
        "handleValidation",
        "persistToken",
        "credentials",
        "Lcom/vk/api/sdk/VKApiValidationHandler$Credentials;",
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

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/vk/api/sdk/b/h;-><init>(Lcom/vk/api/sdk/g;I)V

    iput-object p3, p0, Lcom/vk/api/sdk/b/j;->a:Lcom/vk/api/sdk/b/c;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/n;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "H:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TH;",
            "Lkotlin/jvm/functions/n<",
            "-TH;-",
            "Ljava/lang/String;",
            "-",
            "Lcom/vk/api/sdk/i$a<",
            "TT;>;",
            "Lkotlin/v;",
            ">;)TT;"
        }
    .end annotation

    const-string v0, "extra"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handlerMethod"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 92
    :cond_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 93
    new-instance v1, Lcom/vk/api/sdk/i$a;

    invoke-direct {v1, v0}, Lcom/vk/api/sdk/i$a;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    .line 94
    invoke-interface {p2, p1, p0, v1}, Lkotlin/jvm/functions/n;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 12053
    iget-object p0, v1, Lcom/vk/api/sdk/i$a;->a:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/vk/api/sdk/b/b;)Ljava/lang/Object;
    .locals 8
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

    .line 36
    invoke-virtual {p0}, Lcom/vk/api/sdk/b/j;->b()I

    move-result v0

    if-ltz v0, :cond_13

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 38
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/vk/api/sdk/b/j;->a:Lcom/vk/api/sdk/b/c;

    invoke-virtual {v3, p1}, Lcom/vk/api/sdk/b/c;->a(Lcom/vk/api/sdk/b/b;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lcom/vk/api/sdk/exceptions/VKApiExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v3

    .line 1099
    iget v4, v3, Lcom/vk/api/sdk/exceptions/VKApiExecutionException;->b:I

    const/16 v5, 0xe

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    const-string v5, ""

    if-eqz v4, :cond_6

    .line 2111
    iget-object v4, v3, Lcom/vk/api/sdk/exceptions/VKApiExecutionException;->d:Landroid/os/Bundle;

    if-eqz v4, :cond_1

    const-string v6, "captcha_img"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_1
    move-object v4, v5

    .line 2080
    :cond_2
    invoke-virtual {p0}, Lcom/vk/api/sdk/b/j;->a()Lcom/vk/api/sdk/g;

    move-result-object v6

    .line 3048
    iget-object v6, v6, Lcom/vk/api/sdk/g;->a:Lcom/vk/api/sdk/i;

    .line 2080
    sget-object v7, Lcom/vk/api/sdk/b/j$a;->a:Lcom/vk/api/sdk/b/j$a;

    check-cast v7, Lkotlin/jvm/functions/n;

    invoke-static {v4, v6, v7}, Lcom/vk/api/sdk/b/j;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/n;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 3108
    iget-object v3, v3, Lcom/vk/api/sdk/exceptions/VKApiExecutionException;->d:Landroid/os/Bundle;

    if-eqz v3, :cond_4

    const-string v6, "captcha_sid"

    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    move-object v5, v3

    :cond_4
    :goto_2
    const-string v3, "<set-?>"

    .line 2084
    invoke-static {v5, v3}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4028
    iput-object v5, p1, Lcom/vk/api/sdk/b/b;->a:Ljava/lang/String;

    .line 2085
    invoke-static {v4, v3}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4029
    iput-object v4, p1, Lcom/vk/api/sdk/b/b;->b:Ljava/lang/String;

    goto/16 :goto_7

    .line 2082
    :cond_5
    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 4096
    :cond_6
    iget v4, v3, Lcom/vk/api/sdk/exceptions/VKApiExecutionException;->b:I

    const/16 v7, 0x11

    if-ne v4, v7, :cond_7

    const/4 v4, 0x1

    goto :goto_3

    :cond_7
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_b

    .line 5114
    iget-object v4, v3, Lcom/vk/api/sdk/exceptions/VKApiExecutionException;->d:Landroid/os/Bundle;

    if-eqz v4, :cond_9

    const-string v7, "validation_url"

    invoke-virtual {v4, v7, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    goto :goto_4

    :cond_8
    move-object v5, v4

    .line 5068
    :cond_9
    :goto_4
    invoke-virtual {p0}, Lcom/vk/api/sdk/b/j;->a()Lcom/vk/api/sdk/g;

    move-result-object v4

    .line 6048
    iget-object v4, v4, Lcom/vk/api/sdk/g;->a:Lcom/vk/api/sdk/i;

    .line 5068
    sget-object v7, Lcom/vk/api/sdk/b/j$c;->a:Lcom/vk/api/sdk/b/j$c;

    check-cast v7, Lkotlin/jvm/functions/n;

    invoke-static {v5, v4, v7}, Lcom/vk/api/sdk/b/j;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/n;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vk/api/sdk/i$b;

    const-string v5, "ex"

    .line 5069
    invoke-static {v3, v5}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v4, :cond_a

    .line 7062
    iget-boolean v5, v4, Lcom/vk/api/sdk/i$b;->a:Z

    if-ne v5, v6, :cond_a

    .line 6074
    invoke-virtual {p0}, Lcom/vk/api/sdk/b/j;->a()Lcom/vk/api/sdk/g;

    move-result-object v3

    .line 8061
    iget-object v5, v4, Lcom/vk/api/sdk/i$b;->c:Ljava/lang/String;

    .line 6074
    invoke-static {v5}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    .line 9061
    iget-object v4, v4, Lcom/vk/api/sdk/i$b;->b:Ljava/lang/String;

    .line 6074
    invoke-virtual {v3, v5, v4}, Lcom/vk/api/sdk/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 6075
    :cond_a
    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 9090
    :cond_b
    iget v4, v3, Lcom/vk/api/sdk/exceptions/VKApiExecutionException;->b:I

    const/16 v7, 0x18

    if-ne v4, v7, :cond_c

    goto :goto_5

    :cond_c
    const/4 v6, 0x0

    :goto_5
    if-eqz v6, :cond_11

    .line 10117
    iget-object v4, v3, Lcom/vk/api/sdk/exceptions/VKApiExecutionException;->d:Landroid/os/Bundle;

    if-eqz v4, :cond_e

    const-string v6, "confirmation_text"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_d

    goto :goto_6

    :cond_d
    move-object v5, v4

    .line 10057
    :cond_e
    :goto_6
    invoke-virtual {p0}, Lcom/vk/api/sdk/b/j;->a()Lcom/vk/api/sdk/g;

    move-result-object v4

    .line 11048
    iget-object v4, v4, Lcom/vk/api/sdk/g;->a:Lcom/vk/api/sdk/i;

    .line 10057
    sget-object v6, Lcom/vk/api/sdk/b/j$b;->a:Lcom/vk/api/sdk/b/j$b;

    check-cast v6, Lkotlin/jvm/functions/n;

    invoke-static {v5, v4, v6}, Lcom/vk/api/sdk/b/j;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/n;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_10

    .line 10060
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 10062
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 12030
    iput-boolean v3, p1, Lcom/vk/api/sdk/b/b;->c:Z

    goto :goto_7

    .line 10060
    :cond_f
    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 10059
    :cond_10
    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 1052
    :cond_11
    invoke-virtual {p0}, Lcom/vk/api/sdk/b/j;->a()Lcom/vk/api/sdk/g;

    move-result-object v4

    .line 12048
    iget-object v4, v4, Lcom/vk/api/sdk/g;->a:Lcom/vk/api/sdk/i;

    if-eqz v4, :cond_12

    .line 1052
    invoke-virtual {p0}, Lcom/vk/api/sdk/b/j;->a()Lcom/vk/api/sdk/g;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lcom/vk/api/sdk/i;->a(Lcom/vk/api/sdk/exceptions/VKApiExecutionException;Lcom/vk/api/sdk/g;)V

    :goto_7
    if-eq v2, v0, :cond_13

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_12
    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 43
    :cond_13
    new-instance p1, Lcom/vk/api/sdk/exceptions/VKApiException;

    const-string v0, "Can\'t confirm validation due to retry limit!"

    invoke-direct {p1, v0}, Lcom/vk/api/sdk/exceptions/VKApiException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method
