.class public final Lcom/google/android/gms/internal/ads/vk3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field public final a:I

.field public final b:Lcom/google/android/gms/internal/ads/mk3;

.field private final c:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/google/android/gms/internal/ads/uk3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/vk3;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/google/android/gms/internal/ads/mk3;J)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/google/android/gms/internal/ads/mk3;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/google/android/gms/internal/ads/uk3;",
            ">;I",
            "Lcom/google/android/gms/internal/ads/mk3;",
            "J)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vk3;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput p2, p0, Lcom/google/android/gms/internal/ads/vk3;->a:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/vk3;->b:Lcom/google/android/gms/internal/ads/mk3;

    return-void
.end method

.method private static final n(J)J
    .locals 3

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/x2;->a(J)J

    move-result-wide p0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    return-wide p0
.end method


# virtual methods
.method public final a(ILcom/google/android/gms/internal/ads/mk3;J)Lcom/google/android/gms/internal/ads/vk3;
    .locals 6

    .line 1
    new-instance p3, Lcom/google/android/gms/internal/ads/vk3;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vk3;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-wide/16 v4, 0x0

    move-object v0, p3

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/vk3;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/google/android/gms/internal/ads/mk3;J)V

    return-object p3
.end method

.method public final b(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/wk3;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vk3;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/google/android/gms/internal/ads/uk3;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/ads/uk3;-><init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/wk3;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/ads/wk3;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vk3;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/uk3;

    .line 2
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/uk3;->b:Lcom/google/android/gms/internal/ads/wk3;

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/vk3;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final d(Lcom/google/android/gms/internal/ads/dk3;IILcom/google/android/gms/internal/ads/u4;ILjava/lang/Object;JJ)V
    .locals 11

    .line 1
    new-instance v10, Lcom/google/android/gms/internal/ads/jk3;

    invoke-static/range {p7 .. p8}, Lcom/google/android/gms/internal/ads/vk3;->n(J)J

    move-result-wide v6

    .line 2
    invoke-static/range {p9 .. p10}, Lcom/google/android/gms/internal/ads/vk3;->n(J)J

    move-result-wide v8

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/jk3;-><init>(IILcom/google/android/gms/internal/ads/u4;ILjava/lang/Object;JJ)V

    move-object v0, p0

    move-object v1, p1

    .line 3
    invoke-virtual {p0, p1, v10}, Lcom/google/android/gms/internal/ads/vk3;->e(Lcom/google/android/gms/internal/ads/dk3;Lcom/google/android/gms/internal/ads/jk3;)V

    return-void
.end method

.method public final e(Lcom/google/android/gms/internal/ads/dk3;Lcom/google/android/gms/internal/ads/jk3;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vk3;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/uk3;

    .line 2
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/uk3;->b:Lcom/google/android/gms/internal/ads/wk3;

    .line 3
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/uk3;->a:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/ads/pk3;

    invoke-direct {v3, p0, v2, p1, p2}, Lcom/google/android/gms/internal/ads/pk3;-><init>(Lcom/google/android/gms/internal/ads/vk3;Lcom/google/android/gms/internal/ads/wk3;Lcom/google/android/gms/internal/ads/dk3;Lcom/google/android/gms/internal/ads/jk3;)V

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/wa;->O(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final f(Lcom/google/android/gms/internal/ads/dk3;IILcom/google/android/gms/internal/ads/u4;ILjava/lang/Object;JJ)V
    .locals 11

    .line 1
    new-instance v10, Lcom/google/android/gms/internal/ads/jk3;

    invoke-static/range {p7 .. p8}, Lcom/google/android/gms/internal/ads/vk3;->n(J)J

    move-result-wide v6

    .line 2
    invoke-static/range {p9 .. p10}, Lcom/google/android/gms/internal/ads/vk3;->n(J)J

    move-result-wide v8

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/jk3;-><init>(IILcom/google/android/gms/internal/ads/u4;ILjava/lang/Object;JJ)V

    move-object v0, p0

    move-object v1, p1

    .line 3
    invoke-virtual {p0, p1, v10}, Lcom/google/android/gms/internal/ads/vk3;->g(Lcom/google/android/gms/internal/ads/dk3;Lcom/google/android/gms/internal/ads/jk3;)V

    return-void
.end method

.method public final g(Lcom/google/android/gms/internal/ads/dk3;Lcom/google/android/gms/internal/ads/jk3;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vk3;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/uk3;

    .line 2
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/uk3;->b:Lcom/google/android/gms/internal/ads/wk3;

    .line 3
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/uk3;->a:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/ads/qk3;

    invoke-direct {v3, p0, v2, p1, p2}, Lcom/google/android/gms/internal/ads/qk3;-><init>(Lcom/google/android/gms/internal/ads/vk3;Lcom/google/android/gms/internal/ads/wk3;Lcom/google/android/gms/internal/ads/dk3;Lcom/google/android/gms/internal/ads/jk3;)V

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/wa;->O(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final h(Lcom/google/android/gms/internal/ads/dk3;IILcom/google/android/gms/internal/ads/u4;ILjava/lang/Object;JJ)V
    .locals 11

    .line 1
    new-instance v10, Lcom/google/android/gms/internal/ads/jk3;

    invoke-static/range {p7 .. p8}, Lcom/google/android/gms/internal/ads/vk3;->n(J)J

    move-result-wide v6

    .line 2
    invoke-static/range {p9 .. p10}, Lcom/google/android/gms/internal/ads/vk3;->n(J)J

    move-result-wide v8

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/jk3;-><init>(IILcom/google/android/gms/internal/ads/u4;ILjava/lang/Object;JJ)V

    move-object v0, p0

    move-object v1, p1

    .line 3
    invoke-virtual {p0, p1, v10}, Lcom/google/android/gms/internal/ads/vk3;->i(Lcom/google/android/gms/internal/ads/dk3;Lcom/google/android/gms/internal/ads/jk3;)V

    return-void
.end method

.method public final i(Lcom/google/android/gms/internal/ads/dk3;Lcom/google/android/gms/internal/ads/jk3;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vk3;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/uk3;

    .line 2
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/uk3;->b:Lcom/google/android/gms/internal/ads/wk3;

    .line 3
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/uk3;->a:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/ads/rk3;

    invoke-direct {v3, p0, v2, p1, p2}, Lcom/google/android/gms/internal/ads/rk3;-><init>(Lcom/google/android/gms/internal/ads/vk3;Lcom/google/android/gms/internal/ads/wk3;Lcom/google/android/gms/internal/ads/dk3;Lcom/google/android/gms/internal/ads/jk3;)V

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/wa;->O(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final j(Lcom/google/android/gms/internal/ads/dk3;IILcom/google/android/gms/internal/ads/u4;ILjava/lang/Object;JJLjava/io/IOException;Z)V
    .locals 11

    .line 1
    new-instance v10, Lcom/google/android/gms/internal/ads/jk3;

    invoke-static/range {p7 .. p8}, Lcom/google/android/gms/internal/ads/vk3;->n(J)J

    move-result-wide v6

    .line 2
    invoke-static/range {p9 .. p10}, Lcom/google/android/gms/internal/ads/vk3;->n(J)J

    move-result-wide v8

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/jk3;-><init>(IILcom/google/android/gms/internal/ads/u4;ILjava/lang/Object;JJ)V

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p11

    move/from16 v3, p12

    .line 3
    invoke-virtual {p0, p1, v10, v2, v3}, Lcom/google/android/gms/internal/ads/vk3;->k(Lcom/google/android/gms/internal/ads/dk3;Lcom/google/android/gms/internal/ads/jk3;Ljava/io/IOException;Z)V

    return-void
.end method

.method public final k(Lcom/google/android/gms/internal/ads/dk3;Lcom/google/android/gms/internal/ads/jk3;Ljava/io/IOException;Z)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vk3;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/uk3;

    .line 2
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/uk3;->b:Lcom/google/android/gms/internal/ads/wk3;

    .line 3
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/uk3;->a:Landroid/os/Handler;

    new-instance v9, Lcom/google/android/gms/internal/ads/sk3;

    move-object v2, v9

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/sk3;-><init>(Lcom/google/android/gms/internal/ads/vk3;Lcom/google/android/gms/internal/ads/wk3;Lcom/google/android/gms/internal/ads/dk3;Lcom/google/android/gms/internal/ads/jk3;Ljava/io/IOException;Z)V

    invoke-static {v1, v9}, Lcom/google/android/gms/internal/ads/wa;->O(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final l(ILcom/google/android/gms/internal/ads/u4;ILjava/lang/Object;J)V
    .locals 11

    .line 1
    new-instance v10, Lcom/google/android/gms/internal/ads/jk3;

    invoke-static/range {p5 .. p6}, Lcom/google/android/gms/internal/ads/vk3;->n(J)J

    move-result-wide v6

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, v10

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/jk3;-><init>(IILcom/google/android/gms/internal/ads/u4;ILjava/lang/Object;JJ)V

    move-object v0, p0

    .line 2
    invoke-virtual {p0, v10}, Lcom/google/android/gms/internal/ads/vk3;->m(Lcom/google/android/gms/internal/ads/jk3;)V

    return-void
.end method

.method public final m(Lcom/google/android/gms/internal/ads/jk3;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vk3;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/uk3;

    .line 2
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/uk3;->b:Lcom/google/android/gms/internal/ads/wk3;

    .line 3
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/uk3;->a:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/ads/tk3;

    invoke-direct {v3, p0, v2, p1}, Lcom/google/android/gms/internal/ads/tk3;-><init>(Lcom/google/android/gms/internal/ads/vk3;Lcom/google/android/gms/internal/ads/wk3;Lcom/google/android/gms/internal/ads/jk3;)V

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/wa;->O(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method
