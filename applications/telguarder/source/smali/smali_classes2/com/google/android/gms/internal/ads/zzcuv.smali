.class final Lcom/google/android/gms/internal/ads/zzcuv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdzl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdzl<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final synthetic zzgjc:Lcom/google/android/gms/internal/ads/zzdnb;

.field private final synthetic zzgvc:J

.field private final synthetic zzgvd:Ljava/lang/String;

.field private final synthetic zzgve:Lcom/google/android/gms/internal/ads/zzdmw;

.field private final synthetic zzgvf:Lcom/google/android/gms/internal/ads/zzcuw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcuw;JLjava/lang/String;Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzdnb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcuv;->zzgvf:Lcom/google/android/gms/internal/ads/zzcuw;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzcuv;->zzgvc:J

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcuv;->zzgvd:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcuv;->zzgve:Lcom/google/android/gms/internal/ads/zzdmw;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcuv;->zzgjc:Lcom/google/android/gms/internal/ads/zzdnb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcuv;->zzgvf:Lcom/google/android/gms/internal/ads/zzcuw;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcuw;->zza(Lcom/google/android/gms/internal/ads/zzcuw;)Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzcuv;->zzgvc:J

    sub-long/2addr v0, v2

    .line 3
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcuv;->zzgvf:Lcom/google/android/gms/internal/ads/zzcuw;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcuv;->zzgvd:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcuv;->zzgve:Lcom/google/android/gms/internal/ads/zzdmw;

    iget-object v9, p1, Lcom/google/android/gms/internal/ads/zzdmw;->zzhjw:Ljava/lang/String;

    const/4 v6, 0x0

    move-wide v7, v0

    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzcuw;->zza(Lcom/google/android/gms/internal/ads/zzcuw;Ljava/lang/String;IJLjava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcuv;->zzgvf:Lcom/google/android/gms/internal/ads/zzcuw;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcuw;->zzb(Lcom/google/android/gms/internal/ads/zzcuw;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcuv;->zzgvf:Lcom/google/android/gms/internal/ads/zzcuw;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcuw;->zzc(Lcom/google/android/gms/internal/ads/zzcuw;)Lcom/google/android/gms/internal/ads/zzcuy;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcuv;->zzgjc:Lcom/google/android/gms/internal/ads/zzdnb;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzcuv;->zzgve:Lcom/google/android/gms/internal/ads/zzdmw;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v9, v0

    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzcuy;->zza(Lcom/google/android/gms/internal/ads/zzdnb;Lcom/google/android/gms/internal/ads/zzdmw;ILcom/google/android/gms/internal/ads/zzcrn;J)V

    .line 6
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabp;->zzdab:Lcom/google/android/gms/internal/ads/zzaba;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object p1

    .line 8
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcuv;->zzgvf:Lcom/google/android/gms/internal/ads/zzcuw;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcuw;->zzd(Lcom/google/android/gms/internal/ads/zzcuw;)Lcom/google/android/gms/internal/ads/zzcrq;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcuv;->zzgve:Lcom/google/android/gms/internal/ads/zzdmw;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzcrq;->zza(Lcom/google/android/gms/internal/ads/zzdmw;JLcom/google/android/gms/internal/ads/zzvg;)V

    :cond_1
    return-void
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .locals 12

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuv;->zzgvf:Lcom/google/android/gms/internal/ads/zzcuw;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcuw;->zza(Lcom/google/android/gms/internal/ads/zzcuw;)Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzcuv;->zzgvc:J

    sub-long/2addr v0, v2

    .line 12
    instance-of v2, p1, Ljava/util/concurrent/TimeoutException;

    const/4 v3, 0x6

    const/4 v11, 0x3

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    .line 14
    :cond_0
    instance-of v2, p1, Lcom/google/android/gms/internal/ads/zzcum;

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    .line 16
    :cond_1
    instance-of v2, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    goto :goto_0

    .line 18
    :cond_2
    instance-of v2, p1, Lcom/google/android/gms/internal/ads/zzdnt;

    if-eqz v2, :cond_3

    const/4 v2, 0x5

    goto :goto_0

    .line 20
    :cond_3
    instance-of v2, p1, Lcom/google/android/gms/internal/ads/zzcmb;

    if-eqz v2, :cond_4

    .line 21
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdok;->zzh(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzvg;

    move-result-object v2

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzvg;->errorCode:I

    if-ne v2, v11, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x6

    .line 27
    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcuv;->zzgvf:Lcom/google/android/gms/internal/ads/zzcuw;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcuv;->zzgvd:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcuv;->zzgve:Lcom/google/android/gms/internal/ads/zzdmw;

    iget-object v9, v3, Lcom/google/android/gms/internal/ads/zzdmw;->zzhjw:Ljava/lang/String;

    move v6, v2

    move-wide v7, v0

    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzcuw;->zza(Lcom/google/android/gms/internal/ads/zzcuw;Ljava/lang/String;IJLjava/lang/String;)V

    .line 28
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcuv;->zzgvf:Lcom/google/android/gms/internal/ads/zzcuw;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzcuw;->zzb(Lcom/google/android/gms/internal/ads/zzcuw;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 29
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcuv;->zzgvf:Lcom/google/android/gms/internal/ads/zzcuw;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzcuw;->zzc(Lcom/google/android/gms/internal/ads/zzcuw;)Lcom/google/android/gms/internal/ads/zzcuy;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcuv;->zzgjc:Lcom/google/android/gms/internal/ads/zzdnb;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzcuv;->zzgve:Lcom/google/android/gms/internal/ads/zzdmw;

    .line 30
    instance-of v3, p1, Lcom/google/android/gms/internal/ads/zzcrn;

    if-eqz v3, :cond_5

    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzcrn;

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    :goto_1
    move-object v8, v3

    move v7, v2

    move-wide v9, v0

    .line 31
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzcuy;->zza(Lcom/google/android/gms/internal/ads/zzdnb;Lcom/google/android/gms/internal/ads/zzdmw;ILcom/google/android/gms/internal/ads/zzcrn;J)V

    .line 32
    :cond_6
    sget-object v2, Lcom/google/android/gms/internal/ads/zzabp;->zzdab:Lcom/google/android/gms/internal/ads/zzaba;

    .line 33
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v2

    .line 34
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 36
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdok;->zzh(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzvg;

    move-result-object p1

    .line 37
    iget v2, p1, Lcom/google/android/gms/internal/ads/zzvg;->errorCode:I

    if-eq v2, v11, :cond_7

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzvg;->errorCode:I

    if-nez v2, :cond_8

    :cond_7
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzvg;->zzchi:Lcom/google/android/gms/internal/ads/zzvg;

    if-eqz v2, :cond_8

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzvg;->zzchi:Lcom/google/android/gms/internal/ads/zzvg;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzvg;->zzchh:Ljava/lang/String;

    const-string v3, "com.google.android.gms.ads"

    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 39
    new-instance v2, Lcom/google/android/gms/internal/ads/zzcrn;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzdom;->zzhmg:Lcom/google/android/gms/internal/ads/zzdom;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzvg;->zzchi:Lcom/google/android/gms/internal/ads/zzvg;

    invoke-direct {v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzcrn;-><init>(Lcom/google/android/gms/internal/ads/zzdom;Lcom/google/android/gms/internal/ads/zzvg;)V

    .line 40
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdok;->zzh(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzvg;

    move-result-object p1

    .line 43
    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcuv;->zzgvf:Lcom/google/android/gms/internal/ads/zzcuw;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzcuw;->zzd(Lcom/google/android/gms/internal/ads/zzcuw;)Lcom/google/android/gms/internal/ads/zzcrq;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcuv;->zzgve:Lcom/google/android/gms/internal/ads/zzdmw;

    invoke-virtual {v2, v3, v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcrq;->zza(Lcom/google/android/gms/internal/ads/zzdmw;JLcom/google/android/gms/internal/ads/zzvg;)V

    :cond_9
    return-void
.end method
