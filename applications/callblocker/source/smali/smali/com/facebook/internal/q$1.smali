.class Lcom/facebook/internal/q$1;
.super Ljava/lang/Object;
.source "LockOnGetVariable.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/q;-><init>(Ljava/util/concurrent/Callable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/Callable;

.field final synthetic b:Lcom/facebook/internal/q;


# direct methods
.method constructor <init>(Lcom/facebook/internal/q;Ljava/util/concurrent/Callable;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/facebook/internal/q$1;->b:Lcom/facebook/internal/q;

    iput-object p2, p0, Lcom/facebook/internal/q$1;->a:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 2

    .prologue
    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/facebook/internal/q$1;->b:Lcom/facebook/internal/q;

    iget-object v1, p0, Lcom/facebook/internal/q$1;->a:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/internal/q;->a(Lcom/facebook/internal/q;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    iget-object v0, p0, Lcom/facebook/internal/q$1;->b:Lcom/facebook/internal/q;

    invoke-static {v0}, Lcom/facebook/internal/q;->a(Lcom/facebook/internal/q;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 48
    const/4 v0, 0x0

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/internal/q$1;->b:Lcom/facebook/internal/q;

    invoke-static {v1}, Lcom/facebook/internal/q;->a(Lcom/facebook/internal/q;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 47
    throw v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/facebook/internal/q$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
