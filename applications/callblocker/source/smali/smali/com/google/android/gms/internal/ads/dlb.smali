.class final Lcom/google/android/gms/internal/ads/dlb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/dqe;

.field public final b:Ljava/lang/Object;

.field public final c:I

.field public final d:[Lcom/google/android/gms/internal/ads/dqo;

.field public final e:J

.field public f:I

.field public g:J

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Lcom/google/android/gms/internal/ads/dlb;

.field public l:Lcom/google/android/gms/internal/ads/drl;

.field private final m:[Z

.field private final n:[Lcom/google/android/gms/internal/ads/dli;

.field private final o:[Lcom/google/android/gms/internal/ads/dll;

.field private final p:Lcom/google/android/gms/internal/ads/drj;

.field private final q:Lcom/google/android/gms/internal/ads/dlh;

.field private final r:Lcom/google/android/gms/internal/ads/dqg;

.field private s:Lcom/google/android/gms/internal/ads/drl;


# direct methods
.method public constructor <init>([Lcom/google/android/gms/internal/ads/dli;[Lcom/google/android/gms/internal/ads/dll;JLcom/google/android/gms/internal/ads/drj;Lcom/google/android/gms/internal/ads/dlh;Lcom/google/android/gms/internal/ads/dqg;Ljava/lang/Object;IIZJ)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dlb;->n:[Lcom/google/android/gms/internal/ads/dli;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dlb;->o:[Lcom/google/android/gms/internal/ads/dll;

    .line 4
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/dlb;->e:J

    .line 5
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/dlb;->p:Lcom/google/android/gms/internal/ads/drj;

    .line 6
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/dlb;->q:Lcom/google/android/gms/internal/ads/dlh;

    .line 7
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/dlb;->r:Lcom/google/android/gms/internal/ads/dqg;

    .line 8
    invoke-static {p8}, Lcom/google/android/gms/internal/ads/drz;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dlb;->b:Ljava/lang/Object;

    .line 9
    iput p9, p0, Lcom/google/android/gms/internal/ads/dlb;->c:I

    .line 10
    iput p10, p0, Lcom/google/android/gms/internal/ads/dlb;->f:I

    .line 11
    iput-boolean p11, p0, Lcom/google/android/gms/internal/ads/dlb;->h:Z

    .line 12
    iput-wide p12, p0, Lcom/google/android/gms/internal/ads/dlb;->g:J

    .line 13
    array-length v0, p1

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/dqo;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dlb;->d:[Lcom/google/android/gms/internal/ads/dqo;

    .line 14
    array-length v0, p1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dlb;->m:[Z

    .line 15
    invoke-interface {p6}, Lcom/google/android/gms/internal/ads/dlh;->d()Lcom/google/android/gms/internal/ads/drn;

    move-result-object v0

    invoke-interface {p7, p10, v0}, Lcom/google/android/gms/internal/ads/dqg;->a(ILcom/google/android/gms/internal/ads/drn;)Lcom/google/android/gms/internal/ads/dqe;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dlb;->a:Lcom/google/android/gms/internal/ads/dqe;

    .line 16
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dlb;->e:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dlb;->g:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final a(JZ)J
    .locals 3

    .prologue
    .line 39
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dlb;->n:[Lcom/google/android/gms/internal/ads/dli;

    array-length v1, v1

    new-array v1, v1, [Z

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/gms/internal/ads/dlb;->a(JZ[Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(JZ[Z)J
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dlb;->l:Lcom/google/android/gms/internal/ads/drl;

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/drl;->b:Lcom/google/android/gms/internal/ads/drg;

    move v0, v8

    .line 41
    :goto_0
    iget v1, v10, Lcom/google/android/gms/internal/ads/drg;->a:I

    if-ge v0, v1, :cond_1

    .line 42
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dlb;->m:[Z

    if-nez p3, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dlb;->l:Lcom/google/android/gms/internal/ads/drl;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dlb;->s:Lcom/google/android/gms/internal/ads/drl;

    .line 43
    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/internal/ads/drl;->a(Lcom/google/android/gms/internal/ads/drl;I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v9

    :goto_1
    aput-boolean v1, v2, v0

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v8

    .line 43
    goto :goto_1

    .line 45
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dlb;->a:Lcom/google/android/gms/internal/ads/dqe;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/drg;->a()[Lcom/google/android/gms/internal/ads/dre;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dlb;->m:[Z

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dlb;->d:[Lcom/google/android/gms/internal/ads/dqo;

    move-object v5, p4

    move-wide v6, p1

    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/dqe;->a([Lcom/google/android/gms/internal/ads/dre;[Z[Lcom/google/android/gms/internal/ads/dqo;[ZJ)J

    move-result-wide v2

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dlb;->l:Lcom/google/android/gms/internal/ads/drl;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dlb;->s:Lcom/google/android/gms/internal/ads/drl;

    .line 47
    iput-boolean v8, p0, Lcom/google/android/gms/internal/ads/dlb;->j:Z

    move v0, v8

    .line 48
    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dlb;->d:[Lcom/google/android/gms/internal/ads/dqo;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 49
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dlb;->d:[Lcom/google/android/gms/internal/ads/dqo;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    .line 50
    invoke-virtual {v10, v0}, Lcom/google/android/gms/internal/ads/drg;->a(I)Lcom/google/android/gms/internal/ads/dre;

    move-result-object v1

    if-eqz v1, :cond_2

    move v1, v9

    :goto_3
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/drz;->b(Z)V

    .line 51
    iput-boolean v9, p0, Lcom/google/android/gms/internal/ads/dlb;->j:Z

    .line 53
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move v1, v8

    .line 50
    goto :goto_3

    .line 52
    :cond_3
    invoke-virtual {v10, v0}, Lcom/google/android/gms/internal/ads/drg;->a(I)Lcom/google/android/gms/internal/ads/dre;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v9

    :goto_5
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/drz;->b(Z)V

    goto :goto_4

    :cond_4
    move v1, v8

    goto :goto_5

    .line 54
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dlb;->q:Lcom/google/android/gms/internal/ads/dlh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dlb;->n:[Lcom/google/android/gms/internal/ads/dli;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dlb;->l:Lcom/google/android/gms/internal/ads/drl;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/drl;->a:Lcom/google/android/gms/internal/ads/dqv;

    invoke-interface {v0, v1, v4, v10}, Lcom/google/android/gms/internal/ads/dlh;->a([Lcom/google/android/gms/internal/ads/dli;Lcom/google/android/gms/internal/ads/dqv;Lcom/google/android/gms/internal/ads/drg;)V

    .line 55
    return-wide v2
.end method

.method public final a(IZ)V
    .locals 0

    .prologue
    .line 18
    iput p1, p0, Lcom/google/android/gms/internal/ads/dlb;->f:I

    .line 19
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/dlb;->h:Z

    .line 20
    return-void
.end method

.method public final b()Z
    .locals 4

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dlb;->i:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dlb;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dlb;->a:Lcom/google/android/gms/internal/ads/dqe;

    .line 22
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dqe;->f()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 23
    :goto_0
    return v0

    .line 22
    :cond_1
    const/4 v0, 0x0

    .line 23
    goto :goto_0
.end method

.method public final c()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dlb;->p:Lcom/google/android/gms/internal/ads/drj;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dlb;->o:[Lcom/google/android/gms/internal/ads/dll;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dlb;->a:Lcom/google/android/gms/internal/ads/dqe;

    .line 25
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/dqe;->d()Lcom/google/android/gms/internal/ads/dqv;

    move-result-object v4

    .line 26
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/drj;->a([Lcom/google/android/gms/internal/ads/dll;Lcom/google/android/gms/internal/ads/dqv;)Lcom/google/android/gms/internal/ads/drl;

    move-result-object v3

    .line 27
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dlb;->s:Lcom/google/android/gms/internal/ads/drl;

    .line 28
    if-nez v4, :cond_0

    move v0, v1

    .line 35
    :goto_0
    if-eqz v0, :cond_3

    .line 38
    :goto_1
    return v1

    :cond_0
    move v0, v1

    .line 30
    :goto_2
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/drl;->b:Lcom/google/android/gms/internal/ads/drg;

    iget v5, v5, Lcom/google/android/gms/internal/ads/drg;->a:I

    if-ge v0, v5, :cond_2

    .line 31
    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/internal/ads/drl;->a(Lcom/google/android/gms/internal/ads/drl;I)Z

    move-result v5

    if-nez v5, :cond_1

    move v0, v1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move v0, v2

    .line 34
    goto :goto_0

    .line 37
    :cond_3
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/dlb;->l:Lcom/google/android/gms/internal/ads/drl;

    move v1, v2

    .line 38
    goto :goto_1
.end method

.method public final d()V
    .locals 3

    .prologue
    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dlb;->r:Lcom/google/android/gms/internal/ads/dqg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dlb;->a:Lcom/google/android/gms/internal/ads/dqe;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/dqg;->a(Lcom/google/android/gms/internal/ads/dqe;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    const-string/jumbo v1, "ExoPlayerImplInternal"

    const-string/jumbo v2, "Period release failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
