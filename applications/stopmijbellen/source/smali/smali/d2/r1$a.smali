.class public Ld2/r1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/r1;->b(Ld2/a;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld2/a;

.field public final synthetic b:J

.field public final synthetic c:Ld2/r1;


# direct methods
.method public constructor <init>(Ld2/r1;Ld2/a;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/r1$a;->c:Ld2/r1;

    iput-object p2, p0, Ld2/r1$a;->a:Ld2/a;

    iput-wide p3, p0, Ld2/r1$a;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    iget-object v0, p0, Ld2/r1$a;->a:Ld2/a;

    iget-object v1, p0, Ld2/r1$a;->c:Ld2/r1;

    .line 2
    iget-boolean v2, v1, Ld2/r1;->d:Z

    if-eqz v2, :cond_0

    .line 3
    iget-object v1, v1, Ld2/r1;->c:Ld2/w1;

    goto :goto_2

    .line 4
    :cond_0
    invoke-static {}, Ld2/d3;->d()Ld2/d3;

    move-result-object v1

    iget-object v2, p0, Ld2/r1$a;->c:Ld2/r1;

    .line 5
    iget-object v2, v2, Ld2/r1;->a:Ld2/o1;

    .line 6
    iget-wide v3, p0, Ld2/r1$a;->b:J

    .line 7
    iget-boolean v5, v1, Ld2/d3;->c:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    iget-object v5, v1, Ld2/d3;->b:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, v1, Ld2/d3;->a:Ljava/util/concurrent/Executor;

    .line 8
    new-instance v7, Ld2/w1;

    .line 9
    iget v8, v2, Ld2/o1;->a:I

    .line 10
    invoke-direct {v7, v8, v6}, Ld2/w1;-><init>(ILd2/v1;)V

    const/4 v6, 0x1

    .line 11
    :try_start_0
    new-instance v8, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v8, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 12
    new-instance v9, Ld2/v1;

    invoke-direct {v9, v2, v5, v7, v8}, Ld2/v1;-><init>(Ld2/o1;Landroid/database/sqlite/SQLiteDatabase;Ld2/w1;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v1, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-wide/16 v1, 0x0

    cmp-long v5, v3, v1

    if-lez v5, :cond_1

    .line 13
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v3, v4, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {v8}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 15
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ADCDbReader.calculateFeatureVectors failed with: "

    .line 16
    invoke-static {v3}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 17
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 20
    invoke-static {v2, v2, v1, v6}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    :goto_1
    move-object v1, v7

    goto :goto_2

    :cond_2
    move-object v1, v6

    .line 21
    :goto_2
    invoke-interface {v0, v1}, Ld2/a;->accept(Ljava/lang/Object;)V

    return-void
.end method
