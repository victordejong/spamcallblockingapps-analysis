.class public final Lcom/google/android/gms/internal/ads/zzckn;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final zzglo:Lcom/google/android/gms/internal/ads/zzckw;

.field private final zzgls:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzckw;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzckn;->zzglo:Lcom/google/android/gms/internal/ads/zzckw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzckw;->zzaqx()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzckn;->zzgls:Ljava/util/Map;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzckn;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzckn;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzckn;->zzgls:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/ads/zzckn;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzckn;->executor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/ads/zzckn;)Lcom/google/android/gms/internal/ads/zzckw;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzckn;->zzglo:Lcom/google/android/gms/internal/ads/zzckw;

    return-object p0
.end method


# virtual methods
.method public final zzaqr()Lcom/google/android/gms/internal/ads/zzckq;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzckq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzckq;-><init>(Lcom/google/android/gms/internal/ads/zzckn;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzckq;->zzb(Lcom/google/android/gms/internal/ads/zzckq;)Lcom/google/android/gms/internal/ads/zzckq;

    move-result-object v0

    return-object v0
.end method
