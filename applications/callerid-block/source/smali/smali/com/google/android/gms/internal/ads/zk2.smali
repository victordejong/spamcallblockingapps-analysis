.class final Lcom/google/android/gms/internal/ads/zk2;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/pp2;

.field public final b:Ljava/lang/Object;

.field public final c:I

.field public final d:[Lcom/google/android/gms/internal/ads/bq2;

.field public final e:[Z

.field public final f:J

.field public g:I

.field public h:J

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Lcom/google/android/gms/internal/ads/zk2;

.field public m:Lcom/google/android/gms/internal/ads/uq2;

.field private final n:[Lcom/google/android/gms/internal/ads/hl2;

.field private final o:[Lcom/google/android/gms/internal/ads/il2;

.field private final p:Lcom/google/android/gms/internal/ads/tq2;

.field private final q:Lcom/google/android/gms/internal/ads/rp2;

.field private r:Lcom/google/android/gms/internal/ads/uq2;

.field private final s:Lcom/google/android/gms/internal/ads/nr;


# direct methods
.method public constructor <init>([Lcom/google/android/gms/internal/ads/hl2;[Lcom/google/android/gms/internal/ads/il2;JLcom/google/android/gms/internal/ads/tq2;Lcom/google/android/gms/internal/ads/nr;Lcom/google/android/gms/internal/ads/rp2;Ljava/lang/Object;IIZJ[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zk2;->n:[Lcom/google/android/gms/internal/ads/hl2;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zk2;->o:[Lcom/google/android/gms/internal/ads/il2;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zk2;->f:J

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zk2;->p:Lcom/google/android/gms/internal/ads/tq2;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zk2;->s:Lcom/google/android/gms/internal/ads/nr;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zk2;->q:Lcom/google/android/gms/internal/ads/rp2;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zk2;->b:Ljava/lang/Object;

    iput p9, p0, Lcom/google/android/gms/internal/ads/zk2;->c:I

    iput p10, p0, Lcom/google/android/gms/internal/ads/zk2;->g:I

    iput-boolean p11, p0, Lcom/google/android/gms/internal/ads/zk2;->i:Z

    iput-wide p12, p0, Lcom/google/android/gms/internal/ads/zk2;->h:J

    const/4 p1, 0x2

    new-array p2, p1, [Lcom/google/android/gms/internal/ads/bq2;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zk2;->d:[Lcom/google/android/gms/internal/ads/bq2;

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zk2;->e:[Z

    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/nr;->l()Lcom/google/android/gms/internal/ads/ar2;

    move-result-object p1

    invoke-interface {p7, p10, p1}, Lcom/google/android/gms/internal/ads/rp2;->c(ILcom/google/android/gms/internal/ads/ar2;)Lcom/google/android/gms/internal/ads/pp2;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zk2;->a:Lcom/google/android/gms/internal/ads/pp2;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 7

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zk2;->j:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zk2;->k:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zk2;->a:Lcom/google/android/gms/internal/ads/pp2;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/pp2;->h()J

    move-result-wide v3

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v0, v3, v5

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :cond_2
    return v1
.end method

.method public final b()Z
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zk2;->p:Lcom/google/android/gms/internal/ads/tq2;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zk2;->o:[Lcom/google/android/gms/internal/ads/il2;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zk2;->a:Lcom/google/android/gms/internal/ads/pp2;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/pp2;->g()Lcom/google/android/gms/internal/ads/gq2;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/tq2;->a([Lcom/google/android/gms/internal/ads/il2;Lcom/google/android/gms/internal/ads/gq2;)Lcom/google/android/gms/internal/ads/uq2;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zk2;->r:Lcom/google/android/gms/internal/ads/uq2;

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/ads/uq2;->a(Lcom/google/android/gms/internal/ads/uq2;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zk2;->m:Lcom/google/android/gms/internal/ads/uq2;

    const/4 v0, 0x1

    return v0
.end method

.method public final c(JZ)J
    .locals 1

    const/4 p3, 0x2

    new-array p3, p3, [Z

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/google/android/gms/internal/ads/zk2;->d(JZ[Z)J

    move-result-wide p1

    return-wide p1
.end method

.method public final d(JZ[Z)J
    .locals 13

    move-object v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zk2;->m:Lcom/google/android/gms/internal/ads/uq2;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/uq2;->b:Lcom/google/android/gms/internal/ads/rq2;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zk2;->e:[Z

    if-nez p3, :cond_0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zk2;->m:Lcom/google/android/gms/internal/ads/uq2;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zk2;->r:Lcom/google/android/gms/internal/ads/uq2;

    invoke-virtual {v6, v7, v3}, Lcom/google/android/gms/internal/ads/uq2;->a(Lcom/google/android/gms/internal/ads/uq2;I)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    aput-boolean v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zk2;->a:Lcom/google/android/gms/internal/ads/pp2;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/rq2;->b()[Lcom/google/android/gms/internal/ads/jq2;

    move-result-object v7

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zk2;->e:[Z

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zk2;->d:[Lcom/google/android/gms/internal/ads/bq2;

    move-object/from16 v10, p4

    move-wide v11, p1

    invoke-interface/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/pp2;->m([Lcom/google/android/gms/internal/ads/jq2;[Z[Lcom/google/android/gms/internal/ads/bq2;[ZJ)J

    move-result-wide v6

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zk2;->m:Lcom/google/android/gms/internal/ads/uq2;

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zk2;->r:Lcom/google/android/gms/internal/ads/uq2;

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zk2;->k:Z

    const/4 v3, 0x0

    :goto_2
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zk2;->d:[Lcom/google/android/gms/internal/ads/bq2;

    if-ge v3, v4, :cond_5

    aget-object v8, v8, v3

    if-eqz v8, :cond_3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/rq2;->a(I)Lcom/google/android/gms/internal/ads/jq2;

    move-result-object v8

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    goto :goto_3

    :cond_2
    const/4 v8, 0x0

    :goto_3
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/jr2;->d(Z)V

    iput-boolean v5, v0, Lcom/google/android/gms/internal/ads/zk2;->k:Z

    goto :goto_5

    :cond_3
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/rq2;->a(I)Lcom/google/android/gms/internal/ads/jq2;

    move-result-object v8

    if-nez v8, :cond_4

    const/4 v8, 0x1

    goto :goto_4

    :cond_4
    const/4 v8, 0x0

    :goto_4
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/jr2;->d(Z)V

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zk2;->s:Lcom/google/android/gms/internal/ads/nr;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zk2;->n:[Lcom/google/android/gms/internal/ads/hl2;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zk2;->m:Lcom/google/android/gms/internal/ads/uq2;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/uq2;->a:Lcom/google/android/gms/internal/ads/gq2;

    invoke-virtual {v2, v3, v4, v1}, Lcom/google/android/gms/internal/ads/nr;->b([Lcom/google/android/gms/internal/ads/hl2;Lcom/google/android/gms/internal/ads/gq2;Lcom/google/android/gms/internal/ads/rq2;)V

    return-wide v6
.end method

.method public final e()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zk2;->q:Lcom/google/android/gms/internal/ads/rp2;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zk2;->a:Lcom/google/android/gms/internal/ads/pp2;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/rp2;->a(Lcom/google/android/gms/internal/ads/pp2;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "ExoPlayerImplInternal"

    const-string v2, "Period release failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
