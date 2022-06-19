.class final synthetic Lcom/google/android/gms/internal/ads/baf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/fa;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bae;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bae;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/baf;->a:Lcom/google/android/gms/internal/ads/bae;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 6

    .prologue
    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/baf;->a:Lcom/google/android/gms/internal/ads/bae;

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/act;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->v()Lcom/google/android/gms/internal/ads/aef;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/bak;

    invoke-direct {v3, v1, p2}, Lcom/google/android/gms/internal/ads/bak;-><init>(Lcom/google/android/gms/internal/ads/bae;Ljava/util/Map;)V

    .line 4
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/aef;->a(Lcom/google/android/gms/internal/ads/aee;)V

    .line 5
    const-string/jumbo v1, "overlayHtml"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    const-string/jumbo v1, "baseUrl"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    const-string/jumbo v1, "text/html"

    const-string/jumbo v3, "UTF-8"

    invoke-interface {v0, v2, v1, v3}, Lcom/google/android/gms/internal/ads/act;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :goto_0
    return-void

    .line 9
    :cond_0
    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "UTF-8"

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/act;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
