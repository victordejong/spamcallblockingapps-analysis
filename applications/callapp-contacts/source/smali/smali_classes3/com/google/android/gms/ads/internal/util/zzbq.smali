.class public final Lcom/google/android/gms/ads/internal/util/zzbq;
.super Lcom/google/android/gms/ads/internal/util/zza;
.source "SourceFile"


# instance fields
.field private final url:Ljava/lang/String;

.field private final zzeiw:Lcom/google/android/gms/internal/ads/zc;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/ads/internal/util/zzj;->zzq(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lcom/google/android/gms/ads/internal/util/zzbq;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zza;-><init>()V

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zc;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zc;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzbq;->zzeiw:Lcom/google/android/gms/internal/ads/zc;

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzbq;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzwp()V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzbq;->zzeiw:Lcom/google/android/gms/internal/ads/zc;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzbq;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zc;->zzen(Ljava/lang/String;)V

    return-void
.end method
