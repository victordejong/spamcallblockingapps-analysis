.class final Lcom/pgl/a/a/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pgl/a/a/b;->a(I[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pgl/a/a/b;


# direct methods
.method constructor <init>(Lcom/pgl/a/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/pgl/a/a/b$1;->a:Lcom/pgl/a/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 4

    iget-object p1, p0, Lcom/pgl/a/a/b$1;->a:Lcom/pgl/a/a/b;

    .line 1000
    iget p1, p1, Lcom/pgl/a/a/b;->d:I

    iget-object v0, p0, Lcom/pgl/a/a/b$1;->a:Lcom/pgl/a/a/b;

    .line 2000
    iget v0, v0, Lcom/pgl/a/a/b;->c:I

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lcom/pgl/a/a/b$1;->a:Lcom/pgl/a/a/b;

    .line 3000
    iput-boolean v1, p1, Lcom/pgl/a/a/b;->e:Z

    iget-object p1, p0, Lcom/pgl/a/a/b$1;->a:Lcom/pgl/a/a/b;

    .line 4000
    iput v1, p1, Lcom/pgl/a/a/b;->d:I

    iget-object p1, p0, Lcom/pgl/a/a/b$1;->a:Lcom/pgl/a/a/b;

    .line 5000
    iget-object p1, p1, Lcom/pgl/a/a/b;->f:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    return v1

    :cond_0
    iget-object p1, p0, Lcom/pgl/a/a/b$1;->a:Lcom/pgl/a/a/b;

    .line 6000
    invoke-virtual {p1}, Lcom/pgl/a/a/b;->a()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/pgl/a/a/b$1;->a:Lcom/pgl/a/a/b;

    .line 7000
    iput-boolean v1, p1, Lcom/pgl/a/a/b;->e:Z

    iget-object p1, p0, Lcom/pgl/a/a/b$1;->a:Lcom/pgl/a/a/b;

    .line 8000
    iput v1, p1, Lcom/pgl/a/a/b;->d:I

    iget-object p1, p0, Lcom/pgl/a/a/b$1;->a:Lcom/pgl/a/a/b;

    .line 9000
    iget-object p1, p1, Lcom/pgl/a/a/b;->f:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    return v0

    :cond_1
    iget-object p1, p0, Lcom/pgl/a/a/b$1;->a:Lcom/pgl/a/a/b;

    .line 10000
    iget-object p1, p1, Lcom/pgl/a/a/b;->g:Landroid/os/Handler;

    iget-object v2, p0, Lcom/pgl/a/a/b$1;->a:Lcom/pgl/a/a/b;

    .line 11000
    iget v2, v2, Lcom/pgl/a/a/b;->b:I

    mul-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object p1, p0, Lcom/pgl/a/a/b$1;->a:Lcom/pgl/a/a/b;

    .line 12000
    iget v2, p1, Lcom/pgl/a/a/b;->d:I

    add-int/2addr v2, v0

    iput v2, p1, Lcom/pgl/a/a/b;->d:I

    return v1
.end method
