.class final Lcom/facebook/rebound/a$b;
.super Lcom/facebook/rebound/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/rebound/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field final a:Landroid/os/Handler;

.field final b:Ljava/lang/Runnable;

.field c:Z

.field d:J


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/facebook/rebound/j;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/facebook/rebound/a$b;->a:Landroid/os/Handler;

    .line 58
    new-instance p1, Lcom/facebook/rebound/a$b$1;

    invoke-direct {p1, p0}, Lcom/facebook/rebound/a$b$1;-><init>(Lcom/facebook/rebound/a$b;)V

    iput-object p1, p0, Lcom/facebook/rebound/a$b;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 74
    iget-boolean v0, p0, Lcom/facebook/rebound/a$b;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/facebook/rebound/a$b;->c:Z

    .line 78
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/rebound/a$b;->d:J

    .line 79
    iget-object v0, p0, Lcom/facebook/rebound/a$b;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/rebound/a$b;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 80
    iget-object v0, p0, Lcom/facebook/rebound/a$b;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/rebound/a$b;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b()V
    .locals 2

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/facebook/rebound/a$b;->c:Z

    .line 86
    iget-object v0, p0, Lcom/facebook/rebound/a$b;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/rebound/a$b;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
