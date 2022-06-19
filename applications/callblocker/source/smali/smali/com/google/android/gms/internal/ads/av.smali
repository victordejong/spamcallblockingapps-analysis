.class public final Lcom/google/android/gms/internal/ads/av;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# static fields
.field public static a:Lcom/google/android/gms/internal/ads/ab;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/ab",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/google/android/gms/internal/ads/ab;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/ab",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lcom/google/android/gms/internal/ads/ab;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/ab",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1
    const-string/jumbo v0, "gads:native:engine_js_url_with_protocol"

    const-string/jumbo v1, "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/production/native_ads.js"

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ab;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/av;->b:Lcom/google/android/gms/internal/ads/ab;

    .line 3
    const-string/jumbo v0, "gads:sdk_core_location"

    const-string/jumbo v1, "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/sdk-core-v40-loader.html"

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ab;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/av;->a:Lcom/google/android/gms/internal/ads/ab;

    .line 5
    const-string/jumbo v0, "gads:sdk_core_js_location"

    const-string/jumbo v1, "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/production/sdk-core-v40-impl.js"

    .line 6
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ab;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/av;->c:Lcom/google/android/gms/internal/ads/ab;

    .line 7
    return-void
.end method
