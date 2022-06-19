.class public final Lcom/google/android/gms/internal/ads/yt2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# static fields
.field private static final a:Lcom/google/android/gms/internal/ads/vt2;

.field private static volatile b:Lcom/google/android/gms/internal/ads/vt2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/wt2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/wt2;-><init>(Lcom/google/android/gms/internal/ads/xt2;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/yt2;->a:Lcom/google/android/gms/internal/ads/vt2;

    sput-object v0, Lcom/google/android/gms/internal/ads/yt2;->b:Lcom/google/android/gms/internal/ads/vt2;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/vt2;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/yt2;->b:Lcom/google/android/gms/internal/ads/vt2;

    return-object v0
.end method
