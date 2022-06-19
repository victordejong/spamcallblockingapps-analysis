.class public final Lcom/google/android/gms/internal/ads/mh0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/eh2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/eh2<",
        "Lcom/google/android/gms/internal/ads/x30<",
        "Lcom/google/android/gms/internal/ads/u10;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/oh2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Lcom/google/android/gms/internal/ads/fv;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/oh2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Lcom/google/android/gms/internal/ads/c70;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/ads/oh2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Lcom/google/android/gms/internal/ads/wc0;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/internal/ads/oh2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Lcom/google/android/gms/internal/ads/ah0;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/android/gms/internal/ads/oh2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Lcom/google/android/gms/internal/ads/ga0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/oh2;Lcom/google/android/gms/internal/ads/oh2;Lcom/google/android/gms/internal/ads/oh2;Lcom/google/android/gms/internal/ads/oh2;Lcom/google/android/gms/internal/ads/oh2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Lcom/google/android/gms/internal/ads/fv;",
            ">;",
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Lcom/google/android/gms/internal/ads/c70;",
            ">;",
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Lcom/google/android/gms/internal/ads/wc0;",
            ">;",
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Lcom/google/android/gms/internal/ads/ah0;",
            ">;",
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Lcom/google/android/gms/internal/ads/ga0;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mh0;->a:Lcom/google/android/gms/internal/ads/oh2;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/mh0;->b:Lcom/google/android/gms/internal/ads/oh2;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/mh0;->c:Lcom/google/android/gms/internal/ads/oh2;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/mh0;->d:Lcom/google/android/gms/internal/ads/oh2;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/mh0;->e:Lcom/google/android/gms/internal/ads/oh2;

    return-void
.end method


# virtual methods
.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mh0;->a:Lcom/google/android/gms/internal/ads/oh2;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/oh2;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/fv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mh0;->b:Lcom/google/android/gms/internal/ads/oh2;

    check-cast v1, Lcom/google/android/gms/internal/ads/j70;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/j70;->a()Lcom/google/android/gms/internal/ads/c70;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/mh0;->c:Lcom/google/android/gms/internal/ads/oh2;

    check-cast v2, Lcom/google/android/gms/internal/ads/nd0;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/nd0;->a()Lcom/google/android/gms/internal/ads/wc0;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/mh0;->d:Lcom/google/android/gms/internal/ads/oh2;

    check-cast v3, Lcom/google/android/gms/internal/ads/ch0;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/ch0;->a()Lcom/google/android/gms/internal/ads/ah0;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/mh0;->e:Lcom/google/android/gms/internal/ads/oh2;

    check-cast v4, Lcom/google/android/gms/internal/ads/t10;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/t10;->a()Lcom/google/android/gms/internal/ads/ga0;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fv;->n()Lcom/google/android/gms/internal/ads/r20;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/c70;->d()Lcom/google/android/gms/internal/ads/d70;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/r20;->g(Lcom/google/android/gms/internal/ads/d70;)Lcom/google/android/gms/internal/ads/r20;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/r20;->e(Lcom/google/android/gms/internal/ads/wc0;)Lcom/google/android/gms/internal/ads/r20;

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/r20;->q(Lcom/google/android/gms/internal/ads/ah0;)Lcom/google/android/gms/internal/ads/r20;

    new-instance v1, Lcom/google/android/gms/internal/ads/o51;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/o51;-><init>(Lcom/google/android/gms/internal/ads/i4;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/r20;->t(Lcom/google/android/gms/internal/ads/o51;)Lcom/google/android/gms/internal/ads/r20;

    new-instance v1, Lcom/google/android/gms/internal/ads/o30;

    invoke-direct {v1, v4}, Lcom/google/android/gms/internal/ads/o30;-><init>(Lcom/google/android/gms/internal/ads/ga0;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/r20;->k(Lcom/google/android/gms/internal/ads/o30;)Lcom/google/android/gms/internal/ads/r20;

    new-instance v1, Lcom/google/android/gms/internal/ads/r10;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/r10;-><init>(Landroid/view/ViewGroup;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/r20;->f(Lcom/google/android/gms/internal/ads/r10;)Lcom/google/android/gms/internal/ads/r20;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/r20;->zza()Lcom/google/android/gms/internal/ads/s20;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/s20;->c()Lcom/google/android/gms/internal/ads/x30;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jh2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
