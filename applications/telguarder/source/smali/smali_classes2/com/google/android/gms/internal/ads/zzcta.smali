.class public final Lcom/google/android/gms/internal/ads/zzcta;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcrj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcrj<",
        "Lcom/google/android/gms/internal/ads/zzblv;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfri:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzgas:Lcom/google/android/gms/internal/ads/zzbrp;

.field private final zzghl:Lcom/google/android/gms/internal/ads/zzdzv;

.field private final zzguc:Lcom/google/android/gms/internal/ads/zzbmr;

.field private final zzgud:Lcom/google/android/gms/internal/ads/zzcsg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbmr;Lcom/google/android/gms/internal/ads/zzcsg;Lcom/google/android/gms/internal/ads/zzbrp;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzdzv;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcta;->zzguc:Lcom/google/android/gms/internal/ads/zzbmr;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcta;->zzgud:Lcom/google/android/gms/internal/ads/zzcsg;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcta;->zzgas:Lcom/google/android/gms/internal/ads/zzbrp;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcta;->zzfri:Ljava/util/concurrent/ScheduledExecutorService;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcta;->zzghl:Lcom/google/android/gms/internal/ads/zzdzv;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcta;)Lcom/google/android/gms/internal/ads/zzbmr;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcta;->zzguc:Lcom/google/android/gms/internal/ads/zzbmr;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzcta;)Lcom/google/android/gms/internal/ads/zzbrp;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcta;->zzgas:Lcom/google/android/gms/internal/ads/zzbrp;

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdmw;)Z
    .locals 1

    .line 8
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdnl;->zzhkr:Lcom/google/android/gms/internal/ads/zzdng;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdng;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdnp;->zzavc()Lcom/google/android/gms/internal/ads/zzagl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcta;->zzgud:Lcom/google/android/gms/internal/ads/zzcsg;

    .line 9
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcsg;->zza(Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdmw;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdmw;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdnl;",
            "Lcom/google/android/gms/internal/ads/zzdmw;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "Lcom/google/android/gms/internal/ads/zzblv;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcta;->zzghl:Lcom/google/android/gms/internal/ads/zzdzv;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcsz;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcsz;-><init>(Lcom/google/android/gms/internal/ads/zzcta;Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdmw;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdzv;->zze(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzc(Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdmw;)Lcom/google/android/gms/internal/ads/zzblv;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcta;->zzguc:Lcom/google/android/gms/internal/ads/zzbmr;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzboj;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzboj;-><init>(Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdmw;Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbnf;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzdnl;->zzhkr:Lcom/google/android/gms/internal/ads/zzdng;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzdng;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    .line 13
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdnp;->zzavc()Lcom/google/android/gms/internal/ads/zzagl;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/zzctc;

    invoke-direct {v4, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzctc;-><init>(Lcom/google/android/gms/internal/ads/zzcta;Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdmw;)V

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbnf;-><init>(Lcom/google/android/gms/internal/ads/zzagl;Ljava/lang/Runnable;)V

    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbmr;->zza(Lcom/google/android/gms/internal/ads/zzboj;Lcom/google/android/gms/internal/ads/zzbnf;)Lcom/google/android/gms/internal/ads/zzbng;

    move-result-object p1

    .line 15
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbng;->zzahu()Lcom/google/android/gms/internal/ads/zzblv;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzd(Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdmw;)V
    .locals 3

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcta;->zzgud:Lcom/google/android/gms/internal/ads/zzcsg;

    .line 19
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcsg;->zzb(Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdmw;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzdmw;->zzhjq:I

    int-to-long v0, p2

    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcta;->zzfri:Ljava/util/concurrent/ScheduledExecutorService;

    .line 20
    invoke-static {p1, v0, v1, p2, v2}, Lcom/google/android/gms/internal/ads/zzdzk;->zza(Lcom/google/android/gms/internal/ads/zzdzw;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    .line 21
    new-instance p2, Lcom/google/android/gms/internal/ads/zzctb;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzctb;-><init>(Lcom/google/android/gms/internal/ads/zzcta;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcta;->zzghl:Lcom/google/android/gms/internal/ads/zzdzv;

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzdzk;->zza(Lcom/google/android/gms/internal/ads/zzdzw;Lcom/google/android/gms/internal/ads/zzdzl;Ljava/util/concurrent/Executor;)V

    return-void
.end method
