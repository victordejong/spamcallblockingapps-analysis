.class public final Lcom/google/android/gms/internal/ads/zzddy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdfi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lcom/google/android/gms/internal/ads/zzdfj<",
        "*>;>",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdfi<",
        "TS;>;"
    }
.end annotation


# instance fields
.field private final zzfth:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzhbo:Lcom/google/android/gms/internal/ads/zzdfi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdfi<",
            "TS;>;"
        }
    .end annotation
.end field

.field private final zzhcl:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdfi;JLjava/util/concurrent/ScheduledExecutorService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdfi<",
            "TS;>;J",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzddy;->zzhbo:Lcom/google/android/gms/internal/ads/zzdfi;

    .line 3
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzddy;->zzhcl:J

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzddy;->zzfth:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public final zzasy()Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "TS;>;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzddy;->zzhbo:Lcom/google/android/gms/internal/ads/zzdfi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdfi;->zzasy()Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v0

    .line 7
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzddy;->zzhcl:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 8
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzddy;->zzfth:Ljava/util/concurrent/ScheduledExecutorService;

    .line 9
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzdzk;->zza(Lcom/google/android/gms/internal/ads/zzdzw;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v0

    .line 10
    :cond_0
    const-class v1, Ljava/lang/Throwable;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdeb;->zzboq:Lcom/google/android/gms/internal/ads/zzdyu;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzazp;->zzeih:Lcom/google/android/gms/internal/ads/zzdzv;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdzk;->zzb(Lcom/google/android/gms/internal/ads/zzdzw;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdyu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v0

    return-object v0
.end method
