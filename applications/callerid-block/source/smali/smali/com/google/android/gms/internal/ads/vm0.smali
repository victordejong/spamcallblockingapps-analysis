.class public final Lcom/google/android/gms/internal/ads/vm0;
.super Lcom/google/android/gms/internal/ads/u6;
.source ""


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/internal/ads/si0;

.field private d:Lcom/google/android/gms/internal/ads/sj0;

.field private e:Lcom/google/android/gms/internal/ads/ni0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/si0;Lcom/google/android/gms/internal/ads/sj0;Lcom/google/android/gms/internal/ads/ni0;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/u6;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vm0;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/vm0;->c:Lcom/google/android/gms/internal/ads/si0;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/vm0;->d:Lcom/google/android/gms/internal/ads/sj0;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/vm0;->e:Lcom/google/android/gms/internal/ads/ni0;

    return-void
.end method

.method static synthetic A6(Lcom/google/android/gms/internal/ads/vm0;)Lcom/google/android/gms/internal/ads/ni0;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/vm0;->e:Lcom/google/android/gms/internal/ads/ni0;

    return-object p0
.end method


# virtual methods
.method public final K4(Lcom/google/android/gms/dynamic/a;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->M1(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vm0;->c:Lcom/google/android/gms/internal/ads/si0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/si0;->q()Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vm0;->e:Lcom/google/android/gms/internal/ads/ni0;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ni0;->j(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public final L0(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vm0;->e:Lcom/google/android/gms/internal/ads/ni0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ni0;->w(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final W(Lcom/google/android/gms/dynamic/a;)Z
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->M1(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vm0;->d:Lcom/google/android/gms/internal/ads/sj0;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/sj0;->d(Landroid/view/ViewGroup;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/vm0;->c:Lcom/google/android/gms/internal/ads/si0;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/si0;->o()Lcom/google/android/gms/internal/ads/jt;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/um0;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/um0;-><init>(Lcom/google/android/gms/internal/ads/vm0;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/jt;->q0(Lcom/google/android/gms/internal/ads/t5;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vm0;->c:Lcom/google/android/gms/internal/ads/si0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/si0;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vm0;->c:Lcom/google/android/gms/internal/ads/si0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/si0;->r()Ld/e/g;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vm0;->c:Lcom/google/android/gms/internal/ads/si0;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/si0;->u()Ld/e/g;

    move-result-object v1

    invoke-virtual {v0}, Ld/e/g;->size()I

    move-result v2

    invoke-virtual {v1}, Ld/e/g;->size()I

    move-result v3

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v0}, Ld/e/g;->size()I

    move-result v6

    if-ge v4, v6, :cond_0

    invoke-virtual {v0, v4}, Ld/e/g;->i(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v2, v5

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    invoke-virtual {v1}, Ld/e/g;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    invoke-virtual {v1, v3}, Ld/e/g;->i(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v5

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final h()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vm0;->e:Lcom/google/android/gms/internal/ads/ni0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ni0;->x()V

    :cond_0
    return-void
.end method

.method public final j()Lcom/google/android/gms/internal/ads/m1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vm0;->c:Lcom/google/android/gms/internal/ads/si0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/si0;->Y()Lcom/google/android/gms/internal/ads/m1;

    move-result-object v0

    return-object v0
.end method

.method public final k()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vm0;->e:Lcom/google/android/gms/internal/ads/ni0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/u30;->b()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/vm0;->e:Lcom/google/android/gms/internal/ads/ni0;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/vm0;->d:Lcom/google/android/gms/internal/ads/sj0;

    return-void
.end method

.method public final m()Lcom/google/android/gms/dynamic/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vm0;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/b;->g3(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    return-object v0
.end method

.method public final n()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vm0;->c:Lcom/google/android/gms/internal/ads/si0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/si0;->q()Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->s()Lcom/google/android/gms/internal/ads/vh;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/vh;->A0(Lcom/google/android/gms/dynamic/a;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/m3;->X2:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vm0;->c:Lcom/google/android/gms/internal/ads/si0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/si0;->p()Lcom/google/android/gms/internal/ads/jt;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vm0;->c:Lcom/google/android/gms/internal/ads/si0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/si0;->p()Lcom/google/android/gms/internal/ads/jt;

    move-result-object v0

    new-instance v1, Ld/e/a;

    invoke-direct {v1}, Ld/e/a;-><init>()V

    const-string v2, "onSdkLoaded"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/lb;->X(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const-string v0, "Trying to start OMID session before creation."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/po;->f(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public final q()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vm0;->e:Lcom/google/android/gms/internal/ads/ni0;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ni0;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vm0;->c:Lcom/google/android/gms/internal/ads/si0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/si0;->p()Lcom/google/android/gms/internal/ads/jt;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vm0;->c:Lcom/google/android/gms/internal/ads/si0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/si0;->o()Lcom/google/android/gms/internal/ads/jt;

    move-result-object v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public final s(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/g6;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vm0;->c:Lcom/google/android/gms/internal/ads/si0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/si0;->r()Ld/e/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Ld/e/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/g6;

    return-object p1
.end method

.method public final w()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vm0;->c:Lcom/google/android/gms/internal/ads/si0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/si0;->t()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Google"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Illegal argument specified for omid partner name."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/po;->f(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vm0;->e:Lcom/google/android/gms/internal/ads/ni0;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/ni0;->h(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public final z(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vm0;->c:Lcom/google/android/gms/internal/ads/si0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/si0;->u()Ld/e/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Ld/e/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
