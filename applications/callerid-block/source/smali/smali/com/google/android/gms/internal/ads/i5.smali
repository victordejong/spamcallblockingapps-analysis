.class public final Lcom/google/android/gms/internal/ads/i5;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/p4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/p4<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "gads:native:engine_js_url_with_protocol"

    const-string v1, "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/production/native_ads.js"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/p4;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/p4;

    const-string v0, "gads:sdk_core_location"

    const-string v1, "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/sdk-core-v40-loader.html"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/p4;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/p4;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/i5;->a:Lcom/google/android/gms/internal/ads/p4;

    const-string v0, "gads:sdk_core_js_location"

    const-string v1, "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/production/sdk-core-v40-impl.js"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/p4;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/p4;

    return-void
.end method
