.class final Lcom/facebook/rebound/a$a;
.super Lcom/facebook/rebound/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/rebound/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/view/Choreographer;

.field final b:Landroid/view/Choreographer$FrameCallback;

.field c:Z

.field d:J


# direct methods
.method public constructor <init>(Landroid/view/Choreographer;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Lcom/facebook/rebound/j;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/facebook/rebound/a$a;->a:Landroid/view/Choreographer;

    .line 111
    new-instance p1, Lcom/facebook/rebound/a$a$1;

    invoke-direct {p1, p0}, Lcom/facebook/rebound/a$a$1;-><init>(Lcom/facebook/rebound/a$a;)V

    iput-object p1, p0, Lcom/facebook/rebound/a$a;->b:Landroid/view/Choreographer$FrameCallback;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 127
    iget-boolean v0, p0, Lcom/facebook/rebound/a$a;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 130
    iput-boolean v0, p0, Lcom/facebook/rebound/a$a;->c:Z

    .line 131
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/rebound/a$a;->d:J

    .line 132
    iget-object v0, p0, Lcom/facebook/rebound/a$a;->a:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/facebook/rebound/a$a;->b:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 133
    iget-object v0, p0, Lcom/facebook/rebound/a$a;->a:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/facebook/rebound/a$a;->b:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public final b()V
    .locals 2

    const/4 v0, 0x0

    .line 138
    iput-boolean v0, p0, Lcom/facebook/rebound/a$a;->c:Z

    .line 139
    iget-object v0, p0, Lcom/facebook/rebound/a$a;->a:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/facebook/rebound/a$a;->b:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method
