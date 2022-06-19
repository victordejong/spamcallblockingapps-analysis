.class final Lcom/facebook/a/e$1;
.super Ljava/lang/Object;
.source "AppEventQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/a/e;->a(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 66
    invoke-static {}, Lcom/facebook/a/g;->a()Lcom/facebook/a/g$a;

    move-result-object v0

    sget-object v1, Lcom/facebook/a/g$a;->b:Lcom/facebook/a/g$a;

    if-eq v0, v1, :cond_0

    .line 68
    sget-object v0, Lcom/facebook/a/j;->b:Lcom/facebook/a/j;

    invoke-static {v0}, Lcom/facebook/a/e;->b(Lcom/facebook/a/j;)V

    .line 70
    :cond_0
    return-void
.end method
