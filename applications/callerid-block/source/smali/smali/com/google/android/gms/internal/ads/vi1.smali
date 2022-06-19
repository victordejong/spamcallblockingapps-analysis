.class public final Lcom/google/android/gms/internal/ads/vi1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/eh2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/eh2<",
        "Lcom/google/android/gms/internal/ads/qi1<",
        "Lcom/google/android/gms/internal/ads/ao0;",
        "Lcom/google/android/gms/internal/ads/un0;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/oh2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/oh2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Lcom/google/android/gms/internal/ads/zm1;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/ads/oh2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Lcom/google/android/gms/internal/ads/qn1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/oh2;Lcom/google/android/gms/internal/ads/oh2;Lcom/google/android/gms/internal/ads/oh2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Landroid/content/Context;",
            ">;",
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Lcom/google/android/gms/internal/ads/zm1;",
            ">;",
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Lcom/google/android/gms/internal/ads/qn1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vi1;->a:Lcom/google/android/gms/internal/ads/oh2;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/vi1;->b:Lcom/google/android/gms/internal/ads/oh2;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/vi1;->c:Lcom/google/android/gms/internal/ads/oh2;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/qi1;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/qi1<",
            "Lcom/google/android/gms/internal/ads/ao0;",
            "Lcom/google/android/gms/internal/ads/un0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vi1;->a:Lcom/google/android/gms/internal/ads/oh2;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/oh2;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vi1;->b:Lcom/google/android/gms/internal/ads/oh2;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/oh2;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zm1;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/vi1;->c:Lcom/google/android/gms/internal/ads/oh2;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/oh2;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/qn1;

    sget-object v3, Lcom/google/android/gms/internal/ads/m3;->U3:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_0

    new-instance v3, Lcom/google/android/gms/internal/ads/qh1;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/qh1;-><init>()V

    sget-object v4, Lcom/google/android/gms/internal/ads/zzdsv;->b:Lcom/google/android/gms/internal/ads/zzdsv;

    new-instance v5, Lcom/google/android/gms/internal/ads/uh1;

    invoke-direct {v5, v3}, Lcom/google/android/gms/internal/ads/uh1;-><init>(Lcom/google/android/gms/internal/ads/qi1;)V

    invoke-virtual {v2, v4, v0, v1, v5}, Lcom/google/android/gms/internal/ads/qn1;->a(Lcom/google/android/gms/internal/ads/zzdsv;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zm1;Lcom/google/android/gms/internal/ads/xn1;)Lcom/google/android/gms/internal/ads/pn1;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/wh1;

    new-instance v2, Lcom/google/android/gms/internal/ads/gi1;

    new-instance v3, Lcom/google/android/gms/internal/ads/fi1;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/fi1;-><init>()V

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/gi1;-><init>(Lcom/google/android/gms/internal/ads/qi1;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/ci1;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/pn1;->a:Lcom/google/android/gms/internal/ads/dn1;

    sget-object v5, Lcom/google/android/gms/internal/ads/zo;->a:Lcom/google/android/gms/internal/ads/sz1;

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/internal/ads/ci1;-><init>(Lcom/google/android/gms/internal/ads/dn1;Ljava/util/concurrent/Executor;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/pn1;->b:Lcom/google/android/gms/internal/ads/zn1;

    invoke-direct {v1, v2, v3, v0, v5}, Lcom/google/android/gms/internal/ads/wh1;-><init>(Lcom/google/android/gms/internal/ads/qi1;Lcom/google/android/gms/internal/ads/qi1;Lcom/google/android/gms/internal/ads/zn1;Ljava/util/concurrent/Executor;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/fi1;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/fi1;-><init>()V

    :goto_0
    return-object v1
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vi1;->a()Lcom/google/android/gms/internal/ads/qi1;

    move-result-object v0

    return-object v0
.end method
