.class final synthetic Lcom/google/android/gms/internal/ads/ck2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/n20;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/qa1;

.field private final b:Lcom/google/android/gms/internal/ads/bp2;

.field private final c:Lcom/google/android/gms/internal/ads/dw1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/qa1;Lcom/google/android/gms/internal/ads/bp2;Lcom/google/android/gms/internal/ads/dw1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ck2;->a:Lcom/google/android/gms/internal/ads/qa1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ck2;->b:Lcom/google/android/gms/internal/ads/bp2;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ck2;->c:Lcom/google/android/gms/internal/ads/dw1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ck2;->a:Lcom/google/android/gms/internal/ads/qa1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ck2;->b:Lcom/google/android/gms/internal/ads/bp2;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ck2;->c:Lcom/google/android/gms/internal/ads/dw1;

    check-cast p1, Lcom/google/android/gms/internal/ads/wn0;

    .line 2
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/m20;->c(Ljava/util/Map;Lcom/google/android/gms/internal/ads/qa1;)V

    const-string v0, "u"

    .line 3
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_0

    const-string p1, "URL missing from click GMSG."

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/m20;->a(Lcom/google/android/gms/internal/ads/wn0;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/ek2;

    .line 6
    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/ek2;-><init>(Lcom/google/android/gms/internal/ads/wn0;Lcom/google/android/gms/internal/ads/bp2;Lcom/google/android/gms/internal/ads/dw1;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/qi0;->a:Lcom/google/android/gms/internal/ads/s03;

    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/ads/k03;->p(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/f03;Ljava/util/concurrent/Executor;)V

    return-void
.end method
