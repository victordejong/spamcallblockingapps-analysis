.class public final Lcom/google/android/gms/internal/ads/cwz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/android/gms/internal/ads/cxa;

.field private static volatile b:Lcom/google/android/gms/internal/ads/cxa;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/cxb;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/cxb;-><init>(Lcom/google/android/gms/internal/ads/cxc;)V

    .line 3
    sput-object v0, Lcom/google/android/gms/internal/ads/cwz;->a:Lcom/google/android/gms/internal/ads/cxa;

    sput-object v0, Lcom/google/android/gms/internal/ads/cwz;->b:Lcom/google/android/gms/internal/ads/cxa;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/cxa;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/cwz;->b:Lcom/google/android/gms/internal/ads/cxa;

    return-object v0
.end method
