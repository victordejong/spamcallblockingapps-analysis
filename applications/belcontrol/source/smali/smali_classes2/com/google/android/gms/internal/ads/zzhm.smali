.class public final Lcom/google/android/gms/internal/ads/zzhm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/google/android/gms/internal/ads/zznb;
.implements Lcom/google/android/gms/internal/ads/zznd;
.implements Lcom/google/android/gms/internal/ads/zzok;


# instance fields
.field private final handler:Landroid/os/Handler;

.field private repeatMode:I

.field private state:I

.field private final zzaeq:[Lcom/google/android/gms/internal/ads/zzhy;

.field private final zzaer:Lcom/google/android/gms/internal/ads/zzoh;

.field private final zzaet:Landroid/os/Handler;

.field private final zzaew:Lcom/google/android/gms/internal/ads/zzie;

.field private final zzaex:Lcom/google/android/gms/internal/ads/zzif;

.field private zzaez:Z

.field private zzafd:Z

.field private zzafe:Lcom/google/android/gms/internal/ads/zzid;

.field private zzafi:Lcom/google/android/gms/internal/ads/zzhz;

.field private zzafj:Lcom/google/android/gms/internal/ads/zzho;

.field private final zzafn:[Lcom/google/android/gms/internal/ads/zzib;

.field private final zzafo:Lcom/google/android/gms/internal/ads/zzhx;

.field private final zzafp:Lcom/google/android/gms/internal/ads/zzps;

.field private final zzafq:Landroid/os/HandlerThread;

.field private final zzafr:Lcom/google/android/gms/internal/ads/zzhh;

.field private zzafs:Lcom/google/android/gms/internal/ads/zzhy;

.field private zzaft:Lcom/google/android/gms/internal/ads/zzpk;

.field private zzafu:Lcom/google/android/gms/internal/ads/zzne;

.field private zzafv:[Lcom/google/android/gms/internal/ads/zzhy;

.field private zzafw:Z

.field private zzafx:Z

.field private zzafy:I

.field private zzafz:I

.field private zzaga:J

.field private zzagb:I

.field private zzagc:Lcom/google/android/gms/internal/ads/zzhr;

.field private zzagd:J

.field private zzage:Lcom/google/android/gms/internal/ads/zzhp;

.field private zzagf:Lcom/google/android/gms/internal/ads/zzhp;

.field private zzagg:Lcom/google/android/gms/internal/ads/zzhp;


# direct methods
.method public constructor <init>([Lcom/google/android/gms/internal/ads/zzhy;Lcom/google/android/gms/internal/ads/zzoh;Lcom/google/android/gms/internal/ads/zzhx;ZILandroid/os/Handler;Lcom/google/android/gms/internal/ads/zzho;Lcom/google/android/gms/internal/ads/zzhh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzaeq:[Lcom/google/android/gms/internal/ads/zzhy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzaer:Lcom/google/android/gms/internal/ads/zzoh;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzafo:Lcom/google/android/gms/internal/ads/zzhx;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzaez:Z

    const/4 p3, 0x0

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzhm;->repeatMode:I

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzaet:Landroid/os/Handler;

    const/4 p4, 0x1

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzhm;->state:I

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzafj:Lcom/google/android/gms/internal/ads/zzho;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzafr:Lcom/google/android/gms/internal/ads/zzhh;

    array-length p4, p1

    new-array p4, p4, [Lcom/google/android/gms/internal/ads/zzib;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzafn:[Lcom/google/android/gms/internal/ads/zzib;

    const/4 p4, 0x0

    :goto_0
    array-length p5, p1

    if-ge p4, p5, :cond_0

    aget-object p5, p1, p4

    invoke-interface {p5, p4}, Lcom/google/android/gms/internal/ads/zzhy;->setIndex(I)V

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzafn:[Lcom/google/android/gms/internal/ads/zzib;

    aget-object p6, p1, p4

    invoke-interface {p6}, Lcom/google/android/gms/internal/ads/zzhy;->zzdz()Lcom/google/android/gms/internal/ads/zzib;

    move-result-object p6

    aput-object p6, p5, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzps;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzps;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzafp:Lcom/google/android/gms/internal/ads/zzps;

    new-array p1, p3, [Lcom/google/android/gms/internal/ads/zzhy;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzafv:[Lcom/google/android/gms/internal/ads/zzhy;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzie;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzie;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzaew:Lcom/google/android/gms/internal/ads/zzie;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzif;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzif;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzaex:Lcom/google/android/gms/internal/ads/zzif;

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zzoh;->zza(Lcom/google/android/gms/internal/ads/zzok;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzhz;->zzaia:Lcom/google/android/gms/internal/ads/zzhz;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzafi:Lcom/google/android/gms/internal/ads/zzhz;

    new-instance p1, Landroid/os/HandlerThread;

    const/16 p2, -0x10

    const-string p3, "ExoPlayerImplInternal:Handler"

    invoke-direct {p1, p3, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzafq:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhm;->handler:Landroid/os/Handler;

    return-void
.end method

.method private final setState(I)V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->state:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhm;->state:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzaet:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method private final zza(ILcom/google/android/gms/internal/ads/zzid;Lcom/google/android/gms/internal/ads/zzid;)I
    .locals 6

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzid;->zzfg()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    :goto_0
    if-ge v2, v0, :cond_0

    if-ne v3, v1, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzaex:Lcom/google/android/gms/internal/ads/zzif;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzaew:Lcom/google/android/gms/internal/ads/zzie;

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzhm;->repeatMode:I

    invoke-virtual {p2, p1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzid;->zza(ILcom/google/android/gms/internal/ads/zzif;Lcom/google/android/gms/internal/ads/zzie;I)I

    move-result p1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzaex:Lcom/google/android/gms/internal/ads/zzif;

    const/4 v4, 0x1

    invoke-virtual {p2, p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzid;->zza(ILcom/google/android/gms/internal/ads/zzif;Z)Lcom/google/android/gms/internal/ads/zzif;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzif;->zzagn:Ljava/lang/Object;

    invoke-virtual {p3, v3}, Lcom/google/android/gms/internal/ads/zzid;->zzc(Ljava/lang/Object;)I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzhr;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzhr;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzhr;->zzafe:Lcom/google/android/gms/internal/ads/zzid;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzid;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzafe:Lcom/google/android/gms/internal/ads/zzid;

    :cond_0
    :try_start_0
    iget v1, p1, Lcom/google/android/gms/internal/ads/zzhr;->zzagy:I

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzhr;->zzagz:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhm;->zzb(Lcom/google/android/gms/internal/ads/zzid;IJ)Landroid/util/Pair;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzafe:Lcom/google/android/gms/internal/ads/zzid;

    if-ne v1, v0, :cond_1

    return-object p1

    :cond_1
    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzaex:Lcom/google/android/gms/internal/ads/zzif;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzid;->zza(ILcom/google/android/gms/internal/ads/zzif;Z)Lcom/google/android/gms/internal/ads/zzif;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzif;->zzagn:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzid;->zzc(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzafe:Lcom/google/android/gms/internal/ads/zzid;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhm;->zza(ILcom/google/android/gms/internal/ads/zzid;Lcom/google/android/gms/internal/ads/zzid;)I

    move-result p1

    if-eq p1, v2, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzafe:Lcom/google/android/gms/internal/ads/zzid;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzaex:Lcom/google/android/gms/internal/ads/zzif;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzid;->zza(ILcom/google/android/gms/internal/ads/zzif;Z)Lcom/google/android/gms/internal/ads/zzif;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzhm;->zzc(IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1

    :catch_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzafe:Lcom/google/android/gms/internal/ads/zzid;

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzhr;->zzagy:I

    iget-wide v3, p1, Lcom/google/android/gms/internal/ads/zzhr;->zzagz:J

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzhu;-><init>(Lcom/google/android/gms/internal/ads/zzid;IJ)V

    throw v0
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzid;IJJ)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzid;",
            "IJJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzid;->zzff()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p2, v1, v0}, Lcom/google/android/gms/internal/ads/zzpg;->zzc(III)I

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzaew:Lcom/google/android/gms/internal/ads/zzie;

    const/4 v5, 0x0

    move-object v2, p1

    move v3, p2

    move-wide v6, p5

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzid;->zza(ILcom/google/android/gms/internal/ads/zzie;ZJ)Lcom/google/android/gms/internal/ads/zzie;

    const-wide/16 p5, 0x0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, p3, v2

    if-nez p2, :cond_0

    move-wide p3, p5

    :cond_0
    add-long/2addr p3, p5

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzaex:Lcom/google/android/gms/internal/ads/zzif;

    invoke-virtual {p1, v1, p2, v1}, Lcom/google/android/gms/internal/ads/zzid;->zza(ILcom/google/android/gms/internal/ads/zzif;Z)Lcom/google/android/gms/internal/ads/zzif;

    move-result-object p1

    iget-wide p1, p1, Lcom/google/android/gms/internal/ads/zzif;->zzaip:J

    cmp-long p5, p1, v2

    if-eqz p5, :cond_1

    cmp-long p5, p3, p1

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private final zza(JJ)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    add-long/2addr p1, p3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    sub-long/2addr p1, p3

    const-wide/16 p3, 0x0

    cmp-long v0, p1, p3

    if-gtz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhm;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_0
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzhm;->handler:Landroid/os/Handler;

    invoke-virtual {p3, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzhp;)V
    .locals 0

    :goto_0
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhp;->release()V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzagu:Lcom/google/android/gms/internal/ads/zzhp;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzhy;)V
    .locals 2

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzhy;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzhy;->stop()V

    :cond_0
    return-void
.end method

.method private final zza(Ljava/lang/Object;I)V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzho;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzho;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzafj:Lcom/google/android/gms/internal/ads/zzho;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhm;->zzb(Ljava/lang/Object;I)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzho;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzho;-><init>(IJ)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzafj:Lcom/google/android/gms/internal/ads/zzho;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzhm;->setState(I)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzhm;->zzi(Z)V

    return-void
.end method

.method private final zza([ZI)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzhy;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzhm;->zzafv:[Lcom/google/android/gms/internal/ads/zzhy;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzhm;->zzaeq:[Lcom/google/android/gms/internal/ads/zzhy;

    array-length v5, v4

    if-ge v2, v5, :cond_7

    aget-object v4, v4, v2

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzhm;->zzagg:Lcom/google/android/gms/internal/ads/zzhp;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzhp;->zzagv:Lcom/google/android/gms/internal/ads/zzoj;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzoj;->zzbhy:Lcom/google/android/gms/internal/ads/zzoi;

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzoi;->zzbe(I)Lcom/google/android/gms/internal/ads/zzog;

    move-result-object v5

    if-eqz v5, :cond_6

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzhm;->zzafv:[Lcom/google/android/gms/internal/ads/zzhy;

    add-int/lit8 v15, v3, 0x1

    aput-object v4, v6, v3

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzhy;->getState()I

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzhm;->zzagg:Lcom/google/android/gms/internal/ads/zzhp;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzhp;->zzagv:Lcom/google/android/gms/internal/ads/zzoj;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzoj;->zzbia:[Lcom/google/android/gms/internal/ads/zzia;

    aget-object v7, v3, v2

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzhm;->zzaez:Z

    const/4 v6, 0x1

    if-eqz v3, :cond_0

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzhm;->state:I

    const/4 v8, 0x3

    if-ne v3, v8, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    aget-boolean v8, p1, v2

    if-nez v8, :cond_1

    if-eqz v3, :cond_1

    const/4 v12, 0x1

    goto :goto_2

    :cond_1
    const/4 v12, 0x0

    :goto_2
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzog;->length()I

    move-result v6

    new-array v8, v6, [Lcom/google/android/gms/internal/ads/zzht;

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v6, :cond_2

    invoke-interface {v5, v9}, Lcom/google/android/gms/internal/ads/zzog;->zzbb(I)Lcom/google/android/gms/internal/ads/zzht;

    move-result-object v10

    aput-object v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_2
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzhm;->zzagg:Lcom/google/android/gms/internal/ads/zzhp;

    iget-object v6, v5, Lcom/google/android/gms/internal/ads/zzhp;->zzago:[Lcom/google/android/gms/internal/ads/zznn;

    aget-object v9, v6, v2

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzhm;->zzagd:J

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzhp;->zzew()J

    move-result-wide v13

    move-object v6, v4

    invoke-interface/range {v6 .. v14}, Lcom/google/android/gms/internal/ads/zzhy;->zza(Lcom/google/android/gms/internal/ads/zzia;[Lcom/google/android/gms/internal/ads/zzht;Lcom/google/android/gms/internal/ads/zznn;JZJ)V

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzhy;->zzea()Lcom/google/android/gms/internal/ads/zzpk;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzhm;->zzaft:Lcom/google/android/gms/internal/ads/zzpk;

    if-nez v6, :cond_3

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzhm;->zzaft:Lcom/google/android/gms/internal/ads/zzpk;

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzhm;->zzafs:Lcom/google/android/gms/internal/ads/zzhy;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzhm;->zzafi:Lcom/google/android/gms/internal/ads/zzhz;

    invoke-interface {v5, v6}, Lcom/google/android/gms/internal/ads/zzpk;->zzb(Lcom/google/android/gms/internal/ads/zzhz;)Lcom/google/android/gms/internal/ads/zzhz;

    goto :goto_4

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Multiple renderer media clocks enabled."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhe;->zza(Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/zzhe;

    move-result-object v1

    throw v1

    :cond_4
    :goto_4
    if-eqz v3, :cond_5

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzhy;->start()V

    :cond_5
    move v3, v15

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method private final zzb(IJ)J
    .locals 7

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhm;->zzer()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzafx:Z

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzhm;->setState(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzagg:Lcom/google/android/gms/internal/ads/zzhp;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzage:Lcom/google/android/gms/internal/ads/zzhp;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhp;->release()V

    :cond_0
    move-object v4, v3

    goto :goto_2

    :cond_1
    move-object v4, v3

    :goto_0
    if-eqz v2, :cond_3

    iget v5, v2, Lcom/google/android/gms/internal/ads/zzhp;->zzagi:I

    if-ne v5, p1, :cond_2

    iget-boolean v5, v2, Lcom/google/android/gms/internal/ads/zzhp;->zzags:Z

    if-eqz v5, :cond_2

    move-object v4, v2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhp;->release()V

    :goto_1
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzhp;->zzagu:Lcom/google/android/gms/internal/ads/zzhp;

    goto :goto_0

    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzagg:Lcom/google/android/gms/internal/ads/zzhp;

    if-ne p1, v4, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzagf:Lcom/google/android/gms/internal/ads/zzhp;

    if-eq p1, v2, :cond_6

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzafv:[Lcom/google/android/gms/internal/ads/zzhy;

    array-length v2, p1

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v2, :cond_5

    aget-object v6, p1, v5

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzhy;->disable()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    new-array p1, v0, [Lcom/google/android/gms/internal/ads/zzhy;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzafv:[Lcom/google/android/gms/internal/ads/zzhy;

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzaft:Lcom/google/android/gms/internal/ads/zzpk;

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzafs:Lcom/google/android/gms/internal/ads/zzhy;

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzagg:Lcom/google/android/gms/internal/ads/zzhp;

    :cond_6
    if-eqz v4, :cond_8

    iput-object v3, v4, Lcom/google/android/gms/internal/ads/zzhp;->zzagu:Lcom/google/android/gms/internal/ads/zzhp;

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzage:Lcom/google/android/gms/internal/ads/zzhp;

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzagf:Lcom/google/android/gms/internal/ads/zzhp;

    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/zzhm;->zzb(Lcom/google/android/gms/internal/ads/zzhp;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzagg:Lcom/google/android/gms/internal/ads/zzhp;

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzhp;->zzagt:Z

    if-eqz v0, :cond_7

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzhp;->zzagm:Lcom/google/android/gms/internal/ads/zznc;

    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zznc;->zzeg(J)J

    move-result-wide p1

    move-wide p2, p1

    :cond_7
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzhm;->zzdq(J)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhm;->zzev()V

    goto :goto_4

    :cond_8
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzage:Lcom/google/android/gms/internal/ads/zzhp;

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzagf:Lcom/google/android/gms/internal/ads/zzhp;

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzagg:Lcom/google/android/gms/internal/ads/zzhp;

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzhm;->zzdq(J)V

    :goto_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhm;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-wide p2
.end method

.method private final zzb(Lcom/google/android/gms/internal/ads/zzid;IJ)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzid;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzhm;->zza(Lcom/google/android/gms/internal/ads/zzid;IJJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private final zzb(Lcom/google/android/gms/internal/ads/zzhp;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzagg:Lcom/google/android/gms/internal/ads/zzhp;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzaeq:[Lcom/google/android/gms/internal/ads/zzhy;

    array-length v0, v0

    new-array v0, v0, [Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzaeq:[Lcom/google/android/gms/internal/ads/zzhy;

    array-length v5, v4

    if-ge v2, v5, :cond_6

    aget-object v4, v4, v2

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzhy;->getState()I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    aput-boolean v5, v0, v2

    iget-object v5, p1, Lcom/google/android/gms/internal/ads/zzhp;->zzagv:Lcom/google/android/gms/internal/ads/zzoj;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzoj;->zzbhy:Lcom/google/android/gms/internal/ads/zzoi;

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzoi;->zzbe(I)Lcom/google/android/gms/internal/ads/zzog;

    move-result-object v5

    if-eqz v5, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    aget-boolean v6, v0, v2

    if-eqz v6, :cond_5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzhy;->zzee()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzhy;->zzeb()Lcom/google/android/gms/internal/ads/zznn;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzagg:Lcom/google/android/gms/internal/ads/zzhp;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzhp;->zzago:[Lcom/google/android/gms/internal/ads/zznn;

    aget-object v6, v6, v2

    if-ne v5, v6, :cond_5

    :cond_3
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzafs:Lcom/google/android/gms/internal/ads/zzhy;

    if-ne v4, v5, :cond_4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzafp:Lcom/google/android/gms/internal/ads/zzps;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzaft:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzps;->zza(Lcom/google/android/gms/internal/ads/zzpk;)V

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzaft:Lcom/google/android/gms/internal/ads/zzpk;

    iput-object v5, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzafs:Lcom/google/android/gms/internal/ads/zzhy;

    :cond_4
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzhm;->zza(Lcom/google/android/gms/internal/ads/zzhy;)V

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzhy;->disable()V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzagg:Lcom/google/android/gms/internal/ads/zzhp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzaet:Landroid/os/Handler;

    const/4 v2, 0x3

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzhp;->zzagv:Lcom/google/android/gms/internal/ads/zzoj;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    invoke-direct {p0, v0, v3}, Lcom/google/android/gms/internal/ads/zzhm;->zza([ZI)V

    return-void
.end method

.method private final zzb(Ljava/lang/Object;I)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzaet:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhq;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzafe:Lcom/google/android/gms/internal/ads/zzid;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzafj:Lcom/google/android/gms/internal/ads/zzho;

    invoke-direct {v1, v2, p1, v3, p2}, Lcom/google/android/gms/internal/ads/zzhq;-><init>(Lcom/google/android/gms/internal/ads/zzid;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzho;I)V

    const/4 p1, 0x6

    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private final zzc(IJ)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzafe:Lcom/google/android/gms/internal/ads/zzid;

    const/4 p2, 0x0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzhm;->zzb(Lcom/google/android/gms/internal/ads/zzid;IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private final zzdq(J)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzagg:Lcom/google/android/gms/internal/ads/zzhp;

    if-nez v0, :cond_0

    const-wide/32 v0, 0x3938700

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhp;->zzew()J

    move-result-wide v0

    :goto_0
    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzagd:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzafp:Lcom/google/android/gms/internal/ads/zzps;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzps;->zzel(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzafv:[Lcom/google/android/gms/internal/ads/zzhy;

    array-length p2, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_1

    aget-object v1, p1, v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzagd:J

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhy;->zzdm(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private final zzdr(J)Z
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzafj:Lcom/google/android/gms/internal/ads/zzho;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzho;->zzagk:J

    cmp-long v2, v0, p1

    if-ltz v2, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzagg:Lcom/google/android/gms/internal/ads/zzhp;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzhp;->zzagu:Lcom/google/android/gms/internal/ads/zzhp;

    if-eqz p1, :cond_0

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzhp;->zzags:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private final zzeq()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzafx:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzafp:Lcom/google/android/gms/internal/ads/zzps;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzps;->start()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzafv:[Lcom/google/android/gms/internal/ads/zzhy;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzhy;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final zzer()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzafp:Lcom/google/android/gms/internal/ads/zzps;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzps;->stop()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzafv:[Lcom/google/android/gms/internal/ads/zzhy;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzhm;->zza(Lcom/google/android/gms/internal/ads/zzhy;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final zzes()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzagg:Lcom/google/android/gms/internal/ads/zzhp;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzagm:Lcom/google/android/gms/internal/ads/zznc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zznc;->zzhq()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzhm;->zzdq(J)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzafs:Lcom/google/android/gms/internal/ads/zzhy;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhy;->zzfe()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzaft:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzpk;->zzgc()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzagd:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzafp:Lcom/google/android/gms/internal/ads/zzps;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzps;->zzel(J)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzafp:Lcom/google/android/gms/internal/ads/zzps;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzps;->zzgc()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzagd:J

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzagg:Lcom/google/android/gms/internal/ads/zzhp;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzagd:J

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhp;->zzew()J

    move-result-wide v3

    sub-long v0, v1, v3

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzafj:Lcom/google/android/gms/internal/ads/zzho;

    iput-wide v0, v2, Lcom/google/android/gms/internal/ads/zzho;->zzagk:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzaga:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzafv:[Lcom/google/android/gms/internal/ads/zzhy;

    array-length v0, v0

    const-wide/high16 v1, -0x8000000000000000L

    if-nez v0, :cond_3

    move-wide v3, v1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzagg:Lcom/google/android/gms/internal/ads/zzhp;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzagm:Lcom/google/android/gms/internal/ads/zznc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zznc;->zzhr()J

    move-result-wide v3

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzafj:Lcom/google/android/gms/internal/ads/zzho;

    cmp-long v5, v3, v1

    if-nez v5, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzafe:Lcom/google/android/gms/internal/ads/zzid;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzagg:Lcom/google/android/gms/internal/ads/zzhp;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzhp;->zzagi:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzaex:Lcom/google/android/gms/internal/ads/zzif;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzid;->zza(ILcom/google/android/gms/internal/ads/zzif;Z)Lcom/google/android/gms/internal/ads/zzif;

    move-result-object v1

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzif;->zzaip:J

    :cond_4
    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzho;->zzagl:J

    return-void
.end method

.method private final zzet()V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzhm;->zzi(Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzafo:Lcom/google/android/gms/internal/ads/zzhx;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzhx;->onStopped()V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzhm;->setState(I)V

    return-void
.end method

.method private final zzeu()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzage:Lcom/google/android/gms/internal/ads/zzhp;

    if-eqz v0, :cond_3

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzags:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzagf:Lcom/google/android/gms/internal/ads/zzhp;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzhp;->zzagu:Lcom/google/android/gms/internal/ads/zzhp;

    if-ne v1, v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzafv:[Lcom/google/android/gms/internal/ads/zzhy;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzhy;->zzec()Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzage:Lcom/google/android/gms/internal/ads/zzhp;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzagm:Lcom/google/android/gms/internal/ads/zznc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zznc;->zzho()V

    :cond_3
    return-void
.end method

.method private final zzev()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzage:Lcom/google/android/gms/internal/ads/zzhp;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzags:Z

    if-nez v1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzagm:Lcom/google/android/gms/internal/ads/zznc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zznc;->zzhn()J

    move-result-wide v0

    :goto_0
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzhm;->zzh(Z)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzage:Lcom/google/android/gms/internal/ads/zzhp;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzagd:J

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhp;->zzew()J

    move-result-wide v5

    sub-long/2addr v3, v5

    sub-long/2addr v0, v3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzafo:Lcom/google/android/gms/internal/ads/zzhx;

    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzhx;->zzdt(J)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzhm;->zzh(Z)V

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzage:Lcom/google/android/gms/internal/ads/zzhp;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzagm:Lcom/google/android/gms/internal/ads/zznc;

    invoke-interface {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zznc;->zzee(J)Z

    :cond_2
    return-void
.end method

.method private final zzh(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzafd:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzafd:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzaet:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method private final zzi(Z)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzafx:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzafp:Lcom/google/android/gms/internal/ads/zzps;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzps;->stop()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzaft:Lcom/google/android/gms/internal/ads/zzpk;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzafs:Lcom/google/android/gms/internal/ads/zzhy;

    const-wide/32 v2, 0x3938700

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzagd:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzafv:[Lcom/google/android/gms/internal/ads/zzhy;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    :try_start_0
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzhm;->zza(Lcom/google/android/gms/internal/ads/zzhy;)V

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzhy;->disable()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzhe; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    goto :goto_1

    :catch_1
    move-exception v5

    :goto_1
    const-string v6, "ExoPlayerImplInternal"

    const-string v7, "Stop failed."

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-array v2, v0, [Lcom/google/android/gms/internal/ads/zzhy;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzafv:[Lcom/google/android/gms/internal/ads/zzhy;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzagg:Lcom/google/android/gms/internal/ads/zzhp;

    if-eqz v2, :cond_1

    goto :goto_3

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzage:Lcom/google/android/gms/internal/ads/zzhp;

    :goto_3
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhm;->zza(Lcom/google/android/gms/internal/ads/zzhp;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzage:Lcom/google/android/gms/internal/ads/zzhp;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzagf:Lcom/google/android/gms/internal/ads/zzhp;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzagg:Lcom/google/android/gms/internal/ads/zzhp;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzhm;->zzh(Z)V

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzafu:Lcom/google/android/gms/internal/ads/zzne;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzne;->zzia()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzafu:Lcom/google/android/gms/internal/ads/zzne;

    :cond_2
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzafe:Lcom/google/android/gms/internal/ads/zzid;

    :cond_3
    return-void
.end method

.method private final zzu(I)Z
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzafe:Lcom/google/android/gms/internal/ads/zzid;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzaex:Lcom/google/android/gms/internal/ads/zzif;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzid;->zza(ILcom/google/android/gms/internal/ads/zzif;Z)Lcom/google/android/gms/internal/ads/zzif;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzafe:Lcom/google/android/gms/internal/ads/zzid;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzaew:Lcom/google/android/gms/internal/ads/zzie;

    invoke-virtual {v0, v2, v1, v2}, Lcom/google/android/gms/internal/ads/zzid;->zza(ILcom/google/android/gms/internal/ads/zzie;Z)Lcom/google/android/gms/internal/ads/zzie;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzafe:Lcom/google/android/gms/internal/ads/zzid;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzaex:Lcom/google/android/gms/internal/ads/zzif;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzaew:Lcom/google/android/gms/internal/ads/zzie;

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzhm;->repeatMode:I

    invoke-virtual {v0, p1, v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzid;->zza(ILcom/google/android/gms/internal/ads/zzif;Lcom/google/android/gms/internal/ads/zzie;I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v2
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 34

    move-object/from16 v8, p0

    move-object/from16 v1, p1

    const/4 v10, 0x1

    :try_start_0
    iget v2, v1, Landroid/os/Message;->what:I
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzhe; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v11, 0x7

    const-wide/16 v3, 0x0

    const/4 v14, 0x3

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v15, 0x4

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x2

    const/4 v9, 0x0

    packed-switch v2, :pswitch_data_0

    return v9

    :pswitch_0
    :try_start_1
    iget v1, v1, Landroid/os/Message;->arg1:I

    iput v1, v8, Lcom/google/android/gms/internal/ads/zzhm;->repeatMode:I

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzagg:Lcom/google/android/gms/internal/ads/zzhp;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzage:Lcom/google/android/gms/internal/ads/zzhp;

    :goto_0
    if-eqz v2, :cond_9

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzagf:Lcom/google/android/gms/internal/ads/zzhp;

    if-ne v2, v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    iget-object v4, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzage:Lcom/google/android/gms/internal/ads/zzhp;

    if-ne v2, v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    iget-object v11, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafe:Lcom/google/android/gms/internal/ads/zzid;

    iget v12, v2, Lcom/google/android/gms/internal/ads/zzhp;->zzagi:I

    iget-object v13, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzaex:Lcom/google/android/gms/internal/ads/zzif;

    iget-object v14, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzaew:Lcom/google/android/gms/internal/ads/zzie;

    invoke-virtual {v11, v12, v13, v14, v1}, Lcom/google/android/gms/internal/ads/zzid;->zza(ILcom/google/android/gms/internal/ads/zzif;Lcom/google/android/gms/internal/ads/zzie;I)I

    move-result v11

    iget-object v12, v2, Lcom/google/android/gms/internal/ads/zzhp;->zzagu:Lcom/google/android/gms/internal/ads/zzhp;

    if-eqz v12, :cond_5

    if-eq v11, v5, :cond_5

    iget v13, v12, Lcom/google/android/gms/internal/ads/zzhp;->zzagi:I

    if-ne v13, v11, :cond_5

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzagf:Lcom/google/android/gms/internal/ads/zzhp;

    if-ne v12, v2, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    or-int/2addr v3, v2

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzage:Lcom/google/android/gms/internal/ads/zzhp;

    if-ne v12, v2, :cond_4

    const/4 v2, 0x1

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    or-int/2addr v4, v2

    move-object v2, v12

    goto :goto_2

    :cond_5
    if-eqz v12, :cond_6

    invoke-static {v12}, Lcom/google/android/gms/internal/ads/zzhm;->zza(Lcom/google/android/gms/internal/ads/zzhp;)V

    iput-object v6, v2, Lcom/google/android/gms/internal/ads/zzhp;->zzagu:Lcom/google/android/gms/internal/ads/zzhp;

    :cond_6
    iget v5, v2, Lcom/google/android/gms/internal/ads/zzhp;->zzagi:I

    invoke-direct {v8, v5}, Lcom/google/android/gms/internal/ads/zzhm;->zzu(I)Z

    move-result v5

    iput-boolean v5, v2, Lcom/google/android/gms/internal/ads/zzhp;->zzagr:Z

    if-nez v4, :cond_7

    iput-object v2, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzage:Lcom/google/android/gms/internal/ads/zzhp;

    :cond_7
    if-nez v3, :cond_8

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzagg:Lcom/google/android/gms/internal/ads/zzhp;

    if-eqz v2, :cond_8

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzhp;->zzagi:I

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafj:Lcom/google/android/gms/internal/ads/zzho;

    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/zzho;->zzagk:J

    invoke-direct {v8, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzhm;->zzb(IJ)J

    move-result-wide v3

    new-instance v5, Lcom/google/android/gms/internal/ads/zzho;

    invoke-direct {v5, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzho;-><init>(IJ)V

    iput-object v5, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafj:Lcom/google/android/gms/internal/ads/zzho;

    :cond_8
    iget v2, v8, Lcom/google/android/gms/internal/ads/zzhm;->state:I

    if-ne v2, v15, :cond_9

    if-eqz v1, :cond_9

    invoke-direct {v8, v7}, Lcom/google/android/gms/internal/ads/zzhm;->setState(I)V

    :cond_9
    return v10

    :pswitch_1
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Lcom/google/android/gms/internal/ads/zzhi;
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzhe; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    array-length v2, v1

    :goto_5
    if-ge v9, v2, :cond_a

    aget-object v3, v1, v9

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzhi;->zzaen:Lcom/google/android/gms/internal/ads/zzhj;

    iget v5, v3, Lcom/google/android/gms/internal/ads/zzhi;->zzaeo:I

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzhi;->zzaep:Ljava/lang/Object;

    invoke-interface {v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzhj;->zza(ILjava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_a
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafu:Lcom/google/android/gms/internal/ads/zzne;

    if-eqz v1, :cond_b

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhm;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_b
    :try_start_3
    monitor-enter p0
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/zzhe; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    iget v1, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafz:I

    add-int/2addr v1, v10

    iput v1, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafz:I

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return v10

    :catchall_0
    move-exception v0

    move-object v1, v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1

    :catchall_1
    move-exception v0

    move-object v1, v0

    monitor-enter p0
    :try_end_5
    .catch Lcom/google/android/gms/internal/ads/zzhe; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    :try_start_6
    iget v2, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafz:I

    add-int/2addr v2, v10

    iput v2, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafz:I

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v1
    :try_end_7
    .catch Lcom/google/android/gms/internal/ads/zzhe; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2

    :catchall_2
    move-exception v0

    move-object v1, v0

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v1

    :pswitch_2
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzagg:Lcom/google/android/gms/internal/ads/zzhp;

    if-eqz v1, :cond_1b

    const/4 v2, 0x1

    :goto_6
    if-eqz v1, :cond_1b

    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzhp;->zzags:Z

    if-nez v3, :cond_c

    goto/16 :goto_d

    :cond_c
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhp;->zzey()Z

    move-result v3

    if-nez v3, :cond_e

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzagf:Lcom/google/android/gms/internal/ads/zzhp;

    if-ne v1, v3, :cond_d

    const/4 v2, 0x0

    :cond_d
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzhp;->zzagu:Lcom/google/android/gms/internal/ads/zzhp;

    goto :goto_6

    :cond_e
    if-eqz v2, :cond_18

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzagf:Lcom/google/android/gms/internal/ads/zzhp;

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzagg:Lcom/google/android/gms/internal/ads/zzhp;

    if-eq v2, v3, :cond_f

    const/4 v2, 0x1

    goto :goto_7

    :cond_f
    const/4 v2, 0x0

    :goto_7
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzhp;->zzagu:Lcom/google/android/gms/internal/ads/zzhp;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzhm;->zza(Lcom/google/android/gms/internal/ads/zzhp;)V

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzagg:Lcom/google/android/gms/internal/ads/zzhp;

    iput-object v6, v3, Lcom/google/android/gms/internal/ads/zzhp;->zzagu:Lcom/google/android/gms/internal/ads/zzhp;

    iput-object v3, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzage:Lcom/google/android/gms/internal/ads/zzhp;

    iput-object v3, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzagf:Lcom/google/android/gms/internal/ads/zzhp;

    iget-object v4, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzaeq:[Lcom/google/android/gms/internal/ads/zzhy;

    array-length v4, v4

    new-array v4, v4, [Z

    iget-object v5, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafj:Lcom/google/android/gms/internal/ads/zzho;

    iget-wide v11, v5, Lcom/google/android/gms/internal/ads/zzho;->zzagk:J

    invoke-virtual {v3, v11, v12, v2, v4}, Lcom/google/android/gms/internal/ads/zzhp;->zza(JZ[Z)J

    move-result-wide v2

    iget-object v5, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafj:Lcom/google/android/gms/internal/ads/zzho;

    iget-wide v11, v5, Lcom/google/android/gms/internal/ads/zzho;->zzagk:J

    cmp-long v5, v2, v11

    if-eqz v5, :cond_10

    iget-object v5, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafj:Lcom/google/android/gms/internal/ads/zzho;

    iput-wide v2, v5, Lcom/google/android/gms/internal/ads/zzho;->zzagk:J

    invoke-direct {v8, v2, v3}, Lcom/google/android/gms/internal/ads/zzhm;->zzdq(J)V

    :cond_10
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzaeq:[Lcom/google/android/gms/internal/ads/zzhy;

    array-length v2, v2

    new-array v2, v2, [Z

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_8
    iget-object v11, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzaeq:[Lcom/google/android/gms/internal/ads/zzhy;

    array-length v12, v11

    if-ge v3, v12, :cond_17

    aget-object v11, v11, v3

    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzhy;->getState()I

    move-result v12

    if-eqz v12, :cond_11

    const/4 v12, 0x1

    goto :goto_9

    :cond_11
    const/4 v12, 0x0

    :goto_9
    aput-boolean v12, v2, v3

    iget-object v12, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzagg:Lcom/google/android/gms/internal/ads/zzhp;

    iget-object v12, v12, Lcom/google/android/gms/internal/ads/zzhp;->zzago:[Lcom/google/android/gms/internal/ads/zznn;

    aget-object v12, v12, v3

    if-eqz v12, :cond_12

    add-int/lit8 v5, v5, 0x1

    :cond_12
    aget-boolean v13, v2, v3

    if-eqz v13, :cond_16

    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzhy;->zzeb()Lcom/google/android/gms/internal/ads/zznn;

    move-result-object v13

    if-eq v12, v13, :cond_15

    iget-object v13, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafs:Lcom/google/android/gms/internal/ads/zzhy;

    if-ne v11, v13, :cond_14

    if-nez v12, :cond_13

    iget-object v12, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafp:Lcom/google/android/gms/internal/ads/zzps;

    iget-object v13, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzaft:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-virtual {v12, v13}, Lcom/google/android/gms/internal/ads/zzps;->zza(Lcom/google/android/gms/internal/ads/zzpk;)V

    :cond_13
    iput-object v6, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzaft:Lcom/google/android/gms/internal/ads/zzpk;

    iput-object v6, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafs:Lcom/google/android/gms/internal/ads/zzhy;

    :cond_14
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzhm;->zza(Lcom/google/android/gms/internal/ads/zzhy;)V

    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzhy;->disable()V

    goto :goto_a

    :cond_15
    aget-boolean v12, v4, v3

    if-eqz v12, :cond_16

    iget-wide v12, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzagd:J

    invoke-interface {v11, v12, v13}, Lcom/google/android/gms/internal/ads/zzhy;->zzdm(J)V

    :cond_16
    :goto_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_17
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzaet:Landroid/os/Handler;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzhp;->zzagv:Lcom/google/android/gms/internal/ads/zzoj;

    invoke-virtual {v3, v14, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    invoke-direct {v8, v2, v5}, Lcom/google/android/gms/internal/ads/zzhm;->zza([ZI)V

    goto :goto_c

    :cond_18
    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzage:Lcom/google/android/gms/internal/ads/zzhp;

    :goto_b
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzhp;->zzagu:Lcom/google/android/gms/internal/ads/zzhp;

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhp;->release()V

    goto :goto_b

    :cond_19
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzage:Lcom/google/android/gms/internal/ads/zzhp;

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzhp;->zzagu:Lcom/google/android/gms/internal/ads/zzhp;

    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzhp;->zzags:Z

    if-eqz v2, :cond_1a

    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzhp;->zzagj:J

    iget-wide v4, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzagd:J

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhp;->zzew()J

    move-result-wide v11

    sub-long/2addr v4, v11

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzage:Lcom/google/android/gms/internal/ads/zzhp;

    invoke-virtual {v3, v1, v2, v9}, Lcom/google/android/gms/internal/ads/zzhp;->zzb(JZ)J

    :cond_1a
    :goto_c
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhm;->zzev()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhm;->zzes()V

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhm;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1b
    :goto_d
    return v10

    :pswitch_3
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zznc;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzage:Lcom/google/android/gms/internal/ads/zzhp;

    if-eqz v2, :cond_1d

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzhp;->zzagm:Lcom/google/android/gms/internal/ads/zznc;

    if-eq v2, v1, :cond_1c

    goto :goto_e

    :cond_1c
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhm;->zzev()V

    :cond_1d
    :goto_e
    return v10

    :pswitch_4
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zznc;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzage:Lcom/google/android/gms/internal/ads/zzhp;

    if-eqz v2, :cond_20

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzhp;->zzagm:Lcom/google/android/gms/internal/ads/zznc;

    if-eq v3, v1, :cond_1e

    goto :goto_f

    :cond_1e
    iput-boolean v10, v2, Lcom/google/android/gms/internal/ads/zzhp;->zzags:Z

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhp;->zzey()Z

    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/zzhp;->zzagj:J

    invoke-virtual {v2, v3, v4, v9}, Lcom/google/android/gms/internal/ads/zzhp;->zzb(JZ)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/google/android/gms/internal/ads/zzhp;->zzagj:J

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzagg:Lcom/google/android/gms/internal/ads/zzhp;

    if-nez v1, :cond_1f

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzage:Lcom/google/android/gms/internal/ads/zzhp;

    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzagf:Lcom/google/android/gms/internal/ads/zzhp;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzhp;->zzagj:J

    invoke-direct {v8, v1, v2}, Lcom/google/android/gms/internal/ads/zzhm;->zzdq(J)V

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzagf:Lcom/google/android/gms/internal/ads/zzhp;

    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/ads/zzhm;->zzb(Lcom/google/android/gms/internal/ads/zzhp;)V

    :cond_1f
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhm;->zzev()V

    :cond_20
    :goto_f
    return v10

    :pswitch_5
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafe:Lcom/google/android/gms/internal/ads/zzid;

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzid;

    iput-object v3, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafe:Lcom/google/android/gms/internal/ads/zzid;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v2, :cond_24

    iget v4, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzagb:I

    if-lez v4, :cond_22

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzagc:Lcom/google/android/gms/internal/ads/zzhr;

    invoke-direct {v8, v3}, Lcom/google/android/gms/internal/ads/zzhm;->zza(Lcom/google/android/gms/internal/ads/zzhr;)Landroid/util/Pair;

    move-result-object v3

    iget v4, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzagb:I

    iput v9, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzagb:I

    iput-object v6, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzagc:Lcom/google/android/gms/internal/ads/zzhr;

    if-nez v3, :cond_21

    :goto_10
    invoke-direct {v8, v1, v4}, Lcom/google/android/gms/internal/ads/zzhm;->zza(Ljava/lang/Object;I)V

    goto/16 :goto_19

    :cond_21
    new-instance v7, Lcom/google/android/gms/internal/ads/zzho;

    iget-object v11, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-direct {v7, v11, v14, v15}, Lcom/google/android/gms/internal/ads/zzho;-><init>(IJ)V

    iput-object v7, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafj:Lcom/google/android/gms/internal/ads/zzho;

    goto :goto_11

    :cond_22
    iget-object v4, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafj:Lcom/google/android/gms/internal/ads/zzho;

    iget-wide v14, v4, Lcom/google/android/gms/internal/ads/zzho;->zzagj:J

    cmp-long v4, v14, v12

    if-nez v4, :cond_24

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzid;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-direct {v8, v1, v9}, Lcom/google/android/gms/internal/ads/zzhm;->zza(Ljava/lang/Object;I)V

    goto/16 :goto_19

    :cond_23
    invoke-direct {v8, v9, v12, v13}, Lcom/google/android/gms/internal/ads/zzhm;->zzc(IJ)Landroid/util/Pair;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/zzho;

    iget-object v7, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-direct {v4, v7, v14, v15}, Lcom/google/android/gms/internal/ads/zzho;-><init>(IJ)V

    iput-object v4, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafj:Lcom/google/android/gms/internal/ads/zzho;

    :cond_24
    const/4 v4, 0x0

    :goto_11
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzagg:Lcom/google/android/gms/internal/ads/zzhp;

    if-eqz v3, :cond_25

    goto :goto_12

    :cond_25
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzage:Lcom/google/android/gms/internal/ads/zzhp;

    :goto_12
    if-eqz v3, :cond_2f

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafe:Lcom/google/android/gms/internal/ads/zzid;

    iget-object v11, v3, Lcom/google/android/gms/internal/ads/zzhp;->zzagn:Ljava/lang/Object;

    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/zzid;->zzc(Ljava/lang/Object;)I

    move-result v7

    if-ne v7, v5, :cond_29

    iget v6, v3, Lcom/google/android/gms/internal/ads/zzhp;->zzagi:I

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafe:Lcom/google/android/gms/internal/ads/zzid;

    invoke-direct {v8, v6, v2, v7}, Lcom/google/android/gms/internal/ads/zzhm;->zza(ILcom/google/android/gms/internal/ads/zzid;Lcom/google/android/gms/internal/ads/zzid;)I

    move-result v2

    if-ne v2, v5, :cond_26

    goto :goto_10

    :cond_26
    iget-object v6, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafe:Lcom/google/android/gms/internal/ads/zzid;

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzaex:Lcom/google/android/gms/internal/ads/zzif;

    invoke-virtual {v6, v2, v7, v9}, Lcom/google/android/gms/internal/ads/zzid;->zza(ILcom/google/android/gms/internal/ads/zzif;Z)Lcom/google/android/gms/internal/ads/zzif;

    invoke-direct {v8, v9, v12, v13}, Lcom/google/android/gms/internal/ads/zzhm;->zzc(IJ)Landroid/util/Pair;

    move-result-object v2

    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafe:Lcom/google/android/gms/internal/ads/zzid;

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzaex:Lcom/google/android/gms/internal/ads/zzif;

    invoke-virtual {v2, v6, v7, v10}, Lcom/google/android/gms/internal/ads/zzid;->zza(ILcom/google/android/gms/internal/ads/zzif;Z)Lcom/google/android/gms/internal/ads/zzif;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzaex:Lcom/google/android/gms/internal/ads/zzif;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzif;->zzagn:Ljava/lang/Object;

    iput v5, v3, Lcom/google/android/gms/internal/ads/zzhp;->zzagi:I

    :goto_13
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzhp;->zzagu:Lcom/google/android/gms/internal/ads/zzhp;

    if-eqz v3, :cond_28

    iget-object v7, v3, Lcom/google/android/gms/internal/ads/zzhp;->zzagn:Ljava/lang/Object;

    invoke-virtual {v7, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_27

    move v7, v6

    goto :goto_14

    :cond_27
    const/4 v7, -0x1

    :goto_14
    iput v7, v3, Lcom/google/android/gms/internal/ads/zzhp;->zzagi:I

    goto :goto_13

    :cond_28
    invoke-direct {v8, v6, v11, v12}, Lcom/google/android/gms/internal/ads/zzhm;->zzb(IJ)J

    move-result-wide v2

    new-instance v5, Lcom/google/android/gms/internal/ads/zzho;

    invoke-direct {v5, v6, v2, v3}, Lcom/google/android/gms/internal/ads/zzho;-><init>(IJ)V

    iput-object v5, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafj:Lcom/google/android/gms/internal/ads/zzho;

    goto/16 :goto_18

    :cond_29
    invoke-direct {v8, v7}, Lcom/google/android/gms/internal/ads/zzhm;->zzu(I)Z

    move-result v2

    invoke-virtual {v3, v7, v2}, Lcom/google/android/gms/internal/ads/zzhp;->zzc(IZ)V

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzagf:Lcom/google/android/gms/internal/ads/zzhp;

    if-ne v3, v2, :cond_2a

    const/4 v2, 0x1

    goto :goto_15

    :cond_2a
    const/4 v2, 0x0

    :goto_15
    iget-object v11, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafj:Lcom/google/android/gms/internal/ads/zzho;

    iget v12, v11, Lcom/google/android/gms/internal/ads/zzho;->zzagi:I

    if-eq v7, v12, :cond_2b

    new-instance v12, Lcom/google/android/gms/internal/ads/zzho;

    iget-wide v13, v11, Lcom/google/android/gms/internal/ads/zzho;->zzagj:J

    invoke-direct {v12, v7, v13, v14}, Lcom/google/android/gms/internal/ads/zzho;-><init>(IJ)V

    iget-wide v13, v11, Lcom/google/android/gms/internal/ads/zzho;->zzagk:J

    iput-wide v13, v12, Lcom/google/android/gms/internal/ads/zzho;->zzagk:J

    iget-wide v13, v11, Lcom/google/android/gms/internal/ads/zzho;->zzagl:J

    iput-wide v13, v12, Lcom/google/android/gms/internal/ads/zzho;->zzagl:J

    iput-object v12, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafj:Lcom/google/android/gms/internal/ads/zzho;

    :cond_2b
    :goto_16
    iget-object v11, v3, Lcom/google/android/gms/internal/ads/zzhp;->zzagu:Lcom/google/android/gms/internal/ads/zzhp;

    if-eqz v11, :cond_2f

    iget-object v12, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafe:Lcom/google/android/gms/internal/ads/zzid;

    iget-object v13, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzaex:Lcom/google/android/gms/internal/ads/zzif;

    iget-object v14, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzaew:Lcom/google/android/gms/internal/ads/zzie;

    iget v15, v8, Lcom/google/android/gms/internal/ads/zzhm;->repeatMode:I

    invoke-virtual {v12, v7, v13, v14, v15}, Lcom/google/android/gms/internal/ads/zzid;->zza(ILcom/google/android/gms/internal/ads/zzif;Lcom/google/android/gms/internal/ads/zzie;I)I

    move-result v7

    if-eq v7, v5, :cond_2d

    iget-object v12, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzagn:Ljava/lang/Object;

    iget-object v13, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafe:Lcom/google/android/gms/internal/ads/zzid;

    iget-object v14, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzaex:Lcom/google/android/gms/internal/ads/zzif;

    invoke-virtual {v13, v7, v14, v10}, Lcom/google/android/gms/internal/ads/zzid;->zza(ILcom/google/android/gms/internal/ads/zzif;Z)Lcom/google/android/gms/internal/ads/zzif;

    move-result-object v13

    iget-object v13, v13, Lcom/google/android/gms/internal/ads/zzif;->zzagn:Ljava/lang/Object;

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2d

    invoke-direct {v8, v7}, Lcom/google/android/gms/internal/ads/zzhm;->zzu(I)Z

    move-result v3

    invoke-virtual {v11, v7, v3}, Lcom/google/android/gms/internal/ads/zzhp;->zzc(IZ)V

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzagf:Lcom/google/android/gms/internal/ads/zzhp;

    if-ne v11, v3, :cond_2c

    const/4 v3, 0x1

    goto :goto_17

    :cond_2c
    const/4 v3, 0x0

    :goto_17
    or-int/2addr v2, v3

    move-object v3, v11

    goto :goto_16

    :cond_2d
    if-nez v2, :cond_2e

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzagg:Lcom/google/android/gms/internal/ads/zzhp;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzhp;->zzagi:I

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafj:Lcom/google/android/gms/internal/ads/zzho;

    iget-wide v5, v3, Lcom/google/android/gms/internal/ads/zzho;->zzagk:J

    invoke-direct {v8, v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzhm;->zzb(IJ)J

    move-result-wide v5

    new-instance v3, Lcom/google/android/gms/internal/ads/zzho;

    invoke-direct {v3, v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzho;-><init>(IJ)V

    iput-object v3, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafj:Lcom/google/android/gms/internal/ads/zzho;

    goto :goto_18

    :cond_2e
    iput-object v3, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzage:Lcom/google/android/gms/internal/ads/zzhp;

    iput-object v6, v3, Lcom/google/android/gms/internal/ads/zzhp;->zzagu:Lcom/google/android/gms/internal/ads/zzhp;

    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzhm;->zza(Lcom/google/android/gms/internal/ads/zzhp;)V

    :cond_2f
    :goto_18
    invoke-direct {v8, v1, v4}, Lcom/google/android/gms/internal/ads/zzhm;->zzb(Ljava/lang/Object;I)V

    :goto_19
    return v10

    :pswitch_6
    invoke-direct {v8, v10}, Lcom/google/android/gms/internal/ads/zzhm;->zzi(Z)V

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafo:Lcom/google/android/gms/internal/ads/zzhx;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzhx;->zzfc()V

    invoke-direct {v8, v10}, Lcom/google/android/gms/internal/ads/zzhm;->setState(I)V

    monitor-enter p0
    :try_end_9
    .catch Lcom/google/android/gms/internal/ads/zzhe; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_2

    :try_start_a
    iput-boolean v10, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafw:Z

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return v10

    :catchall_3
    move-exception v0

    move-object v1, v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw v1

    :pswitch_7
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhm;->zzet()V

    return v10

    :pswitch_8
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzhz;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzaft:Lcom/google/android/gms/internal/ads/zzpk;

    if-eqz v2, :cond_30

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzpk;->zzb(Lcom/google/android/gms/internal/ads/zzhz;)Lcom/google/android/gms/internal/ads/zzhz;

    move-result-object v1

    goto :goto_1a

    :cond_30
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafp:Lcom/google/android/gms/internal/ads/zzps;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzps;->zzb(Lcom/google/android/gms/internal/ads/zzhz;)Lcom/google/android/gms/internal/ads/zzhz;

    move-result-object v1

    :goto_1a
    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafi:Lcom/google/android/gms/internal/ads/zzhz;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzaet:Landroid/os/Handler;

    invoke-virtual {v2, v11, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return v10

    :pswitch_9
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzhr;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafe:Lcom/google/android/gms/internal/ads/zzid;

    if-nez v2, :cond_31

    iget v2, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzagb:I

    add-int/2addr v2, v10

    iput v2, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzagb:I

    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzagc:Lcom/google/android/gms/internal/ads/zzhr;

    goto/16 :goto_20

    :cond_31
    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/ads/zzhm;->zza(Lcom/google/android/gms/internal/ads/zzhr;)Landroid/util/Pair;

    move-result-object v2

    if-nez v2, :cond_32

    new-instance v1, Lcom/google/android/gms/internal/ads/zzho;

    invoke-direct {v1, v9, v3, v4}, Lcom/google/android/gms/internal/ads/zzho;-><init>(IJ)V

    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafj:Lcom/google/android/gms/internal/ads/zzho;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzaet:Landroid/os/Handler;

    invoke-virtual {v2, v15, v10, v9, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzho;

    invoke-direct {v1, v9, v12, v13}, Lcom/google/android/gms/internal/ads/zzho;-><init>(IJ)V

    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafj:Lcom/google/android/gms/internal/ads/zzho;

    invoke-direct {v8, v15}, Lcom/google/android/gms/internal/ads/zzhm;->setState(I)V

    invoke-direct {v8, v9}, Lcom/google/android/gms/internal/ads/zzhm;->zzi(Z)V

    goto :goto_20

    :cond_32
    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzhr;->zzagz:J

    cmp-long v1, v3, v12

    if-nez v1, :cond_33

    const/4 v1, 0x1

    goto :goto_1b

    :cond_33
    const/4 v1, 0x0

    :goto_1b
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4
    :try_end_b
    .catch Lcom/google/android/gms/internal/ads/zzhe; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_2

    :try_start_c
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafj:Lcom/google/android/gms/internal/ads/zzho;

    iget v6, v2, Lcom/google/android/gms/internal/ads/zzho;->zzagi:I

    if-ne v3, v6, :cond_35

    const-wide/16 v6, 0x3e8

    div-long v11, v4, v6

    iget-wide v13, v2, Lcom/google/android/gms/internal/ads/zzho;->zzagk:J

    div-long/2addr v13, v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    cmp-long v2, v11, v13

    if-nez v2, :cond_35

    :try_start_d
    new-instance v2, Lcom/google/android/gms/internal/ads/zzho;

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzho;-><init>(IJ)V

    iput-object v2, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafj:Lcom/google/android/gms/internal/ads/zzho;

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzaet:Landroid/os/Handler;

    if-eqz v1, :cond_34

    const/4 v1, 0x1

    goto :goto_1c

    :cond_34
    const/4 v1, 0x0

    :goto_1c
    invoke-virtual {v3, v15, v1, v9, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    :goto_1d
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_d
    .catch Lcom/google/android/gms/internal/ads/zzhe; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_2

    goto :goto_20

    :cond_35
    :try_start_e
    invoke-direct {v8, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzhm;->zzb(IJ)J

    move-result-wide v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    cmp-long v2, v4, v6

    if-eqz v2, :cond_36

    const/4 v2, 0x1

    goto :goto_1e

    :cond_36
    const/4 v2, 0x0

    :goto_1e
    or-int/2addr v1, v2

    :try_start_f
    new-instance v2, Lcom/google/android/gms/internal/ads/zzho;

    invoke-direct {v2, v3, v6, v7}, Lcom/google/android/gms/internal/ads/zzho;-><init>(IJ)V

    iput-object v2, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafj:Lcom/google/android/gms/internal/ads/zzho;

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzaet:Landroid/os/Handler;

    if-eqz v1, :cond_37

    const/4 v1, 0x1

    goto :goto_1f

    :cond_37
    const/4 v1, 0x0

    :goto_1f
    invoke-virtual {v3, v15, v1, v9, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    goto :goto_1d

    :goto_20
    return v10

    :catchall_4
    move-exception v0

    move-object v2, v0

    new-instance v6, Lcom/google/android/gms/internal/ads/zzho;

    invoke-direct {v6, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzho;-><init>(IJ)V

    iput-object v6, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafj:Lcom/google/android/gms/internal/ads/zzho;

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzaet:Landroid/os/Handler;

    if-eqz v1, :cond_38

    const/4 v1, 0x1

    goto :goto_21

    :cond_38
    const/4 v1, 0x0

    :goto_21
    invoke-virtual {v3, v15, v1, v9, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    throw v2

    :pswitch_a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafe:Lcom/google/android/gms/internal/ads/zzid;

    if-nez v1, :cond_39

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafu:Lcom/google/android/gms/internal/ads/zzne;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzne;->zzhz()V

    move-wide v14, v5

    goto/16 :goto_33

    :cond_39
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzage:Lcom/google/android/gms/internal/ads/zzhp;

    if-nez v1, :cond_3a

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafj:Lcom/google/android/gms/internal/ads/zzho;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzho;->zzagi:I

    goto :goto_22

    :cond_3a
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzhp;->zzagi:I

    iget-boolean v7, v1, Lcom/google/android/gms/internal/ads/zzhp;->zzagr:Z

    if-nez v7, :cond_3d

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhp;->zzex()Z

    move-result v1

    if-eqz v1, :cond_3d

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafe:Lcom/google/android/gms/internal/ads/zzid;

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzaex:Lcom/google/android/gms/internal/ads/zzif;

    invoke-virtual {v1, v2, v7, v9}, Lcom/google/android/gms/internal/ads/zzid;->zza(ILcom/google/android/gms/internal/ads/zzif;Z)Lcom/google/android/gms/internal/ads/zzif;

    move-result-object v1

    iget-wide v14, v1, Lcom/google/android/gms/internal/ads/zzif;->zzaip:J

    cmp-long v1, v14, v12

    if-nez v1, :cond_3b

    goto :goto_23

    :cond_3b
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzagg:Lcom/google/android/gms/internal/ads/zzhp;

    if-eqz v1, :cond_3c

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzage:Lcom/google/android/gms/internal/ads/zzhp;

    iget v7, v7, Lcom/google/android/gms/internal/ads/zzhp;->index:I

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzhp;->index:I

    sub-int/2addr v7, v1

    const/16 v1, 0x64

    if-eq v7, v1, :cond_3d

    :cond_3c
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafe:Lcom/google/android/gms/internal/ads/zzid;

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzaex:Lcom/google/android/gms/internal/ads/zzif;

    iget-object v14, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzaew:Lcom/google/android/gms/internal/ads/zzie;

    iget v15, v8, Lcom/google/android/gms/internal/ads/zzhm;->repeatMode:I

    invoke-virtual {v1, v2, v7, v14, v15}, Lcom/google/android/gms/internal/ads/zzid;->zza(ILcom/google/android/gms/internal/ads/zzif;Lcom/google/android/gms/internal/ads/zzie;I)I

    move-result v1

    :goto_22
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafe:Lcom/google/android/gms/internal/ads/zzid;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzid;->zzfg()I

    move-result v2

    if-lt v1, v2, :cond_3e

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafu:Lcom/google/android/gms/internal/ads/zzne;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzne;->zzhz()V

    :cond_3d
    :goto_23
    move-wide v14, v5

    goto/16 :goto_29

    :cond_3e
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzage:Lcom/google/android/gms/internal/ads/zzhp;

    if-nez v2, :cond_3f

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafj:Lcom/google/android/gms/internal/ads/zzho;

    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/zzho;->zzagk:J

    :goto_24
    move-wide v14, v5

    goto :goto_25

    :cond_3f
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafe:Lcom/google/android/gms/internal/ads/zzid;

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzaex:Lcom/google/android/gms/internal/ads/zzif;

    invoke-virtual {v2, v1, v7, v9}, Lcom/google/android/gms/internal/ads/zzid;->zza(ILcom/google/android/gms/internal/ads/zzif;Z)Lcom/google/android/gms/internal/ads/zzif;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafe:Lcom/google/android/gms/internal/ads/zzid;

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzaew:Lcom/google/android/gms/internal/ads/zzie;

    invoke-virtual {v2, v9, v7, v9}, Lcom/google/android/gms/internal/ads/zzid;->zza(ILcom/google/android/gms/internal/ads/zzie;Z)Lcom/google/android/gms/internal/ads/zzie;

    if-eqz v1, :cond_40

    goto :goto_24

    :cond_40
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzage:Lcom/google/android/gms/internal/ads/zzhp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhp;->zzew()J

    move-result-wide v1

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafe:Lcom/google/android/gms/internal/ads/zzid;

    iget-object v14, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzage:Lcom/google/android/gms/internal/ads/zzhp;

    iget v14, v14, Lcom/google/android/gms/internal/ads/zzhp;->zzagi:I

    iget-object v15, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzaex:Lcom/google/android/gms/internal/ads/zzif;

    invoke-virtual {v7, v14, v15, v9}, Lcom/google/android/gms/internal/ads/zzid;->zza(ILcom/google/android/gms/internal/ads/zzif;Z)Lcom/google/android/gms/internal/ads/zzif;

    move-result-object v7

    iget-wide v14, v7, Lcom/google/android/gms/internal/ads/zzif;->zzaip:J

    add-long/2addr v1, v14

    iget-wide v14, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzagd:J

    sub-long/2addr v1, v14

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafe:Lcom/google/android/gms/internal/ads/zzid;

    const/4 v14, 0x0

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v18

    move-object/from16 v1, p0

    move-object v2, v7

    move v3, v14

    move-wide v14, v5

    move-wide/from16 v4, v16

    move-wide/from16 v6, v18

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzhm;->zza(Lcom/google/android/gms/internal/ads/zzid;IJJ)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_44

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move v1, v2

    :goto_25
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzage:Lcom/google/android/gms/internal/ads/zzhp;

    if-nez v2, :cond_41

    const-wide/32 v5, 0x3938700

    add-long/2addr v5, v3

    :goto_26
    move-wide/from16 v23, v5

    goto :goto_27

    :cond_41
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhp;->zzew()J

    move-result-wide v5

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafe:Lcom/google/android/gms/internal/ads/zzid;

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzage:Lcom/google/android/gms/internal/ads/zzhp;

    iget v7, v7, Lcom/google/android/gms/internal/ads/zzhp;->zzagi:I

    iget-object v11, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzaex:Lcom/google/android/gms/internal/ads/zzif;

    invoke-virtual {v2, v7, v11, v9}, Lcom/google/android/gms/internal/ads/zzid;->zza(ILcom/google/android/gms/internal/ads/zzif;Z)Lcom/google/android/gms/internal/ads/zzif;

    move-result-object v2

    iget-wide v12, v2, Lcom/google/android/gms/internal/ads/zzif;->zzaip:J

    add-long/2addr v5, v12

    goto :goto_26

    :goto_27
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzage:Lcom/google/android/gms/internal/ads/zzhp;

    if-nez v2, :cond_42

    const/16 v29, 0x0

    goto :goto_28

    :cond_42
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzhp;->index:I

    add-int/2addr v2, v10

    move/from16 v29, v2

    :goto_28
    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/ads/zzhm;->zzu(I)Z

    move-result v31

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafe:Lcom/google/android/gms/internal/ads/zzid;

    iget-object v5, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzaex:Lcom/google/android/gms/internal/ads/zzif;

    invoke-virtual {v2, v1, v5, v10}, Lcom/google/android/gms/internal/ads/zzid;->zza(ILcom/google/android/gms/internal/ads/zzif;Z)Lcom/google/android/gms/internal/ads/zzif;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhp;

    iget-object v5, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzaeq:[Lcom/google/android/gms/internal/ads/zzhy;

    iget-object v6, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafn:[Lcom/google/android/gms/internal/ads/zzib;

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzaer:Lcom/google/android/gms/internal/ads/zzoh;

    iget-object v11, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafo:Lcom/google/android/gms/internal/ads/zzhx;

    iget-object v12, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafu:Lcom/google/android/gms/internal/ads/zzne;

    iget-object v13, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzaex:Lcom/google/android/gms/internal/ads/zzif;

    iget-object v13, v13, Lcom/google/android/gms/internal/ads/zzif;->zzagn:Ljava/lang/Object;

    move-object/from16 v20, v2

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v25, v7

    move-object/from16 v26, v11

    move-object/from16 v27, v12

    move-object/from16 v28, v13

    move/from16 v30, v1

    move-wide/from16 v32, v3

    invoke-direct/range {v20 .. v33}, Lcom/google/android/gms/internal/ads/zzhp;-><init>([Lcom/google/android/gms/internal/ads/zzhy;[Lcom/google/android/gms/internal/ads/zzib;JLcom/google/android/gms/internal/ads/zzoh;Lcom/google/android/gms/internal/ads/zzhx;Lcom/google/android/gms/internal/ads/zzne;Ljava/lang/Object;IIZJ)V

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzage:Lcom/google/android/gms/internal/ads/zzhp;

    if-eqz v1, :cond_43

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzhp;->zzagu:Lcom/google/android/gms/internal/ads/zzhp;

    :cond_43
    iput-object v2, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzage:Lcom/google/android/gms/internal/ads/zzhp;

    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzhp;->zzagm:Lcom/google/android/gms/internal/ads/zznc;

    invoke-interface {v1, v8, v3, v4}, Lcom/google/android/gms/internal/ads/zznc;->zza(Lcom/google/android/gms/internal/ads/zznb;J)V

    invoke-direct {v8, v10}, Lcom/google/android/gms/internal/ads/zzhm;->zzh(Z)V

    :cond_44
    :goto_29
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzage:Lcom/google/android/gms/internal/ads/zzhp;

    if-eqz v1, :cond_46

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhp;->zzex()Z

    move-result v1

    if-eqz v1, :cond_45

    goto :goto_2a

    :cond_45
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzage:Lcom/google/android/gms/internal/ads/zzhp;

    if-eqz v1, :cond_47

    iget-boolean v1, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafd:Z

    if-nez v1, :cond_47

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhm;->zzev()V

    goto :goto_2b

    :cond_46
    :goto_2a
    invoke-direct {v8, v9}, Lcom/google/android/gms/internal/ads/zzhm;->zzh(Z)V

    :cond_47
    :goto_2b
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzagg:Lcom/google/android/gms/internal/ads/zzhp;

    if-eqz v1, :cond_51

    :goto_2c
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzagg:Lcom/google/android/gms/internal/ads/zzhp;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzagf:Lcom/google/android/gms/internal/ads/zzhp;

    if-eq v1, v2, :cond_48

    iget-wide v3, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzagd:J

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzhp;->zzagu:Lcom/google/android/gms/internal/ads/zzhp;

    iget-wide v5, v5, Lcom/google/android/gms/internal/ads/zzhp;->zzagq:J

    cmp-long v7, v3, v5

    if-ltz v7, :cond_48

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhp;->release()V

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzagg:Lcom/google/android/gms/internal/ads/zzhp;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzhp;->zzagu:Lcom/google/android/gms/internal/ads/zzhp;

    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/ads/zzhm;->zzb(Lcom/google/android/gms/internal/ads/zzhp;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzho;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzagg:Lcom/google/android/gms/internal/ads/zzhp;

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzhp;->zzagi:I

    iget-wide v4, v2, Lcom/google/android/gms/internal/ads/zzhp;->zzagj:J

    invoke-direct {v1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzho;-><init>(IJ)V

    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafj:Lcom/google/android/gms/internal/ads/zzho;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhm;->zzes()V

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzaet:Landroid/os/Handler;

    const/4 v2, 0x5

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafj:Lcom/google/android/gms/internal/ads/zzho;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2c

    :cond_48
    iget-boolean v1, v2, Lcom/google/android/gms/internal/ads/zzhp;->zzagr:Z

    if-eqz v1, :cond_4a

    const/4 v1, 0x0

    :goto_2d
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzaeq:[Lcom/google/android/gms/internal/ads/zzhy;

    array-length v3, v2

    if-ge v1, v3, :cond_51

    aget-object v2, v2, v1

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzagf:Lcom/google/android/gms/internal/ads/zzhp;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzhp;->zzago:[Lcom/google/android/gms/internal/ads/zznn;

    aget-object v3, v3, v1

    if-eqz v3, :cond_49

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzhy;->zzeb()Lcom/google/android/gms/internal/ads/zznn;

    move-result-object v4

    if-ne v4, v3, :cond_49

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzhy;->zzec()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzhy;->zzed()V

    :cond_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    :cond_4a
    const/4 v1, 0x0

    :goto_2e
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzaeq:[Lcom/google/android/gms/internal/ads/zzhy;

    array-length v3, v2

    if-ge v1, v3, :cond_4c

    aget-object v2, v2, v1

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzagf:Lcom/google/android/gms/internal/ads/zzhp;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzhp;->zzago:[Lcom/google/android/gms/internal/ads/zznn;

    aget-object v3, v3, v1

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzhy;->zzeb()Lcom/google/android/gms/internal/ads/zznn;

    move-result-object v4

    if-ne v4, v3, :cond_51

    if-eqz v3, :cond_4b

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzhy;->zzec()Z

    move-result v2

    if-nez v2, :cond_4b

    goto/16 :goto_33

    :cond_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :cond_4c
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzagf:Lcom/google/android/gms/internal/ads/zzhp;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzhp;->zzagu:Lcom/google/android/gms/internal/ads/zzhp;

    if-eqz v2, :cond_51

    iget-boolean v3, v2, Lcom/google/android/gms/internal/ads/zzhp;->zzags:Z

    if-eqz v3, :cond_51

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzhp;->zzagv:Lcom/google/android/gms/internal/ads/zzoj;

    iput-object v2, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzagf:Lcom/google/android/gms/internal/ads/zzhp;

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzhp;->zzagv:Lcom/google/android/gms/internal/ads/zzoj;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzhp;->zzagm:Lcom/google/android/gms/internal/ads/zznc;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zznc;->zzhq()J

    move-result-wide v4

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v4, v6

    if-eqz v2, :cond_4d

    const/4 v2, 0x1

    goto :goto_2f

    :cond_4d
    const/4 v2, 0x0

    :goto_2f
    const/4 v4, 0x0

    :goto_30
    iget-object v5, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzaeq:[Lcom/google/android/gms/internal/ads/zzhy;

    array-length v6, v5

    if-ge v4, v6, :cond_51

    aget-object v5, v5, v4

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzoj;->zzbhy:Lcom/google/android/gms/internal/ads/zzoi;

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzoi;->zzbe(I)Lcom/google/android/gms/internal/ads/zzog;

    move-result-object v6

    if-eqz v6, :cond_50

    if-nez v2, :cond_4f

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzhy;->zzee()Z

    move-result v6

    if-nez v6, :cond_50

    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzoj;->zzbhy:Lcom/google/android/gms/internal/ads/zzoi;

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzoi;->zzbe(I)Lcom/google/android/gms/internal/ads/zzog;

    move-result-object v6

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzoj;->zzbia:[Lcom/google/android/gms/internal/ads/zzia;

    aget-object v7, v7, v4

    iget-object v11, v3, Lcom/google/android/gms/internal/ads/zzoj;->zzbia:[Lcom/google/android/gms/internal/ads/zzia;

    aget-object v11, v11, v4

    if-eqz v6, :cond_4f

    invoke-virtual {v11, v7}, Lcom/google/android/gms/internal/ads/zzia;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4f

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzog;->length()I

    move-result v7

    new-array v11, v7, [Lcom/google/android/gms/internal/ads/zzht;

    const/4 v12, 0x0

    :goto_31
    if-ge v12, v7, :cond_4e

    invoke-interface {v6, v12}, Lcom/google/android/gms/internal/ads/zzog;->zzbb(I)Lcom/google/android/gms/internal/ads/zzht;

    move-result-object v13

    aput-object v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_31

    :cond_4e
    iget-object v6, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzagf:Lcom/google/android/gms/internal/ads/zzhp;

    iget-object v7, v6, Lcom/google/android/gms/internal/ads/zzhp;->zzago:[Lcom/google/android/gms/internal/ads/zznn;

    aget-object v7, v7, v4

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzhp;->zzew()J

    move-result-wide v12

    invoke-interface {v5, v11, v7, v12, v13}, Lcom/google/android/gms/internal/ads/zzhy;->zza([Lcom/google/android/gms/internal/ads/zzht;Lcom/google/android/gms/internal/ads/zznn;J)V

    goto :goto_32

    :cond_4f
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzhy;->zzed()V

    :cond_50
    :goto_32
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    :cond_51
    :goto_33
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzagg:Lcom/google/android/gms/internal/ads/zzhp;

    const-wide/16 v2, 0xa

    if-nez v1, :cond_52

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhm;->zzeu()V

    invoke-direct {v8, v14, v15, v2, v3}, Lcom/google/android/gms/internal/ads/zzhm;->zza(JJ)V

    goto/16 :goto_40

    :cond_52
    const-string v1, "doSomeWork"

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzpu;->beginSection(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhm;->zzes()V

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzagg:Lcom/google/android/gms/internal/ads/zzhp;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzhp;->zzagm:Lcom/google/android/gms/internal/ads/zznc;

    iget-object v4, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafj:Lcom/google/android/gms/internal/ads/zzho;

    iget-wide v4, v4, Lcom/google/android/gms/internal/ads/zzho;->zzagk:J

    invoke-interface {v1, v4, v5}, Lcom/google/android/gms/internal/ads/zznc;->zzef(J)V

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafv:[Lcom/google/android/gms/internal/ads/zzhy;

    array-length v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    :goto_34
    if-ge v5, v4, :cond_58

    aget-object v11, v1, v5

    iget-wide v12, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzagd:J

    iget-wide v2, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzaga:J

    invoke-interface {v11, v12, v13, v2, v3}, Lcom/google/android/gms/internal/ads/zzhy;->zzb(JJ)V

    if-eqz v7, :cond_53

    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzhy;->zzfe()Z

    move-result v2

    if-eqz v2, :cond_53

    const/4 v7, 0x1

    goto :goto_35

    :cond_53
    const/4 v7, 0x0

    :goto_35
    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzhy;->isReady()Z

    move-result v2

    if-nez v2, :cond_55

    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzhy;->zzfe()Z

    move-result v2

    if-eqz v2, :cond_54

    goto :goto_36

    :cond_54
    const/4 v2, 0x0

    goto :goto_37

    :cond_55
    :goto_36
    const/4 v2, 0x1

    :goto_37
    if-nez v2, :cond_56

    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzhy;->zzef()V

    :cond_56
    if-eqz v6, :cond_57

    if-eqz v2, :cond_57

    const/4 v6, 0x1

    goto :goto_38

    :cond_57
    const/4 v6, 0x0

    :goto_38
    add-int/lit8 v5, v5, 0x1

    const-wide/16 v2, 0xa

    goto :goto_34

    :cond_58
    if-nez v6, :cond_59

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhm;->zzeu()V

    :cond_59
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzaft:Lcom/google/android/gms/internal/ads/zzpk;

    if-eqz v1, :cond_5a

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzpk;->zzfs()Lcom/google/android/gms/internal/ads/zzhz;

    move-result-object v1

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafi:Lcom/google/android/gms/internal/ads/zzhz;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzhz;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5a

    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafi:Lcom/google/android/gms/internal/ads/zzhz;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafp:Lcom/google/android/gms/internal/ads/zzps;

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzaft:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzps;->zza(Lcom/google/android/gms/internal/ads/zzpk;)V

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzaet:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_5a
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafe:Lcom/google/android/gms/internal/ads/zzid;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzagg:Lcom/google/android/gms/internal/ads/zzhp;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzhp;->zzagi:I

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzaex:Lcom/google/android/gms/internal/ads/zzif;

    invoke-virtual {v1, v2, v3, v9}, Lcom/google/android/gms/internal/ads/zzid;->zza(ILcom/google/android/gms/internal/ads/zzif;Z)Lcom/google/android/gms/internal/ads/zzif;

    move-result-object v1

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzif;->zzaip:J

    if-eqz v7, :cond_5c

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_5b

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafj:Lcom/google/android/gms/internal/ads/zzho;

    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/zzho;->zzagk:J

    cmp-long v5, v1, v3

    if-gtz v5, :cond_5c

    :cond_5b
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzagg:Lcom/google/android/gms/internal/ads/zzhp;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/zzhp;->zzagr:Z

    if-eqz v3, :cond_5c

    const/4 v3, 0x4

    invoke-direct {v8, v3}, Lcom/google/android/gms/internal/ads/zzhm;->setState(I)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhm;->zzer()V

    const/4 v4, 0x2

    goto/16 :goto_3d

    :cond_5c
    iget v3, v8, Lcom/google/android/gms/internal/ads/zzhm;->state:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_62

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafv:[Lcom/google/android/gms/internal/ads/zzhy;

    array-length v3, v3

    if-lez v3, :cond_61

    if-eqz v6, :cond_60

    iget-boolean v1, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafx:Z

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzage:Lcom/google/android/gms/internal/ads/zzhp;

    iget-boolean v3, v2, Lcom/google/android/gms/internal/ads/zzhp;->zzags:Z

    if-nez v3, :cond_5d

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzhp;->zzagj:J

    goto :goto_39

    :cond_5d
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzhp;->zzagm:Lcom/google/android/gms/internal/ads/zznc;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zznc;->zzhr()J

    move-result-wide v2

    :goto_39
    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v7, v2, v5

    if-nez v7, :cond_5f

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzage:Lcom/google/android/gms/internal/ads/zzhp;

    iget-boolean v3, v2, Lcom/google/android/gms/internal/ads/zzhp;->zzagr:Z

    if-eqz v3, :cond_5e

    const/4 v1, 0x1

    goto :goto_3a

    :cond_5e
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafe:Lcom/google/android/gms/internal/ads/zzid;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzhp;->zzagi:I

    iget-object v5, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzaex:Lcom/google/android/gms/internal/ads/zzif;

    invoke-virtual {v3, v2, v5, v9}, Lcom/google/android/gms/internal/ads/zzid;->zza(ILcom/google/android/gms/internal/ads/zzif;Z)Lcom/google/android/gms/internal/ads/zzif;

    move-result-object v2

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzif;->zzaip:J

    :cond_5f
    iget-object v5, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafo:Lcom/google/android/gms/internal/ads/zzhx;

    iget-object v6, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzage:Lcom/google/android/gms/internal/ads/zzhp;

    iget-wide v11, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzagd:J

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzhp;->zzew()J

    move-result-wide v6

    sub-long/2addr v11, v6

    sub-long/2addr v2, v11

    invoke-interface {v5, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzhx;->zzc(JZ)Z

    move-result v1

    :goto_3a
    if-eqz v1, :cond_60

    const/4 v1, 0x1

    goto :goto_3b

    :cond_60
    const/4 v1, 0x0

    goto :goto_3b

    :cond_61
    invoke-direct {v8, v1, v2}, Lcom/google/android/gms/internal/ads/zzhm;->zzdr(J)Z

    move-result v1

    :goto_3b
    if-eqz v1, :cond_64

    const/4 v1, 0x3

    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/ads/zzhm;->setState(I)V

    iget-boolean v1, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzaez:Z

    if-eqz v1, :cond_64

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhm;->zzeq()V

    goto :goto_3d

    :cond_62
    const/4 v5, 0x3

    if-ne v3, v5, :cond_64

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafv:[Lcom/google/android/gms/internal/ads/zzhy;

    array-length v3, v3

    if-lez v3, :cond_63

    goto :goto_3c

    :cond_63
    invoke-direct {v8, v1, v2}, Lcom/google/android/gms/internal/ads/zzhm;->zzdr(J)Z

    move-result v6

    :goto_3c
    if-nez v6, :cond_64

    iget-boolean v1, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzaez:Z

    iput-boolean v1, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafx:Z

    invoke-direct {v8, v4}, Lcom/google/android/gms/internal/ads/zzhm;->setState(I)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhm;->zzer()V

    :cond_64
    :goto_3d
    iget v1, v8, Lcom/google/android/gms/internal/ads/zzhm;->state:I

    if-ne v1, v4, :cond_65

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafv:[Lcom/google/android/gms/internal/ads/zzhy;

    array-length v2, v1

    :goto_3e
    if-ge v9, v2, :cond_65

    aget-object v3, v1, v9

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzhy;->zzef()V

    add-int/lit8 v9, v9, 0x1

    goto :goto_3e

    :cond_65
    iget-boolean v1, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzaez:Z

    if-eqz v1, :cond_66

    iget v1, v8, Lcom/google/android/gms/internal/ads/zzhm;->state:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_67

    :cond_66
    iget v1, v8, Lcom/google/android/gms/internal/ads/zzhm;->state:I

    if-ne v1, v4, :cond_68

    :cond_67
    const-wide/16 v1, 0xa

    invoke-direct {v8, v14, v15, v1, v2}, Lcom/google/android/gms/internal/ads/zzhm;->zza(JJ)V

    goto :goto_3f

    :cond_68
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafv:[Lcom/google/android/gms/internal/ads/zzhy;

    array-length v1, v1

    if-eqz v1, :cond_69

    const-wide/16 v1, 0x3e8

    invoke-direct {v8, v14, v15, v1, v2}, Lcom/google/android/gms/internal/ads/zzhm;->zza(JJ)V

    goto :goto_3f

    :cond_69
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhm;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    :goto_3f
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzpu;->endSection()V

    :goto_40
    return v10

    :pswitch_b
    const/4 v4, 0x2

    iget v1, v1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_6a

    const/4 v1, 0x1

    goto :goto_41

    :cond_6a
    const/4 v1, 0x0

    :goto_41
    iput-boolean v9, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafx:Z

    iput-boolean v1, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzaez:Z

    if-nez v1, :cond_6b

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhm;->zzer()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhm;->zzes()V

    goto :goto_43

    :cond_6b
    iget v1, v8, Lcom/google/android/gms/internal/ads/zzhm;->state:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6c

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhm;->zzeq()V

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhm;->handler:Landroid/os/Handler;

    :goto_42
    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_43

    :cond_6c
    if-ne v1, v4, :cond_6d

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhm;->handler:Landroid/os/Handler;

    goto :goto_42

    :cond_6d
    :goto_43
    return v10

    :pswitch_c
    const/4 v4, 0x2

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzne;

    iget v1, v1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_6e

    const/4 v1, 0x1

    goto :goto_44

    :cond_6e
    const/4 v1, 0x0

    :goto_44
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzaet:Landroid/os/Handler;

    invoke-virtual {v3, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-direct {v8, v10}, Lcom/google/android/gms/internal/ads/zzhm;->zzi(Z)V

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafo:Lcom/google/android/gms/internal/ads/zzhx;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzhx;->zzfb()V

    if-eqz v1, :cond_6f

    new-instance v1, Lcom/google/android/gms/internal/ads/zzho;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v1, v9, v5, v6}, Lcom/google/android/gms/internal/ads/zzho;-><init>(IJ)V

    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafj:Lcom/google/android/gms/internal/ads/zzho;

    :cond_6f
    iput-object v2, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafu:Lcom/google/android/gms/internal/ads/zzne;

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzafr:Lcom/google/android/gms/internal/ads/zzhh;

    invoke-interface {v2, v1, v10, v8}, Lcom/google/android/gms/internal/ads/zzne;->zza(Lcom/google/android/gms/internal/ads/zzhh;ZLcom/google/android/gms/internal/ads/zznd;)V

    invoke-direct {v8, v4}, Lcom/google/android/gms/internal/ads/zzhm;->setState(I)V

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzhm;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_f
    .catch Lcom/google/android/gms/internal/ads/zzhe; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_2

    return v10

    :catch_0
    move-exception v0

    move-object v1, v0

    const/16 v3, 0x8

    goto :goto_46

    :catch_1
    move-exception v0

    move-object v1, v0

    const/16 v3, 0x8

    goto :goto_47

    :catch_2
    move-exception v0

    move-object v1, v0

    const-string v2, "ExoPlayerImplInternal"

    const-string v3, "Internal runtime error."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzaet:Landroid/os/Handler;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhe;->zza(Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/zzhe;

    move-result-object v1

    const/16 v3, 0x8

    :goto_45
    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhm;->zzet()V

    return v10

    :catch_3
    move-exception v0

    const/16 v3, 0x8

    move-object v1, v0

    :goto_46
    const-string v2, "ExoPlayerImplInternal"

    const-string v4, "Source error."

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzaet:Landroid/os/Handler;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhe;->zza(Ljava/io/IOException;)Lcom/google/android/gms/internal/ads/zzhe;

    move-result-object v1

    goto :goto_45

    :catch_4
    move-exception v0

    const/16 v3, 0x8

    move-object v1, v0

    :goto_47
    const-string v2, "ExoPlayerImplInternal"

    const-string v4, "Renderer error."

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhm;->zzaet:Landroid/os/Handler;

    goto :goto_45

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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

.method public final declared-synchronized release()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzafw:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->handler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzafw:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzafq:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final stop()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->handler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzid;IJ)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhr;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzhr;-><init>(Lcom/google/android/gms/internal/ads/zzid;IJ)V

    const/4 p1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zznc;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->handler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzne;Z)V
    .locals 2

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzhm;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zznq;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zznc;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->handler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final varargs zza([Lcom/google/android/gms/internal/ads/zzhi;)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzafw:Z

    if-eqz v0, :cond_0

    const-string p1, "ExoPlayerImplInternal"

    const-string v0, "Ignoring messages sent after release."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzafy:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzafy:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->handler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzid;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->handler:Landroid/os/Handler;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    const/4 p2, 0x7

    invoke-virtual {v0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final varargs declared-synchronized zzb([Lcom/google/android/gms/internal/ads/zzhi;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzafw:Z

    if-eqz v0, :cond_0

    const-string p1, "ExoPlayerImplInternal"

    const-string v0, "Ignoring messages sent after release."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzafy:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzafy:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhm;->handler:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzafz:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt p1, v0, :cond_1

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzep()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->handler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final zzg(Z)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
