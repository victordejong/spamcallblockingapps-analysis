.class public final Lcom/google/android/gms/internal/ads/zzcfg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# instance fields
.field public final type:I

.field public final zzcm:Ljava/lang/String;

.field public final zzdre:Ljava/lang/String;

.field public final zzgij:Lcom/google/android/gms/internal/ads/zzaed;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaed;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 8
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcfg;->type:I

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfg;->zzcm:Ljava/lang/String;

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfg;->zzdre:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcfg;->zzgij:Lcom/google/android/gms/internal/ads/zzaed;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcfg;->type:I

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfg;->zzcm:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcfg;->zzdre:Ljava/lang/String;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfg;->zzgij:Lcom/google/android/gms/internal/ads/zzaed;

    return-void
.end method
