.class final Lcom/google/android/gms/internal/ads/dvs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/eas;

.field public final b:Ljava/lang/Object;

.field public final c:I

.field public final d:[Lcom/google/android/gms/internal/ads/ebc;

.field public final e:J

.field public f:I

.field public g:J

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Lcom/google/android/gms/internal/ads/dvs;

.field public l:Lcom/google/android/gms/internal/ads/ebx;

.field private final m:[Z

.field private final n:[Lcom/google/android/gms/internal/ads/dvy;

.field private final o:[Lcom/google/android/gms/internal/ads/dwc;

.field private final p:Lcom/google/android/gms/internal/ads/ebv;

.field private final q:Lcom/google/android/gms/internal/ads/dvx;

.field private final r:Lcom/google/android/gms/internal/ads/eau;

.field private s:Lcom/google/android/gms/internal/ads/ebx;


# direct methods
.method public constructor <init>([Lcom/google/android/gms/internal/ads/dvy;[Lcom/google/android/gms/internal/ads/dwc;JLcom/google/android/gms/internal/ads/ebv;Lcom/google/android/gms/internal/ads/dvx;Lcom/google/android/gms/internal/ads/eau;Ljava/lang/Object;IIZJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dvs;->n:[Lcom/google/android/gms/internal/ads/dvy;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dvs;->o:[Lcom/google/android/gms/internal/ads/dwc;

    .line 4
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/dvs;->e:J

    .line 5
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/dvs;->p:Lcom/google/android/gms/internal/ads/ebv;

    .line 6
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/dvs;->q:Lcom/google/android/gms/internal/ads/dvx;

    .line 7
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/dvs;->r:Lcom/google/android/gms/internal/ads/eau;

    .line 8
    invoke-static {p8}, Lcom/google/android/gms/internal/ads/ecr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dvs;->b:Ljava/lang/Object;

    .line 9
    iput p9, p0, Lcom/google/android/gms/internal/ads/dvs;->c:I

    .line 10
    iput p10, p0, Lcom/google/android/gms/internal/ads/dvs;->f:I

    .line 11
    iput-boolean p11, p0, Lcom/google/android/gms/internal/ads/dvs;->h:Z

    .line 12
    iput-wide p12, p0, Lcom/google/android/gms/internal/ads/dvs;->g:J

    .line 13
    array-length p2, p1

    new-array p2, p2, [Lcom/google/android/gms/internal/ads/ebc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dvs;->d:[Lcom/google/android/gms/internal/ads/ebc;

    .line 14
    array-length p1, p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dvs;->m:[Z

    .line 15
    invoke-interface {p6}, Lcom/google/android/gms/internal/ads/dvx;->d()Lcom/google/android/gms/internal/ads/ebz;

    move-result-object p1

    invoke-interface {p7, p10, p1}, Lcom/google/android/gms/internal/ads/eau;->a(ILcom/google/android/gms/internal/ads/ebz;)Lcom/google/android/gms/internal/ads/eas;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dvs;->a:Lcom/google/android/gms/internal/ads/eas;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4

    .line 17
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dvs;->e:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dvs;->g:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final a(J)J
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvs;->n:[Lcom/google/android/gms/internal/ads/dvy;

    array-length v0, v0

    new-array v0, v0, [Z

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/google/android/gms/internal/ads/dvs;->a(JZ[Z)J

    move-result-wide p1

    return-wide p1
.end method

.method public final a(JZ[Z)J
    .locals 13

    move-object v0, p0

    .line 40
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/dvs;->l:Lcom/google/android/gms/internal/ads/ebx;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/ebx;->b:Lcom/google/android/gms/internal/ads/ebw;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 41
    :goto_0
    iget v4, v1, Lcom/google/android/gms/internal/ads/ebw;->a:I

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    .line 42
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dvs;->m:[Z

    if-nez p3, :cond_0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/dvs;->l:Lcom/google/android/gms/internal/ads/ebx;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/dvs;->s:Lcom/google/android/gms/internal/ads/ebx;

    .line 43
    invoke-virtual {v6, v7, v3}, Lcom/google/android/gms/internal/ads/ebx;->a(Lcom/google/android/gms/internal/ads/ebx;I)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    aput-boolean v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 45
    :cond_1
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/dvs;->a:Lcom/google/android/gms/internal/ads/eas;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ebw;->a()[Lcom/google/android/gms/internal/ads/ebu;

    move-result-object v7

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/dvs;->m:[Z

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/dvs;->d:[Lcom/google/android/gms/internal/ads/ebc;

    move-object/from16 v10, p4

    move-wide v11, p1

    invoke-interface/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/eas;->a([Lcom/google/android/gms/internal/ads/ebu;[Z[Lcom/google/android/gms/internal/ads/ebc;[ZJ)J

    move-result-wide v3

    .line 46
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/dvs;->l:Lcom/google/android/gms/internal/ads/ebx;

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/dvs;->s:Lcom/google/android/gms/internal/ads/ebx;

    .line 47
    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/dvs;->j:Z

    const/4 v6, 0x0

    .line 48
    :goto_2
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/dvs;->d:[Lcom/google/android/gms/internal/ads/ebc;

    array-length v8, v7

    if-ge v6, v8, :cond_5

    .line 49
    aget-object v7, v7, v6

    if-eqz v7, :cond_3

    .line 1005
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/ebw;->b:[Lcom/google/android/gms/internal/ads/ebu;

    aget-object v7, v7, v6

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    goto :goto_3

    :cond_2
    const/4 v7, 0x0

    .line 50
    :goto_3
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/ecr;->b(Z)V

    .line 51
    iput-boolean v5, v0, Lcom/google/android/gms/internal/ads/dvs;->j:Z

    goto :goto_5

    .line 2005
    :cond_3
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/ebw;->b:[Lcom/google/android/gms/internal/ads/ebu;

    aget-object v7, v7, v6

    if-nez v7, :cond_4

    const/4 v7, 0x1

    goto :goto_4

    :cond_4
    const/4 v7, 0x0

    .line 52
    :goto_4
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/ecr;->b(Z)V

    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 54
    :cond_5
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/dvs;->q:Lcom/google/android/gms/internal/ads/dvx;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dvs;->n:[Lcom/google/android/gms/internal/ads/dvy;

    invoke-interface {v2, v5, v1}, Lcom/google/android/gms/internal/ads/dvx;->a([Lcom/google/android/gms/internal/ads/dvy;Lcom/google/android/gms/internal/ads/ebw;)V

    return-wide v3
.end method

.method public final a(IZ)V
    .locals 0

    .line 18
    iput p1, p0, Lcom/google/android/gms/internal/ads/dvs;->f:I

    .line 19
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/dvs;->h:Z

    return-void
.end method

.method public final b()Z
    .locals 5

    .line 21
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dvs;->i:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dvs;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvs;->a:Lcom/google/android/gms/internal/ads/eas;

    .line 22
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/eas;->e()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhe;
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvs;->p:Lcom/google/android/gms/internal/ads/ebv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dvs;->o:[Lcom/google/android/gms/internal/ads/dwc;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dvs;->a:Lcom/google/android/gms/internal/ads/eas;

    .line 25
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/eas;->c()Lcom/google/android/gms/internal/ads/ebi;

    move-result-object v2

    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ebv;->a([Lcom/google/android/gms/internal/ads/dwc;Lcom/google/android/gms/internal/ads/ebi;)Lcom/google/android/gms/internal/ads/ebx;

    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dvs;->s:Lcom/google/android/gms/internal/ads/ebx;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    :goto_0
    const/4 v1, 0x0

    goto :goto_2

    :cond_0
    const/4 v4, 0x0

    .line 30
    :goto_1
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/ebx;->b:Lcom/google/android/gms/internal/ads/ebw;

    iget v5, v5, Lcom/google/android/gms/internal/ads/ebw;->a:I

    if-ge v4, v5, :cond_2

    .line 31
    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/internal/ads/ebx;->a(Lcom/google/android/gms/internal/ads/ebx;I)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_3

    return v3

    .line 37
    :cond_3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dvs;->l:Lcom/google/android/gms/internal/ads/ebx;

    return v2
.end method

.method public final d()V
    .locals 3

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvs;->r:Lcom/google/android/gms/internal/ads/eau;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dvs;->a:Lcom/google/android/gms/internal/ads/eas;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/eau;->a(Lcom/google/android/gms/internal/ads/eas;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "ExoPlayerImplInternal"

    const-string v2, "Period release failed."

    .line 59
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
