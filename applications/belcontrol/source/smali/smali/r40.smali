.class public final Lr40;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr40$b;,
        Lr40$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lg50;

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I


# direct methods
.method public constructor <init>(Lr40$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lr40$a;->a:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lr40;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lr40;->a:Ljava/util/concurrent/Executor;

    iget-object v0, p1, Lr40$a;->c:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lr40;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lr40;->b:Ljava/util/concurrent/Executor;

    iget-object v0, p1, Lr40$a;->b:Lg50;

    if-nez v0, :cond_2

    invoke-static {}, Lg50;->c()Lg50;

    move-result-object v0

    :cond_2
    iput-object v0, p0, Lr40;->c:Lg50;

    iget v0, p1, Lr40$a;->d:I

    iput v0, p0, Lr40;->d:I

    iget v0, p1, Lr40$a;->e:I

    iput v0, p0, Lr40;->e:I

    iget v0, p1, Lr40$a;->f:I

    iput v0, p0, Lr40;->f:I

    iget p1, p1, Lr40$a;->g:I

    iput p1, p0, Lr40;->g:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/concurrent/Executor;
    .locals 2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lr40;->a:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lr40;->f:I

    return v0
.end method

.method public d()I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    iget v0, p0, Lr40;->g:I

    div-int/lit8 v0, v0, 0x2

    return v0

    :cond_0
    iget v0, p0, Lr40;->g:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lr40;->e:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lr40;->d:I

    return v0
.end method

.method public g()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lr40;->b:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public h()Lg50;
    .locals 1

    iget-object v0, p0, Lr40;->c:Lg50;

    return-object v0
.end method
