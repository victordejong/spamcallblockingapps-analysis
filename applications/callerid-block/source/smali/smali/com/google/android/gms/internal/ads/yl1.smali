.class final synthetic Lcom/google/android/gms/internal/ads/yl1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/h9;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/tq1;

.field private final b:Lcom/google/android/gms/internal/ads/jz0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/tq1;Lcom/google/android/gms/internal/ads/jz0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yl1;->a:Lcom/google/android/gms/internal/ads/tq1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/yl1;->b:Lcom/google/android/gms/internal/ads/jz0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yl1;->a:Lcom/google/android/gms/internal/ads/tq1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yl1;->b:Lcom/google/android/gms/internal/ads/jz0;

    check-cast p1, Lcom/google/android/gms/internal/ads/zs;

    const-string v2, "u"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v6, p2

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_0

    const-string p1, "URL missing from httpTrack GMSG."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/po;->f(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zs;->y()Lcom/google/android/gms/internal/ads/al1;

    move-result-object p2

    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/al1;->d0:Z

    if-nez p2, :cond_1

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/tq1;->b(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/ads/lz0;

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->k()Lcom/google/android/gms/common/util/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v3

    check-cast p1, Lcom/google/android/gms/internal/ads/fu;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/fu;->q()Lcom/google/android/gms/internal/ads/dl1;

    move-result-object p1

    iget-object v5, p1, Lcom/google/android/gms/internal/ads/dl1;->b:Ljava/lang/String;

    const/4 v7, 0x2

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/lz0;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/jz0;->C(Lcom/google/android/gms/internal/ads/lz0;)V

    return-void
.end method
