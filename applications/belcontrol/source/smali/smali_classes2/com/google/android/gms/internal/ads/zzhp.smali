.class public final Lcom/google/android/gms/internal/ads/zzhp;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final index:I

.field private final zzaeq:[Lcom/google/android/gms/internal/ads/zzhy;

.field private final zzaer:Lcom/google/android/gms/internal/ads/zzoh;

.field private final zzafn:[Lcom/google/android/gms/internal/ads/zzib;

.field private final zzafo:Lcom/google/android/gms/internal/ads/zzhx;

.field private final zzafu:Lcom/google/android/gms/internal/ads/zzne;

.field public zzagi:I

.field public zzagj:J

.field public final zzagm:Lcom/google/android/gms/internal/ads/zznc;

.field public final zzagn:Ljava/lang/Object;

.field public final zzago:[Lcom/google/android/gms/internal/ads/zznn;

.field private final zzagp:[Z

.field public final zzagq:J

.field public zzagr:Z

.field public zzags:Z

.field public zzagt:Z

.field public zzagu:Lcom/google/android/gms/internal/ads/zzhp;

.field public zzagv:Lcom/google/android/gms/internal/ads/zzoj;

.field private zzagw:Lcom/google/android/gms/internal/ads/zzoj;


# direct methods
.method public constructor <init>([Lcom/google/android/gms/internal/ads/zzhy;[Lcom/google/android/gms/internal/ads/zzib;JLcom/google/android/gms/internal/ads/zzoh;Lcom/google/android/gms/internal/ads/zzhx;Lcom/google/android/gms/internal/ads/zzne;Ljava/lang/Object;IIZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzaeq:[Lcom/google/android/gms/internal/ads/zzhy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzafn:[Lcom/google/android/gms/internal/ads/zzib;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzagq:J

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzaer:Lcom/google/android/gms/internal/ads/zzoh;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzafo:Lcom/google/android/gms/internal/ads/zzhx;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzafu:Lcom/google/android/gms/internal/ads/zzne;

    invoke-static {p8}, Lcom/google/android/gms/internal/ads/zzpg;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzagn:Ljava/lang/Object;

    iput p9, p0, Lcom/google/android/gms/internal/ads/zzhp;->index:I

    iput p10, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzagi:I

    iput-boolean p11, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzagr:Z

    iput-wide p12, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzagj:J

    array-length p2, p1

    new-array p2, p2, [Lcom/google/android/gms/internal/ads/zznn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzago:[Lcom/google/android/gms/internal/ads/zznn;

    array-length p1, p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzagp:[Z

    invoke-interface {p6}, Lcom/google/android/gms/internal/ads/zzhx;->zzfd()Lcom/google/android/gms/internal/ads/zzol;

    move-result-object p1

    invoke-interface {p7, p10, p1}, Lcom/google/android/gms/internal/ads/zzne;->zza(ILcom/google/android/gms/internal/ads/zzol;)Lcom/google/android/gms/internal/ads/zznc;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzagm:Lcom/google/android/gms/internal/ads/zznc;

    return-void
.end method


# virtual methods
.method public final release()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzafu:Lcom/google/android/gms/internal/ads/zzne;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzagm:Lcom/google/android/gms/internal/ads/zznc;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzne;->zzb(Lcom/google/android/gms/internal/ads/zznc;)V
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

.method public final zza(JZ[Z)J
    .locals 13

    move-object v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzagv:Lcom/google/android/gms/internal/ads/zzoj;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzoj;->zzbhy:Lcom/google/android/gms/internal/ads/zzoi;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget v4, v1, Lcom/google/android/gms/internal/ads/zzoi;->length:I

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzagp:[Z

    if-nez p3, :cond_0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzagv:Lcom/google/android/gms/internal/ads/zzoj;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzagw:Lcom/google/android/gms/internal/ads/zzoj;

    invoke-virtual {v6, v7, v3}, Lcom/google/android/gms/internal/ads/zzoj;->zza(Lcom/google/android/gms/internal/ads/zzoj;I)Z

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
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzagm:Lcom/google/android/gms/internal/ads/zznc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzoi;->zzim()[Lcom/google/android/gms/internal/ads/zzog;

    move-result-object v7

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzagp:[Z

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzago:[Lcom/google/android/gms/internal/ads/zznn;

    move-object/from16 v10, p4

    move-wide v11, p1

    invoke-interface/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/zznc;->zza([Lcom/google/android/gms/internal/ads/zzog;[Z[Lcom/google/android/gms/internal/ads/zznn;[ZJ)J

    move-result-wide v3

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzagv:Lcom/google/android/gms/internal/ads/zzoj;

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzagw:Lcom/google/android/gms/internal/ads/zzoj;

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzagt:Z

    const/4 v6, 0x0

    :goto_2
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzago:[Lcom/google/android/gms/internal/ads/zznn;

    array-length v8, v7

    if-ge v6, v8, :cond_5

    aget-object v7, v7, v6

    if-eqz v7, :cond_3

    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzoi;->zzbe(I)Lcom/google/android/gms/internal/ads/zzog;

    move-result-object v7

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    goto :goto_3

    :cond_2
    const/4 v7, 0x0

    :goto_3
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzpg;->checkState(Z)V

    iput-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzagt:Z

    goto :goto_5

    :cond_3
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzoi;->zzbe(I)Lcom/google/android/gms/internal/ads/zzog;

    move-result-object v7

    if-nez v7, :cond_4

    const/4 v7, 0x1

    goto :goto_4

    :cond_4
    const/4 v7, 0x0

    :goto_4
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzpg;->checkState(Z)V

    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzafo:Lcom/google/android/gms/internal/ads/zzhx;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzaeq:[Lcom/google/android/gms/internal/ads/zzhy;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzagv:Lcom/google/android/gms/internal/ads/zzoj;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzoj;->zzbhx:Lcom/google/android/gms/internal/ads/zznu;

    invoke-interface {v2, v5, v6, v1}, Lcom/google/android/gms/internal/ads/zzhx;->zza([Lcom/google/android/gms/internal/ads/zzhy;Lcom/google/android/gms/internal/ads/zznu;Lcom/google/android/gms/internal/ads/zzoi;)V

    return-wide v3
.end method

.method public final zzb(JZ)J
    .locals 1

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzaeq:[Lcom/google/android/gms/internal/ads/zzhy;

    array-length p3, p3

    new-array p3, p3, [Z

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/google/android/gms/internal/ads/zzhp;->zza(JZ[Z)J

    move-result-wide p1

    return-wide p1
.end method

.method public final zzc(IZ)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzagi:I

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzagr:Z

    return-void
.end method

.method public final zzew()J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzagq:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzagj:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final zzex()Z
    .locals 5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzags:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzagt:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzagm:Lcom/google/android/gms/internal/ads/zznc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zznc;->zzhr()J

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

.method public final zzey()Z
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzaer:Lcom/google/android/gms/internal/ads/zzoh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzafn:[Lcom/google/android/gms/internal/ads/zzib;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzagm:Lcom/google/android/gms/internal/ads/zznc;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zznc;->zzhp()Lcom/google/android/gms/internal/ads/zznu;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzoh;->zza([Lcom/google/android/gms/internal/ads/zzib;Lcom/google/android/gms/internal/ads/zznu;)Lcom/google/android/gms/internal/ads/zzoj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzagw:Lcom/google/android/gms/internal/ads/zzoj;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    :goto_0
    const/4 v1, 0x0

    goto :goto_2

    :cond_0
    const/4 v4, 0x0

    :goto_1
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzoj;->zzbhy:Lcom/google/android/gms/internal/ads/zzoi;

    iget v5, v5, Lcom/google/android/gms/internal/ads/zzoi;->length:I

    if-ge v4, v5, :cond_2

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/internal/ads/zzoj;->zza(Lcom/google/android/gms/internal/ads/zzoj;I)Z

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

    :cond_3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzagv:Lcom/google/android/gms/internal/ads/zzoj;

    return v2
.end method
