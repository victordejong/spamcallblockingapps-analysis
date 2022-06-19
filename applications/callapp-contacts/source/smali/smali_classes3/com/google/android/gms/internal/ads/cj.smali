.class public final Lcom/google/android/gms/internal/ads/cj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/google/android/gms/internal/ads/bz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/bz<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Lcom/google/android/gms/internal/ads/bz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/bz<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static c:Lcom/google/android/gms/internal/ads/bz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/bz<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static d:Lcom/google/android/gms/internal/ads/bz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/bz<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static e:Lcom/google/android/gms/internal/ads/bz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/bz<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static f:Lcom/google/android/gms/internal/ads/bz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/bz<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "gads:content_age_weight"

    const-wide/16 v1, 0x1

    .line 2
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/bz;->a(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/bz;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/cj;->a:Lcom/google/android/gms/internal/ads/bz;

    const-string v0, "gads:enable_content_fetching"

    const/4 v3, 0x1

    .line 4
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/bz;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/bz;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/cj;->b:Lcom/google/android/gms/internal/ads/bz;

    const-string v0, "gads:fingerprint_number"

    const-wide/16 v3, 0xa

    .line 6
    invoke-static {v0, v3, v4}, Lcom/google/android/gms/internal/ads/bz;->a(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/bz;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/cj;->c:Lcom/google/android/gms/internal/ads/bz;

    const-string v0, "gads:content_length_weight"

    .line 8
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/bz;->a(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/bz;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/cj;->d:Lcom/google/android/gms/internal/ads/bz;

    const-string v0, "gads:min_content_len"

    const-wide/16 v1, 0xb

    .line 10
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/bz;->a(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/bz;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/cj;->e:Lcom/google/android/gms/internal/ads/bz;

    const-string v0, "gads:sleep_sec"

    .line 12
    invoke-static {v0, v3, v4}, Lcom/google/android/gms/internal/ads/bz;->a(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/bz;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/cj;->f:Lcom/google/android/gms/internal/ads/bz;

    return-void
.end method
