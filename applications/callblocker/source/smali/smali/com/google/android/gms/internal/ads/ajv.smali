.class public final Lcom/google/android/gms/internal/ads/ajv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bhi;

.field private final b:Lcom/google/android/gms/internal/ads/chd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/bhi;Lcom/google/android/gms/internal/ads/chd;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ajv;->a:Lcom/google/android/gms/internal/ads/bhi;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ajv;->b:Lcom/google/android/gms/internal/ads/chd;

    .line 4
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 3

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ajv;->a:Lcom/google/android/gms/internal/ads/bhi;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bhi;->a()Lcom/google/android/gms/internal/ads/bhh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ajv;->b:Lcom/google/android/gms/internal/ads/chd;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/chd;->b:Lcom/google/android/gms/internal/ads/cha;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/cha;->b:Lcom/google/android/gms/internal/ads/cgs;

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/bhh;->a(Lcom/google/android/gms/internal/ads/cgs;)Lcom/google/android/gms/internal/ads/bhh;

    move-result-object v0

    const-string/jumbo v1, "action"

    const-string/jumbo v2, "ad_closed"

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/bhh;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/bhh;

    move-result-object v0

    const-string/jumbo v1, "show_time"

    .line 9
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/bhh;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/bhh;

    move-result-object v0

    const-string/jumbo v1, "ad_format"

    const-string/jumbo v2, "appopen"

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/bhh;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/bhh;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bhh;->a()V

    .line 12
    return-void
.end method
