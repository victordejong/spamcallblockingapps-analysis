.class public Lp8/i$f;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp8/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public constructor <init>(Lp8/i$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17

    .line 1
    sget-object v0, Lp8/i;->q:Ljava/lang/ThreadLocal;

    .line 2
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 3
    sget-object v1, Lp8/i;->s:Ljava/lang/ThreadLocal;

    .line 4
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    move-object/from16 v2, p1

    .line 5
    iget v2, v2, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    :cond_0
    move-object/from16 v2, p0

    goto/16 :goto_a

    :cond_1
    const/4 v5, 0x1

    goto :goto_3

    .line 6
    :cond_2
    sget-object v2, Lp8/i;->r:Ljava/lang/ThreadLocal;

    .line 7
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    goto :goto_0

    :cond_3
    const/4 v5, 0x1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v5, 0x0

    .line 9
    :cond_5
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_6

    .line 10
    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 12
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_5

    .line 13
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lp8/i;

    .line 14
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-virtual {v9}, Lp8/i;->g()V

    .line 16
    sget-object v10, Lp8/i;->q:Ljava/lang/ThreadLocal;

    invoke-virtual {v10}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 17
    :cond_6
    :goto_3
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    .line 18
    sget-object v2, Lp8/i;->u:Ljava/lang/ThreadLocal;

    .line 19
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 20
    sget-object v8, Lp8/i;->t:Ljava/lang/ThreadLocal;

    .line 21
    invoke-virtual {v8}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_4
    const-wide/16 v11, 0x0

    if-ge v10, v9, :cond_a

    .line 23
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lp8/i;

    .line 24
    iget-boolean v14, v13, Lp8/i;->f:Z

    if-nez v14, :cond_7

    .line 25
    iput-boolean v4, v13, Lp8/i;->f:Z

    .line 26
    iput-wide v6, v13, Lp8/i;->g:J

    goto :goto_5

    .line 27
    :cond_7
    iget-wide v14, v13, Lp8/i;->g:J

    sub-long v14, v6, v14

    cmp-long v16, v14, v11

    if-lez v16, :cond_8

    sub-long/2addr v14, v11

    sub-long v11, v6, v14

    .line 28
    iput-wide v11, v13, Lp8/i;->b:J

    .line 29
    iput v4, v13, Lp8/i;->h:I

    const/4 v11, 0x1

    goto :goto_6

    :cond_8
    :goto_5
    const/4 v11, 0x0

    :goto_6
    if-eqz v11, :cond_9

    .line 30
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 31
    :cond_a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_c

    const/4 v10, 0x0

    :goto_7
    if-ge v10, v9, :cond_b

    .line 32
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lp8/i;

    .line 33
    invoke-virtual {v13}, Lp8/i;->g()V

    .line 34
    sget-object v14, Lp8/i;->q:Ljava/lang/ThreadLocal;

    invoke-virtual {v14}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    iput-boolean v4, v13, Lp8/i;->i:Z

    .line 36
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 37
    :cond_b
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 38
    :cond_c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v9, 0x0

    :goto_8
    if-ge v9, v2, :cond_f

    .line 39
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lp8/i;

    .line 40
    invoke-virtual {v10, v6, v7}, Lp8/i;->c(J)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 41
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ne v13, v2, :cond_e

    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_e
    add-int/lit8 v2, v2, -0x1

    .line 43
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_8

    .line 44
    :cond_f
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_11

    .line 45
    :goto_9
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_10

    .line 46
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp8/i;

    .line 47
    invoke-virtual {v2}, Lp8/i;->f()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 48
    :cond_10
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    :cond_11
    if-eqz v5, :cond_0

    .line 49
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    :cond_12
    sget-wide v0, Lp8/i;->w:J

    .line 51
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v6

    sub-long/2addr v0, v2

    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    move-object/from16 v2, p0

    invoke-virtual {v2, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_a
    return-void
.end method
