.class final Lcom/google/android/gms/internal/ads/yk2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/vk2;


# instance fields
.field private final a:[Lcom/google/android/gms/internal/ads/hl2;

.field private final b:Lcom/google/android/gms/internal/ads/tq2;

.field private final c:Lcom/google/android/gms/internal/ads/rq2;

.field private final d:Landroid/os/Handler;

.field private final e:Lcom/google/android/gms/internal/ads/dl2;

.field private final f:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/android/gms/internal/ads/sk2;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/android/gms/internal/ads/nl2;

.field private final h:Lcom/google/android/gms/internal/ads/ml2;

.field private i:Z

.field private j:Z

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field private o:Lcom/google/android/gms/internal/ads/ol2;

.field private p:Ljava/lang/Object;

.field private q:Lcom/google/android/gms/internal/ads/gq2;

.field private r:Lcom/google/android/gms/internal/ads/rq2;

.field private s:Lcom/google/android/gms/internal/ads/gl2;

.field private t:Lcom/google/android/gms/internal/ads/al2;

.field private u:J


# direct methods
.method public constructor <init>([Lcom/google/android/gms/internal/ads/hl2;Lcom/google/android/gms/internal/ads/tq2;Lcom/google/android/gms/internal/ads/nr;[B)V
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p4, Lcom/google/android/gms/internal/ads/zr2;->e:Ljava/lang/String;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1a

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Init ExoPlayerLib/2.4.2 ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "]"

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "ExoPlayerImpl"

    invoke-static {v0, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yk2;->a:[Lcom/google/android/gms/internal/ads/hl2;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/yk2;->b:Lcom/google/android/gms/internal/ads/tq2;

    const/4 p4, 0x0

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/yk2;->j:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/yk2;->k:I

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yk2;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v0, Lcom/google/android/gms/internal/ads/rq2;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/jq2;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/rq2;-><init>([Lcom/google/android/gms/internal/ads/jq2;[B)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yk2;->c:Lcom/google/android/gms/internal/ads/rq2;

    sget-object v1, Lcom/google/android/gms/internal/ads/ol2;->a:Lcom/google/android/gms/internal/ads/ol2;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/yk2;->o:Lcom/google/android/gms/internal/ads/ol2;

    new-instance v1, Lcom/google/android/gms/internal/ads/nl2;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/nl2;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/yk2;->g:Lcom/google/android/gms/internal/ads/nl2;

    new-instance v1, Lcom/google/android/gms/internal/ads/ml2;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/ml2;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/yk2;->h:Lcom/google/android/gms/internal/ads/ml2;

    sget-object v1, Lcom/google/android/gms/internal/ads/gq2;->d:Lcom/google/android/gms/internal/ads/gq2;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/yk2;->q:Lcom/google/android/gms/internal/ads/gq2;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yk2;->r:Lcom/google/android/gms/internal/ads/rq2;

    sget-object v0, Lcom/google/android/gms/internal/ads/gl2;->d:Lcom/google/android/gms/internal/ads/gl2;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yk2;->s:Lcom/google/android/gms/internal/ads/gl2;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    new-instance v7, Lcom/google/android/gms/internal/ads/xk2;

    invoke-direct {v7, p0, v0}, Lcom/google/android/gms/internal/ads/xk2;-><init>(Lcom/google/android/gms/internal/ads/yk2;Landroid/os/Looper;)V

    iput-object v7, p0, Lcom/google/android/gms/internal/ads/yk2;->d:Landroid/os/Handler;

    new-instance v8, Lcom/google/android/gms/internal/ads/al2;

    const-wide/16 v0, 0x0

    invoke-direct {v8, p4, v0, v1}, Lcom/google/android/gms/internal/ads/al2;-><init>(IJ)V

    iput-object v8, p0, Lcom/google/android/gms/internal/ads/yk2;->t:Lcom/google/android/gms/internal/ads/al2;

    new-instance p4, Lcom/google/android/gms/internal/ads/dl2;

    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/yk2;->j:Z

    const/4 v6, 0x0

    const/4 v10, 0x0

    move-object v1, p4

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v9, p0

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/dl2;-><init>([Lcom/google/android/gms/internal/ads/hl2;Lcom/google/android/gms/internal/ads/tq2;Lcom/google/android/gms/internal/ads/nr;ZILandroid/os/Handler;Lcom/google/android/gms/internal/ads/al2;Lcom/google/android/gms/internal/ads/vk2;[B)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/yk2;->e:Lcom/google/android/gms/internal/ads/dl2;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yk2;->e:Lcom/google/android/gms/internal/ads/dl2;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dl2;->A(I)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/sk2;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yk2;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/yk2;->k:I

    return v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/yk2;->j:Z

    return v0
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yk2;->e:Lcom/google/android/gms/internal/ads/dl2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dl2;->v()V

    return-void
.end method

.method public final f(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/yk2;->j:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/yk2;->j:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yk2;->e:Lcom/google/android/gms/internal/ads/dl2;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dl2;->t(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yk2;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/sk2;

    iget v2, p0, Lcom/google/android/gms/internal/ads/yk2;->k:I

    invoke-interface {v1, p1, v2}, Lcom/google/android/gms/internal/ads/sk2;->i(ZI)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final g(Lcom/google/android/gms/internal/ads/rp2;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yk2;->o:Lcom/google/android/gms/internal/ads/ol2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ol2;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yk2;->p:Ljava/lang/Object;

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/ol2;->a:Lcom/google/android/gms/internal/ads/ol2;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yk2;->o:Lcom/google/android/gms/internal/ads/ol2;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/yk2;->p:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yk2;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/sk2;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/yk2;->o:Lcom/google/android/gms/internal/ads/ol2;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/yk2;->p:Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/android/gms/internal/ads/sk2;->e(Lcom/google/android/gms/internal/ads/ol2;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/yk2;->i:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/yk2;->i:Z

    sget-object v0, Lcom/google/android/gms/internal/ads/gq2;->d:Lcom/google/android/gms/internal/ads/gq2;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yk2;->q:Lcom/google/android/gms/internal/ads/gq2;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yk2;->c:Lcom/google/android/gms/internal/ads/rq2;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yk2;->r:Lcom/google/android/gms/internal/ads/rq2;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yk2;->b:Lcom/google/android/gms/internal/ads/tq2;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/tq2;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yk2;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/sk2;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yk2;->q:Lcom/google/android/gms/internal/ads/gq2;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/yk2;->r:Lcom/google/android/gms/internal/ads/rq2;

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/sk2;->a(Lcom/google/android/gms/internal/ads/gq2;Lcom/google/android/gms/internal/ads/rq2;)V

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/yk2;->m:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/yk2;->m:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yk2;->e:Lcom/google/android/gms/internal/ads/dl2;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/dl2;->s(Lcom/google/android/gms/internal/ads/rp2;Z)V

    return-void
.end method

.method public final varargs h([Lcom/google/android/gms/internal/ads/uk2;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yk2;->e:Lcom/google/android/gms/internal/ads/dl2;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dl2;->x([Lcom/google/android/gms/internal/ads/uk2;)V

    return-void
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yk2;->e:Lcom/google/android/gms/internal/ads/dl2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dl2;->y()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yk2;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final varargs j([Lcom/google/android/gms/internal/ads/uk2;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yk2;->e:Lcom/google/android/gms/internal/ads/dl2;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dl2;->w([Lcom/google/android/gms/internal/ads/uk2;)V

    return-void
.end method

.method public final k()J
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yk2;->o:Lcom/google/android/gms/internal/ads/ol2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ol2;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yk2;->o:Lcom/google/android/gms/internal/ads/ol2;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/yk2;->r()I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yk2;->g:Lcom/google/android/gms/internal/ads/nl2;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2}, Lcom/google/android/gms/internal/ads/ol2;->g(ILcom/google/android/gms/internal/ads/nl2;Z)Lcom/google/android/gms/internal/ads/nl2;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/nl2;->a:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/rk2;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final l(J)V
    .locals 8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/yk2;->r()I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yk2;->o:Lcom/google/android/gms/internal/ads/ol2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ol2;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yk2;->o:Lcom/google/android/gms/internal/ads/ol2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ol2;->a()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zziv;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yk2;->o:Lcom/google/android/gms/internal/ads/ol2;

    invoke-direct {v0, v2, v1, p1, p2}, Lcom/google/android/gms/internal/ads/zziv;-><init>(Lcom/google/android/gms/internal/ads/ol2;IJ)V

    throw v0

    :cond_1
    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/yk2;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/yk2;->l:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yk2;->o:Lcom/google/android/gms/internal/ads/ol2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ol2;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yk2;->o:Lcom/google/android/gms/internal/ads/ol2;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yk2;->g:Lcom/google/android/gms/internal/ads/nl2;

    invoke-virtual {v0, v1, v2, v1}, Lcom/google/android/gms/internal/ads/ol2;->g(ILcom/google/android/gms/internal/ads/nl2;Z)Lcom/google/android/gms/internal/ads/nl2;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/rk2;->b(J)J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yk2;->o:Lcom/google/android/gms/internal/ads/ol2;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/yk2;->h:Lcom/google/android/gms/internal/ads/ml2;

    invoke-virtual {v0, v1, v4, v1}, Lcom/google/android/gms/internal/ads/ol2;->d(ILcom/google/android/gms/internal/ads/ml2;Z)Lcom/google/android/gms/internal/ads/ml2;

    move-result-object v0

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/ml2;->c:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v6

    if-eqz v0, :cond_3

    cmp-long v0, v2, v4

    :cond_3
    :goto_1
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/yk2;->u:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yk2;->e:Lcom/google/android/gms/internal/ads/dl2;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yk2;->o:Lcom/google/android/gms/internal/ads/ol2;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/rk2;->b(J)J

    move-result-wide p1

    invoke-virtual {v0, v2, v1, p1, p2}, Lcom/google/android/gms/internal/ads/dl2;->u(Lcom/google/android/gms/internal/ads/ol2;IJ)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yk2;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/sk2;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/sk2;->d()V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final m()J
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yk2;->o:Lcom/google/android/gms/internal/ads/ol2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ol2;->f()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/yk2;->l:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yk2;->o:Lcom/google/android/gms/internal/ads/ol2;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yk2;->t:Lcom/google/android/gms/internal/ads/al2;

    iget v1, v1, Lcom/google/android/gms/internal/ads/al2;->a:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yk2;->h:Lcom/google/android/gms/internal/ads/ml2;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/ol2;->d(ILcom/google/android/gms/internal/ads/ml2;Z)Lcom/google/android/gms/internal/ads/ml2;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/rk2;->a(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yk2;->t:Lcom/google/android/gms/internal/ads/al2;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/al2;->c:J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/rk2;->a(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0

    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/yk2;->u:J

    return-wide v0
.end method

.method public final n(Lcom/google/android/gms/internal/ads/sk2;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yk2;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final o(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yk2;->e:Lcom/google/android/gms/internal/ads/dl2;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dl2;->z(I)V

    return-void
.end method

.method public final p()J
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yk2;->o:Lcom/google/android/gms/internal/ads/ol2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ol2;->f()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/yk2;->l:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yk2;->o:Lcom/google/android/gms/internal/ads/ol2;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yk2;->t:Lcom/google/android/gms/internal/ads/al2;

    iget v1, v1, Lcom/google/android/gms/internal/ads/al2;->a:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yk2;->h:Lcom/google/android/gms/internal/ads/ml2;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/ol2;->d(ILcom/google/android/gms/internal/ads/ml2;Z)Lcom/google/android/gms/internal/ads/ml2;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/rk2;->a(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yk2;->t:Lcom/google/android/gms/internal/ads/al2;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/al2;->d:J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/rk2;->a(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0

    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/yk2;->u:J

    return-wide v0
.end method

.method public final q()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yk2;->e:Lcom/google/android/gms/internal/ads/dl2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dl2;->r()V

    return-void
.end method

.method public final r()I
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yk2;->o:Lcom/google/android/gms/internal/ads/ol2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ol2;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/yk2;->l:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yk2;->o:Lcom/google/android/gms/internal/ads/ol2;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yk2;->t:Lcom/google/android/gms/internal/ads/al2;

    iget v2, v2, Lcom/google/android/gms/internal/ads/al2;->a:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/yk2;->h:Lcom/google/android/gms/internal/ads/ml2;

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/ol2;->d(ILcom/google/android/gms/internal/ads/ml2;Z)Lcom/google/android/gms/internal/ads/ml2;

    :cond_1
    :goto_0
    return v1
.end method

.method final s(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzif;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yk2;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/sk2;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/sk2;->f(Lcom/google/android/gms/internal/ads/zzif;)V

    goto :goto_0

    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/gl2;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yk2;->s:Lcom/google/android/gms/internal/ads/gl2;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/gl2;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yk2;->s:Lcom/google/android/gms/internal/ads/gl2;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yk2;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/sk2;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/sk2;->m(Lcom/google/android/gms/internal/ads/gl2;)V

    goto :goto_1

    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/cl2;

    iget v0, p0, Lcom/google/android/gms/internal/ads/yk2;->l:I

    iget v1, p1, Lcom/google/android/gms/internal/ads/cl2;->d:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/yk2;->l:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/yk2;->m:I

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/cl2;->a:Lcom/google/android/gms/internal/ads/ol2;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yk2;->o:Lcom/google/android/gms/internal/ads/ol2;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/cl2;->b:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yk2;->p:Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/cl2;->c:Lcom/google/android/gms/internal/ads/al2;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yk2;->t:Lcom/google/android/gms/internal/ads/al2;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yk2;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/sk2;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yk2;->o:Lcom/google/android/gms/internal/ads/ol2;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yk2;->p:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/sk2;->e(Lcom/google/android/gms/internal/ads/ol2;Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_3
    iget v0, p0, Lcom/google/android/gms/internal/ads/yk2;->l:I

    if-nez v0, :cond_1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/al2;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yk2;->t:Lcom/google/android/gms/internal/ads/al2;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yk2;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/sk2;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/sk2;->d()V

    goto :goto_3

    :pswitch_4
    iget v0, p0, Lcom/google/android/gms/internal/ads/yk2;->l:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/yk2;->l:I

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/al2;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yk2;->t:Lcom/google/android/gms/internal/ads/al2;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yk2;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/sk2;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/sk2;->d()V

    goto :goto_4

    :pswitch_5
    iget v0, p0, Lcom/google/android/gms/internal/ads/yk2;->m:I

    if-nez v0, :cond_1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/uq2;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/yk2;->i:Z

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/uq2;->a:Lcom/google/android/gms/internal/ads/gq2;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yk2;->q:Lcom/google/android/gms/internal/ads/gq2;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/uq2;->b:Lcom/google/android/gms/internal/ads/rq2;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yk2;->r:Lcom/google/android/gms/internal/ads/rq2;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yk2;->b:Lcom/google/android/gms/internal/ads/tq2;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/uq2;->c:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/tq2;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yk2;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/sk2;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yk2;->q:Lcom/google/android/gms/internal/ads/gq2;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yk2;->r:Lcom/google/android/gms/internal/ads/rq2;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/sk2;->a(Lcom/google/android/gms/internal/ads/gq2;Lcom/google/android/gms/internal/ads/rq2;)V

    goto :goto_5

    :pswitch_6
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_0

    goto :goto_6

    :cond_0
    const/4 v1, 0x0

    :goto_6
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/yk2;->n:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yk2;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/sk2;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/yk2;->n:Z

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/sk2;->M0(Z)V

    goto :goto_7

    :pswitch_7
    iget p1, p1, Landroid/os/Message;->arg1:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/yk2;->k:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yk2;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/sk2;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/yk2;->j:Z

    iget v2, p0, Lcom/google/android/gms/internal/ads/yk2;->k:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/sk2;->i(ZI)V

    goto :goto_8

    :cond_1
    return-void

    :pswitch_8
    iget p1, p0, Lcom/google/android/gms/internal/ads/yk2;->m:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/yk2;->m:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
