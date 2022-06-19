.class public final Lcom/google/android/gms/internal/ads/zzcnc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcnz;


# static fields
.field private static final zzgoi:Ljava/util/regex/Pattern;


# instance fields
.field private final zzfri:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

.field private final zzghl:Lcom/google/android/gms/internal/ads/zzdzv;

.field private final zzgog:Lcom/google/android/gms/internal/ads/zzcme;

.field private final zzgoh:Lcom/google/android/gms/internal/ads/zzcqb;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "Received error HTTP response code: (.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcnc;->zzgoi:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdnp;Lcom/google/android/gms/internal/ads/zzcme;Lcom/google/android/gms/internal/ads/zzdzv;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzcqb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnc;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcnc;->zzgog:Lcom/google/android/gms/internal/ads/zzcme;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcnc;->zzghl:Lcom/google/android/gms/internal/ads/zzdzv;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcnc;->zzfri:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcnc;->zzgoh:Lcom/google/android/gms/internal/ads/zzcqb;

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzcnc;)Lcom/google/android/gms/internal/ads/zzcqb;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcnc;->zzgoh:Lcom/google/android/gms/internal/ads/zzcqb;

    return-object p0
.end method

.method public static synthetic zzarn()Ljava/util/regex/Pattern;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcnc;->zzgoi:Ljava/util/regex/Pattern;

    return-object v0
.end method


# virtual methods
.method public final synthetic zzd(Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdnl;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdng;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcnc;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzdng;-><init>(Lcom/google/android/gms/internal/ads/zzdnp;)V

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdnj;->zza(Ljava/io/Reader;)Lcom/google/android/gms/internal/ads/zzdnj;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdnl;-><init>(Lcom/google/android/gms/internal/ads/zzdng;Lcom/google/android/gms/internal/ads/zzdnj;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdzk;->zzag(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzatq;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzatq;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "Lcom/google/android/gms/internal/ads/zzdnl;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnc;->zzgog:Lcom/google/android/gms/internal/ads/zzcme;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcme;->zze(Lcom/google/android/gms/internal/ads/zzatq;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcnb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcnb;-><init>(Lcom/google/android/gms/internal/ads/zzcnc;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcnc;->zzghl:Lcom/google/android/gms/internal/ads/zzdzv;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdzk;->zzb(Lcom/google/android/gms/internal/ads/zzdzw;Lcom/google/android/gms/internal/ads/zzdyu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzcwm:Lcom/google/android/gms/internal/ads/zzaba;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzcwn:Lcom/google/android/gms/internal/ads/zzaba;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcnc;->zzfri:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdzk;->zza(Lcom/google/android/gms/internal/ads/zzdzw;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    const-class v0, Ljava/util/concurrent/TimeoutException;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzcne;->zzboq:Lcom/google/android/gms/internal/ads/zzdyu;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzazp;->zzeih:Lcom/google/android/gms/internal/ads/zzdzv;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdzk;->zzb(Lcom/google/android/gms/internal/ads/zzdzw;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdyu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcnd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcnd;-><init>(Lcom/google/android/gms/internal/ads/zzcnc;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzazp;->zzeih:Lcom/google/android/gms/internal/ads/zzdzv;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdzk;->zza(Lcom/google/android/gms/internal/ads/zzdzw;Lcom/google/android/gms/internal/ads/zzdzl;Ljava/util/concurrent/Executor;)V

    return-object p1
.end method
