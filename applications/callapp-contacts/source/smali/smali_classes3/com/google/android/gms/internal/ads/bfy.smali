.class final synthetic Lcom/google/android/gms/internal/ads/bfy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/daq;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bfv;

.field private final b:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bfv;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bfy;->a:Lcom/google/android/gms/internal/ads/bfv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bfy;->b:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bfy;->a:Lcom/google/android/gms/internal/ads/bfv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bfy;->b:Lorg/json/JSONObject;

    check-cast p1, Lcom/google/android/gms/internal/ads/adt;

    .line 1069
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zm;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zm;

    move-result-object v2

    .line 1070
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/bfv;->a:Lcom/google/android/gms/internal/ads/cpo;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/cpo;->c:Lcom/google/android/gms/internal/ads/zzajy;

    if-eqz v3, :cond_0

    .line 1071
    invoke-static {}, Lcom/google/android/gms/internal/ads/afh;->c()Lcom/google/android/gms/internal/ads/afh;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/google/android/gms/internal/ads/adt;->a(Lcom/google/android/gms/internal/ads/afh;)V

    goto :goto_0

    .line 1072
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/afh;->b()Lcom/google/android/gms/internal/ads/afh;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/google/android/gms/internal/ads/adt;->a(Lcom/google/android/gms/internal/ads/afh;)V

    .line 1074
    :goto_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/adt;->B()Lcom/google/android/gms/internal/ads/afe;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/bgb;

    invoke-direct {v4, v0, p1, v2}, Lcom/google/android/gms/internal/ads/bgb;-><init>(Lcom/google/android/gms/internal/ads/bfv;Lcom/google/android/gms/internal/ads/adt;Lcom/google/android/gms/internal/ads/zm;)V

    .line 1075
    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/afe;->a(Lcom/google/android/gms/internal/ads/afd;)V

    const-string v0, "google.afma.nativeAds.renderVideo"

    .line 1076
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/adt;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v2
.end method
