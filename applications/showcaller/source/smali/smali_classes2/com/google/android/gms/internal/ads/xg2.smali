.class public final Lcom/google/android/gms/internal/ads/xg2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cj3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cj3<",
        "Lcom/google/android/gms/internal/ads/sg2<",
        "Lcom/google/android/gms/internal/ads/kk1;",
        "Lcom/google/android/gms/internal/ads/fk1;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/pj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/pj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Lcom/google/android/gms/internal/ads/el2;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/ads/pj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Lcom/google/android/gms/internal/ads/vl2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/pj3;Lcom/google/android/gms/internal/ads/pj3;Lcom/google/android/gms/internal/ads/pj3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Landroid/content/Context;",
            ">;",
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Lcom/google/android/gms/internal/ads/el2;",
            ">;",
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Lcom/google/android/gms/internal/ads/vl2;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xg2;->a:Lcom/google/android/gms/internal/ads/pj3;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/xg2;->b:Lcom/google/android/gms/internal/ads/pj3;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/xg2;->c:Lcom/google/android/gms/internal/ads/pj3;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/sg2;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/sg2<",
            "Lcom/google/android/gms/internal/ads/kk1;",
            "Lcom/google/android/gms/internal/ads/fk1;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xg2;->a:Lcom/google/android/gms/internal/ads/pj3;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/pj3;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/xg2;->b:Lcom/google/android/gms/internal/ads/pj3;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/pj3;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/el2;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/xg2;->c:Lcom/google/android/gms/internal/ads/pj3;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/pj3;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/vl2;

    .line 2
    sget-object v3, Lcom/google/android/gms/internal/ads/kw;->F4:Lcom/google/android/gms/internal/ads/cw;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v3

    .line 4
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->h()Lcom/google/android/gms/internal/ads/ph0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/ph0;->p()Lcom/google/android/gms/ads/internal/util/q1;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/ads/internal/util/q1;->m()Lcom/google/android/gms/internal/ads/jh0;

    move-result-object v3

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->h()Lcom/google/android/gms/internal/ads/ph0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/ph0;->p()Lcom/google/android/gms/ads/internal/util/q1;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/ads/internal/util/q1;->n()Lcom/google/android/gms/internal/ads/jh0;

    move-result-object v3

    :goto_0
    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 7
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/jh0;->i()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    sget-object v3, Lcom/google/android/gms/internal/ads/kw;->H4:Lcom/google/android/gms/internal/ads/cw;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v3

    .line 9
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_3

    sget-object v3, Lcom/google/android/gms/internal/ads/kw;->E4:Lcom/google/android/gms/internal/ads/cw;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v3

    .line 11
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v4, :cond_3

    :cond_2
    new-instance v3, Lcom/google/android/gms/internal/ads/sf2;

    .line 12
    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/sf2;-><init>()V

    .line 13
    sget-object v4, Lcom/google/android/gms/internal/ads/zzfcg;->d:Lcom/google/android/gms/internal/ads/zzfcg;

    new-instance v5, Lcom/google/android/gms/internal/ads/vf2;

    invoke-direct {v5, v3}, Lcom/google/android/gms/internal/ads/vf2;-><init>(Lcom/google/android/gms/internal/ads/sg2;)V

    .line 14
    invoke-virtual {v2, v4, v0, v1, v5}, Lcom/google/android/gms/internal/ads/vl2;->a(Lcom/google/android/gms/internal/ads/zzfcg;Landroid/content/Context;Lcom/google/android/gms/internal/ads/el2;Lcom/google/android/gms/internal/ads/bm2;)Lcom/google/android/gms/internal/ads/ul2;

    move-result-object v0

    new-instance v7, Lcom/google/android/gms/internal/ads/xf2;

    new-instance v2, Lcom/google/android/gms/internal/ads/ig2;

    new-instance v1, Lcom/google/android/gms/internal/ads/hg2;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/hg2;-><init>()V

    .line 15
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/ig2;-><init>(Lcom/google/android/gms/internal/ads/sg2;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/eg2;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ul2;->a:Lcom/google/android/gms/internal/ads/jl2;

    sget-object v6, Lcom/google/android/gms/internal/ads/qi0;->a:Lcom/google/android/gms/internal/ads/s03;

    invoke-direct {v3, v1, v6}, Lcom/google/android/gms/internal/ads/eg2;-><init>(Lcom/google/android/gms/internal/ads/jl2;Ljava/util/concurrent/Executor;)V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/ul2;->b:Lcom/google/android/gms/internal/ads/dm2;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ul2;->a:Lcom/google/android/gms/internal/ads/jl2;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/jl2;->a()Lcom/google/android/gms/internal/ads/zzfcj;

    move-result-object v0

    .line 16
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzfcj;->k:Ljava/lang/String;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/xf2;-><init>(Lcom/google/android/gms/internal/ads/sg2;Lcom/google/android/gms/internal/ads/sg2;Lcom/google/android/gms/internal/ads/dm2;Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    goto :goto_1

    :cond_3
    new-instance v7, Lcom/google/android/gms/internal/ads/hg2;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/hg2;-><init>()V

    :goto_1
    return-object v7
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/xg2;->a()Lcom/google/android/gms/internal/ads/sg2;

    move-result-object v0

    return-object v0
.end method
