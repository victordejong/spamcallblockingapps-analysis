.class public final Lj4/x1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lj4/w;

.field public final b:Lo4/p;

.field public final c:Lj4/b1;

.field public final d:Lo4/p;

.field public final e:Lj4/r0;


# direct methods
.method public constructor <init>(Lj4/w;Lo4/p;Lj4/b1;Lo4/p;Lj4/r0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj4/x1;->a:Lj4/w;

    iput-object p2, p0, Lj4/x1;->b:Lo4/p;

    iput-object p3, p0, Lj4/x1;->c:Lj4/b1;

    iput-object p4, p0, Lj4/x1;->d:Lo4/p;

    iput-object p5, p0, Lj4/x1;->e:Lj4/r0;

    return-void
.end method


# virtual methods
.method public final a(Lj4/w1;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lj4/x1;->a:Lj4/w;

    iget-object v1, p1, Lj4/c1;->b:Ljava/lang/String;

    iget v2, p1, Lj4/w1;->c:I

    iget-wide v3, p1, Lj4/w1;->e:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lj4/w;->n(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Lj4/x1;->a:Lj4/w;

    iget-object v5, p1, Lj4/c1;->b:Ljava/lang/String;

    iget v6, p1, Lj4/w1;->d:I

    iget-wide v7, p1, Lj4/w1;->e:J

    .line 4
    invoke-virtual {v1, v5, v6, v7, v8}, Lj4/w;->n(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 6
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7
    iget-object v0, p0, Lj4/x1;->d:Lo4/p;

    .line 8
    invoke-interface {v0}, Lo4/p;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    new-instance v1, Li2/w;

    const/4 v2, 0x4

    invoke-direct {v1, p0, p1, v2}, Li2/w;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 9
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lj4/x1;->c:Lj4/b1;

    iget-object v5, p1, Lj4/c1;->b:Ljava/lang/String;

    iget v6, p1, Lj4/w1;->d:I

    iget-wide v7, p1, Lj4/w1;->e:J

    .line 10
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v1, Lj4/u0;

    move-object v3, v1

    move-object v4, v0

    invoke-direct/range {v3 .. v8}, Lj4/u0;-><init>(Lj4/b1;Ljava/lang/String;IJ)V

    invoke-virtual {v0, v1}, Lj4/b1;->b(Lj4/a1;)Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Lj4/x1;->e:Lj4/r0;

    iget-object v1, p1, Lj4/c1;->b:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v1}, Lj4/r0;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lj4/x1;->b:Lo4/p;

    .line 14
    invoke-interface {v0}, Lo4/p;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj4/l2;

    iget v1, p1, Lj4/c1;->a:I

    iget-object p1, p1, Lj4/c1;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lj4/l2;->b(ILjava/lang/String;)V

    return-void

    .line 15
    :cond_0
    new-instance v5, Lj4/n0;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p1, Lj4/c1;->b:Ljava/lang/String;

    aput-object v7, v6, v3

    .line 16
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v4

    const-string v0, "Cannot promote pack %s from %s to %s"

    .line 17
    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Lj4/c1;->a:I

    invoke-direct {v5, v0, p1}, Lj4/n0;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 18
    :cond_1
    new-instance v1, Lj4/n0;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p1, Lj4/c1;->b:Ljava/lang/String;

    aput-object v5, v4, v3

    .line 19
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    const-string v0, "Cannot find pack files to promote for pack %s at %s"

    .line 20
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Lj4/c1;->a:I

    invoke-direct {v1, v0, p1}, Lj4/n0;-><init>(Ljava/lang/String;I)V

    throw v1
.end method
