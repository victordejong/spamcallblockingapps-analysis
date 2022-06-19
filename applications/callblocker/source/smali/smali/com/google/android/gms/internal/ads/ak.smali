.class public final Lcom/google/android/gms/internal/ads/ak;
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
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static d:Lcom/google/android/gms/internal/ads/ab;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/ab",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static e:Lcom/google/android/gms/internal/ads/ab;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/ab",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static f:Lcom/google/android/gms/internal/ads/ab;
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
    .locals 6

    .prologue
    const-wide/16 v4, 0xa

    const-wide/16 v2, 0x1

    .line 1
    const-string/jumbo v0, "gads:content_age_weight"

    .line 2
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/ab;->a(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/ab;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/ak;->a:Lcom/google/android/gms/internal/ads/ab;

    .line 3
    const-string/jumbo v0, "gads:enable_content_fetching"

    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ab;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/ab;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/ak;->b:Lcom/google/android/gms/internal/ads/ab;

    .line 5
    const-string/jumbo v0, "gads:fingerprint_number"

    .line 6
    invoke-static {v0, v4, v5}, Lcom/google/android/gms/internal/ads/ab;->a(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/ab;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/ak;->c:Lcom/google/android/gms/internal/ads/ab;

    .line 7
    const-string/jumbo v0, "gads:content_length_weight"

    .line 8
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/ab;->a(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/ab;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/ak;->d:Lcom/google/android/gms/internal/ads/ab;

    .line 9
    const-string/jumbo v0, "gads:min_content_len"

    const-wide/16 v2, 0xb

    .line 10
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/ab;->a(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/ab;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/ak;->e:Lcom/google/android/gms/internal/ads/ab;

    .line 11
    const-string/jumbo v0, "gads:sleep_sec"

    .line 12
    invoke-static {v0, v4, v5}, Lcom/google/android/gms/internal/ads/ab;->a(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/ab;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/ak;->f:Lcom/google/android/gms/internal/ads/ab;

    .line 13
    return-void
.end method
