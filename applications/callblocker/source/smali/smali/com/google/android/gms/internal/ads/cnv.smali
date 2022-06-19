.class public final Lcom/google/android/gms/internal/ads/cnv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# static fields
.field private static final a:Lcom/google/android/gms/internal/ads/cns;

.field private static volatile b:Lcom/google/android/gms/internal/ads/cns;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/cnx;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/cnx;-><init>(Lcom/google/android/gms/internal/ads/cnu;)V

    .line 3
    sput-object v0, Lcom/google/android/gms/internal/ads/cnv;->a:Lcom/google/android/gms/internal/ads/cns;

    sput-object v0, Lcom/google/android/gms/internal/ads/cnv;->b:Lcom/google/android/gms/internal/ads/cns;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/cns;
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/cnv;->b:Lcom/google/android/gms/internal/ads/cns;

    return-object v0
.end method
