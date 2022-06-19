.class final synthetic Lcom/google/android/gms/internal/ads/xl1;
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

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xl1;->a:Lcom/google/android/gms/internal/ads/tq1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/xl1;->b:Lcom/google/android/gms/internal/ads/jz0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xl1;->a:Lcom/google/android/gms/internal/ads/tq1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/xl1;->b:Lcom/google/android/gms/internal/ads/jz0;

    check-cast p1, Lcom/google/android/gms/internal/ads/jt;

    const-string v2, "u"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_0

    const-string p1, "URL missing from click GMSG."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/po;->f(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/g9;->a(Lcom/google/android/gms/internal/ads/jt;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p2

    new-instance v2, Lcom/google/android/gms/internal/ads/zl1;

    invoke-direct {v2, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zl1;-><init>(Lcom/google/android/gms/internal/ads/jt;Lcom/google/android/gms/internal/ads/tq1;Lcom/google/android/gms/internal/ads/jz0;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zo;->a:Lcom/google/android/gms/internal/ads/sz1;

    invoke-static {p2, v2, p1}, Lcom/google/android/gms/internal/ads/kz1;->o(Lcom/google/android/gms/internal/ads/rz1;Lcom/google/android/gms/internal/ads/gz1;Ljava/util/concurrent/Executor;)V

    return-void
.end method
