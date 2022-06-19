.class final Lcom/facebook/internal/w$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/w;-><init>(Ljava/util/concurrent/Callable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001\"\u0004\u0008\u0000\u0010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Ljava/lang/Void;",
        "kotlin.jvm.PlatformType",
        "T",
        "call"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/internal/w;

.field final synthetic b:Ljava/util/concurrent/Callable;


# direct methods
.method constructor <init>(Lcom/facebook/internal/w;Ljava/util/concurrent/Callable;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/internal/w$1;->a:Lcom/facebook/internal/w;

    iput-object p2, p0, Lcom/facebook/internal/w$1;->b:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Ljava/lang/Void;
    .locals 2

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/facebook/internal/w$1;->a:Lcom/facebook/internal/w;

    iget-object v1, p0, Lcom/facebook/internal/w$1;->b:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    .line 1027
    iput-object v1, v0, Lcom/facebook/internal/w;->a:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    iget-object v0, p0, Lcom/facebook/internal/w$1;->a:Lcom/facebook/internal/w;

    .line 2027
    iget-object v0, v0, Lcom/facebook/internal/w;->b:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/internal/w$1;->a:Lcom/facebook/internal/w;

    .line 3027
    iget-object v1, v1, Lcom/facebook/internal/w;->b:Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_1

    .line 49
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_1
    throw v0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/facebook/internal/w$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
