.class public final Lcom/vk/api/sdk/b/e;
.super Lcom/vk/api/sdk/b/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/vk/api/sdk/b/c<",
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
        "\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B%\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0017\u0010\t\u001a\u0004\u0018\u00018\u00002\u0006\u0010\n\u001a\u00020\u000bH\u0016\u00a2\u0006\u0002\u0010\u000cJ\u001f\u0010\r\u001a\u0004\u0018\u00018\u00002\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u0007H\u0002\u00a2\u0006\u0002\u0010\u000fR\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/vk/api/sdk/chain/InvalidCredentialsObserverChainCall;",
        "T",
        "Lcom/vk/api/sdk/chain/ChainCall;",
        "manager",
        "Lcom/vk/api/sdk/VKApiManager;",
        "chain",
        "checkAuthCount",
        "",
        "(Lcom/vk/api/sdk/VKApiManager;Lcom/vk/api/sdk/chain/ChainCall;I)V",
        "call",
        "args",
        "Lcom/vk/api/sdk/chain/ChainArgs;",
        "(Lcom/vk/api/sdk/chain/ChainArgs;)Ljava/lang/Object;",
        "callWithAuthCheck",
        "iteration",
        "(Lcom/vk/api/sdk/chain/ChainArgs;I)Ljava/lang/Object;",
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

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/vk/api/sdk/g;Lcom/vk/api/sdk/b/c;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/api/sdk/g;",
            "Lcom/vk/api/sdk/b/c<",
            "+TT;>;I)V"
        }
    .end annotation

    const-string v0, "manager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chain"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0, p1}, Lcom/vk/api/sdk/b/c;-><init>(Lcom/vk/api/sdk/g;)V

    iput-object p2, p0, Lcom/vk/api/sdk/b/e;->a:Lcom/vk/api/sdk/b/c;

    iput p3, p0, Lcom/vk/api/sdk/b/e;->b:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vk/api/sdk/g;Lcom/vk/api/sdk/b/c;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 34
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/vk/api/sdk/b/e;-><init>(Lcom/vk/api/sdk/g;Lcom/vk/api/sdk/b/c;I)V

    return-void
.end method

.method private final a(Lcom/vk/api/sdk/b/b;I)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/api/sdk/b/b;",
            "I)TT;"
        }
    .end annotation

    .line 41
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/vk/api/sdk/b/e;->a:Lcom/vk/api/sdk/b/c;

    invoke-virtual {v0, p1}, Lcom/vk/api/sdk/b/c;->a(Lcom/vk/api/sdk/b/b;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lcom/vk/api/sdk/exceptions/VKApiExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 43
    invoke-virtual {v0}, Lcom/vk/api/sdk/exceptions/VKApiExecutionException;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 44
    iget v1, p0, Lcom/vk/api/sdk/b/e;->b:I

    if-lez v1, :cond_3

    if-ge p2, v1, :cond_3

    .line 1126
    iget-object v1, v0, Lcom/vk/api/sdk/exceptions/VKApiExecutionException;->d:Landroid/os/Bundle;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v3, "access_token"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/vk/api/sdk/b/e;->a()Lcom/vk/api/sdk/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vk/api/sdk/g;->a()Lcom/vk/api/sdk/c/c;

    move-result-object v1

    .line 2058
    iget-object v1, v1, Lcom/vk/api/sdk/c/c;->b:Ljava/lang/String;

    .line 47
    invoke-virtual {p0}, Lcom/vk/api/sdk/b/e;->a()Lcom/vk/api/sdk/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vk/api/sdk/g;->a()Lcom/vk/api/sdk/c/c;

    move-result-object v3

    .line 2064
    iget-object v3, v3, Lcom/vk/api/sdk/c/c;->e:Ljava/lang/String;

    .line 49
    invoke-static {v2, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x1

    xor-int/2addr v1, v4

    if-eqz v3, :cond_1

    .line 50
    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v2, :cond_3

    if-nez v1, :cond_2

    if-eqz v4, :cond_3

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 3037
    :cond_3
    iget p1, v0, Lcom/vk/api/sdk/exceptions/VKApiExecutionException;->b:I

    const/16 p2, 0xe1a

    if-ne p1, p2, :cond_4

    .line 61
    invoke-virtual {p0}, Lcom/vk/api/sdk/b/e;->a()Lcom/vk/api/sdk/g;

    move-result-object p1

    .line 3053
    iget-object p1, p1, Lcom/vk/api/sdk/g;->b:Lcom/vk/api/sdk/f;

    goto :goto_2

    .line 63
    :cond_4
    invoke-virtual {p0}, Lcom/vk/api/sdk/b/e;->a()Lcom/vk/api/sdk/g;

    move-result-object p1

    .line 4053
    iget-object p1, p1, Lcom/vk/api/sdk/g;->b:Lcom/vk/api/sdk/f;

    if-eqz p1, :cond_5

    .line 5120
    iget-object p1, v0, Lcom/vk/api/sdk/exceptions/VKApiExecutionException;->d:Landroid/os/Bundle;

    if-eqz p1, :cond_5

    const-string p2, "user_ban_info"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 66
    :cond_5
    :goto_2
    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method


# virtual methods
.method public final a(Lcom/vk/api/sdk/b/b;)Ljava/lang/Object;
    .locals 1
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

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/vk/api/sdk/b/e;->a(Lcom/vk/api/sdk/b/b;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
