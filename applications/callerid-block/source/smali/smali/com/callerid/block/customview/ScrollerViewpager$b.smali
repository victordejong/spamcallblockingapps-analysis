.class Lcom/callerid/block/customview/ScrollerViewpager$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/customview/ScrollerViewpager;->e0(Ljava/util/List;ILcom/callerid/block/customview/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/customview/ScrollerViewpager;


# direct methods
.method constructor <init>(Lcom/callerid/block/customview/ScrollerViewpager;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/customview/ScrollerViewpager$b;->b:Lcom/callerid/block/customview/ScrollerViewpager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/callerid/block/customview/ScrollerViewpager$b;->b:Lcom/callerid/block/customview/ScrollerViewpager;

    invoke-static {v0}, Lcom/callerid/block/customview/ScrollerViewpager;->W(Lcom/callerid/block/customview/ScrollerViewpager;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/callerid/block/customview/ScrollerViewpager$b;->b:Lcom/callerid/block/customview/ScrollerViewpager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/callerid/block/customview/ScrollerViewpager;->Y(Lcom/callerid/block/customview/ScrollerViewpager;Z)Z

    iget-object v0, p0, Lcom/callerid/block/customview/ScrollerViewpager$b;->b:Lcom/callerid/block/customview/ScrollerViewpager;

    invoke-static {v0}, Lcom/callerid/block/customview/ScrollerViewpager;->Z(Lcom/callerid/block/customview/ScrollerViewpager;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/callerid/block/customview/ScrollerViewpager$b;->b:Lcom/callerid/block/customview/ScrollerViewpager;

    invoke-static {v0}, Lcom/callerid/block/customview/ScrollerViewpager;->a0(Lcom/callerid/block/customview/ScrollerViewpager;)Landroid/os/Handler;

    move-result-object v0

    const v1, 0x186a2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/callerid/block/customview/ScrollerViewpager$b;->b:Lcom/callerid/block/customview/ScrollerViewpager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/callerid/block/customview/ScrollerViewpager;->Y(Lcom/callerid/block/customview/ScrollerViewpager;Z)Z

    const-wide/32 v0, 0x7fffffff

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method
