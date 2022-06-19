.class final Landroidx/h/b/a$a;
.super Landroidx/h/b/d;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/h/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/h/b/d<",
        "TD;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Landroidx/h/b/a;


# direct methods
.method constructor <init>(Landroidx/h/b/a;)V
    .locals 0

    .line 47
    iput-object p1, p0, Landroidx/h/b/a$a;->b:Landroidx/h/b/a;

    invoke-direct {p0}, Landroidx/h/b/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .line 57
    :try_start_0
    iget-object v0, p0, Landroidx/h/b/a$a;->b:Landroidx/h/b/a;

    .line 1288
    invoke-virtual {v0}, Landroidx/h/b/a;->d()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Landroidx/core/os/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2195
    iget-object v1, p0, Landroidx/h/b/d;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 68
    :cond_0
    throw v0
.end method

.method protected final a(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Landroidx/h/b/a$a;->b:Landroidx/h/b/a;

    .line 2227
    iget-object v1, v0, Landroidx/h/b/a;->a:Landroidx/h/b/a$a;

    if-eq v1, p0, :cond_0

    .line 2229
    invoke-virtual {v0, p0, p1}, Landroidx/h/b/a;->a(Landroidx/h/b/a$a;Ljava/lang/Object;)V

    return-void

    .line 2246
    :cond_0
    iget-boolean v1, v0, Landroidx/h/b/c;->i:Z

    if-eqz v1, :cond_1

    .line 2233
    invoke-virtual {v0, p1}, Landroidx/h/b/a;->a(Ljava/lang/Object;)V

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 2484
    iput-boolean v1, v0, Landroidx/h/b/c;->j:Z

    .line 2236
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/h/b/a;->b:J

    const/4 v1, 0x0

    .line 2237
    iput-object v1, v0, Landroidx/h/b/a;->a:Landroidx/h/b/a$a;

    .line 2239
    invoke-virtual {v0, p1}, Landroidx/h/b/a;->b(Ljava/lang/Object;)V

    return-void
.end method

.method protected final b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Landroidx/h/b/a$a;->b:Landroidx/h/b/a;

    invoke-virtual {v0, p0, p1}, Landroidx/h/b/a;->a(Landroidx/h/b/a$a;Ljava/lang/Object;)V

    return-void
.end method

.method public final run()V
    .locals 1

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Landroidx/h/b/a$a;->a:Z

    .line 94
    iget-object v0, p0, Landroidx/h/b/a$a;->b:Landroidx/h/b/a;

    invoke-virtual {v0}, Landroidx/h/b/a;->c()V

    return-void
.end method
