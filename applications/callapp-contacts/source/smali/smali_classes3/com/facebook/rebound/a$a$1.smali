.class final Lcom/facebook/rebound/a$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/rebound/a$a;-><init>(Landroid/view/Choreographer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/rebound/a$a;


# direct methods
.method constructor <init>(Lcom/facebook/rebound/a$a;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/facebook/rebound/a$a$1;->a:Lcom/facebook/rebound/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 3

    .line 114
    iget-object p1, p0, Lcom/facebook/rebound/a$a$1;->a:Lcom/facebook/rebound/a$a;

    .line 1095
    iget-boolean p1, p1, Lcom/facebook/rebound/a$a;->c:Z

    if-eqz p1, :cond_1

    .line 114
    iget-object p1, p0, Lcom/facebook/rebound/a$a$1;->a:Lcom/facebook/rebound/a$a;

    iget-object p1, p1, Lcom/facebook/rebound/a$a;->e:Lcom/facebook/rebound/b;

    if-nez p1, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    .line 118
    iget-object v0, p0, Lcom/facebook/rebound/a$a$1;->a:Lcom/facebook/rebound/a$a;

    iget-object v0, v0, Lcom/facebook/rebound/a$a;->e:Lcom/facebook/rebound/b;

    iget-object v1, p0, Lcom/facebook/rebound/a$a$1;->a:Lcom/facebook/rebound/a$a;

    .line 2095
    iget-wide v1, v1, Lcom/facebook/rebound/a$a;->d:J

    sub-long v1, p1, v1

    long-to-double v1, v1

    .line 118
    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/b;->a(D)V

    .line 119
    iget-object v0, p0, Lcom/facebook/rebound/a$a$1;->a:Lcom/facebook/rebound/a$a;

    .line 3095
    iput-wide p1, v0, Lcom/facebook/rebound/a$a;->d:J

    .line 120
    iget-object p1, p0, Lcom/facebook/rebound/a$a$1;->a:Lcom/facebook/rebound/a$a;

    .line 4095
    iget-object p1, p1, Lcom/facebook/rebound/a$a;->a:Landroid/view/Choreographer;

    .line 120
    iget-object p2, p0, Lcom/facebook/rebound/a$a$1;->a:Lcom/facebook/rebound/a$a;

    .line 5095
    iget-object p2, p2, Lcom/facebook/rebound/a$a;->b:Landroid/view/Choreographer$FrameCallback;

    .line 120
    invoke-virtual {p1, p2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_1
    :goto_0
    return-void
.end method
