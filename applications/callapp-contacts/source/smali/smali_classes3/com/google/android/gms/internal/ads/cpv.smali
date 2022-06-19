.class final synthetic Lcom/google/android/gms/internal/ads/cpv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/hi;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cus;

.field private final b:Lcom/google/android/gms/internal/ads/brs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cus;Lcom/google/android/gms/internal/ads/brs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cpv;->a:Lcom/google/android/gms/internal/ads/cus;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cpv;->b:Lcom/google/android/gms/internal/ads/brs;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cpv;->a:Lcom/google/android/gms/internal/ads/cus;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cpv;->b:Lcom/google/android/gms/internal/ads/brs;

    check-cast p1, Lcom/google/android/gms/internal/ads/adh;

    const-string v2, "u"

    .line 2
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v6, p2

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_0

    const-string p1, "URL missing from httpTrack GMSG."

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/adh;->q()Lcom/google/android/gms/internal/ads/cov;

    move-result-object p2

    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/cov;->ad:Z

    if-nez p2, :cond_1

    .line 7
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/cus;->a(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/ads/brz;

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lcom/google/android/gms/common/util/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v3

    check-cast p1, Lcom/google/android/gms/internal/ads/aen;

    .line 11
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/aen;->S()Lcom/google/android/gms/internal/ads/coz;

    move-result-object p1

    iget-object v5, p1, Lcom/google/android/gms/internal/ads/coz;->b:Ljava/lang/String;

    sget v7, Lcom/google/android/gms/internal/ads/brp;->b:I

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/brz;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    .line 12
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/brs;->a(Lcom/google/android/gms/internal/ads/brz;)V

    return-void
.end method
