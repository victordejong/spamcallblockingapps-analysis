.class public final Lcom/google/android/gms/internal/ads/bc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# static fields
.field public static a:Lcom/google/android/gms/internal/ads/ab;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/ab",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Lcom/google/android/gms/internal/ads/ab;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/ab",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static c:Lcom/google/android/gms/internal/ads/ab;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/ab",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1
    const-string/jumbo v0, "gads:webview:permission:disabled"

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ab;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/ab;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/bc;->a:Lcom/google/android/gms/internal/ads/ab;

    .line 3
    const-string/jumbo v0, "gads:corewebview:adwebview_factory:enable"

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ab;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/ab;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/bc;->b:Lcom/google/android/gms/internal/ads/ab;

    .line 5
    const-string/jumbo v0, "gads:corewebview:javascript_engine"

    .line 6
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ab;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/ab;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/bc;->c:Lcom/google/android/gms/internal/ads/ab;

    .line 7
    return-void
.end method
