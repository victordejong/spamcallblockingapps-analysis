.class final Lcom/google/android/gms/internal/ads/als;
.super Lcom/google/android/gms/internal/ads/alq;
.source "SourceFile"


# instance fields
.field final a:Landroid/content/Context;

.field final b:Lcom/google/android/gms/internal/ads/bcy;

.field final c:Lcom/google/android/gms/internal/ads/dsb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dsb<",
            "Lcom/google/android/gms/internal/ads/byu;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/view/View;

.field private final e:Lcom/google/android/gms/internal/ads/adt;

.field private final f:Lcom/google/android/gms/internal/ads/coy;

.field private final g:Lcom/google/android/gms/internal/ads/anq;

.field private final n:Lcom/google/android/gms/internal/ads/aym;

.field private final o:Ljava/util/concurrent/Executor;

.field private p:Lcom/google/android/gms/internal/ads/zzvt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ans;Landroid/content/Context;Lcom/google/android/gms/internal/ads/coy;Landroid/view/View;Lcom/google/android/gms/internal/ads/adt;Lcom/google/android/gms/internal/ads/anq;Lcom/google/android/gms/internal/ads/bcy;Lcom/google/android/gms/internal/ads/aym;Lcom/google/android/gms/internal/ads/dsb;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/ans;",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/coy;",
            "Landroid/view/View;",
            "Lcom/google/android/gms/internal/ads/adt;",
            "Lcom/google/android/gms/internal/ads/anq;",
            "Lcom/google/android/gms/internal/ads/bcy;",
            "Lcom/google/android/gms/internal/ads/aym;",
            "Lcom/google/android/gms/internal/ads/dsb<",
            "Lcom/google/android/gms/internal/ads/byu;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/alq;-><init>(Lcom/google/android/gms/internal/ads/ans;)V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/als;->a:Landroid/content/Context;

    .line 3
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/als;->d:Landroid/view/View;

    .line 4
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/als;->e:Lcom/google/android/gms/internal/ads/adt;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/als;->f:Lcom/google/android/gms/internal/ads/coy;

    .line 6
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/als;->g:Lcom/google/android/gms/internal/ads/anq;

    .line 7
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/als;->b:Lcom/google/android/gms/internal/ads/bcy;

    .line 8
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/als;->n:Lcom/google/android/gms/internal/ads/aym;

    .line 9
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/als;->c:Lcom/google/android/gms/internal/ads/dsb;

    .line 10
    iput-object p10, p0, Lcom/google/android/gms/internal/ads/als;->o:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zzvt;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/als;->e:Lcom/google/android/gms/internal/ads/adt;

    if-eqz v0, :cond_0

    .line 14
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/afh;->a(Lcom/google/android/gms/internal/ads/zzvt;)Lcom/google/android/gms/internal/ads/afh;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/adt;->a(Lcom/google/android/gms/internal/ads/afh;)V

    .line 15
    iget v0, p2, Lcom/google/android/gms/internal/ads/zzvt;->heightPixels:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setMinimumHeight(I)V

    .line 16
    iget v0, p2, Lcom/google/android/gms/internal/ads/zzvt;->widthPixels:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setMinimumWidth(I)V

    .line 17
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/als;->p:Lcom/google/android/gms/internal/ads/zzvt;

    :cond_0
    return-void
.end method

.method public final b()Landroid/view/View;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/als;->d:Landroid/view/View;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/emk;
    .locals 1

    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/als;->g:Lcom/google/android/gms/internal/ads/anq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/anq;->a()Lcom/google/android/gms/internal/ads/emk;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdpq; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/internal/ads/coy;
    .locals 4

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/als;->p:Lcom/google/android/gms/internal/ads/zzvt;

    if-eqz v0, :cond_0

    .line 23
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cps;->a(Lcom/google/android/gms/internal/ads/zzvt;)Lcom/google/android/gms/internal/ads/coy;

    move-result-object v0

    return-object v0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/als;->i:Lcom/google/android/gms/internal/ads/cov;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/cov;->W:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/als;->i:Lcom/google/android/gms/internal/ads/cov;

    .line 25
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cov;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v3, "FirstParty"

    .line 26
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 31
    new-instance v0, Lcom/google/android/gms/internal/ads/coy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/als;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/als;->d:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/gms/internal/ads/coy;-><init>(IIZ)V

    return-object v0

    .line 32
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/als;->i:Lcom/google/android/gms/internal/ads/cov;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cov;->q:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cps;->a(Ljava/util/List;)Lcom/google/android/gms/internal/ads/coy;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lcom/google/android/gms/internal/ads/coy;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/als;->f:Lcom/google/android/gms/internal/ads/coy;

    return-object v0
.end method

.method public final f()I
    .locals 2

    .line 34
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->ey:Lcom/google/android/gms/internal/ads/af;

    .line 35
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 36
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/als;->i:Lcom/google/android/gms/internal/ads/cov;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/cov;->ab:Z

    if-eqz v0, :cond_0

    .line 37
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->ez:Lcom/google/android/gms/internal/ads/af;

    .line 38
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 39
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/als;->h:Lcom/google/android/gms/internal/ads/cpk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cpk;->b:Lcom/google/android/gms/internal/ads/cpi;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cpi;->b:Lcom/google/android/gms/internal/ads/coz;

    iget v0, v0, Lcom/google/android/gms/internal/ads/coz;->c:I

    return v0
.end method

.method public final g()V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/als;->n:Lcom/google/android/gms/internal/ads/aym;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aym;->a()V

    return-void
.end method

.method public final h()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/als;->o:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/alv;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/alv;-><init>(Lcom/google/android/gms/internal/ads/als;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 45
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/alq;->h()V

    return-void
.end method
