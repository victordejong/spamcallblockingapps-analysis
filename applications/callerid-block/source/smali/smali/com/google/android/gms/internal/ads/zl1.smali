.class final Lcom/google/android/gms/internal/ads/zl1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/gz1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/gz1<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/jt;

.field final synthetic b:Lcom/google/android/gms/internal/ads/tq1;

.field final synthetic c:Lcom/google/android/gms/internal/ads/jz0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/jt;Lcom/google/android/gms/internal/ads/tq1;Lcom/google/android/gms/internal/ads/jz0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zl1;->a:Lcom/google/android/gms/internal/ads/jt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zl1;->b:Lcom/google/android/gms/internal/ads/tq1;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zl1;->c:Lcom/google/android/gms/internal/ads/jz0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 6

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zl1;->a:Lcom/google/android/gms/internal/ads/jt;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/jt;->y()Lcom/google/android/gms/internal/ads/al1;

    move-result-object p1

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/al1;->d0:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zl1;->b:Lcom/google/android/gms/internal/ads/tq1;

    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/tq1;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/lz0;

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->k()Lcom/google/android/gms/common/util/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zl1;->a:Lcom/google/android/gms/internal/ads/jt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/jt;->q()Lcom/google/android/gms/internal/ads/dl1;

    move-result-object v0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/dl1;->b:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->d()Lcom/google/android/gms/ads/internal/util/l1;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zl1;->a:Lcom/google/android/gms/internal/ads/jt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/jt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/l1;->h(Landroid/content/Context;)Z

    move-result v0

    const/4 v5, 0x1

    if-eq v5, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    const/4 v5, 0x2

    :goto_0
    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/lz0;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zl1;->c:Lcom/google/android/gms/internal/ads/jz0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/jz0;->C(Lcom/google/android/gms/internal/ads/lz0;)V

    return-void
.end method
