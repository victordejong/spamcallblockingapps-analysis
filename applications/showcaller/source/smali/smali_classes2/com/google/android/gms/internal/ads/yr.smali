.class public final Lcom/google/android/gms/internal/ads/yr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# static fields
.field private static final a:Lcom/google/android/gms/internal/ads/yr;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/dw;

.field private final c:Lcom/google/android/gms/internal/ads/ew;

.field private final d:Lcom/google/android/gms/internal/ads/iw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/yr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/yr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/yr;->a:Lcom/google/android/gms/internal/ads/yr;

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/dw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dw;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/ew;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/ew;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/ads/iw;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/iw;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yr;->b:Lcom/google/android/gms/internal/ads/dw;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/yr;->c:Lcom/google/android/gms/internal/ads/ew;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/yr;->d:Lcom/google/android/gms/internal/ads/iw;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/ew;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/yr;->a:Lcom/google/android/gms/internal/ads/yr;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/yr;->c:Lcom/google/android/gms/internal/ads/ew;

    return-object v0
.end method

.method public static b()Lcom/google/android/gms/internal/ads/dw;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/yr;->a:Lcom/google/android/gms/internal/ads/yr;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/yr;->b:Lcom/google/android/gms/internal/ads/dw;

    return-object v0
.end method

.method public static c()Lcom/google/android/gms/internal/ads/iw;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/yr;->a:Lcom/google/android/gms/internal/ads/yr;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/yr;->d:Lcom/google/android/gms/internal/ads/iw;

    return-object v0
.end method
