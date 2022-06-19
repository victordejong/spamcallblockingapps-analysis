.class public final Lcom/vk/api/sdk/b/g;
.super Lcom/vk/api/sdk/b/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/api/sdk/b/g$b;,
        Lcom/vk/api/sdk/b/g$a;
    }
.end annotation

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
        "\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u000f*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002:\u0002\u000f\u0010B+\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002\u00a2\u0006\u0002\u0010\nJ\u0017\u0010\u000b\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u000c\u001a\u00020\rH\u0016\u00a2\u0006\u0002\u0010\u000eR\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/vk/api/sdk/chain/RateLimitReachedChainCall;",
        "T",
        "Lcom/vk/api/sdk/chain/ChainCall;",
        "manager",
        "Lcom/vk/api/sdk/VKApiManager;",
        "method",
        "",
        "backoff",
        "Lcom/vk/api/sdk/chain/RateLimitReachedChainCall$RateLimitBackoff;",
        "chainCall",
        "(Lcom/vk/api/sdk/VKApiManager;Ljava/lang/String;Lcom/vk/api/sdk/chain/RateLimitReachedChainCall$RateLimitBackoff;Lcom/vk/api/sdk/chain/ChainCall;)V",
        "call",
        "args",
        "Lcom/vk/api/sdk/chain/ChainArgs;",
        "(Lcom/vk/api/sdk/chain/ChainArgs;)Ljava/lang/Object;",
        "Companion",
        "RateLimitBackoff",
        "libapi-sdk-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final a:Lcom/vk/api/sdk/b/g$a;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lcom/vk/api/sdk/b/g$b;

.field private final d:Lcom/vk/api/sdk/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vk/api/sdk/b/c<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vk/api/sdk/b/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vk/api/sdk/b/g$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vk/api/sdk/b/g;->a:Lcom/vk/api/sdk/b/g$a;

    return-void
.end method

.method public constructor <init>(Lcom/vk/api/sdk/g;Ljava/lang/String;Lcom/vk/api/sdk/b/g$b;Lcom/vk/api/sdk/b/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/api/sdk/g;",
            "Ljava/lang/String;",
            "Lcom/vk/api/sdk/b/g$b;",
            "Lcom/vk/api/sdk/b/c<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "manager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backoff"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chainCall"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0, p1}, Lcom/vk/api/sdk/b/c;-><init>(Lcom/vk/api/sdk/g;)V

    iput-object p2, p0, Lcom/vk/api/sdk/b/g;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/vk/api/sdk/b/g;->c:Lcom/vk/api/sdk/b/g$b;

    iput-object p4, p0, Lcom/vk/api/sdk/b/g;->d:Lcom/vk/api/sdk/b/c;

    return-void
.end method


# virtual methods
.method public final a(Lcom/vk/api/sdk/b/b;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/api/sdk/b/b;",
            ")TT;"
        }
    .end annotation

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/vk/api/sdk/b/g;->c:Lcom/vk/api/sdk/b/g$b;

    iget-object v1, p0, Lcom/vk/api/sdk/b/g;->b:Ljava/lang/String;

    const-string v2, "operationKey"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1069
    invoke-virtual {v0}, Lcom/vk/api/sdk/b/g$b;->a()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    .line 1073
    iget-object v3, v0, Lcom/vk/api/sdk/b/g$b;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    .line 1074
    invoke-virtual {v0}, Lcom/vk/api/sdk/b/g$b;->a()Landroid/content/SharedPreferences;

    move-result-object v3

    iget-wide v8, v0, Lcom/vk/api/sdk/b/g$b;->a:J

    invoke-interface {v3, v1, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    sub-long v10, v6, v8

    const-wide/16 v12, 0x0

    cmp-long v1, v10, v12

    if-ltz v1, :cond_0

    .line 1078
    iget-wide v0, v0, Lcom/vk/api/sdk/b/g$b;->a:J

    add-long/2addr v8, v0

    cmp-long v0, v8, v6

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Rate limit reached."

    if-nez v0, :cond_3

    .line 34
    iget-object v0, p0, Lcom/vk/api/sdk/b/g;->c:Lcom/vk/api/sdk/b/g$b;

    iget-object v3, p0, Lcom/vk/api/sdk/b/g;->b:Ljava/lang/String;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1085
    invoke-virtual {v0}, Lcom/vk/api/sdk/b/g$b;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/vk/api/sdk/b/g;->d:Lcom/vk/api/sdk/b/c;

    invoke-virtual {v0, p1}, Lcom/vk/api/sdk/b/c;->a(Lcom/vk/api/sdk/b/b;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lcom/vk/api/sdk/exceptions/VKApiExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1105
    iget v0, p1, Lcom/vk/api/sdk/exceptions/VKApiExecutionException;->b:I

    const/16 v3, 0x1d

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_2

    .line 39
    iget-object v0, p0, Lcom/vk/api/sdk/b/g;->c:Lcom/vk/api/sdk/b/g$b;

    iget-object v3, p0, Lcom/vk/api/sdk/b/g;->b:Ljava/lang/String;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2089
    invoke-virtual {v0}, Lcom/vk/api/sdk/b/g$b;->a()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v0, v0, Lcom/vk/api/sdk/b/g$b;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 40
    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {p0, v1, v0}, Lcom/vk/api/sdk/b/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    :cond_2
    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 31
    :cond_3
    new-instance p1, Lcom/vk/api/sdk/exceptions/RateLimitReachedException;

    iget-object v0, p0, Lcom/vk/api/sdk/b/g;->b:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Lcom/vk/api/sdk/exceptions/RateLimitReachedException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method
