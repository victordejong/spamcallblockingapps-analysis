.class public Lcom/millennialmedia/internal/JSBridge$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/JSBridge;->setScrolledPosition(Lcom/millennialmedia/internal/MMWebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/internal/JSBridge;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/JSBridge;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/JSBridge$4;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-wide/16 v0, 0x0

    :cond_0
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lcom/millennialmedia/internal/JSBridge$4;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v2}, Lcom/millennialmedia/internal/JSBridge;->access$100(Lcom/millennialmedia/internal/JSBridge;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/millennialmedia/internal/MMWebView;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/millennialmedia/internal/JSBridge$4;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v3}, Lcom/millennialmedia/internal/JSBridge;->access$800(Lcom/millennialmedia/internal/JSBridge;)J

    move-result-wide v3

    cmp-long v5, v3, v0

    if-lez v5, :cond_2

    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$4;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v0}, Lcom/millennialmedia/internal/JSBridge;->access$800(Lcom/millennialmedia/internal/JSBridge;)J

    move-result-wide v0

    iget-object v3, p0, Lcom/millennialmedia/internal/JSBridge$4;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-virtual {v3, v2}, Lcom/millennialmedia/internal/JSBridge;->setCurrentPosition(Lcom/millennialmedia/internal/MMWebView;)V

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/millennialmedia/internal/JSBridge$4;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v4}, Lcom/millennialmedia/internal/JSBridge;->access$800(Lcom/millennialmedia/internal/JSBridge;)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    :catch_0
    :goto_0
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$4;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v0}, Lcom/millennialmedia/internal/JSBridge;->access$900(Lcom/millennialmedia/internal/JSBridge;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
