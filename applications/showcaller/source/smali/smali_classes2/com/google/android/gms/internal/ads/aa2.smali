.class final synthetic Lcom/google/android/gms/internal/ads/aa2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/tz2;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/da2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/da2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aa2;->a:Lcom/google/android/gms/internal/ads/da2;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/r03;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aa2;->a:Lcom/google/android/gms/internal/ads/da2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/da2;->a()Lcom/google/android/gms/internal/ads/r03;

    move-result-object v0

    return-object v0
.end method
