.class public final Lcom/google/android/gms/internal/ads/ik3;
.super Lcom/google/android/gms/internal/ads/wj3;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/wj3<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final j:Lcom/google/android/gms/internal/ads/ok3;

.field private final k:Z

.field private final l:Lcom/google/android/gms/internal/ads/o7;

.field private final m:Lcom/google/android/gms/internal/ads/m7;

.field private n:Lcom/google/android/gms/internal/ads/fk3;

.field private o:Lcom/google/android/gms/internal/ads/ek3;

.field private p:Z

.field private q:Z

.field private r:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ok3;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/wj3;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ik3;->j:Lcom/google/android/gms/internal/ads/ok3;

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ok3;->zzt()Z

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/ik3;->k:Z

    .line 3
    new-instance p2, Lcom/google/android/gms/internal/ads/o7;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/o7;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ik3;->l:Lcom/google/android/gms/internal/ads/o7;

    new-instance p2, Lcom/google/android/gms/internal/ads/m7;

    .line 4
    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/m7;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ik3;->m:Lcom/google/android/gms/internal/ads/m7;

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ok3;->o()Lcom/google/android/gms/internal/ads/p7;

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ok3;->q()Lcom/google/android/gms/internal/ads/j5;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/fk3;->q(Lcom/google/android/gms/internal/ads/j5;)Lcom/google/android/gms/internal/ads/fk3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ik3;->n:Lcom/google/android/gms/internal/ads/fk3;

    return-void
.end method

.method private final B(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ik3;->n:Lcom/google/android/gms/internal/ads/fk3;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/fk3;->p(Lcom/google/android/gms/internal/ads/fk3;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/fk3;->d:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ik3;->n:Lcom/google/android/gms/internal/ads/fk3;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/fk3;->p(Lcom/google/android/gms/internal/ads/fk3;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private final C(J)V
    .locals 6
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "unpreparedMaskingMediaPeriod"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ik3;->o:Lcom/google/android/gms/internal/ads/ek3;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ik3;->n:Lcom/google/android/gms/internal/ads/fk3;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/ek3;->d:Lcom/google/android/gms/internal/ads/mk3;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/ar3;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/ak3;->i(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ik3;->n:Lcom/google/android/gms/internal/ads/fk3;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ik3;->m:Lcom/google/android/gms/internal/ads/m7;

    const/4 v4, 0x0

    .line 2
    invoke-virtual {v2, v1, v3, v4}, Lcom/google/android/gms/internal/ads/p7;->h(ILcom/google/android/gms/internal/ads/m7;Z)Lcom/google/android/gms/internal/ads/m7;

    iget-wide v1, v3, Lcom/google/android/gms/internal/ads/m7;->e:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    cmp-long v3, p1, v1

    if-ltz v3, :cond_1

    const-wide/16 p1, 0x0

    const-wide/16 v3, -0x1

    add-long/2addr v1, v3

    .line 3
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 4
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/ek3;->o(J)V

    return-void
.end method


# virtual methods
.method public final A(Lcom/google/android/gms/internal/ads/mk3;Lcom/google/android/gms/internal/ads/tn3;J)Lcom/google/android/gms/internal/ads/ek3;
    .locals 7

    .line 1
    new-instance v6, Lcom/google/android/gms/internal/ads/ek3;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ek3;-><init>(Lcom/google/android/gms/internal/ads/mk3;Lcom/google/android/gms/internal/ads/tn3;J[B)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/ik3;->j:Lcom/google/android/gms/internal/ads/ok3;

    .line 2
    invoke-virtual {v6, p2}, Lcom/google/android/gms/internal/ads/ek3;->r(Lcom/google/android/gms/internal/ads/ok3;)V

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/ik3;->q:Z

    if-eqz p2, :cond_0

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/ar3;->a:Ljava/lang/Object;

    .line 3
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/ik3;->B(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/mk3;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/mk3;

    move-result-object p1

    .line 4
    invoke-virtual {v6, p1}, Lcom/google/android/gms/internal/ads/ek3;->s(Lcom/google/android/gms/internal/ads/mk3;)V

    goto :goto_0

    :cond_0
    iput-object v6, p0, Lcom/google/android/gms/internal/ads/ik3;->o:Lcom/google/android/gms/internal/ads/ek3;

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/ik3;->p:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/ik3;->p:Z

    const/4 p1, 0x0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/ik3;->j:Lcom/google/android/gms/internal/ads/ok3;

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/wj3;->y(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/ok3;)V

    :cond_1
    :goto_0
    return-object v6
.end method

.method public final D()Lcom/google/android/gms/internal/ads/p7;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ik3;->n:Lcom/google/android/gms/internal/ads/fk3;

    return-object v0
.end method

.method public final c(Lcom/google/android/gms/internal/ads/lk3;)V
    .locals 1

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/ek3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ek3;->t()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ik3;->o:Lcom/google/android/gms/internal/ads/ek3;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ik3;->o:Lcom/google/android/gms/internal/ads/ek3;

    :cond_0
    return-void
.end method

.method public final bridge synthetic e(Lcom/google/android/gms/internal/ads/mk3;Lcom/google/android/gms/internal/ads/tn3;J)Lcom/google/android/gms/internal/ads/lk3;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/ik3;->A(Lcom/google/android/gms/internal/ads/mk3;Lcom/google/android/gms/internal/ads/tn3;J)Lcom/google/android/gms/internal/ads/ek3;

    move-result-object p1

    return-object p1
.end method

.method public final m(Lcom/google/android/gms/internal/ads/ol;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/wj3;->m(Lcom/google/android/gms/internal/ads/ol;)V

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/ik3;->k:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/ik3;->p:Z

    const/4 p1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ik3;->j:Lcom/google/android/gms/internal/ads/ok3;

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/wj3;->y(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/ok3;)V

    :cond_0
    return-void
.end method

.method public final p()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ik3;->q:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ik3;->p:Z

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/wj3;->p()V

    return-void
.end method

.method public final q()Lcom/google/android/gms/internal/ads/j5;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ik3;->j:Lcom/google/android/gms/internal/ads/ok3;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ok3;->q()Lcom/google/android/gms/internal/ads/j5;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic x(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/ok3;Lcom/google/android/gms/internal/ads/p7;)V
    .locals 11

    .line 1
    check-cast p1, Ljava/lang/Void;

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/ik3;->q:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ik3;->n:Lcom/google/android/gms/internal/ads/fk3;

    .line 2
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/fk3;->s(Lcom/google/android/gms/internal/ads/p7;)Lcom/google/android/gms/internal/ads/fk3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ik3;->n:Lcom/google/android/gms/internal/ads/fk3;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ik3;->o:Lcom/google/android/gms/internal/ads/ek3;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ek3;->p()J

    move-result-wide v0

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/ik3;->C(J)V

    goto/16 :goto_3

    .line 4
    :cond_0
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/p7;->k()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/ik3;->r:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ik3;->n:Lcom/google/android/gms/internal/ads/fk3;

    .line 5
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/fk3;->s(Lcom/google/android/gms/internal/ads/p7;)Lcom/google/android/gms/internal/ads/fk3;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/ads/o7;->a:Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ads/fk3;->d:Ljava/lang/Object;

    invoke-static {p3, p1, v0}, Lcom/google/android/gms/internal/ads/fk3;->r(Lcom/google/android/gms/internal/ads/p7;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fk3;

    move-result-object p1

    .line 7
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ik3;->n:Lcom/google/android/gms/internal/ads/fk3;

    goto :goto_3

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ik3;->l:Lcom/google/android/gms/internal/ads/o7;

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 9
    invoke-virtual {p3, v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/p7;->f(ILcom/google/android/gms/internal/ads/o7;J)Lcom/google/android/gms/internal/ads/o7;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ik3;->l:Lcom/google/android/gms/internal/ads/o7;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/o7;->e:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ik3;->o:Lcom/google/android/gms/internal/ads/ek3;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/ek3;->a()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/ik3;->n:Lcom/google/android/gms/internal/ads/fk3;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/ik3;->o:Lcom/google/android/gms/internal/ads/ek3;

    .line 10
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/ek3;->d:Lcom/google/android/gms/internal/ads/mk3;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/ar3;->a:Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/ik3;->m:Lcom/google/android/gms/internal/ads/m7;

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/ads/p7;->o(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/m7;)Lcom/google/android/gms/internal/ads/m7;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/ik3;->n:Lcom/google/android/gms/internal/ads/fk3;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/ik3;->l:Lcom/google/android/gms/internal/ads/o7;

    .line 11
    invoke-virtual {v5, v0, v6, v1, v2}, Lcom/google/android/gms/internal/ads/p7;->f(ILcom/google/android/gms/internal/ads/o7;J)Lcom/google/android/gms/internal/ads/o7;

    cmp-long v0, v3, v1

    if-eqz v0, :cond_3

    move-wide v9, v3

    goto :goto_1

    :cond_3
    move-wide v9, v1

    :goto_1
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/ik3;->l:Lcom/google/android/gms/internal/ads/o7;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/ik3;->m:Lcom/google/android/gms/internal/ads/m7;

    const/4 v8, 0x0

    move-object v5, p3

    .line 12
    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/p7;->m(Lcom/google/android/gms/internal/ads/o7;Lcom/google/android/gms/internal/ads/m7;IJ)Landroid/util/Pair;

    move-result-object v0

    .line 13
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 14
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ik3;->r:Z

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ik3;->n:Lcom/google/android/gms/internal/ads/fk3;

    .line 15
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/fk3;->s(Lcom/google/android/gms/internal/ads/p7;)Lcom/google/android/gms/internal/ads/fk3;

    move-result-object p1

    goto :goto_2

    .line 16
    :cond_4
    invoke-static {p3, p1, v1}, Lcom/google/android/gms/internal/ads/fk3;->r(Lcom/google/android/gms/internal/ads/p7;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fk3;

    move-result-object p1

    .line 17
    :goto_2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ik3;->n:Lcom/google/android/gms/internal/ads/fk3;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ik3;->o:Lcom/google/android/gms/internal/ads/ek3;

    if-eqz p1, :cond_5

    .line 18
    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/internal/ads/ik3;->C(J)V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/ek3;->d:Lcom/google/android/gms/internal/ads/mk3;

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/ar3;->a:Ljava/lang/Object;

    .line 19
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/ik3;->B(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/mk3;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/mk3;

    move-result-object p2

    :cond_5
    :goto_3
    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/ik3;->r:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/ik3;->q:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ik3;->n:Lcom/google/android/gms/internal/ads/fk3;

    .line 21
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/dg3;->r(Lcom/google/android/gms/internal/ads/p7;)V

    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ik3;->o:Lcom/google/android/gms/internal/ads/ek3;

    .line 22
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/ek3;->s(Lcom/google/android/gms/internal/ads/mk3;)V

    :cond_6
    return-void
.end method

.method protected final bridge synthetic z(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/mk3;)Lcom/google/android/gms/internal/ads/mk3;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Void;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/ar3;->a:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ik3;->n:Lcom/google/android/gms/internal/ads/fk3;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/fk3;->p(Lcom/google/android/gms/internal/ads/fk3;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ik3;->n:Lcom/google/android/gms/internal/ads/fk3;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/fk3;->p(Lcom/google/android/gms/internal/ads/fk3;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/fk3;->d:Ljava/lang/Object;

    .line 3
    :cond_0
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/mk3;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/mk3;

    move-result-object p1

    return-object p1
.end method

.method public final zzu()V
    .locals 0

    return-void
.end method
