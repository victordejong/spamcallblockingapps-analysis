.class public final Lcom/google/android/gms/internal/ads/ip2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field private static final a:Lcom/google/android/gms/internal/ads/jp2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/jp2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/jp2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/ip2;->a:Lcom/google/android/gms/internal/ads/jp2;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/ip2;->a:Lcom/google/android/gms/internal/ads/jp2;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/jp2;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static b()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/ip2;->a:Lcom/google/android/gms/internal/ads/jp2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jp2;->a()Z

    move-result v0

    return v0
.end method
