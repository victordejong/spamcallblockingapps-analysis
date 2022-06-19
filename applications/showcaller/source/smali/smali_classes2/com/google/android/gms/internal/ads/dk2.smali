.class final synthetic Lcom/google/android/gms/internal/ads/dk2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/n20;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bp2;

.field private final b:Lcom/google/android/gms/internal/ads/dw1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bp2;Lcom/google/android/gms/internal/ads/dw1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dk2;->a:Lcom/google/android/gms/internal/ads/bp2;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dk2;->b:Lcom/google/android/gms/internal/ads/dw1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dk2;->a:Lcom/google/android/gms/internal/ads/bp2;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dk2;->b:Lcom/google/android/gms/internal/ads/dw1;

    check-cast p1, Lcom/google/android/gms/internal/ads/nn0;

    const-string v2, "u"

    .line 2
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v6, p2

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_0

    const-string p1, "URL missing from httpTrack GMSG."

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/nn0;->z()Lcom/google/android/gms/internal/ads/ej2;

    move-result-object p2

    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/ej2;->f0:Z

    if-nez p2, :cond_1

    .line 5
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/bp2;->b(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/ads/fw1;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->k()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v3

    check-cast p1, Lcom/google/android/gms/internal/ads/so0;

    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/so0;->B()Lcom/google/android/gms/internal/ads/jj2;

    move-result-object p1

    iget-object v5, p1, Lcom/google/android/gms/internal/ads/jj2;->b:Ljava/lang/String;

    const/4 v7, 0x2

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/fw1;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    .line 8
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/dw1;->k(Lcom/google/android/gms/internal/ads/fw1;)V

    return-void
.end method
