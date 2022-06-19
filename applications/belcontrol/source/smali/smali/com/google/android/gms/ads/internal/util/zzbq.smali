.class public final Lcom/google/android/gms/ads/internal/util/zzbq;
.super Lcom/google/android/gms/ads/internal/util/zza;
.source ""


# instance fields
.field private final url:Ljava/lang/String;

.field private final zzegt:Lcom/google/android/gms/internal/ads/zzazo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkr()Lcom/google/android/gms/ads/internal/util/zzj;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/ads/internal/util/zzj;->zzq(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lcom/google/android/gms/ads/internal/util/zzbq;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zza;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzazo;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzazo;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzbq;->zzegt:Lcom/google/android/gms/internal/ads/zzazo;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzbq;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzwe()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzbq;->zzegt:Lcom/google/android/gms/internal/ads/zzazo;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzbq;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzazo;->zzel(Ljava/lang/String;)V

    return-void
.end method
