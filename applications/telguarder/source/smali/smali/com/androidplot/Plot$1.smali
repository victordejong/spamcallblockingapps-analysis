.class Lcom/androidplot/Plot$1;
.super Ljava/lang/Object;
.source "Plot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androidplot/Plot;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androidplot/Plot;


# direct methods
.method constructor <init>(Lcom/androidplot/Plot;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lcom/androidplot/Plot$1;->this$0:Lcom/androidplot/Plot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 414
    iget-object v0, p0, Lcom/androidplot/Plot$1;->this$0:Lcom/androidplot/Plot;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/androidplot/Plot;->access$102(Lcom/androidplot/Plot;Z)Z

    .line 415
    :goto_0
    iget-object v0, p0, Lcom/androidplot/Plot$1;->this$0:Lcom/androidplot/Plot;

    invoke-static {v0}, Lcom/androidplot/Plot;->access$100(Lcom/androidplot/Plot;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 416
    iget-object v0, p0, Lcom/androidplot/Plot$1;->this$0:Lcom/androidplot/Plot;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/androidplot/Plot;->access$202(Lcom/androidplot/Plot;Z)Z

    .line 417
    iget-object v0, p0, Lcom/androidplot/Plot$1;->this$0:Lcom/androidplot/Plot;

    invoke-static {v0}, Lcom/androidplot/Plot;->access$300(Lcom/androidplot/Plot;)Lcom/androidplot/Plot$BufferedCanvas;

    move-result-object v0

    monitor-enter v0

    .line 418
    :try_start_0
    iget-object v2, p0, Lcom/androidplot/Plot$1;->this$0:Lcom/androidplot/Plot;

    invoke-static {v2}, Lcom/androidplot/Plot;->access$300(Lcom/androidplot/Plot;)Lcom/androidplot/Plot$BufferedCanvas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidplot/Plot$BufferedCanvas;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v2

    .line 419
    iget-object v3, p0, Lcom/androidplot/Plot$1;->this$0:Lcom/androidplot/Plot;

    invoke-virtual {v3, v2}, Lcom/androidplot/Plot;->renderOnCanvas(Landroid/graphics/Canvas;)V

    .line 420
    iget-object v2, p0, Lcom/androidplot/Plot$1;->this$0:Lcom/androidplot/Plot;

    invoke-static {v2}, Lcom/androidplot/Plot;->access$300(Lcom/androidplot/Plot;)Lcom/androidplot/Plot$BufferedCanvas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidplot/Plot$BufferedCanvas;->swap()V

    .line 421
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 422
    iget-object v0, p0, Lcom/androidplot/Plot$1;->this$0:Lcom/androidplot/Plot;

    invoke-static {v0}, Lcom/androidplot/Plot;->access$400(Lcom/androidplot/Plot;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 423
    :try_start_1
    iget-object v0, p0, Lcom/androidplot/Plot$1;->this$0:Lcom/androidplot/Plot;

    invoke-virtual {v0}, Lcom/androidplot/Plot;->postInvalidate()V

    .line 426
    iget-object v0, p0, Lcom/androidplot/Plot$1;->this$0:Lcom/androidplot/Plot;

    invoke-static {v0}, Lcom/androidplot/Plot;->access$100(Lcom/androidplot/Plot;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 428
    :try_start_2
    iget-object v0, p0, Lcom/androidplot/Plot$1;->this$0:Lcom/androidplot/Plot;

    invoke-static {v0}, Lcom/androidplot/Plot;->access$400(Lcom/androidplot/Plot;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 430
    :catch_0
    :try_start_3
    iget-object v0, p0, Lcom/androidplot/Plot$1;->this$0:Lcom/androidplot/Plot;

    invoke-static {v0, v1}, Lcom/androidplot/Plot;->access$102(Lcom/androidplot/Plot;Z)Z

    .line 433
    :cond_0
    :goto_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 421
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 435
    :cond_1
    iget-object v0, p0, Lcom/androidplot/Plot$1;->this$0:Lcom/androidplot/Plot;

    invoke-static {v0}, Lcom/androidplot/Plot;->access$300(Lcom/androidplot/Plot;)Lcom/androidplot/Plot$BufferedCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/Plot$BufferedCanvas;->recycle()V

    return-void
.end method
