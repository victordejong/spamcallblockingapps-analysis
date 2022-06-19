.class public final Lcom/google/android/gms/internal/ads/x60;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/qp1;

.field private final b:Lcom/google/android/gms/internal/ads/zzbbq;

.field private final c:Landroid/content/pm/ApplicationInfo;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/content/pm/PackageInfo;

.field private final g:Lcom/google/android/gms/internal/ads/yg2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/yg2<",
            "Lcom/google/android/gms/internal/ads/rz1<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final h:Ljava/lang/String;

.field private final i:Lcom/google/android/gms/internal/ads/ld1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/ld1<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/qp1;Lcom/google/android/gms/internal/ads/zzbbq;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageInfo;Lcom/google/android/gms/internal/ads/yg2;Lcom/google/android/gms/ads/internal/util/a1;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ld1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/qp1;",
            "Lcom/google/android/gms/internal/ads/zzbbq;",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/PackageInfo;",
            "Lcom/google/android/gms/internal/ads/yg2<",
            "Lcom/google/android/gms/internal/ads/rz1<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/google/android/gms/ads/internal/util/a1;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/ld1<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/x60;->a:Lcom/google/android/gms/internal/ads/qp1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/x60;->b:Lcom/google/android/gms/internal/ads/zzbbq;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/x60;->c:Landroid/content/pm/ApplicationInfo;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/x60;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/x60;->e:Ljava/util/List;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/x60;->f:Landroid/content/pm/PackageInfo;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/x60;->g:Lcom/google/android/gms/internal/ads/yg2;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/x60;->h:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/x60;->i:Lcom/google/android/gms/internal/ads/ld1;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/rz1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/rz1<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/x60;->a:Lcom/google/android/gms/internal/ads/qp1;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzduy;->b:Lcom/google/android/gms/internal/ads/zzduy;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/x60;->i:Lcom/google/android/gms/internal/ads/ld1;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/ld1;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/ads/bp1;->a(Lcom/google/android/gms/internal/ads/rz1;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/ip1;)Lcom/google/android/gms/internal/ads/hp1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hp1;->i()Lcom/google/android/gms/internal/ads/wo1;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/ads/rz1;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/rz1<",
            "Lcom/google/android/gms/internal/ads/zzawc;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/x60;->a()Lcom/google/android/gms/internal/ads/rz1;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/x60;->a:Lcom/google/android/gms/internal/ads/qp1;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzduy;->c:Lcom/google/android/gms/internal/ads/zzduy;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/android/gms/internal/ads/rz1;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/x60;->g:Lcom/google/android/gms/internal/ads/yg2;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/yg2;->b()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/rz1;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/ip1;->b(Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/rz1;)Lcom/google/android/gms/internal/ads/zo1;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/w60;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/w60;-><init>(Lcom/google/android/gms/internal/ads/x60;Lcom/google/android/gms/internal/ads/rz1;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zo1;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/hp1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hp1;->i()Lcom/google/android/gms/internal/ads/wo1;

    move-result-object v0

    return-object v0
.end method

.method final synthetic c(Lcom/google/android/gms/internal/ads/rz1;)Lcom/google/android/gms/internal/ads/zzawc;
    .locals 12

    new-instance v11, Lcom/google/android/gms/internal/ads/zzawc;

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/x60;->b:Lcom/google/android/gms/internal/ads/zzbbq;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/x60;->c:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/x60;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/x60;->e:Ljava/util/List;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/x60;->f:Landroid/content/pm/PackageInfo;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/x60;->g:Lcom/google/android/gms/internal/ads/yg2;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/yg2;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/rz1;

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/x60;->h:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/zzawc;-><init>(Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzbbq;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdsy;Ljava/lang/String;)V

    return-object v11
.end method
