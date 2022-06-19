.class public final Lcom/google/android/gms/internal/ads/xx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/nx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/nx<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/google/android/gms/internal/ads/nx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/nx<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lcom/google/android/gms/internal/ads/nx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/nx<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lcom/google/android/gms/internal/ads/nx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/nx<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lcom/google/android/gms/internal/ads/nx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/nx<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Lcom/google/android/gms/internal/ads/nx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/nx<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Lcom/google/android/gms/internal/ads/nx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/nx<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Lcom/google/android/gms/internal/ads/nx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/nx<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Lcom/google/android/gms/internal/ads/nx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/nx<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final j:Lcom/google/android/gms/internal/ads/nx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/nx<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final k:Lcom/google/android/gms/internal/ads/nx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/nx<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "gads:gma_attestation:click:macro_string"

    const-string v1, "@click_attok@"

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/nx;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/nx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/xx;->a:Lcom/google/android/gms/internal/ads/nx;

    const-string v0, "gads:gma_attestation:click:query_param"

    const-string v1, "attok"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/nx;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/nx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/xx;->b:Lcom/google/android/gms/internal/ads/nx;

    const-string v0, "gads:gma_attestation:click:timeout"

    const-wide/16 v1, 0x7d0

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/nx;->b(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/nx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/xx;->c:Lcom/google/android/gms/internal/ads/nx;

    const-string v0, "gads:gma_attestation:click:enable"

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/nx;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/nx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/xx;->d:Lcom/google/android/gms/internal/ads/nx;

    const-string v0, "gads:gma_attestation:click:enable_dynamite_version"

    const-wide/16 v2, -0x1

    .line 3
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/nx;->b(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/nx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/xx;->e:Lcom/google/android/gms/internal/ads/nx;

    const-string v0, "gads:gma_attestation:click:qualification:enable"

    const/4 v2, 0x1

    .line 4
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/nx;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/nx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/xx;->f:Lcom/google/android/gms/internal/ads/nx;

    const-string v0, "gads:gma_attestation:click_v2:enable"

    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/nx;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/nx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/xx;->g:Lcom/google/android/gms/internal/ads/nx;

    const-string v0, "gads:gma_attestation:impression:enable"

    .line 6
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/nx;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/nx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/xx;->h:Lcom/google/android/gms/internal/ads/nx;

    const-string v0, "gads:gma_attestation:request:enable_javascript"

    .line 7
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/nx;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/nx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/xx;->i:Lcom/google/android/gms/internal/ads/nx;

    const-string v0, "gads:gma_attestation:request:enable"

    .line 8
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/nx;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/nx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/xx;->j:Lcom/google/android/gms/internal/ads/nx;

    const-string v0, "gads:gma_attestation:click:report_error"

    .line 9
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/nx;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/nx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/xx;->k:Lcom/google/android/gms/internal/ads/nx;

    return-void
.end method
