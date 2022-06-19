.class final Lcom/google/android/gms/internal/ads/zzejz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-gass@@19.7.0"


# instance fields
.field private final buffer:[B

.field private final zzime:Lcom/google/android/gms/internal/ads/zzekl;


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzejz;->buffer:[B

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzekl;->zzv([B)Lcom/google/android/gms/internal/ads/zzekl;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzejz;->zzime:Lcom/google/android/gms/internal/ads/zzekl;

    return-void
.end method

.method synthetic constructor <init>(ILcom/google/android/gms/internal/ads/zzejq;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzejz;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final zzbgq()Lcom/google/android/gms/internal/ads/zzejr;
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejz;->zzime:Lcom/google/android/gms/internal/ads/zzekl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzekl;->zzbht()V

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzekb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzejz;->buffer:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzekb;-><init>([B)V

    return-object v0
.end method

.method public final zzbgr()Lcom/google/android/gms/internal/ads/zzekl;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejz;->zzime:Lcom/google/android/gms/internal/ads/zzekl;

    return-object v0
.end method
