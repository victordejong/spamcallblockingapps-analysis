.class public final Lcom/google/android/gms/internal/ads/zzaei;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzafe;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzadr;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfc;

.field private zzc:I

.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/ads/zzfk;

.field private zzf:Z

.field private zzg:Z

.field private zzh:Z

.field private zzi:I

.field private zzj:I

.field private zzk:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzadr;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaei;->zza:Lcom/google/android/gms/internal/ads/zzadr;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfc;

    const/16 v0, 0xa

    new-array v1, v0, [B

    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzfc;-><init>([BI)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzb:Lcom/google/android/gms/internal/ads/zzfc;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzc:I

    return-void
.end method

.method private final zzd(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzc:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzd:I

    return-void
.end method

.method private final zze(Lcom/google/android/gms/internal/ads/zzfd;[BI)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfd;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzd:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    if-gtz v0, :cond_0

    return v1

    :cond_0
    if-nez p2, :cond_1

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfd;->zzG(I)V

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzd:I

    .line 3
    invoke-virtual {p1, p2, v2, v0}, Lcom/google/android/gms/internal/ads/zzfd;->zzB([BII)V

    .line 4
    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzd:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzd:I

    if-ne p1, p3, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfd;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbj;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaei;->zze:Lcom/google/android/gms/internal/ads/zzfk;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v0, p2, 0x1

    const-string v1, "PesReader"

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzc:I

    if-eqz v0, :cond_2

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzj:I

    if-eq v0, v2, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x3b

    .line 2
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Unexpected start indicator: expected "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " more bytes"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaei;->zza:Lcom/google/android/gms/internal/ads/zzadr;

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzadr;->zzc()V

    goto :goto_0

    :cond_1
    const-string v0, "Unexpected start indicator reading extended header"

    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_2
    :goto_0
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/zzaei;->zzd(I)V

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfd;->zza()I

    move-result v0

    if-lez v0, :cond_11

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzc:I

    if-eqz v0, :cond_f

    const/4 v5, 0x0

    if-eq v0, v4, :cond_b

    if-eq v0, v3, :cond_6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfd;->zza()I

    move-result v0

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzj:I

    if-ne v3, v2, :cond_4

    goto :goto_2

    :cond_4
    sub-int v5, v0, v3

    :goto_2
    if-lez v5, :cond_5

    sub-int/2addr v0, v5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfd;->zzc()I

    move-result v3

    add-int/2addr v3, v0

    .line 7
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzfd;->zzE(I)V

    :cond_5
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaei;->zza:Lcom/google/android/gms/internal/ads/zzadr;

    .line 8
    invoke-interface {v3, p1}, Lcom/google/android/gms/internal/ads/zzadr;->zza(Lcom/google/android/gms/internal/ads/zzfd;)V

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzj:I

    if-eq v3, v2, :cond_10

    sub-int/2addr v3, v0

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzj:I

    if-nez v3, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaei;->zza:Lcom/google/android/gms/internal/ads/zzadr;

    .line 9
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzadr;->zzc()V

    .line 10
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/zzaei;->zzd(I)V

    goto/16 :goto_8

    :cond_6
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzi:I

    const/16 v3, 0xa

    .line 11
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzb:Lcom/google/android/gms/internal/ads/zzfc;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzfc;->zza:[B

    .line 12
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzaei;->zze(Lcom/google/android/gms/internal/ads/zzfd;[BI)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzi:I

    .line 13
    invoke-direct {p0, p1, v0, v3}, Lcom/google/android/gms/internal/ads/zzaei;->zze(Lcom/google/android/gms/internal/ads/zzfd;[BI)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzb:Lcom/google/android/gms/internal/ads/zzfc;

    .line 14
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzfc;->zzh(I)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzf:Z

    const/4 v2, 0x3

    const/4 v3, 0x4

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzb:Lcom/google/android/gms/internal/ads/zzfc;

    .line 15
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfc;->zzj(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzb:Lcom/google/android/gms/internal/ads/zzfc;

    .line 16
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfc;->zzc(I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzb:Lcom/google/android/gms/internal/ads/zzfc;

    .line 17
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzfc;->zzj(I)V

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzb:Lcom/google/android/gms/internal/ads/zzfc;

    const/16 v6, 0xf

    .line 18
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzfc;->zzc(I)I

    move-result v5

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzb:Lcom/google/android/gms/internal/ads/zzfc;

    .line 19
    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/zzfc;->zzj(I)V

    int-to-long v7, v0

    const/16 v0, 0x1e

    shl-long/2addr v7, v0

    shl-int/2addr v5, v6

    int-to-long v9, v5

    or-long/2addr v7, v9

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzb:Lcom/google/android/gms/internal/ads/zzfc;

    .line 20
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzfc;->zzc(I)I

    move-result v5

    int-to-long v9, v5

    or-long/2addr v7, v9

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzb:Lcom/google/android/gms/internal/ads/zzfc;

    .line 21
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzfc;->zzj(I)V

    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzh:Z

    if-nez v5, :cond_7

    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzg:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzb:Lcom/google/android/gms/internal/ads/zzfc;

    .line 22
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzfc;->zzj(I)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzb:Lcom/google/android/gms/internal/ads/zzfc;

    .line 23
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzfc;->zzc(I)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzb:Lcom/google/android/gms/internal/ads/zzfc;

    .line 24
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzfc;->zzj(I)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzb:Lcom/google/android/gms/internal/ads/zzfc;

    .line 25
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzfc;->zzc(I)I

    move-result v3

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzb:Lcom/google/android/gms/internal/ads/zzfc;

    .line 26
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzfc;->zzj(I)V

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzb:Lcom/google/android/gms/internal/ads/zzfc;

    .line 27
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzfc;->zzc(I)I

    move-result v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzb:Lcom/google/android/gms/internal/ads/zzfc;

    .line 28
    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzfc;->zzj(I)V

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzaei;->zze:Lcom/google/android/gms/internal/ads/zzfk;

    int-to-long v9, v2

    shl-long/2addr v9, v0

    shl-int/lit8 v0, v3, 0xf

    int-to-long v2, v0

    or-long/2addr v2, v9

    int-to-long v9, v5

    or-long/2addr v2, v9

    .line 29
    invoke-virtual {v6, v2, v3}, Lcom/google/android/gms/internal/ads/zzfk;->zzb(J)J

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzh:Z

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaei;->zze:Lcom/google/android/gms/internal/ads/zzfk;

    .line 30
    invoke-virtual {v0, v7, v8}, Lcom/google/android/gms/internal/ads/zzfk;->zzb(J)J

    move-result-wide v2

    goto :goto_3

    :cond_8
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    :goto_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzk:Z

    if-eq v4, v0, :cond_9

    const/4 v0, 0x0

    goto :goto_4

    :cond_9
    const/4 v0, 0x4

    :goto_4
    or-int/2addr p2, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaei;->zza:Lcom/google/android/gms/internal/ads/zzadr;

    .line 31
    invoke-interface {v0, v2, v3, p2}, Lcom/google/android/gms/internal/ads/zzadr;->zzd(JI)V

    const/4 v0, 0x3

    .line 32
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzaei;->zzd(I)V

    const/4 v0, -0x1

    :cond_a
    const/4 v2, -0x1

    goto/16 :goto_8

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzb:Lcom/google/android/gms/internal/ads/zzfc;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfc;->zza:[B

    const/16 v2, 0x9

    .line 33
    invoke-direct {p0, p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzaei;->zze(Lcom/google/android/gms/internal/ads/zzfd;[BI)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzb:Lcom/google/android/gms/internal/ads/zzfc;

    const/4 v2, 0x0

    .line 34
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfc;->zzh(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzb:Lcom/google/android/gms/internal/ads/zzfc;

    const/16 v3, 0x18

    .line 35
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfc;->zzc(I)I

    move-result v0

    if-eq v0, v4, :cond_c

    const/16 v3, 0x29

    const-string v5, "Unexpected start code prefix: "

    invoke-static {v3, v5, v0, v1}, La6/d;->g(ILjava/lang/String;ILjava/lang/String;)V

    const/4 v0, -0x1

    .line 36
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzj:I

    goto :goto_7

    .line 37
    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzb:Lcom/google/android/gms/internal/ads/zzfc;

    const/16 v2, 0x8

    .line 38
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfc;->zzj(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzb:Lcom/google/android/gms/internal/ads/zzfc;

    const/16 v3, 0x10

    .line 39
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfc;->zzc(I)I

    move-result v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzb:Lcom/google/android/gms/internal/ads/zzfc;

    const/4 v5, 0x5

    .line 40
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzfc;->zzj(I)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzb:Lcom/google/android/gms/internal/ads/zzfc;

    .line 41
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfc;->zzl()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzk:Z

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzb:Lcom/google/android/gms/internal/ads/zzfc;

    const/4 v5, 0x2

    .line 42
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzfc;->zzj(I)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzb:Lcom/google/android/gms/internal/ads/zzfc;

    .line 43
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfc;->zzl()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzf:Z

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzb:Lcom/google/android/gms/internal/ads/zzfc;

    .line 44
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfc;->zzl()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzg:Z

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzb:Lcom/google/android/gms/internal/ads/zzfc;

    const/4 v5, 0x6

    .line 45
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzfc;->zzj(I)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzb:Lcom/google/android/gms/internal/ads/zzfc;

    .line 46
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzfc;->zzc(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzi:I

    if-nez v0, :cond_d

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzj:I

    goto :goto_5

    :cond_d
    add-int/lit8 v0, v0, -0x3

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzj:I

    if-gez v0, :cond_e

    const/16 v2, 0x2f

    const-string v3, "Found negative packet payload size: "

    invoke-static {v2, v3, v0, v1}, La6/d;->g(ILjava/lang/String;ILjava/lang/String;)V

    const/4 v0, -0x1

    .line 47
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzj:I

    goto :goto_6

    :cond_e
    :goto_5
    const/4 v0, -0x1

    :goto_6
    const/4 v2, 0x2

    .line 48
    :goto_7
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzaei;->zzd(I)V

    move v2, v0

    goto :goto_8

    .line 49
    :cond_f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfd;->zza()I

    move-result v0

    .line 50
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfd;->zzG(I)V

    :cond_10
    :goto_8
    const/4 v3, 0x2

    goto/16 :goto_1

    :cond_11
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfk;Lcom/google/android/gms/internal/ads/zzws;Lcom/google/android/gms/internal/ads/zzafd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaei;->zze:Lcom/google/android/gms/internal/ads/zzfk;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaei;->zza:Lcom/google/android/gms/internal/ads/zzadr;

    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzadr;->zzb(Lcom/google/android/gms/internal/ads/zzws;Lcom/google/android/gms/internal/ads/zzafd;)V

    return-void
.end method

.method public final zzc()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzc:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzd:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzh:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaei;->zza:Lcom/google/android/gms/internal/ads/zzadr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzadr;->zze()V

    return-void
.end method
