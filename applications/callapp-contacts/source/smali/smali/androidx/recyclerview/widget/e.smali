.class final Landroidx/recyclerview/widget/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/e$a;,
        Landroidx/recyclerview/widget/e$b;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroidx/recyclerview/widget/e;",
            ">;"
        }
    .end annotation
.end field

.field static e:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/recyclerview/widget/e$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field c:J

.field d:J

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/e$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/e;->a:Ljava/lang/ThreadLocal;

    .line 190
    new-instance v0, Landroidx/recyclerview/widget/e$1;

    invoke-direct {v0}, Landroidx/recyclerview/widget/e$1;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/e;->e:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/e;->b:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/e;->f:Ljava/util/ArrayList;

    return-void
.end method

.method private static a(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/RecyclerView$v;
    .locals 5

    .line 13265
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->h:Landroidx/recyclerview/widget/b;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->b()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 13267
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->h:Landroidx/recyclerview/widget/b;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/b;->c(I)Landroid/view/View;

    move-result-object v3

    .line 13268
    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->c(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$v;

    move-result-object v3

    .line 13270
    iget v4, v3, Landroidx/recyclerview/widget/RecyclerView$v;->b:I

    if-ne v4, p1, :cond_0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$v;->isInvalid()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 284
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/RecyclerView$o;

    .line 287
    :try_start_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->f()V

    .line 288
    invoke-virtual {v0, p1, v1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$o;->a(IZJ)Landroidx/recyclerview/widget/RecyclerView$v;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 292
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$v;->isBound()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$v;->isInvalid()Z

    move-result p2

    if-nez p2, :cond_3

    .line 295
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$v;->itemView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView$o;->a(Landroid/view/View;)V

    goto :goto_2

    .line 301
    :cond_3
    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$o;->a(Landroidx/recyclerview/widget/RecyclerView$v;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    :cond_4
    :goto_2
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->b(Z)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->b(Z)V

    .line 306
    throw p1
.end method


# virtual methods
.method final a(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 5

    .line 177
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-wide v0, p0, Landroidx/recyclerview/widget/e;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 182
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/recyclerview/widget/e;->c:J

    .line 183
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 187
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->H:Landroidx/recyclerview/widget/e$a;

    .line 13074
    iput p2, p1, Landroidx/recyclerview/widget/e$a;->a:I

    .line 13075
    iput p3, p1, Landroidx/recyclerview/widget/e$a;->b:I

    return-void
.end method

.method public final run()V
    .locals 17

    move-object/from16 v1, p0

    const-wide/16 v2, 0x0

    :try_start_0
    const-string v0, "RV Prefetch"

    .line 374
    invoke-static {v0}, Landroidx/core/os/g;->a(Ljava/lang/String;)V

    .line 376
    iget-object v0, v1, Landroidx/recyclerview/widget/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_0

    .line 403
    :goto_0
    iput-wide v2, v1, Landroidx/recyclerview/widget/e;->c:J

    .line 404
    invoke-static {}, Landroidx/core/os/g;->a()V

    return-void

    .line 383
    :cond_0
    :try_start_1
    iget-object v0, v1, Landroidx/recyclerview/widget/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x0

    move-wide v6, v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v0, :cond_2

    .line 386
    iget-object v8, v1, Landroidx/recyclerview/widget/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/recyclerview/widget/RecyclerView;

    .line 387
    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->getWindowVisibility()I

    move-result v9

    if-nez v9, :cond_1

    .line 388
    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->getDrawingTime()J

    move-result-wide v8

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    cmp-long v0, v6, v2

    if-nez v0, :cond_3

    goto :goto_0

    .line 397
    :cond_3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v5

    iget-wide v7, v1, Landroidx/recyclerview/widget/e;->d:J

    add-long/2addr v5, v7

    .line 14217
    iget-object v0, v1, Landroidx/recyclerview/widget/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_2
    if-ge v7, v0, :cond_5

    .line 14220
    iget-object v9, v1, Landroidx/recyclerview/widget/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/recyclerview/widget/RecyclerView;

    .line 14221
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView;->getWindowVisibility()I

    move-result v10

    if-nez v10, :cond_4

    .line 14222
    iget-object v10, v9, Landroidx/recyclerview/widget/RecyclerView;->H:Landroidx/recyclerview/widget/e$a;

    invoke-virtual {v10, v9, v4}, Landroidx/recyclerview/widget/e$a;->a(Landroidx/recyclerview/widget/RecyclerView;Z)V

    .line 14223
    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->H:Landroidx/recyclerview/widget/e$a;

    iget v9, v9, Landroidx/recyclerview/widget/e$a;->d:I

    add-int/2addr v8, v9

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 14228
    :cond_5
    iget-object v7, v1, Landroidx/recyclerview/widget/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->ensureCapacity(I)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_3
    const/4 v9, 0x1

    if-ge v7, v0, :cond_9

    .line 14231
    iget-object v10, v1, Landroidx/recyclerview/widget/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/recyclerview/widget/RecyclerView;

    .line 14232
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView;->getWindowVisibility()I

    move-result v11

    if-nez v11, :cond_8

    .line 14237
    iget-object v11, v10, Landroidx/recyclerview/widget/RecyclerView;->H:Landroidx/recyclerview/widget/e$a;

    .line 14238
    iget v12, v11, Landroidx/recyclerview/widget/e$a;->a:I

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    iget v13, v11, Landroidx/recyclerview/widget/e$a;->b:I

    .line 14239
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    add-int/2addr v12, v13

    const/4 v13, 0x0

    .line 14240
    :goto_4
    iget v14, v11, Landroidx/recyclerview/widget/e$a;->d:I

    mul-int/lit8 v14, v14, 0x2

    if-ge v13, v14, :cond_8

    .line 14242
    iget-object v14, v1, Landroidx/recyclerview/widget/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lt v8, v14, :cond_6

    .line 14243
    new-instance v14, Landroidx/recyclerview/widget/e$b;

    invoke-direct {v14}, Landroidx/recyclerview/widget/e$b;-><init>()V

    .line 14244
    iget-object v15, v1, Landroidx/recyclerview/widget/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 14246
    :cond_6
    iget-object v14, v1, Landroidx/recyclerview/widget/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/recyclerview/widget/e$b;

    .line 14248
    :goto_5
    iget-object v15, v11, Landroidx/recyclerview/widget/e$a;->c:[I

    add-int/lit8 v16, v13, 0x1

    aget v15, v15, v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-gt v15, v12, :cond_7

    const/4 v2, 0x1

    goto :goto_6

    :cond_7
    const/4 v2, 0x0

    .line 14250
    :goto_6
    :try_start_2
    iput-boolean v2, v14, Landroidx/recyclerview/widget/e$b;->a:Z

    .line 14251
    iput v12, v14, Landroidx/recyclerview/widget/e$b;->b:I

    .line 14252
    iput v15, v14, Landroidx/recyclerview/widget/e$b;->c:I

    .line 14253
    iput-object v10, v14, Landroidx/recyclerview/widget/e$b;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 14254
    iget-object v2, v11, Landroidx/recyclerview/widget/e$a;->c:[I

    aget v2, v2, v13

    iput v2, v14, Landroidx/recyclerview/widget/e$b;->e:I

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v13, v13, 0x2

    const-wide/16 v2, 0x0

    goto :goto_4

    :cond_8
    add-int/lit8 v7, v7, 0x1

    const-wide/16 v2, 0x0

    goto :goto_3

    .line 14261
    :cond_9
    iget-object v0, v1, Landroidx/recyclerview/widget/e;->f:Ljava/util/ArrayList;

    sget-object v2, Landroidx/recyclerview/widget/e;->e:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    .line 14356
    :goto_7
    iget-object v2, v1, Landroidx/recyclerview/widget/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_e

    .line 14357
    iget-object v2, v1, Landroidx/recyclerview/widget/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/e$b;

    .line 14358
    iget-object v3, v2, Landroidx/recyclerview/widget/e$b;->d:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v3, :cond_e

    .line 15344
    iget-boolean v3, v2, Landroidx/recyclerview/widget/e$b;->a:Z

    if-eqz v3, :cond_a

    const-wide v7, 0x7fffffffffffffffL

    goto :goto_8

    :cond_a
    move-wide v7, v5

    .line 15345
    :goto_8
    iget-object v3, v2, Landroidx/recyclerview/widget/e$b;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget v10, v2, Landroidx/recyclerview/widget/e$b;->e:I

    invoke-static {v3, v10, v7, v8}, Landroidx/recyclerview/widget/e;->a(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/RecyclerView$v;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 15347
    iget-object v7, v3, Landroidx/recyclerview/widget/RecyclerView$v;->c_:Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_d

    .line 15349
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$v;->isBound()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 15350
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$v;->isInvalid()Z

    move-result v7

    if-nez v7, :cond_d

    .line 15351
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$v;->c_:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v3, :cond_d

    .line 16316
    iget-boolean v7, v3, Landroidx/recyclerview/widget/RecyclerView;->C:Z

    if-eqz v7, :cond_b

    iget-object v7, v3, Landroidx/recyclerview/widget/RecyclerView;->h:Landroidx/recyclerview/widget/b;

    .line 16317
    invoke-virtual {v7}, Landroidx/recyclerview/widget/b;->b()I

    move-result v7

    if-eqz v7, :cond_b

    .line 16320
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->b()V

    .line 16324
    :cond_b
    iget-object v7, v3, Landroidx/recyclerview/widget/RecyclerView;->H:Landroidx/recyclerview/widget/e$a;

    .line 16325
    invoke-virtual {v7, v3, v9}, Landroidx/recyclerview/widget/e$a;->a(Landroidx/recyclerview/widget/RecyclerView;Z)V

    .line 16327
    iget v8, v7, Landroidx/recyclerview/widget/e$a;->d:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v8, :cond_d

    :try_start_3
    const-string v8, "RV Nested Prefetch"

    .line 16329
    invoke-static {v8}, Landroidx/core/os/g;->a(Ljava/lang/String;)V

    .line 16330
    iget-object v8, v3, Landroidx/recyclerview/widget/RecyclerView;->I:Landroidx/recyclerview/widget/RecyclerView$s;

    iget-object v10, v3, Landroidx/recyclerview/widget/RecyclerView;->n:Landroidx/recyclerview/widget/RecyclerView$a;

    .line 16867
    iput v9, v8, Landroidx/recyclerview/widget/RecyclerView$s;->d:I

    .line 16868
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$a;->getItemCount()I

    move-result v10

    iput v10, v8, Landroidx/recyclerview/widget/RecyclerView$s;->e:I

    .line 16869
    iput-boolean v4, v8, Landroidx/recyclerview/widget/RecyclerView$s;->g:Z

    .line 16870
    iput-boolean v4, v8, Landroidx/recyclerview/widget/RecyclerView$s;->h:Z

    .line 16871
    iput-boolean v4, v8, Landroidx/recyclerview/widget/RecyclerView$s;->i:Z

    const/4 v8, 0x0

    .line 16331
    :goto_9
    iget v10, v7, Landroidx/recyclerview/widget/e$a;->d:I

    mul-int/lit8 v10, v10, 0x2

    if-ge v8, v10, :cond_c

    .line 16334
    iget-object v10, v7, Landroidx/recyclerview/widget/e$a;->c:[I

    aget v10, v10, v8

    .line 16335
    invoke-static {v3, v10, v5, v6}, Landroidx/recyclerview/widget/e;->a(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/RecyclerView$v;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v8, v8, 0x2

    goto :goto_9

    .line 16338
    :cond_c
    :try_start_4
    invoke-static {}, Landroidx/core/os/g;->a()V

    goto :goto_a

    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/core/os/g;->a()V

    .line 16339
    throw v0

    .line 17046
    :cond_d
    :goto_a
    iput-boolean v4, v2, Landroidx/recyclerview/widget/e$b;->a:Z

    .line 17047
    iput v4, v2, Landroidx/recyclerview/widget/e$b;->b:I

    .line 17048
    iput v4, v2, Landroidx/recyclerview/widget/e$b;->c:I

    const/4 v3, 0x0

    .line 17049
    iput-object v3, v2, Landroidx/recyclerview/widget/e$b;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 17050
    iput v4, v2, Landroidx/recyclerview/widget/e$b;->e:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_7

    :cond_e
    const-wide/16 v2, 0x0

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    const-wide/16 v2, 0x0

    goto :goto_b

    :catchall_2
    move-exception v0

    .line 403
    :goto_b
    iput-wide v2, v1, Landroidx/recyclerview/widget/e;->c:J

    .line 404
    invoke-static {}, Landroidx/core/os/g;->a()V

    .line 405
    throw v0
.end method
