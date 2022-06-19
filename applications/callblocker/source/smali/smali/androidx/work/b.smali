.class public final Landroidx/work/b;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/b$b;,
        Landroidx/work/b$a;
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/Executor;

.field final b:Ljava/util/concurrent/Executor;

.field final c:Landroidx/work/v;

.field final d:Landroidx/work/k;

.field final e:I

.field final f:I

.field final g:I

.field final h:I

.field private final i:Z


# direct methods
.method constructor <init>(Landroidx/work/b$a;)V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iget-object v0, p1, Landroidx/work/b$a;->a:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    .line 74
    invoke-direct {p0}, Landroidx/work/b;->i()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/b;->a:Ljava/util/concurrent/Executor;

    .line 79
    :goto_0
    iget-object v0, p1, Landroidx/work/b$a;->d:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_1

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/work/b;->i:Z

    .line 84
    invoke-direct {p0}, Landroidx/work/b;->i()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/b;->b:Ljava/util/concurrent/Executor;

    .line 90
    :goto_1
    iget-object v0, p1, Landroidx/work/b$a;->b:Landroidx/work/v;

    if-nez v0, :cond_2

    .line 91
    invoke-static {}, Landroidx/work/v;->a()Landroidx/work/v;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/b;->c:Landroidx/work/v;

    .line 96
    :goto_2
    iget-object v0, p1, Landroidx/work/b$a;->c:Landroidx/work/k;

    if-nez v0, :cond_3

    .line 97
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/b;->d:Landroidx/work/k;

    .line 102
    :goto_3
    iget v0, p1, Landroidx/work/b$a;->e:I

    iput v0, p0, Landroidx/work/b;->e:I

    .line 103
    iget v0, p1, Landroidx/work/b$a;->f:I

    iput v0, p0, Landroidx/work/b;->f:I

    .line 104
    iget v0, p1, Landroidx/work/b$a;->g:I

    iput v0, p0, Landroidx/work/b;->g:I

    .line 105
    iget v0, p1, Landroidx/work/b$a;->h:I

    iput v0, p0, Landroidx/work/b;->h:I

    .line 106
    return-void

    .line 76
    :cond_0
    iget-object v0, p1, Landroidx/work/b$a;->a:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroidx/work/b;->a:Ljava/util/concurrent/Executor;

    goto :goto_0

    .line 86
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/work/b;->i:Z

    .line 87
    iget-object v0, p1, Landroidx/work/b$a;->d:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroidx/work/b;->b:Ljava/util/concurrent/Executor;

    goto :goto_1

    .line 93
    :cond_2
    iget-object v0, p1, Landroidx/work/b$a;->b:Landroidx/work/v;

    iput-object v0, p0, Landroidx/work/b;->c:Landroidx/work/v;

    goto :goto_2

    .line 99
    :cond_3
    iget-object v0, p1, Landroidx/work/b$a;->c:Landroidx/work/k;

    iput-object v0, p0, Landroidx/work/b;->d:Landroidx/work/k;

    goto :goto_3
.end method

.method private i()Ljava/util/concurrent/Executor;
    .locals 3

    .prologue
    .line 215
    const/4 v0, 0x2

    .line 217
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 215
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Landroidx/work/b;->a:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public b()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Landroidx/work/b;->b:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public c()Landroidx/work/v;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Landroidx/work/b;->c:Landroidx/work/v;

    return-object v0
.end method

.method public d()Landroidx/work/k;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Landroidx/work/b;->d:Landroidx/work/k;

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Landroidx/work/b;->e:I

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Landroidx/work/b;->f:I

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Landroidx/work/b;->g:I

    return v0
.end method

.method public h()I
    .locals 2

    .prologue
    .line 198
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    .line 199
    iget v0, p0, Landroidx/work/b;->h:I

    div-int/lit8 v0, v0, 0x2

    .line 201
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroidx/work/b;->h:I

    goto :goto_0
.end method
