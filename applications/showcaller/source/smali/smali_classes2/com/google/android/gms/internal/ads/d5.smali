.class public final Lcom/google/android/gms/internal/ads/d5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzfon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfon<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/zzfoj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfoj<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/h5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfon;->zza()Lcom/google/android/gms/internal/ads/zzfon;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/d5;->a:Lcom/google/android/gms/internal/ads/zzfon;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfoj;->zzi()Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/d5;->b:Lcom/google/android/gms/internal/ads/zzfoj;

    return-void
.end method
