.class public final Lcom/google/android/gms/internal/ads/aw;
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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static d:Lcom/google/android/gms/internal/ads/ab;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/ab",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static e:Lcom/google/android/gms/internal/ads/ab;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/ab",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static f:Lcom/google/android/gms/internal/ads/ab;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/ab",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static g:Lcom/google/android/gms/internal/ads/ab;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/ab",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1
    const-string/jumbo v0, "gads:dynamite_load:fail:sample_rate"

    const-wide/16 v2, 0x2710

    .line 2
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/ab;->a(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/ab;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/aw;->a:Lcom/google/android/gms/internal/ads/ab;

    .line 3
    const-string/jumbo v0, "gads:report_dynamite_crash_in_background_thread"

    .line 4
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/ab;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/ab;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/aw;->b:Lcom/google/android/gms/internal/ads/ab;

    .line 5
    const-string/jumbo v0, "gads:public_beta:traffic_multiplier"

    const-string/jumbo v1, "1.0"

    .line 6
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ab;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/aw;->c:Lcom/google/android/gms/internal/ads/ab;

    .line 7
    const-string/jumbo v0, "gads:sdk_crash_report_class_prefix"

    const-string/jumbo v1, "com.google."

    .line 8
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ab;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/aw;->d:Lcom/google/android/gms/internal/ads/ab;

    .line 9
    const-string/jumbo v0, "gads:sdk_crash_report_enabled"

    .line 10
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/ab;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/ab;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/aw;->e:Lcom/google/android/gms/internal/ads/ab;

    .line 11
    const-string/jumbo v0, "gads:sdk_crash_report_full_stacktrace"

    .line 12
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/ab;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/ab;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/aw;->f:Lcom/google/android/gms/internal/ads/ab;

    .line 13
    const-string/jumbo v0, "gads:trapped_exception_sample_rate"

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    .line 14
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/ab;->a(Ljava/lang/String;D)Lcom/google/android/gms/internal/ads/ab;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/aw;->g:Lcom/google/android/gms/internal/ads/ab;

    .line 15
    return-void
.end method
