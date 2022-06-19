.class public final Lcom/google/android/gms/internal/ads/bbj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dsi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dsi<",
        "Lcom/google/android/gms/internal/ads/anu<",
        "Lcom/google/android/gms/internal/ads/alq;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/dsv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/internal/ads/afq;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/dsv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/internal/ads/aqz$a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/ads/dsv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/internal/ads/awm;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/internal/ads/dsv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/internal/ads/bba;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/android/gms/internal/ads/dsv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/internal/ads/atx;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/dsv;Lcom/google/android/gms/internal/ads/dsv;Lcom/google/android/gms/internal/ads/dsv;Lcom/google/android/gms/internal/ads/dsv;Lcom/google/android/gms/internal/ads/dsv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/internal/ads/afq;",
            ">;",
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/internal/ads/aqz$a;",
            ">;",
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/internal/ads/awm;",
            ">;",
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/internal/ads/bba;",
            ">;",
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/internal/ads/atx;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bbj;->a:Lcom/google/android/gms/internal/ads/dsv;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bbj;->b:Lcom/google/android/gms/internal/ads/dsv;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bbj;->c:Lcom/google/android/gms/internal/ads/dsv;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bbj;->d:Lcom/google/android/gms/internal/ads/dsv;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/bbj;->e:Lcom/google/android/gms/internal/ads/dsv;

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 5

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bbj;->a:Lcom/google/android/gms/internal/ads/dsv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dsv;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/afq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bbj;->b:Lcom/google/android/gms/internal/ads/dsv;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/dsv;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/aqz$a;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bbj;->c:Lcom/google/android/gms/internal/ads/dsv;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/dsv;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/awm;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bbj;->d:Lcom/google/android/gms/internal/ads/dsv;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/dsv;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/bba;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/bbj;->e:Lcom/google/android/gms/internal/ads/dsv;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/dsv;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/atx;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/afq;->i()Lcom/google/android/gms/internal/ads/amq;

    move-result-object v0

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/aqz$a;->a()Lcom/google/android/gms/internal/ads/aqz;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/amq;->a(Lcom/google/android/gms/internal/ads/aqz;)Lcom/google/android/gms/internal/ads/amq;

    move-result-object v0

    .line 13
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/amq;->a(Lcom/google/android/gms/internal/ads/awm;)Lcom/google/android/gms/internal/ads/amq;

    move-result-object v0

    .line 14
    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/amq;->a(Lcom/google/android/gms/internal/ads/bba;)Lcom/google/android/gms/internal/ads/amq;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/byb;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/byb;-><init>(Lcom/google/android/gms/internal/ads/bn;)V

    .line 15
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/amq;->a(Lcom/google/android/gms/internal/ads/byb;)Lcom/google/android/gms/internal/ads/amq;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/anl;

    invoke-direct {v1, v4}, Lcom/google/android/gms/internal/ads/anl;-><init>(Lcom/google/android/gms/internal/ads/atx;)V

    .line 16
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/amq;->a(Lcom/google/android/gms/internal/ads/anl;)Lcom/google/android/gms/internal/ads/amq;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/alp;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/alp;-><init>(Landroid/view/ViewGroup;)V

    .line 17
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/amq;->a(Lcom/google/android/gms/internal/ads/alp;)Lcom/google/android/gms/internal/ads/amq;

    move-result-object v0

    .line 18
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/amq;->a()Lcom/google/android/gms/internal/ads/amn;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/amn;->c()Lcom/google/android/gms/internal/ads/anu;

    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dso;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/anu;

    return-object v0
.end method
