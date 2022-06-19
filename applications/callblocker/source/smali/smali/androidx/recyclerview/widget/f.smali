.class final Landroidx/recyclerview/widget/f;
.super Ljava/lang/Object;
.source "GapWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/f$a;,
        Landroidx/recyclerview/widget/f$b;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroidx/recyclerview/widget/f;",
            ">;"
        }
    .end annotation
.end field

.field static e:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroidx/recyclerview/widget/f$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
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
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/recyclerview/widget/f$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/f;->a:Ljava/lang/ThreadLocal;

    .line 190
    new-instance v0, Landroidx/recyclerview/widget/f$1;

    invoke-direct {v0}, Landroidx/recyclerview/widget/f$1;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/f;->e:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/f;->b:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/f;->f:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/RecyclerView$x;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 279
    invoke-static {p1, p2}, Landroidx/recyclerview/widget/f;->a(Landroidx/recyclerview/widget/RecyclerView;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    const/4 v0, 0x0

    .line 307
    :goto_0
    return-object v0

    .line 284
    :cond_0
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$p;

    .line 287
    :try_start_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 288
    const/4 v0, 0x0

    invoke-virtual {v1, p2, v0, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$p;->a(IZJ)Landroidx/recyclerview/widget/RecyclerView$x;

    move-result-object v0

    .line 291
    if-eqz v0, :cond_1

    .line 292
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->p()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->n()Z

    move-result v2

    if-nez v2, :cond_2

    .line 295
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$x;->a:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$p;->a(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    :cond_1
    :goto_1
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll(Z)V

    goto :goto_0

    .line 301
    :cond_2
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v1, v0, v2}, Landroidx/recyclerview/widget/RecyclerView$p;->a(Landroidx/recyclerview/widget/RecyclerView$x;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 305
    :catchall_0
    move-exception v0

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll(Z)V

    .line 306
    throw v0
.end method

.method private a()V
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 217
    iget-object v0, p0, Landroidx/recyclerview/widget/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v2, v3

    move v1, v3

    .line 219
    :goto_0
    if-ge v2, v7, :cond_0

    .line 220
    iget-object v0, p0, Landroidx/recyclerview/widget/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 221
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getWindowVisibility()I

    move-result v4

    if-nez v4, :cond_6

    .line 222
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/f$a;

    invoke-virtual {v4, v0, v3}, Landroidx/recyclerview/widget/f$a;->a(Landroidx/recyclerview/widget/RecyclerView;Z)V

    .line 223
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/f$a;

    iget v0, v0, Landroidx/recyclerview/widget/f$a;->d:I

    add-int/2addr v0, v1

    .line 219
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_0

    .line 228
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    move v6, v3

    move v1, v3

    .line 230
    :goto_2
    if-ge v6, v7, :cond_4

    .line 231
    iget-object v0, p0, Landroidx/recyclerview/widget/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 232
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getWindowVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 230
    :goto_3
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_2

    .line 237
    :cond_1
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/f$a;

    .line 238
    iget v2, v8, Landroidx/recyclerview/widget/f$a;->a:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v4, v8, Landroidx/recyclerview/widget/f$a;->b:I

    .line 239
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int v9, v2, v4

    move v2, v3

    move v4, v1

    .line 240
    :goto_4
    iget v1, v8, Landroidx/recyclerview/widget/f$a;->d:I

    mul-int/lit8 v1, v1, 0x2

    if-ge v2, v1, :cond_5

    .line 242
    iget-object v1, p0, Landroidx/recyclerview/widget/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v4, v1, :cond_2

    .line 243
    new-instance v1, Landroidx/recyclerview/widget/f$b;

    invoke-direct {v1}, Landroidx/recyclerview/widget/f$b;-><init>()V

    .line 244
    iget-object v5, p0, Landroidx/recyclerview/widget/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    :goto_5
    iget-object v5, v8, Landroidx/recyclerview/widget/f$a;->c:[I

    add-int/lit8 v10, v2, 0x1

    aget v10, v5, v10

    .line 250
    if-gt v10, v9, :cond_3

    const/4 v5, 0x1

    :goto_6
    iput-boolean v5, v1, Landroidx/recyclerview/widget/f$b;->a:Z

    .line 251
    iput v9, v1, Landroidx/recyclerview/widget/f$b;->b:I

    .line 252
    iput v10, v1, Landroidx/recyclerview/widget/f$b;->c:I

    .line 253
    iput-object v0, v1, Landroidx/recyclerview/widget/f$b;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 254
    iget-object v5, v8, Landroidx/recyclerview/widget/f$a;->c:[I

    aget v5, v5, v2

    iput v5, v1, Landroidx/recyclerview/widget/f$b;->e:I

    .line 256
    add-int/lit8 v4, v4, 0x1

    .line 240
    add-int/lit8 v1, v2, 0x2

    move v2, v1

    goto :goto_4

    .line 246
    :cond_2
    iget-object v1, p0, Landroidx/recyclerview/widget/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/f$b;

    goto :goto_5

    :cond_3
    move v5, v3

    .line 250
    goto :goto_6

    .line 261
    :cond_4
    iget-object v0, p0, Landroidx/recyclerview/widget/f;->f:Ljava/util/ArrayList;

    sget-object v1, Landroidx/recyclerview/widget/f;->e:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 262
    return-void

    :cond_5
    move v1, v4

    goto :goto_3

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView;J)V
    .locals 4

    .prologue
    .line 312
    if-nez p1, :cond_1

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    iget-boolean v0, p1, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 317
    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->c()I

    move-result v0

    if-eqz v0, :cond_2

    .line 320
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->removeAndRecycleViews()V

    .line 324
    :cond_2
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/f$a;

    .line 325
    const/4 v0, 0x1

    invoke-virtual {v1, p1, v0}, Landroidx/recyclerview/widget/f$a;->a(Landroidx/recyclerview/widget/RecyclerView;Z)V

    .line 327
    iget v0, v1, Landroidx/recyclerview/widget/f$a;->d:I

    if-eqz v0, :cond_0

    .line 329
    :try_start_0
    const-string/jumbo v0, "RV Nested Prefetch"

    invoke-static {v0}, Landroidx/core/os/a;->a(Ljava/lang/String;)V

    .line 330
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$u;

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$u;->a(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 331
    const/4 v0, 0x0

    :goto_1
    iget v2, v1, Landroidx/recyclerview/widget/f$a;->d:I

    mul-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_3

    .line 334
    iget-object v2, v1, Landroidx/recyclerview/widget/f$a;->c:[I

    aget v2, v2, v0

    .line 335
    invoke-direct {p0, p1, v2, p2, p3}, Landroidx/recyclerview/widget/f;->a(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/RecyclerView$x;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 338
    :cond_3
    invoke-static {}, Landroidx/core/os/a;->a()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/core/os/a;->a()V

    .line 339
    throw v0
.end method

.method private a(Landroidx/recyclerview/widget/f$b;J)V
    .locals 4

    .prologue
    .line 344
    iget-boolean v0, p1, Landroidx/recyclerview/widget/f$b;->a:Z

    if-eqz v0, :cond_1

    const-wide v0, 0x7fffffffffffffffL

    .line 345
    :goto_0
    iget-object v2, p1, Landroidx/recyclerview/widget/f$b;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget v3, p1, Landroidx/recyclerview/widget/f$b;->e:I

    invoke-direct {p0, v2, v3, v0, v1}, Landroidx/recyclerview/widget/f;->a(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/RecyclerView$x;

    move-result-object v0

    .line 347
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$x;->b:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 349
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 350
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->n()Z

    move-result v1

    if-nez v1, :cond_0

    .line 351
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$x;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, v0, p2, p3}, Landroidx/recyclerview/widget/f;->a(Landroidx/recyclerview/widget/RecyclerView;J)V

    .line 353
    :cond_0
    return-void

    :cond_1
    move-wide v0, p2

    .line 344
    goto :goto_0
.end method

.method static a(Landroidx/recyclerview/widget/RecyclerView;I)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 265
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/b;->c()I

    move-result v2

    move v1, v0

    .line 266
    :goto_0
    if-ge v1, v2, :cond_0

    .line 267
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/b;->d(I)Landroid/view/View;

    move-result-object v3

    .line 268
    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$x;

    move-result-object v3

    .line 270
    iget v4, v3, Landroidx/recyclerview/widget/RecyclerView$x;->c:I

    if-ne v4, p1, :cond_1

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$x;->n()Z

    move-result v3

    if-nez v3, :cond_1

    .line 271
    const/4 v0, 0x1

    .line 274
    :cond_0
    return v0

    .line 266
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private b(J)V
    .locals 3

    .prologue
    .line 356
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroidx/recyclerview/widget/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 357
    iget-object v0, p0, Landroidx/recyclerview/widget/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/f$b;

    .line 358
    iget-object v2, v0, Landroidx/recyclerview/widget/f$b;->d:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v2, :cond_1

    .line 364
    :cond_0
    return-void

    .line 361
    :cond_1
    invoke-direct {p0, v0, p1, p2}, Landroidx/recyclerview/widget/f;->a(Landroidx/recyclerview/widget/f$b;J)V

    .line 362
    invoke-virtual {v0}, Landroidx/recyclerview/widget/f$b;->a()V

    .line 356
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method a(J)V
    .locals 1

    .prologue
    .line 367
    invoke-direct {p0}, Landroidx/recyclerview/widget/f;->a()V

    .line 368
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/f;->b(J)V

    .line 369
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Landroidx/recyclerview/widget/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    return-void
.end method

.method a(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 4

    .prologue
    .line 177
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-wide v0, p0, Landroidx/recyclerview/widget/f;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 182
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/recyclerview/widget/f;->c:J

    .line 183
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 187
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/f$a;

    invoke-virtual {v0, p2, p3}, Landroidx/recyclerview/widget/f$a;->a(II)V

    .line 188
    return-void
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Landroidx/recyclerview/widget/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 171
    return-void
.end method

.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 374
    :try_start_0
    const-string/jumbo v0, "RV Prefetch"

    invoke-static {v0}, Landroidx/core/os/a;->a(Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Landroidx/recyclerview/widget/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    iput-wide v6, p0, Landroidx/recyclerview/widget/f;->c:J

    .line 404
    invoke-static {}, Landroidx/core/os/a;->a()V

    .line 406
    :goto_0
    return-void

    .line 383
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroidx/recyclerview/widget/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 385
    const/4 v0, 0x0

    move v4, v0

    move-wide v2, v6

    :goto_1
    if-ge v4, v5, :cond_1

    .line 386
    iget-object v0, p0, Landroidx/recyclerview/widget/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 387
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 388
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getDrawingTime()J

    move-result-wide v0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 385
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move-wide v2, v0

    goto :goto_1

    .line 392
    :cond_1
    cmp-long v0, v2, v6

    if-nez v0, :cond_2

    .line 403
    iput-wide v6, p0, Landroidx/recyclerview/widget/f;->c:J

    .line 404
    invoke-static {}, Landroidx/core/os/a;->a()V

    goto :goto_0

    .line 397
    :cond_2
    :try_start_2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/recyclerview/widget/f;->d:J

    add-long/2addr v0, v2

    .line 399
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/f;->a(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 403
    iput-wide v6, p0, Landroidx/recyclerview/widget/f;->c:J

    .line 404
    invoke-static {}, Landroidx/core/os/a;->a()V

    goto :goto_0

    .line 403
    :catchall_0
    move-exception v0

    iput-wide v6, p0, Landroidx/recyclerview/widget/f;->c:J

    .line 404
    invoke-static {}, Landroidx/core/os/a;->a()V

    .line 405
    throw v0

    :cond_3
    move-wide v0, v2

    goto :goto_2
.end method
