.class public final Lcom/google/android/gms/internal/ads/h51;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/vz0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/vz0<",
        "Lcom/google/android/gms/internal/ads/u10;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/s20;

.field private final c:Lcom/google/android/gms/internal/ads/i4;

.field private final d:Lcom/google/android/gms/internal/ads/sz1;

.field private final e:Lcom/google/android/gms/internal/ads/qp1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/s20;Lcom/google/android/gms/internal/ads/qp1;Lcom/google/android/gms/internal/ads/sz1;Lcom/google/android/gms/internal/ads/i4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/h51;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/h51;->b:Lcom/google/android/gms/internal/ads/s20;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/h51;->e:Lcom/google/android/gms/internal/ads/qp1;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/h51;->d:Lcom/google/android/gms/internal/ads/sz1;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/h51;->c:Lcom/google/android/gms/internal/ads/i4;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/ml1;Lcom/google/android/gms/internal/ads/al1;)Lcom/google/android/gms/internal/ads/rz1;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/ml1;",
            "Lcom/google/android/gms/internal/ads/al1;",
            ")",
            "Lcom/google/android/gms/internal/ads/rz1<",
            "Lcom/google/android/gms/internal/ads/u10;",
            ">;"
        }
    .end annotation

    new-instance v6, Lcom/google/android/gms/internal/ads/f51;

    new-instance v2, Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/h51;->a:Landroid/content/Context;

    invoke-direct {v2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sget-object v4, Lcom/google/android/gms/internal/ads/d51;->a:Lcom/google/android/gms/internal/ads/s30;

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/al1;->t:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/gms/internal/ads/bl1;

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/f51;-><init>(Lcom/google/android/gms/internal/ads/h51;Landroid/view/View;Lcom/google/android/gms/internal/ads/jt;Lcom/google/android/gms/internal/ads/s30;Lcom/google/android/gms/internal/ads/bl1;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/h51;->b:Lcom/google/android/gms/internal/ads/s20;

    new-instance v1, Lcom/google/android/gms/internal/ads/k40;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/k40;-><init>(Lcom/google/android/gms/internal/ads/ml1;Lcom/google/android/gms/internal/ads/al1;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v6}, Lcom/google/android/gms/internal/ads/s20;->d(Lcom/google/android/gms/internal/ads/k40;Lcom/google/android/gms/internal/ads/b20;)Lcom/google/android/gms/internal/ads/v10;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/d4;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/v10;->k()Lcom/google/android/gms/internal/ads/g51;

    move-result-object v1

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/al1;->r:Lcom/google/android/gms/internal/ads/el1;

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/el1;->b:Ljava/lang/String;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/el1;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2}, Lcom/google/android/gms/internal/ads/d4;-><init>(Lcom/google/android/gms/ads/internal/f;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/h51;->e:Lcom/google/android/gms/internal/ads/qp1;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzduy;->r:Lcom/google/android/gms/internal/ads/zzduy;

    new-instance v2, Lcom/google/android/gms/internal/ads/e51;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/e51;-><init>(Lcom/google/android/gms/internal/ads/h51;Lcom/google/android/gms/internal/ads/d4;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/h51;->d:Lcom/google/android/gms/internal/ads/sz1;

    invoke-static {v2, v0, v1, p2}, Lcom/google/android/gms/internal/ads/bp1;->d(Lcom/google/android/gms/internal/ads/vo1;Lcom/google/android/gms/internal/ads/sz1;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/ip1;)Lcom/google/android/gms/internal/ads/hp1;

    move-result-object p2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzduy;->s:Lcom/google/android/gms/internal/ads/zzduy;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/hp1;->j(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/hp1;

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/v10;->h()Lcom/google/android/gms/internal/ads/u10;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/kz1;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/hp1;->e(Lcom/google/android/gms/internal/ads/rz1;)Lcom/google/android/gms/internal/ads/hp1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/hp1;->i()Lcom/google/android/gms/internal/ads/wo1;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/google/android/gms/internal/ads/ml1;Lcom/google/android/gms/internal/ads/al1;)Z
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/h51;->c:Lcom/google/android/gms/internal/ads/i4;

    if-eqz p1, :cond_0

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/al1;->r:Lcom/google/android/gms/internal/ads/el1;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/el1;->a:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final synthetic c(Lcom/google/android/gms/internal/ads/d4;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/h51;->c:Lcom/google/android/gms/internal/ads/i4;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/i4;->N5(Lcom/google/android/gms/internal/ads/f4;)V

    return-void
.end method
