.class final Lcom/google/android/play/core/assetpacks/q1;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/play/core/assetpacks/v;

.field private final b:Lcom/google/android/play/core/internal/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/p0<",
            "Lcom/google/android/play/core/assetpacks/r2;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/play/core/assetpacks/z0;

.field private final d:Lcom/google/android/play/core/internal/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/p0<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/android/play/core/assetpacks/n0;

.field private final f:Lcom/google/android/play/core/common/a;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/v;Lcom/google/android/play/core/internal/p0;Lcom/google/android/play/core/assetpacks/z0;Lcom/google/android/play/core/internal/p0;Lcom/google/android/play/core/assetpacks/n0;Lcom/google/android/play/core/common/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/assetpacks/v;",
            "Lcom/google/android/play/core/internal/p0<",
            "Lcom/google/android/play/core/assetpacks/r2;",
            ">;",
            "Lcom/google/android/play/core/assetpacks/z0;",
            "Lcom/google/android/play/core/internal/p0<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lcom/google/android/play/core/assetpacks/n0;",
            "Lcom/google/android/play/core/common/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/q1;->a:Lcom/google/android/play/core/assetpacks/v;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/q1;->b:Lcom/google/android/play/core/internal/p0;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/q1;->c:Lcom/google/android/play/core/assetpacks/z0;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/q1;->d:Lcom/google/android/play/core/internal/p0;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/q1;->e:Lcom/google/android/play/core/assetpacks/n0;

    iput-object p6, p0, Lcom/google/android/play/core/assetpacks/q1;->f:Lcom/google/android/play/core/common/a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/play/core/assetpacks/n1;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/q1;->a:Lcom/google/android/play/core/assetpacks/v;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/b1;->b:Ljava/lang/String;

    iget v2, p1, Lcom/google/android/play/core/assetpacks/n1;->c:I

    iget-wide v3, p1, Lcom/google/android/play/core/assetpacks/n1;->d:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/play/core/assetpacks/v;->x(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/q1;->a:Lcom/google/android/play/core/assetpacks/v;

    iget-object v2, p1, Lcom/google/android/play/core/assetpacks/b1;->b:Ljava/lang/String;

    iget v3, p1, Lcom/google/android/play/core/assetpacks/n1;->c:I

    iget-wide v4, p1, Lcom/google/android/play/core/assetpacks/n1;->d:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/play/core/assetpacks/v;->D(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/q1;->a:Lcom/google/android/play/core/assetpacks/v;

    iget-object v3, p1, Lcom/google/android/play/core/assetpacks/b1;->b:Ljava/lang/String;

    iget v4, p1, Lcom/google/android/play/core/assetpacks/n1;->c:I

    iget-wide v5, p1, Lcom/google/android/play/core/assetpacks/n1;->d:J

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/play/core/assetpacks/v;->t(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/q1;->a:Lcom/google/android/play/core/assetpacks/v;

    iget-object v2, p1, Lcom/google/android/play/core/assetpacks/b1;->b:Ljava/lang/String;

    iget v3, p1, Lcom/google/android/play/core/assetpacks/n1;->c:I

    iget-wide v4, p1, Lcom/google/android/play/core/assetpacks/n1;->d:J

    new-instance v6, Ljava/io/File;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/play/core/assetpacks/v;->t(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v0

    const-string v2, "merge.tmp"

    invoke-direct {v6, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/q1;->a:Lcom/google/android/play/core/assetpacks/v;

    iget-object v2, p1, Lcom/google/android/play/core/assetpacks/b1;->b:Ljava/lang/String;

    iget v3, p1, Lcom/google/android/play/core/assetpacks/n1;->c:I

    iget-wide v4, p1, Lcom/google/android/play/core/assetpacks/n1;->d:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/play/core/assetpacks/v;->u(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/q1;->f:Lcom/google/android/play/core/common/a;

    invoke-virtual {v0}, Lcom/google/android/play/core/common/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/q1;->d:Lcom/google/android/play/core/internal/p0;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/p0;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/play/core/assetpacks/o1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/play/core/assetpacks/o1;-><init>(Lcom/google/android/play/core/assetpacks/q1;Lcom/google/android/play/core/assetpacks/n1;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/q1;->d:Lcom/google/android/play/core/internal/p0;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/p0;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/q1;->a:Lcom/google/android/play/core/assetpacks/v;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/android/play/core/assetpacks/p1;->a(Lcom/google/android/play/core/assetpacks/v;)Ljava/lang/Runnable;

    move-result-object v1

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/q1;->c:Lcom/google/android/play/core/assetpacks/z0;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/b1;->b:Ljava/lang/String;

    iget v2, p1, Lcom/google/android/play/core/assetpacks/n1;->c:I

    iget-wide v3, p1, Lcom/google/android/play/core/assetpacks/n1;->d:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/play/core/assetpacks/z0;->f(Ljava/lang/String;IJ)V

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/q1;->e:Lcom/google/android/play/core/assetpacks/n0;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/b1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/assetpacks/n0;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/q1;->b:Lcom/google/android/play/core/internal/p0;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/p0;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/assetpacks/r2;

    iget v1, p1, Lcom/google/android/play/core/assetpacks/b1;->a:I

    iget-object p1, p1, Lcom/google/android/play/core/assetpacks/b1;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/google/android/play/core/assetpacks/r2;->d(ILjava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Lcom/google/android/play/core/assetpacks/bk;

    iget p1, p1, Lcom/google/android/play/core/assetpacks/b1;->a:I

    const-string v1, "Cannot move metadata files to final location."

    invoke-direct {v0, v1, p1}, Lcom/google/android/play/core/assetpacks/bk;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2
    new-instance v0, Lcom/google/android/play/core/assetpacks/bk;

    iget p1, p1, Lcom/google/android/play/core/assetpacks/b1;->a:I

    const-string v1, "Cannot move merged pack files to final location."

    invoke-direct {v0, v1, p1}, Lcom/google/android/play/core/assetpacks/bk;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_3
    new-instance v0, Lcom/google/android/play/core/assetpacks/bk;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/google/android/play/core/assetpacks/b1;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "Cannot find pack files to move for pack %s."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget p1, p1, Lcom/google/android/play/core/assetpacks/b1;->a:I

    invoke-direct {v0, v1, p1}, Lcom/google/android/play/core/assetpacks/bk;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method final synthetic b(Lcom/google/android/play/core/assetpacks/n1;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/q1;->a:Lcom/google/android/play/core/assetpacks/v;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/b1;->b:Ljava/lang/String;

    iget v2, p1, Lcom/google/android/play/core/assetpacks/n1;->c:I

    iget-wide v3, p1, Lcom/google/android/play/core/assetpacks/n1;->d:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/play/core/assetpacks/v;->E(Ljava/lang/String;IJ)V

    return-void
.end method
