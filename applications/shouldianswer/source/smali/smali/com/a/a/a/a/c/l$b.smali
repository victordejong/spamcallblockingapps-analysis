.class Lcom/a/a/a/a/c/l$b;
.super Landroid/os/Handler;
.source "RecyclerViewDragDropManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/a/a/c/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/a/a/a/a/c/l;

.field private b:Landroid/view/MotionEvent;


# direct methods
.method public constructor <init>(Lcom/a/a/a/a/c/l;)V
    .locals 0

    .line 2178
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2179
    iput-object p1, p0, Lcom/a/a/a/a/c/l$b;->a:Lcom/a/a/a/a/c/l;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 2209
    invoke-virtual {p0, v0}, Lcom/a/a/a/a/c/l$b;->removeMessages(I)V

    .line 2210
    iget-object v0, p0, Lcom/a/a/a/a/c/l$b;->b:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 2211
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x0

    .line 2212
    iput-object v0, p0, Lcom/a/a/a/a/c/l$b;->b:Landroid/view/MotionEvent;

    :cond_0
    return-void
.end method

.method public a(Landroid/view/MotionEvent;I)V
    .locals 2

    .line 2203
    invoke-virtual {p0}, Lcom/a/a/a/a/c/l$b;->a()V

    .line 2204
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/a/c/l$b;->b:Landroid/view/MotionEvent;

    .line 2205
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    int-to-long p1, p2

    add-long/2addr v0, p1

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/a/a/a/a/c/l$b;->sendEmptyMessageAtTime(IJ)Z

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x2

    .line 2217
    invoke-virtual {p0, v0}, Lcom/a/a/a/a/c/l$b;->removeMessages(I)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 2221
    invoke-virtual {p0}, Lcom/a/a/a/a/c/l$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 2224
    invoke-virtual {p0, v0}, Lcom/a/a/a/a/c/l$b;->sendEmptyMessage(I)Z

    return-void
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x2

    .line 2228
    invoke-virtual {p0, v0}, Lcom/a/a/a/a/c/l$b;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x3

    .line 2232
    invoke-virtual {p0, v0}, Lcom/a/a/a/a/c/l$b;->sendEmptyMessage(I)Z

    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x3

    .line 2236
    invoke-virtual {p0, v0}, Lcom/a/a/a/a/c/l$b;->removeMessages(I)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 2189
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2197
    :cond_0
    iget-object p1, p0, Lcom/a/a/a/a/c/l$b;->a:Lcom/a/a/a/a/c/l;

    invoke-virtual {p1}, Lcom/a/a/a/a/c/l;->c()V

    goto :goto_0

    .line 2194
    :cond_1
    iget-object p1, p0, Lcom/a/a/a/a/c/l$b;->a:Lcom/a/a/a/a/c/l;

    invoke-virtual {p1, v0}, Lcom/a/a/a/a/c/l;->f(Z)V

    goto :goto_0

    .line 2191
    :cond_2
    iget-object p1, p0, Lcom/a/a/a/a/c/l$b;->a:Lcom/a/a/a/a/c/l;

    iget-object v0, p0, Lcom/a/a/a/a/c/l$b;->b:Landroid/view/MotionEvent;

    invoke-virtual {p1, v0}, Lcom/a/a/a/a/c/l;->a(Landroid/view/MotionEvent;)V

    :goto_0
    return-void
.end method
