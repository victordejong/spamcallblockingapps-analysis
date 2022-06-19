.class final synthetic Lcom/google/android/gms/internal/ads/lj1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/u;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/g41;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/g41;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lj1;->d:Lcom/google/android/gms/internal/ads/g41;

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/ads/g41;)Lcom/google/android/gms/ads/internal/overlay/u;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/lj1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/lj1;-><init>(Lcom/google/android/gms/internal/ads/g41;)V

    return-object v0
.end method


# virtual methods
.method public final zzg()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lj1;->d:Lcom/google/android/gms/internal/ads/g41;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g41;->b()V

    return-void
.end method
