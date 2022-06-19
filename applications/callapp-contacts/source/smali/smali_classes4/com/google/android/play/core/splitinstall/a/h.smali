.class final synthetic Lcom/google/android/play/core/splitinstall/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/play/core/splitinstall/a/a;

.field private final b:Ljava/util/List;

.field private final c:Ljava/util/List;

.field private final d:Ljava/util/List;

.field private final e:J

.field private final synthetic f:I


# direct methods
.method constructor <init>(Lcom/google/android/play/core/splitinstall/a/a;JLjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/play/core/splitinstall/a/h;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/a/h;->a:Lcom/google/android/play/core/splitinstall/a/a;

    iput-wide p2, p0, Lcom/google/android/play/core/splitinstall/a/h;->e:J

    iput-object p4, p0, Lcom/google/android/play/core/splitinstall/a/h;->b:Ljava/util/List;

    iput-object p5, p0, Lcom/google/android/play/core/splitinstall/a/h;->c:Ljava/util/List;

    iput-object p6, p0, Lcom/google/android/play/core/splitinstall/a/h;->d:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Lcom/google/android/play/core/splitinstall/a/a;Ljava/util/List;Ljava/util/List;Ljava/util/List;J)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/play/core/splitinstall/a/h;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/a/h;->a:Lcom/google/android/play/core/splitinstall/a/a;

    iput-object p2, p0, Lcom/google/android/play/core/splitinstall/a/h;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/play/core/splitinstall/a/h;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/play/core/splitinstall/a/h;->d:Ljava/util/List;

    iput-wide p5, p0, Lcom/google/android/play/core/splitinstall/a/h;->e:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 21

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/play/core/splitinstall/a/h;->f:I

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/google/android/play/core/splitinstall/a/h;->a:Lcom/google/android/play/core/splitinstall/a/a;

    iget-wide v10, v0, Lcom/google/android/play/core/splitinstall/a/h;->e:J

    iget-object v12, v0, Lcom/google/android/play/core/splitinstall/a/h;->b:Ljava/util/List;

    iget-object v13, v0, Lcom/google/android/play/core/splitinstall/a/h;->c:Ljava/util/List;

    iget-object v14, v0, Lcom/google/android/play/core/splitinstall/a/h;->d:Ljava/util/List;

    const-wide/16 v2, 0x3

    .line 1000
    div-long v15, v10, v2

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v9, v4, :cond_2

    add-long/2addr v2, v15

    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v17

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v19, 0x0

    move-object v2, v1

    move/from16 v20, v9

    move-object/from16 v9, v19

    invoke-virtual/range {v2 .. v9}, Lcom/google/android/play/core/splitinstall/a/a;->a(IILjava/lang/Long;Ljava/lang/Long;Ljava/util/List;Ljava/lang/Integer;Ljava/util/List;)Z

    .line 2000
    sget-wide v2, Lcom/google/android/play/core/splitinstall/a/a;->a:J

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 1000
    invoke-virtual {v1}, Lcom/google/android/play/core/splitinstall/a/a;->b()Lcom/google/android/play/core/splitinstall/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/play/core/splitinstall/c;->b()I

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_1

    invoke-virtual {v2}, Lcom/google/android/play/core/splitinstall/c;->b()I

    move-result v3

    const/4 v4, 0x7

    if-eq v3, v4, :cond_1

    invoke-virtual {v2}, Lcom/google/android/play/core/splitinstall/c;->b()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v9, v20, 0x1

    move-wide/from16 v2, v17

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v9, v1, Lcom/google/android/play/core/splitinstall/a/a;->e:Ljava/util/concurrent/Executor;

    new-instance v15, Lcom/google/android/play/core/splitinstall/a/h;

    move-object v2, v15

    move-object v3, v1

    move-object v4, v12

    move-object v5, v13

    move-object v6, v14

    move-wide v7, v10

    invoke-direct/range {v2 .. v8}, Lcom/google/android/play/core/splitinstall/a/h;-><init>(Lcom/google/android/play/core/splitinstall/a/a;Ljava/util/List;Ljava/util/List;Ljava/util/List;J)V

    invoke-interface {v9, v15}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    iget-object v2, v0, Lcom/google/android/play/core/splitinstall/a/h;->a:Lcom/google/android/play/core/splitinstall/a/a;

    iget-object v3, v0, Lcom/google/android/play/core/splitinstall/a/h;->b:Ljava/util/List;

    iget-object v4, v0, Lcom/google/android/play/core/splitinstall/a/h;->c:Ljava/util/List;

    iget-object v5, v0, Lcom/google/android/play/core/splitinstall/a/h;->d:Ljava/util/List;

    iget-wide v6, v0, Lcom/google/android/play/core/splitinstall/a/h;->e:J

    .line 3000
    iget-object v1, v2, Lcom/google/android/play/core/splitinstall/a/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, -0x6

    invoke-virtual {v2, v1}, Lcom/google/android/play/core/splitinstall/a/a;->b(I)Z

    return-void

    :cond_4
    iget-object v1, v2, Lcom/google/android/play/core/splitinstall/a/a;->f:Lcom/google/android/play/core/splitinstall/t;

    invoke-interface {v1}, Lcom/google/android/play/core/splitinstall/t;->a()Lcom/google/android/play/core/splitinstall/u;

    move-result-object v1

    if-eqz v1, :cond_5

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/play/core/splitinstall/a/a;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;JZ)V

    return-void

    :cond_5
    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/google/android/play/core/splitinstall/a/a;->a(Ljava/util/List;Ljava/util/List;J)V

    return-void
.end method
