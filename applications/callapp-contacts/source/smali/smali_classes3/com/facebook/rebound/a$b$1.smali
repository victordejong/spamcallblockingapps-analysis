.class final Lcom/facebook/rebound/a$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/rebound/a$b;-><init>(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/rebound/a$b;


# direct methods
.method constructor <init>(Lcom/facebook/rebound/a$b;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/facebook/rebound/a$b$1;->a:Lcom/facebook/rebound/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 61
    iget-object v0, p0, Lcom/facebook/rebound/a$b$1;->a:Lcom/facebook/rebound/a$b;

    .line 1042
    iget-boolean v0, v0, Lcom/facebook/rebound/a$b;->c:Z

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/facebook/rebound/a$b$1;->a:Lcom/facebook/rebound/a$b;

    iget-object v0, v0, Lcom/facebook/rebound/a$b;->e:Lcom/facebook/rebound/b;

    if-nez v0, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 65
    iget-object v2, p0, Lcom/facebook/rebound/a$b$1;->a:Lcom/facebook/rebound/a$b;

    iget-object v2, v2, Lcom/facebook/rebound/a$b;->e:Lcom/facebook/rebound/b;

    iget-object v3, p0, Lcom/facebook/rebound/a$b$1;->a:Lcom/facebook/rebound/a$b;

    .line 2042
    iget-wide v3, v3, Lcom/facebook/rebound/a$b;->d:J

    sub-long v3, v0, v3

    long-to-double v3, v3

    .line 65
    invoke-virtual {v2, v3, v4}, Lcom/facebook/rebound/b;->a(D)V

    .line 66
    iget-object v2, p0, Lcom/facebook/rebound/a$b$1;->a:Lcom/facebook/rebound/a$b;

    .line 3042
    iput-wide v0, v2, Lcom/facebook/rebound/a$b;->d:J

    .line 67
    iget-object v0, p0, Lcom/facebook/rebound/a$b$1;->a:Lcom/facebook/rebound/a$b;

    .line 4042
    iget-object v0, v0, Lcom/facebook/rebound/a$b;->a:Landroid/os/Handler;

    .line 67
    iget-object v1, p0, Lcom/facebook/rebound/a$b$1;->a:Lcom/facebook/rebound/a$b;

    .line 5042
    iget-object v1, v1, Lcom/facebook/rebound/a$b;->b:Ljava/lang/Runnable;

    .line 67
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method
