.class final Landroidx/core/view/d$b$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/d$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroidx/core/view/d$b;


# direct methods
.method constructor <init>(Landroidx/core/view/d$b;)V
    .locals 0

    .line 103
    iput-object p1, p0, Landroidx/core/view/d$b$a;->a:Landroidx/core/view/d$b;

    .line 104
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method constructor <init>(Landroidx/core/view/d$b;Landroid/os/Handler;)V
    .locals 0

    .line 107
    iput-object p1, p0, Landroidx/core/view/d$b$a;->a:Landroidx/core/view/d$b;

    .line 108
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 113
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-eq v0, v2, :cond_3

    if-ne v0, v3, :cond_2

    .line 124
    iget-object p1, p0, Landroidx/core/view/d$b$a;->a:Landroidx/core/view/d$b;

    iget-object p1, p1, Landroidx/core/view/d$b;->c:Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz p1, :cond_1

    .line 125
    iget-object p1, p0, Landroidx/core/view/d$b$a;->a:Landroidx/core/view/d$b;

    iget-boolean p1, p1, Landroidx/core/view/d$b;->d:Z

    if-nez p1, :cond_0

    .line 126
    iget-object p1, p0, Landroidx/core/view/d$b$a;->a:Landroidx/core/view/d$b;

    iget-object p1, p1, Landroidx/core/view/d$b;->c:Landroid/view/GestureDetector$OnDoubleTapListener;

    iget-object v0, p0, Landroidx/core/view/d$b$a;->a:Landroidx/core/view/d$b;

    iget-object v0, v0, Landroidx/core/view/d$b;->g:Landroid/view/MotionEvent;

    invoke-interface {p1, v0}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    return-void

    .line 128
    :cond_0
    iget-object p1, p0, Landroidx/core/view/d$b$a;->a:Landroidx/core/view/d$b;

    iput-boolean v1, p1, Landroidx/core/view/d$b;->e:Z

    :cond_1
    return-void

    .line 134
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Unknown message "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_3
    iget-object p1, p0, Landroidx/core/view/d$b$a;->a:Landroidx/core/view/d$b;

    .line 1458
    iget-object v0, p1, Landroidx/core/view/d$b;->a:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 1459
    iput-boolean v0, p1, Landroidx/core/view/d$b;->e:Z

    .line 1460
    iput-boolean v1, p1, Landroidx/core/view/d$b;->f:Z

    .line 1461
    iget-object v0, p1, Landroidx/core/view/d$b;->b:Landroid/view/GestureDetector$OnGestureListener;

    iget-object p1, p1, Landroidx/core/view/d$b;->g:Landroid/view/MotionEvent;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    return-void

    .line 115
    :cond_4
    iget-object p1, p0, Landroidx/core/view/d$b$a;->a:Landroidx/core/view/d$b;

    iget-object p1, p1, Landroidx/core/view/d$b;->b:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v0, p0, Landroidx/core/view/d$b$a;->a:Landroidx/core/view/d$b;

    iget-object v0, v0, Landroidx/core/view/d$b;->g:Landroid/view/MotionEvent;

    invoke-interface {p1, v0}, Landroid/view/GestureDetector$OnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    return-void
.end method
