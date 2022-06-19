.class public Lvi1;
.super Lsi1;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvi1$b;,
        Lvi1$c;,
        Lvi1$d;
    }
.end annotation


# instance fields
.field public final b:Lwi1;

.field public final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public d:J

.field public e:Z

.field public f:J

.field public g:Z

.field public h:Landroid/view/animation/Interpolator;

.field public i:Z

.field public j:Lhi1$a;

.field public k:Lvi1$b;

.field public l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lvi1$c;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ljava/lang/Runnable;

.field public n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lhi1;",
            "Lvi1$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Lsi1;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lvi1;->e:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lvi1;->f:J

    iput-boolean v0, p0, Lvi1;->g:Z

    iput-boolean v0, p0, Lvi1;->i:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lvi1;->j:Lhi1$a;

    new-instance v1, Lvi1$b;

    invoke-direct {v1, p0, v0}, Lvi1$b;-><init>(Lvi1;Lvi1$a;)V

    iput-object v1, p0, Lvi1;->k:Lvi1$b;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvi1;->l:Ljava/util/ArrayList;

    new-instance v0, Lvi1$a;

    invoke-direct {v0, p0}, Lvi1$a;-><init>(Lvi1;)V

    iput-object v0, p0, Lvi1;->m:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lvi1;->n:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lvi1;->c:Ljava/lang/ref/WeakReference;

    invoke-static {p1}, Lwi1;->A(Landroid/view/View;)Lwi1;

    move-result-object p1

    iput-object p1, p0, Lvi1;->b:Lwi1;

    return-void
.end method

.method public static synthetic e(Lvi1;)V
    .locals 0

    invoke-virtual {p0}, Lvi1;->o()V

    return-void
.end method

.method public static synthetic f(Lvi1;)Lhi1$a;
    .locals 0

    iget-object p0, p0, Lvi1;->j:Lhi1$a;

    return-object p0
.end method

.method public static synthetic g(Lvi1;Lhi1$a;)Lhi1$a;
    .locals 0

    iput-object p1, p0, Lvi1;->j:Lhi1$a;

    return-object p1
.end method

.method public static synthetic h(Lvi1;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lvi1;->n:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic i(Lvi1;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lvi1;->c:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic j(Lvi1;IF)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lvi1;->n(IF)V

    return-void
.end method


# virtual methods
.method public b(J)Lsi1;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lvi1;->e:Z

    iput-wide p1, p0, Lvi1;->d:J

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animators cannot have negative duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Lhi1$a;)Lsi1;
    .locals 0

    iput-object p1, p0, Lvi1;->j:Lhi1$a;

    return-object p0
.end method

.method public d(F)Lsi1;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lvi1;->k(IF)V

    return-object p0
.end method

.method public final k(IF)V
    .locals 1

    invoke-virtual {p0, p1}, Lvi1;->m(I)F

    move-result v0

    sub-float/2addr p2, v0

    invoke-virtual {p0, p1, v0, p2}, Lvi1;->l(IFF)V

    return-void
.end method

.method public final l(IFF)V
    .locals 5

    iget-object v0, p0, Lvi1;->n:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    iget-object v1, p0, Lvi1;->n:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhi1;

    iget-object v3, p0, Lvi1;->n:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvi1$d;

    invoke-virtual {v3, p1}, Lvi1$d;->a(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v3, v3, Lvi1$d;->a:I

    if-nez v3, :cond_0

    move-object v0, v2

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lhi1;->c()V

    :cond_2
    new-instance v0, Lvi1$c;

    invoke-direct {v0, p1, p2, p3}, Lvi1$c;-><init>(IFF)V

    iget-object p1, p0, Lvi1;->l:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lvi1;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lvi1;->m:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p2, p0, Lvi1;->m:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method public final m(I)F
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_9

    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    const/4 v0, 0x4

    if-eq p1, v0, :cond_7

    const/16 v0, 0x8

    if-eq p1, v0, :cond_6

    const/16 v0, 0x10

    if-eq p1, v0, :cond_5

    const/16 v0, 0x20

    if-eq p1, v0, :cond_4

    const/16 v0, 0x40

    if-eq p1, v0, :cond_3

    const/16 v0, 0x80

    if-eq p1, v0, :cond_2

    const/16 v0, 0x100

    if-eq p1, v0, :cond_1

    const/16 v0, 0x200

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p1, p0, Lvi1;->b:Lwi1;

    invoke-virtual {p1}, Lwi1;->c()F

    move-result p1

    return p1

    :cond_1
    iget-object p1, p0, Lvi1;->b:Lwi1;

    invoke-virtual {p1}, Lwi1;->m()F

    move-result p1

    return p1

    :cond_2
    iget-object p1, p0, Lvi1;->b:Lwi1;

    invoke-virtual {p1}, Lwi1;->l()F

    move-result p1

    return p1

    :cond_3
    iget-object p1, p0, Lvi1;->b:Lwi1;

    invoke-virtual {p1}, Lwi1;->g()F

    move-result p1

    return p1

    :cond_4
    iget-object p1, p0, Lvi1;->b:Lwi1;

    invoke-virtual {p1}, Lwi1;->f()F

    move-result p1

    return p1

    :cond_5
    iget-object p1, p0, Lvi1;->b:Lwi1;

    invoke-virtual {p1}, Lwi1;->d()F

    move-result p1

    return p1

    :cond_6
    iget-object p1, p0, Lvi1;->b:Lwi1;

    invoke-virtual {p1}, Lwi1;->i()F

    move-result p1

    return p1

    :cond_7
    iget-object p1, p0, Lvi1;->b:Lwi1;

    invoke-virtual {p1}, Lwi1;->h()F

    move-result p1

    return p1

    :cond_8
    iget-object p1, p0, Lvi1;->b:Lwi1;

    invoke-virtual {p1}, Lwi1;->k()F

    move-result p1

    return p1

    :cond_9
    iget-object p1, p0, Lvi1;->b:Lwi1;

    invoke-virtual {p1}, Lwi1;->j()F

    move-result p1

    return p1
.end method

.method public final n(IF)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_9

    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    const/4 v0, 0x4

    if-eq p1, v0, :cond_7

    const/16 v0, 0x8

    if-eq p1, v0, :cond_6

    const/16 v0, 0x10

    if-eq p1, v0, :cond_5

    const/16 v0, 0x20

    if-eq p1, v0, :cond_4

    const/16 v0, 0x40

    if-eq p1, v0, :cond_3

    const/16 v0, 0x80

    if-eq p1, v0, :cond_2

    const/16 v0, 0x100

    if-eq p1, v0, :cond_1

    const/16 v0, 0x200

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lvi1;->b:Lwi1;

    invoke-virtual {p1, p2}, Lwi1;->p(F)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lvi1;->b:Lwi1;

    invoke-virtual {p1, p2}, Lwi1;->y(F)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lvi1;->b:Lwi1;

    invoke-virtual {p1, p2}, Lwi1;->x(F)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lvi1;->b:Lwi1;

    invoke-virtual {p1, p2}, Lwi1;->s(F)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lvi1;->b:Lwi1;

    invoke-virtual {p1, p2}, Lwi1;->r(F)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lvi1;->b:Lwi1;

    invoke-virtual {p1, p2}, Lwi1;->q(F)V

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lvi1;->b:Lwi1;

    invoke-virtual {p1, p2}, Lwi1;->u(F)V

    goto :goto_0

    :cond_7
    iget-object p1, p0, Lvi1;->b:Lwi1;

    invoke-virtual {p1, p2}, Lwi1;->t(F)V

    goto :goto_0

    :cond_8
    iget-object p1, p0, Lvi1;->b:Lwi1;

    invoke-virtual {p1, p2}, Lwi1;->w(F)V

    goto :goto_0

    :cond_9
    iget-object p1, p0, Lvi1;->b:Lwi1;

    invoke-virtual {p1, p2}, Lwi1;->v(F)V

    :goto_0
    return-void
.end method

.method public final o()V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-static {v0}, Lqi1;->A([F)Lqi1;

    move-result-object v0

    iget-object v1, p0, Lvi1;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lvi1;->l:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lvi1$c;

    iget v5, v5, Lvi1$c;->a:I

    or-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lvi1;->n:Ljava/util/HashMap;

    new-instance v3, Lvi1$d;

    invoke-direct {v3, v4, v1}, Lvi1$d;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lvi1;->k:Lvi1$b;

    invoke-virtual {v0, v1}, Lqi1;->q(Lqi1$g;)V

    iget-object v1, p0, Lvi1;->k:Lvi1$b;

    invoke-virtual {v0, v1}, Lhi1;->b(Lhi1$a;)V

    iget-boolean v1, p0, Lvi1;->g:Z

    if-eqz v1, :cond_1

    iget-wide v1, p0, Lvi1;->f:J

    invoke-virtual {v0, v1, v2}, Lqi1;->F(J)V

    :cond_1
    iget-boolean v1, p0, Lvi1;->e:Z

    if-eqz v1, :cond_2

    iget-wide v1, p0, Lvi1;->d:J

    invoke-virtual {v0, v1, v2}, Lqi1;->C(J)Lqi1;

    :cond_2
    iget-boolean v1, p0, Lvi1;->i:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lvi1;->h:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Lqi1;->E(Landroid/view/animation/Interpolator;)V

    :cond_3
    invoke-virtual {v0}, Lqi1;->H()V

    return-void
.end method
