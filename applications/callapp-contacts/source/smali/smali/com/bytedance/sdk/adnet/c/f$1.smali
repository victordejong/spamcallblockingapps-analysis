.class Lcom/bytedance/sdk/adnet/c/f$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/adnet/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/adnet/c/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/adnet/c/f;Landroid/os/Looper;)V
    .locals 0

    .line 443
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/c/f$1;->a:Lcom/bytedance/sdk/adnet/c/f;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 446
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2710

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 448
    :cond_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 449
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/c/f$1;->a:Lcom/bytedance/sdk/adnet/c/f;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/adnet/c/f;->a(Lcom/bytedance/sdk/adnet/c/f;Z)V

    :goto_1
    return-void
.end method
