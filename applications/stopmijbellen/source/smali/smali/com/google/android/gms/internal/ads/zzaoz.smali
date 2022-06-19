.class final Lcom/google/android/gms/internal/ads/zzaoz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaow;


# instance fields
.field private final zza:[Lcom/google/android/gms/internal/ads/zzapl;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzavr;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzavp;

.field private final zzd:Landroid/os/Handler;

.field private final zze:Lcom/google/android/gms/internal/ads/zzape;

.field private final zzf:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/android/gms/internal/ads/zzaot;",
            ">;"
        }
    .end annotation
.end field

.field private final zzg:Lcom/google/android/gms/internal/ads/zzapq;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzapp;

.field private zzi:Z

.field private zzj:Z

.field private zzk:I

.field private zzl:I

.field private zzm:I

.field private zzn:Z

.field private zzo:Lcom/google/android/gms/internal/ads/zzapr;

.field private zzp:Ljava/lang/Object;

.field private zzq:Lcom/google/android/gms/internal/ads/zzavd;

.field private zzr:Lcom/google/android/gms/internal/ads/zzavp;

.field private zzs:Lcom/google/android/gms/internal/ads/zzapk;

.field private zzt:Lcom/google/android/gms/internal/ads/zzapb;

.field private zzu:J


# direct methods
.method public constructor <init>([Lcom/google/android/gms/internal/ads/zzapl;Lcom/google/android/gms/internal/ads/zzavr;Lcom/google/android/gms/internal/ads/zzcmd;[B)V
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p4, Lcom/google/android/gms/internal/ads/zzaxb;->zze:Ljava/lang/String;

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

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zza:[Lcom/google/android/gms/internal/ads/zzapl;

    .line 3
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzb:Lcom/google/android/gms/internal/ads/zzavr;

    const/4 p4, 0x0

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzj:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzk:I

    .line 5
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzf:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzavp;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzavh;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzavp;-><init>([Lcom/google/android/gms/internal/ads/zzavh;[B)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzc:Lcom/google/android/gms/internal/ads/zzavp;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzapr;->zza:Lcom/google/android/gms/internal/ads/zzapr;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzo:Lcom/google/android/gms/internal/ads/zzapr;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzapq;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzapq;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzg:Lcom/google/android/gms/internal/ads/zzapq;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzapp;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzapp;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzh:Lcom/google/android/gms/internal/ads/zzapp;

    .line 6
    sget-object v1, Lcom/google/android/gms/internal/ads/zzavd;->zza:Lcom/google/android/gms/internal/ads/zzavd;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzq:Lcom/google/android/gms/internal/ads/zzavd;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzr:Lcom/google/android/gms/internal/ads/zzavp;

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/ads/zzapk;->zza:Lcom/google/android/gms/internal/ads/zzapk;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzs:Lcom/google/android/gms/internal/ads/zzapk;

    .line 8
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
    new-instance v7, Lcom/google/android/gms/internal/ads/zzaoy;

    .line 9
    invoke-direct {v7, p0, v0}, Lcom/google/android/gms/internal/ads/zzaoy;-><init>(Lcom/google/android/gms/internal/ads/zzaoz;Landroid/os/Looper;)V

    iput-object v7, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzd:Landroid/os/Handler;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzapb;

    const-wide/16 v0, 0x0

    .line 10
    invoke-direct {v8, p4, v0, v1}, Lcom/google/android/gms/internal/ads/zzapb;-><init>(IJ)V

    iput-object v8, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzt:Lcom/google/android/gms/internal/ads/zzapb;

    .line 11
    new-instance p4, Lcom/google/android/gms/internal/ads/zzape;

    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzj:Z

    const/4 v6, 0x0

    const/4 v10, 0x0

    move-object v1, p4

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v9, p0

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/zzape;-><init>([Lcom/google/android/gms/internal/ads/zzapl;Lcom/google/android/gms/internal/ads/zzavr;Lcom/google/android/gms/internal/ads/zzcmd;ZILandroid/os/Handler;Lcom/google/android/gms/internal/ads/zzapb;Lcom/google/android/gms/internal/ads/zzaow;[B)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zze:Lcom/google/android/gms/internal/ads/zzape;

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzk:I

    return v0
.end method

.method public final zzb()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzo:Lcom/google/android/gms/internal/ads/zzapr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzapr;->zzh()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzl:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzo:Lcom/google/android/gms/internal/ads/zzapr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzt:Lcom/google/android/gms/internal/ads/zzapb;

    .line 2
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzapb;->zza:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzh:Lcom/google/android/gms/internal/ads/zzapp;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzapr;->zzd(ILcom/google/android/gms/internal/ads/zzapp;Z)Lcom/google/android/gms/internal/ads/zzapp;

    const-wide/16 v0, 0x0

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaor;->zzb(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzt:Lcom/google/android/gms/internal/ads/zzapb;

    .line 4
    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzapb;->zzd:J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzaor;->zzb(J)J

    move-result-wide v2

    add-long/2addr v2, v0

    return-wide v2

    .line 5
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzu:J

    return-wide v0
.end method

.method public final zzc()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzo:Lcom/google/android/gms/internal/ads/zzapr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzapr;->zzh()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzl:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzo:Lcom/google/android/gms/internal/ads/zzapr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzt:Lcom/google/android/gms/internal/ads/zzapb;

    .line 2
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzapb;->zza:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzh:Lcom/google/android/gms/internal/ads/zzapp;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzapr;->zzd(ILcom/google/android/gms/internal/ads/zzapp;Z)Lcom/google/android/gms/internal/ads/zzapp;

    const-wide/16 v0, 0x0

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaor;->zzb(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzt:Lcom/google/android/gms/internal/ads/zzapb;

    .line 4
    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzapb;->zzc:J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzaor;->zzb(J)J

    move-result-wide v2

    add-long/2addr v2, v0

    return-wide v2

    .line 5
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzu:J

    return-wide v0
.end method

.method public final zzd()J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzo:Lcom/google/android/gms/internal/ads/zzapr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzapr;->zzh()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzo:Lcom/google/android/gms/internal/ads/zzapr;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaoz;->zzr()I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzg:Lcom/google/android/gms/internal/ads/zzapq;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2}, Lcom/google/android/gms/internal/ads/zzapr;->zzg(ILcom/google/android/gms/internal/ads/zzapq;Z)Lcom/google/android/gms/internal/ads/zzapq;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzapq;->zza:J

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaor;->zzb(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzaot;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzf:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final varargs zzf([Lcom/google/android/gms/internal/ads/zzaov;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zze:Lcom/google/android/gms/internal/ads/zzape;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzape;->zza([Lcom/google/android/gms/internal/ads/zzaov;)V

    return-void
.end method

.method public final zzg()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zze:Lcom/google/android/gms/internal/ads/zzape;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzape;->zzb()V

    return-void
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzauo;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzo:Lcom/google/android/gms/internal/ads/zzapr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzapr;->zzh()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzp:Ljava/lang/Object;

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzapr;->zza:Lcom/google/android/gms/internal/ads/zzapr;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzo:Lcom/google/android/gms/internal/ads/zzapr;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzp:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzf:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzaot;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzo:Lcom/google/android/gms/internal/ads/zzapr;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzp:Ljava/lang/Object;

    .line 3
    invoke-interface {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzaot;->zzf(Lcom/google/android/gms/internal/ads/zzapr;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzi:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzi:Z

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzavd;->zza:Lcom/google/android/gms/internal/ads/zzavd;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzq:Lcom/google/android/gms/internal/ads/zzavd;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzc:Lcom/google/android/gms/internal/ads/zzavp;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzr:Lcom/google/android/gms/internal/ads/zzavp;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzb:Lcom/google/android/gms/internal/ads/zzavr;

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzavr;->zzd(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzf:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaot;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzq:Lcom/google/android/gms/internal/ads/zzavd;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzr:Lcom/google/android/gms/internal/ads/zzavp;

    .line 7
    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzaot;->zzg(Lcom/google/android/gms/internal/ads/zzavd;Lcom/google/android/gms/internal/ads/zzavp;)V

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzm:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzm:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zze:Lcom/google/android/gms/internal/ads/zzape;

    .line 8
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzape;->zzg(Lcom/google/android/gms/internal/ads/zzauo;Z)V

    return-void
.end method

.method public final zzi()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zze:Lcom/google/android/gms/internal/ads/zzape;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzape;->zzh()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzd:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzj(Lcom/google/android/gms/internal/ads/zzaot;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzf:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzk(J)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaoz;->zzr()I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzo:Lcom/google/android/gms/internal/ads/zzapr;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzapr;->zzh()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzo:Lcom/google/android/gms/internal/ads/zzapr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzapr;->zzc()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzapi;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzo:Lcom/google/android/gms/internal/ads/zzapr;

    .line 4
    invoke-direct {v0, v2, v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzapi;-><init>(Lcom/google/android/gms/internal/ads/zzapr;IJ)V

    throw v0

    .line 5
    :cond_1
    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzl:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzl:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzo:Lcom/google/android/gms/internal/ads/zzapr;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzapr;->zzh()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzo:Lcom/google/android/gms/internal/ads/zzapr;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzg:Lcom/google/android/gms/internal/ads/zzapq;

    .line 8
    invoke-virtual {v0, v1, v2, v1}, Lcom/google/android/gms/internal/ads/zzapr;->zzg(ILcom/google/android/gms/internal/ads/zzapq;Z)Lcom/google/android/gms/internal/ads/zzapq;

    .line 9
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzaor;->zza(J)J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzo:Lcom/google/android/gms/internal/ads/zzapr;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzh:Lcom/google/android/gms/internal/ads/zzapp;

    .line 10
    invoke-virtual {v0, v1, v4, v1}, Lcom/google/android/gms/internal/ads/zzapr;->zzd(ILcom/google/android/gms/internal/ads/zzapp;Z)Lcom/google/android/gms/internal/ads/zzapp;

    move-result-object v0

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzapp;->zzc:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v6

    if-eqz v0, :cond_3

    cmp-long v0, v2, v4

    .line 11
    :cond_3
    :goto_1
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzu:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zze:Lcom/google/android/gms/internal/ads/zzape;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzo:Lcom/google/android/gms/internal/ads/zzapr;

    .line 12
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzaor;->zza(J)J

    move-result-wide p1

    invoke-virtual {v0, v2, v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzape;->zzi(Lcom/google/android/gms/internal/ads/zzapr;IJ)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzf:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 13
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzaot;

    .line 14
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzaot;->zze()V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final varargs zzl([Lcom/google/android/gms/internal/ads/zzaov;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zze:Lcom/google/android/gms/internal/ads/zzape;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzape;->zzj([Lcom/google/android/gms/internal/ads/zzaov;)V

    return-void
.end method

.method public final zzm(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zze:Lcom/google/android/gms/internal/ads/zzape;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzape;->zzk(I)V

    return-void
.end method

.method public final zzn(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zze:Lcom/google/android/gms/internal/ads/zzape;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzape;->zzl(I)V

    return-void
.end method

.method public final zzo(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzj:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzj:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zze:Lcom/google/android/gms/internal/ads/zzape;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzape;->zzm(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzf:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaot;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzk:I

    .line 3
    invoke-interface {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzaot;->zzd(ZI)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzp()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zze:Lcom/google/android/gms/internal/ads/zzape;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzape;->zzn()V

    return-void
.end method

.method public final zzq()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzj:Z

    return v0
.end method

.method public final zzr()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzo:Lcom/google/android/gms/internal/ads/zzapr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzapr;->zzh()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzl:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzo:Lcom/google/android/gms/internal/ads/zzapr;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzt:Lcom/google/android/gms/internal/ads/zzapb;

    .line 2
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzapb;->zza:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzh:Lcom/google/android/gms/internal/ads/zzapp;

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzapr;->zzd(ILcom/google/android/gms/internal/ads/zzapp;Z)Lcom/google/android/gms/internal/ads/zzapp;

    :cond_1
    :goto_0
    return v1
.end method

.method public final zzs(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 3
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 4
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaos;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzf:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaot;

    .line 6
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzaot;->zzc(Lcom/google/android/gms/internal/ads/zzaos;)V

    goto :goto_0

    .line 7
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzapk;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzs:Lcom/google/android/gms/internal/ads/zzapk;

    .line 8
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzapk;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzs:Lcom/google/android/gms/internal/ads/zzapk;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzf:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaot;

    .line 10
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzaot;->zzb(Lcom/google/android/gms/internal/ads/zzapk;)V

    goto :goto_1

    .line 11
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzapd;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzl:I

    .line 12
    iget v1, p1, Lcom/google/android/gms/internal/ads/zzapd;->zzd:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzl:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzm:I

    if-nez v0, :cond_1

    .line 13
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzapd;->zza:Lcom/google/android/gms/internal/ads/zzapr;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzo:Lcom/google/android/gms/internal/ads/zzapr;

    .line 14
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzapd;->zzb:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzp:Ljava/lang/Object;

    .line 15
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzapd;->zzc:Lcom/google/android/gms/internal/ads/zzapb;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzt:Lcom/google/android/gms/internal/ads/zzapb;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzf:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 16
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaot;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzo:Lcom/google/android/gms/internal/ads/zzapr;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzp:Ljava/lang/Object;

    .line 17
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaot;->zzf(Lcom/google/android/gms/internal/ads/zzapr;Ljava/lang/Object;)V

    goto :goto_2

    .line 18
    :pswitch_3
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzl:I

    if-nez v0, :cond_1

    .line 19
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzapb;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzt:Lcom/google/android/gms/internal/ads/zzapb;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzf:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 20
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaot;

    .line 21
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaot;->zze()V

    goto :goto_3

    .line 22
    :pswitch_4
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzl:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzl:I

    if-nez v0, :cond_1

    .line 23
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzapb;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzt:Lcom/google/android/gms/internal/ads/zzapb;

    .line 24
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzf:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 25
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaot;

    .line 26
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaot;->zze()V

    goto :goto_4

    .line 27
    :pswitch_5
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzm:I

    if-nez v0, :cond_1

    .line 28
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzavs;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzi:Z

    .line 29
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzavs;->zza:Lcom/google/android/gms/internal/ads/zzavd;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzq:Lcom/google/android/gms/internal/ads/zzavd;

    .line 30
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzavs;->zzb:Lcom/google/android/gms/internal/ads/zzavp;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzr:Lcom/google/android/gms/internal/ads/zzavp;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzb:Lcom/google/android/gms/internal/ads/zzavr;

    .line 31
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzavs;->zzc:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzavr;->zzd(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzf:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 32
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaot;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzq:Lcom/google/android/gms/internal/ads/zzavd;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzr:Lcom/google/android/gms/internal/ads/zzavp;

    .line 33
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaot;->zzg(Lcom/google/android/gms/internal/ads/zzavd;Lcom/google/android/gms/internal/ads/zzavp;)V

    goto :goto_5

    .line 34
    :pswitch_6
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_0

    goto :goto_6

    :cond_0
    const/4 v1, 0x0

    :goto_6
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzn:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzf:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 35
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaot;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzn:Z

    .line 36
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzaot;->zza(Z)V

    goto :goto_7

    .line 37
    :pswitch_7
    iget p1, p1, Landroid/os/Message;->arg1:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzk:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzf:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 38
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaot;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzj:Z

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzk:I

    .line 39
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaot;->zzd(ZI)V

    goto :goto_8

    :cond_1
    return-void

    .line 40
    :pswitch_8
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzm:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzm:I

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
