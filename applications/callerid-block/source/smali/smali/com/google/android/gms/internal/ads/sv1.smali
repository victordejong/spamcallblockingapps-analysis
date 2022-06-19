.class public final Lcom/google/android/gms/internal/ads/sv1;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Lcom/google/android/gms/internal/ads/pv1;

.field private static volatile b:Lcom/google/android/gms/internal/ads/pv1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/rv1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/rv1;-><init>(Lcom/google/android/gms/internal/ads/qv1;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/sv1;->a:Lcom/google/android/gms/internal/ads/pv1;

    sput-object v0, Lcom/google/android/gms/internal/ads/sv1;->b:Lcom/google/android/gms/internal/ads/pv1;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/pv1;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/sv1;->b:Lcom/google/android/gms/internal/ads/pv1;

    return-object v0
.end method
