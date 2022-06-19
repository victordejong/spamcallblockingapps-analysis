.class public final Lcom/google/android/gms/internal/ads/bal;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/aqi;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ayx;

.field private final b:Lcom/google/android/gms/internal/ads/azd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ayx;Lcom/google/android/gms/internal/ads/azd;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bal;->a:Lcom/google/android/gms/internal/ads/ayx;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bal;->b:Lcom/google/android/gms/internal/ads/azd;

    .line 4
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bal;->a:Lcom/google/android/gms/internal/ads/ayx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ayx;->x()Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    .line 6
    if-nez v0, :cond_1

    .line 18
    :cond_0
    :goto_0
    return-void

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bal;->a:Lcom/google/android/gms/internal/ads/ayx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ayx;->w()Lcom/google/android/gms/internal/ads/act;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bal;->a:Lcom/google/android/gms/internal/ads/ayx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ayx;->v()Lcom/google/android/gms/internal/ads/act;

    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v0, :cond_2

    .line 15
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bal;->b:Lcom/google/android/gms/internal/ads/azd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/azd;->d()Z

    move-result v1

    .line 16
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 17
    const-string/jumbo v1, "onSdkImpression"

    new-instance v2, Landroidx/b/a;

    invoke-direct {v2}, Landroidx/b/a;-><init>()V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/act;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 13
    :cond_2
    if-eqz v1, :cond_3

    move-object v0, v1

    .line 14
    goto :goto_1

    :cond_3
    move-object v0, v2

    goto :goto_1
.end method
