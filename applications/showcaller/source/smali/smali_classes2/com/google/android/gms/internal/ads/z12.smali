.class public final Lcom/google/android/gms/internal/ads/z12;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/qw1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/qw1<",
        "Lcom/google/android/gms/internal/ads/xw0;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/vx0;

.field private final c:Lcom/google/android/gms/internal/ads/gx;

.field private final d:Lcom/google/android/gms/internal/ads/s03;

.field private final e:Lcom/google/android/gms/internal/ads/yn2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/vx0;Lcom/google/android/gms/internal/ads/yn2;Lcom/google/android/gms/internal/ads/s03;Lcom/google/android/gms/internal/ads/gx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/z12;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/z12;->b:Lcom/google/android/gms/internal/ads/vx0;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/z12;->e:Lcom/google/android/gms/internal/ads/yn2;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/z12;->d:Lcom/google/android/gms/internal/ads/s03;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/z12;->c:Lcom/google/android/gms/internal/ads/gx;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/rj2;Lcom/google/android/gms/internal/ads/ej2;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/z12;->c:Lcom/google/android/gms/internal/ads/gx;

    if-eqz p1, :cond_0

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/ej2;->s:Lcom/google/android/gms/internal/ads/kj2;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/kj2;->a:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lcom/google/android/gms/internal/ads/rj2;Lcom/google/android/gms/internal/ads/ej2;)Lcom/google/android/gms/internal/ads/r03;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/rj2;",
            "Lcom/google/android/gms/internal/ads/ej2;",
            ")",
            "Lcom/google/android/gms/internal/ads/r03<",
            "Lcom/google/android/gms/internal/ads/xw0;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/google/android/gms/internal/ads/x12;

    new-instance v2, Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/z12;->a:Landroid/content/Context;

    invoke-direct {v2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sget-object v4, Lcom/google/android/gms/internal/ads/v12;->a:Lcom/google/android/gms/internal/ads/vy0;

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/ej2;->u:Ljava/util/List;

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/gms/internal/ads/hj2;

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/x12;-><init>(Lcom/google/android/gms/internal/ads/z12;Landroid/view/View;Lcom/google/android/gms/internal/ads/wn0;Lcom/google/android/gms/internal/ads/vy0;Lcom/google/android/gms/internal/ads/hj2;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/z12;->b:Lcom/google/android/gms/internal/ads/vx0;

    new-instance v1, Lcom/google/android/gms/internal/ads/mz0;

    const/4 v2, 0x0

    .line 3
    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/mz0;-><init>(Lcom/google/android/gms/internal/ads/rj2;Lcom/google/android/gms/internal/ads/ej2;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v1, v6}, Lcom/google/android/gms/internal/ads/vx0;->d(Lcom/google/android/gms/internal/ads/mz0;Lcom/google/android/gms/internal/ads/ex0;)Lcom/google/android/gms/internal/ads/yw0;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/bx;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/yw0;->k()Lcom/google/android/gms/internal/ads/y12;

    move-result-object v1

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/ej2;->s:Lcom/google/android/gms/internal/ads/kj2;

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/kj2;->b:Ljava/lang/String;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/kj2;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2}, Lcom/google/android/gms/internal/ads/bx;-><init>(Lcom/google/android/gms/ads/internal/f;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/z12;->e:Lcom/google/android/gms/internal/ads/yn2;

    .line 6
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfem;->t:Lcom/google/android/gms/internal/ads/zzfem;

    new-instance v2, Lcom/google/android/gms/internal/ads/w12;

    .line 7
    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/w12;-><init>(Lcom/google/android/gms/internal/ads/z12;Lcom/google/android/gms/internal/ads/bx;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/z12;->d:Lcom/google/android/gms/internal/ads/s03;

    .line 8
    invoke-static {v2, v0, v1, p2}, Lcom/google/android/gms/internal/ads/kn2;->d(Lcom/google/android/gms/internal/ads/dn2;Lcom/google/android/gms/internal/ads/s03;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/rn2;)Lcom/google/android/gms/internal/ads/qn2;

    move-result-object p2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfem;->u:Lcom/google/android/gms/internal/ads/zzfem;

    .line 9
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/qn2;->j(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qn2;

    move-result-object p2

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/yw0;->h()Lcom/google/android/gms/internal/ads/xw0;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/k03;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/qn2;->e(Lcom/google/android/gms/internal/ads/r03;)Lcom/google/android/gms/internal/ads/qn2;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/qn2;->i()Lcom/google/android/gms/internal/ads/en2;

    move-result-object p1

    return-object p1
.end method

.method final synthetic c(Lcom/google/android/gms/internal/ads/bx;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/z12;->c:Lcom/google/android/gms/internal/ads/gx;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/gx;->C3(Lcom/google/android/gms/internal/ads/dx;)V

    return-void
.end method
