.class public final Lcom/google/android/gms/internal/ads/ba;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# static fields
.field public static a:Lcom/google/android/gms/internal/ads/ab;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/ab",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/google/android/gms/internal/ads/ab;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/ab",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lcom/google/android/gms/internal/ads/ab;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/ab",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/32 v2, 0xea60

    .line 1
    const-string/jumbo v0, "gads:ad_loader:timeout_ms"

    .line 2
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/ab;->a(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/ab;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/ba;->b:Lcom/google/android/gms/internal/ads/ab;

    .line 3
    const-string/jumbo v0, "gads:rendering:timeout_ms"

    .line 4
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/ab;->a(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/ab;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/ba;->a:Lcom/google/android/gms/internal/ads/ab;

    .line 5
    const-string/jumbo v0, "gads:resolve_future:default_timeout_ms"

    const-wide/16 v2, 0x7530

    .line 6
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/ab;->a(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/ab;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/ba;->c:Lcom/google/android/gms/internal/ads/ab;

    .line 7
    return-void
.end method
