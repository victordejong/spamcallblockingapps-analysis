.class final synthetic Lcom/google/android/play/core/assetpacks/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/play/core/assetpacks/t;

.field private final b:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/t;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/s;->a:Lcom/google/android/play/core/assetpacks/t;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/s;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/google/android/play/core/assetpacks/s;->a:Lcom/google/android/play/core/assetpacks/t;

    iget-object v2, v1, Lcom/google/android/play/core/assetpacks/s;->b:Landroid/os/Bundle;

    .line 1000
    iget-object v3, v0, Lcom/google/android/play/core/assetpacks/t;->a:Lcom/google/android/play/core/assetpacks/bb;

    .line 2000
    new-instance v4, Lcom/google/android/play/core/assetpacks/ar;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v2, v5}, Lcom/google/android/play/core/assetpacks/ar;-><init>(Lcom/google/android/play/core/assetpacks/bb;Landroid/os/Bundle;[B)V

    invoke-virtual {v3, v4}, Lcom/google/android/play/core/assetpacks/bb;->a(Lcom/google/android/play/core/assetpacks/ba;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1000
    iget-object v2, v0, Lcom/google/android/play/core/assetpacks/t;->b:Lcom/google/android/play/core/assetpacks/am;

    .line 3000
    sget-object v0, Lcom/google/android/play/core/assetpacks/am;->a:Lcom/google/android/play/core/internal/h;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v6, "Run extractor loop"

    invoke-virtual {v0, v6, v4}, Lcom/google/android/play/core/internal/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/google/android/play/core/assetpacks/am;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_e

    :goto_0
    :try_start_0
    iget-object v0, v2, Lcom/google/android/play/core/assetpacks/am;->h:Lcom/google/android/play/core/assetpacks/be;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/be;->a()Lcom/google/android/play/core/assetpacks/bd;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/play/core/assetpacks/al; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v6, Lcom/google/android/play/core/assetpacks/am;->a:Lcom/google/android/play/core/internal/h;

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/al;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    const-string v8, "Error while getting next extraction task: %s"

    invoke-virtual {v6, v8, v7}, Lcom/google/android/play/core/internal/h;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget v6, v0, Lcom/google/android/play/core/assetpacks/al;->a:I

    if-ltz v6, :cond_0

    iget-object v6, v2, Lcom/google/android/play/core/assetpacks/am;->g:Lcom/google/android/play/core/internal/ba;

    invoke-interface {v6}, Lcom/google/android/play/core/internal/ba;->a()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/play/core/assetpacks/cs;

    iget v7, v0, Lcom/google/android/play/core/assetpacks/al;->a:I

    invoke-interface {v6, v7}, Lcom/google/android/play/core/assetpacks/cs;->a(I)V

    iget v6, v0, Lcom/google/android/play/core/assetpacks/al;->a:I

    invoke-virtual {v2, v6, v0}, Lcom/google/android/play/core/assetpacks/am;->a(ILjava/lang/Exception;)V

    :cond_0
    move-object v6, v5

    :goto_1
    if-eqz v6, :cond_d

    instance-of v0, v6, Lcom/google/android/play/core/assetpacks/aj;

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, v2, Lcom/google/android/play/core/assetpacks/am;->b:Lcom/google/android/play/core/assetpacks/ak;

    move-object v7, v6

    check-cast v7, Lcom/google/android/play/core/assetpacks/aj;

    invoke-virtual {v0, v7}, Lcom/google/android/play/core/assetpacks/ak;->a(Lcom/google/android/play/core/assetpacks/aj;)V

    goto :goto_0

    :cond_1
    instance-of v0, v6, Lcom/google/android/play/core/assetpacks/cb;

    if-eqz v0, :cond_5

    iget-object v0, v2, Lcom/google/android/play/core/assetpacks/am;->c:Lcom/google/android/play/core/assetpacks/cc;

    move-object v7, v6

    check-cast v7, Lcom/google/android/play/core/assetpacks/cb;

    .line 4000
    iget-object v8, v0, Lcom/google/android/play/core/assetpacks/cc;->a:Lcom/google/android/play/core/assetpacks/w;

    iget-object v9, v7, Lcom/google/android/play/core/assetpacks/cb;->k:Ljava/lang/String;

    iget v10, v7, Lcom/google/android/play/core/assetpacks/cb;->a:I

    iget-wide v11, v7, Lcom/google/android/play/core/assetpacks/cb;->b:J

    iget-object v13, v7, Lcom/google/android/play/core/assetpacks/cb;->c:Ljava/lang/String;

    invoke-virtual/range {v8 .. v13}, Lcom/google/android/play/core/assetpacks/w;->a(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v0, v7, v8}, Lcom/google/android/play/core/assetpacks/cc;->a(Lcom/google/android/play/core/assetpacks/cb;Ljava/io/File;)V

    iget-object v10, v0, Lcom/google/android/play/core/assetpacks/cc;->a:Lcom/google/android/play/core/assetpacks/w;

    iget-object v11, v7, Lcom/google/android/play/core/assetpacks/cb;->k:Ljava/lang/String;

    iget v12, v7, Lcom/google/android/play/core/assetpacks/cb;->a:I

    iget-wide v13, v7, Lcom/google/android/play/core/assetpacks/cb;->b:J

    iget-object v15, v7, Lcom/google/android/play/core/assetpacks/cb;->c:Ljava/lang/String;

    invoke-virtual/range {v10 .. v15}, Lcom/google/android/play/core/assetpacks/w;->b(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_2
    invoke-virtual {v8, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/google/android/play/core/assetpacks/al;

    new-array v8, v4, [Ljava/lang/Object;

    iget-object v9, v7, Lcom/google/android/play/core/assetpacks/cb;->c:Ljava/lang/String;

    aput-object v9, v8, v3

    const-string v9, "Failed to move slice %s after verification."

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iget v7, v7, Lcom/google/android/play/core/assetpacks/cb;->j:I

    invoke-direct {v0, v8, v7}, Lcom/google/android/play/core/assetpacks/al;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_4
    new-instance v0, Lcom/google/android/play/core/assetpacks/al;

    new-array v8, v4, [Ljava/lang/Object;

    iget-object v9, v7, Lcom/google/android/play/core/assetpacks/cb;->c:Ljava/lang/String;

    aput-object v9, v8, v3

    const-string v9, "Cannot find unverified files for slice %s."

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iget v7, v7, Lcom/google/android/play/core/assetpacks/cb;->j:I

    invoke-direct {v0, v8, v7}, Lcom/google/android/play/core/assetpacks/al;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 3000
    :cond_5
    instance-of v0, v6, Lcom/google/android/play/core/assetpacks/bm;

    if-eqz v0, :cond_6

    iget-object v0, v2, Lcom/google/android/play/core/assetpacks/am;->d:Lcom/google/android/play/core/assetpacks/bn;

    move-object v7, v6

    check-cast v7, Lcom/google/android/play/core/assetpacks/bm;

    invoke-virtual {v0, v7}, Lcom/google/android/play/core/assetpacks/bn;->a(Lcom/google/android/play/core/assetpacks/bm;)V

    goto/16 :goto_0

    :cond_6
    instance-of v0, v6, Lcom/google/android/play/core/assetpacks/bp;

    if-eqz v0, :cond_b

    iget-object v0, v2, Lcom/google/android/play/core/assetpacks/am;->e:Lcom/google/android/play/core/assetpacks/bs;

    move-object v7, v6

    check-cast v7, Lcom/google/android/play/core/assetpacks/bp;

    .line 5000
    iget-object v8, v0, Lcom/google/android/play/core/assetpacks/bs;->a:Lcom/google/android/play/core/assetpacks/w;

    iget-object v9, v7, Lcom/google/android/play/core/assetpacks/bp;->k:Ljava/lang/String;

    iget v10, v7, Lcom/google/android/play/core/assetpacks/bp;->a:I

    iget-wide v11, v7, Lcom/google/android/play/core/assetpacks/bp;->b:J

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/google/android/play/core/assetpacks/w;->c(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v8

    iget-object v9, v0, Lcom/google/android/play/core/assetpacks/bs;->a:Lcom/google/android/play/core/assetpacks/w;

    iget-object v10, v7, Lcom/google/android/play/core/assetpacks/bp;->k:Ljava/lang/String;

    iget v11, v7, Lcom/google/android/play/core/assetpacks/bp;->a:I

    iget-wide v12, v7, Lcom/google/android/play/core/assetpacks/bp;->b:J

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/google/android/play/core/assetpacks/w;->e(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_a

    iget-object v10, v0, Lcom/google/android/play/core/assetpacks/bs;->a:Lcom/google/android/play/core/assetpacks/w;

    iget-object v11, v7, Lcom/google/android/play/core/assetpacks/bp;->k:Ljava/lang/String;

    iget v12, v7, Lcom/google/android/play/core/assetpacks/bp;->a:I

    iget-wide v13, v7, Lcom/google/android/play/core/assetpacks/bp;->b:J

    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/google/android/play/core/assetpacks/w;->a(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v8, v10}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, v0, Lcom/google/android/play/core/assetpacks/bs;->a:Lcom/google/android/play/core/assetpacks/w;

    iget-object v10, v7, Lcom/google/android/play/core/assetpacks/bp;->k:Ljava/lang/String;

    iget v11, v7, Lcom/google/android/play/core/assetpacks/bp;->a:I

    iget-wide v12, v7, Lcom/google/android/play/core/assetpacks/bp;->b:J

    new-instance v14, Ljava/io/File;

    invoke-virtual {v8, v10, v11, v12, v13}, Lcom/google/android/play/core/assetpacks/w;->a(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v8

    const-string v10, "merge.tmp"

    invoke-direct {v14, v8, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    iget-object v8, v0, Lcom/google/android/play/core/assetpacks/bs;->a:Lcom/google/android/play/core/assetpacks/w;

    iget-object v10, v7, Lcom/google/android/play/core/assetpacks/bp;->k:Ljava/lang/String;

    iget v11, v7, Lcom/google/android/play/core/assetpacks/bp;->a:I

    iget-wide v12, v7, Lcom/google/android/play/core/assetpacks/bp;->b:J

    invoke-virtual {v8, v10, v11, v12, v13}, Lcom/google/android/play/core/assetpacks/w;->b(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v9, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, v0, Lcom/google/android/play/core/assetpacks/bs;->f:Lcom/google/android/play/core/common/c;

    invoke-virtual {v8}, Lcom/google/android/play/core/common/c;->a()Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, v0, Lcom/google/android/play/core/assetpacks/bs;->d:Lcom/google/android/play/core/internal/ba;

    invoke-interface {v8}, Lcom/google/android/play/core/internal/ba;->a()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/concurrent/Executor;

    new-instance v9, Lcom/google/android/play/core/assetpacks/bq;

    invoke-direct {v9, v0, v7}, Lcom/google/android/play/core/assetpacks/bq;-><init>(Lcom/google/android/play/core/assetpacks/bs;Lcom/google/android/play/core/assetpacks/bp;)V

    invoke-interface {v8, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_7
    iget-object v8, v0, Lcom/google/android/play/core/assetpacks/bs;->d:Lcom/google/android/play/core/internal/ba;

    invoke-interface {v8}, Lcom/google/android/play/core/internal/ba;->a()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/concurrent/Executor;

    iget-object v9, v0, Lcom/google/android/play/core/assetpacks/bs;->a:Lcom/google/android/play/core/assetpacks/w;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7000
    new-instance v10, Lcom/google/android/play/core/assetpacks/br;

    invoke-direct {v10, v9}, Lcom/google/android/play/core/assetpacks/br;-><init>(Lcom/google/android/play/core/assetpacks/w;)V

    .line 5000
    invoke-interface {v8, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_2
    iget-object v8, v0, Lcom/google/android/play/core/assetpacks/bs;->c:Lcom/google/android/play/core/assetpacks/bb;

    iget-object v13, v7, Lcom/google/android/play/core/assetpacks/bp;->k:Ljava/lang/String;

    iget v14, v7, Lcom/google/android/play/core/assetpacks/bp;->a:I

    iget-wide v9, v7, Lcom/google/android/play/core/assetpacks/bp;->b:J

    .line 6000
    new-instance v15, Lcom/google/android/play/core/assetpacks/as;

    move-object v11, v15

    move-object v12, v8

    move-object v5, v15

    move-wide v15, v9

    invoke-direct/range {v11 .. v16}, Lcom/google/android/play/core/assetpacks/as;-><init>(Lcom/google/android/play/core/assetpacks/bb;Ljava/lang/String;IJ)V

    invoke-virtual {v8, v5}, Lcom/google/android/play/core/assetpacks/bb;->a(Lcom/google/android/play/core/assetpacks/ba;)Ljava/lang/Object;

    .line 5000
    iget-object v5, v0, Lcom/google/android/play/core/assetpacks/bs;->e:Lcom/google/android/play/core/assetpacks/ap;

    iget-object v8, v7, Lcom/google/android/play/core/assetpacks/bp;->k:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lcom/google/android/play/core/assetpacks/ap;->a(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/google/android/play/core/assetpacks/bs;->b:Lcom/google/android/play/core/internal/ba;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/ba;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/assetpacks/cs;

    iget v5, v7, Lcom/google/android/play/core/assetpacks/bp;->j:I

    iget-object v7, v7, Lcom/google/android/play/core/assetpacks/bp;->k:Ljava/lang/String;

    invoke-interface {v0, v5, v7}, Lcom/google/android/play/core/assetpacks/cs;->a(ILjava/lang/String;)V

    goto :goto_3

    :cond_8
    new-instance v0, Lcom/google/android/play/core/assetpacks/al;

    const-string v5, "Cannot move metadata files to final location."

    iget v7, v7, Lcom/google/android/play/core/assetpacks/bp;->j:I

    invoke-direct {v0, v5, v7}, Lcom/google/android/play/core/assetpacks/al;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_9
    new-instance v0, Lcom/google/android/play/core/assetpacks/al;

    const-string v5, "Cannot move merged pack files to final location."

    iget v7, v7, Lcom/google/android/play/core/assetpacks/bp;->j:I

    invoke-direct {v0, v5, v7}, Lcom/google/android/play/core/assetpacks/al;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_a
    new-instance v0, Lcom/google/android/play/core/assetpacks/al;

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v8, v7, Lcom/google/android/play/core/assetpacks/bp;->k:Ljava/lang/String;

    aput-object v8, v5, v3

    const-string v8, "Cannot find pack files to move for pack %s."

    invoke-static {v8, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget v7, v7, Lcom/google/android/play/core/assetpacks/bp;->j:I

    invoke-direct {v0, v5, v7}, Lcom/google/android/play/core/assetpacks/al;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 3000
    :cond_b
    instance-of v0, v6, Lcom/google/android/play/core/assetpacks/bv;

    if-eqz v0, :cond_c

    iget-object v0, v2, Lcom/google/android/play/core/assetpacks/am;->f:Lcom/google/android/play/core/assetpacks/bw;

    move-object v5, v6

    check-cast v5, Lcom/google/android/play/core/assetpacks/bv;

    invoke-virtual {v0, v5}, Lcom/google/android/play/core/assetpacks/bw;->a(Lcom/google/android/play/core/assetpacks/bv;)V

    goto :goto_3

    :cond_c
    sget-object v0, Lcom/google/android/play/core/assetpacks/am;->a:Lcom/google/android/play/core/internal/h;

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v3

    const-string v7, "Unknown task type: %s"

    invoke-virtual {v0, v7, v5}, Lcom/google/android/play/core/internal/h;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    sget-object v5, Lcom/google/android/play/core/assetpacks/am;->a:Lcom/google/android/play/core/internal/h;

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    const-string v8, "Error during extraction task: %s"

    invoke-virtual {v5, v8, v7}, Lcom/google/android/play/core/internal/h;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, v2, Lcom/google/android/play/core/assetpacks/am;->g:Lcom/google/android/play/core/internal/ba;

    invoke-interface {v5}, Lcom/google/android/play/core/internal/ba;->a()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/play/core/assetpacks/cs;

    iget v7, v6, Lcom/google/android/play/core/assetpacks/bd;->j:I

    invoke-interface {v5, v7}, Lcom/google/android/play/core/assetpacks/cs;->a(I)V

    iget v5, v6, Lcom/google/android/play/core/assetpacks/bd;->j:I

    invoke-virtual {v2, v5, v0}, Lcom/google/android/play/core/assetpacks/am;->a(ILjava/lang/Exception;)V

    :goto_3
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_d
    iget-object v0, v2, Lcom/google/android/play/core/assetpacks/am;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_e
    sget-object v0, Lcom/google/android/play/core/assetpacks/am;->a:Lcom/google/android/play/core/internal/h;

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "runLoop already looping; return"

    invoke-virtual {v0, v3, v2}, Lcom/google/android/play/core/internal/h;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_f
    return-void
.end method
