.class public Lti1;
.super Lsi1;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti1$b;,
        Lti1$c;,
        Lti1$d;
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public c:J

.field public d:Z

.field public e:J

.field public f:Z

.field public g:Landroid/view/animation/Interpolator;

.field public h:Z

.field public i:Lhi1$a;

.field public j:Lti1$b;

.field public k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lti1$c;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljava/lang/Runnable;

.field public m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lhi1;",
            "Lti1$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Lsi1;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lti1;->d:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lti1;->e:J

    iput-boolean v0, p0, Lti1;->f:Z

    iput-boolean v0, p0, Lti1;->h:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lti1;->i:Lhi1$a;

    new-instance v1, Lti1$b;

    invoke-direct {v1, p0, v0}, Lti1$b;-><init>(Lti1;Lti1$a;)V

    iput-object v1, p0, Lti1;->j:Lti1$b;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lti1;->k:Ljava/util/ArrayList;

    new-instance v0, Lti1$a;

    invoke-direct {v0, p0}, Lti1$a;-><init>(Lti1;)V

    iput-object v0, p0, Lti1;->l:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lti1;->m:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lti1;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static synthetic e(Lti1;)V
    .locals 0

    invoke-virtual {p0}, Lti1;->o()V

    return-void
.end method

.method public static synthetic f(Lti1;)Lhi1$a;
    .locals 0

    iget-object p0, p0, Lti1;->i:Lhi1$a;

    return-object p0
.end method

.method public static synthetic g(Lti1;Lhi1$a;)Lhi1$a;
    .locals 0

    iput-object p1, p0, Lti1;->i:Lhi1$a;

    return-object p1
.end method

.method public static synthetic h(Lti1;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lti1;->m:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic i(Lti1;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lti1;->b:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic j(Lti1;IF)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lti1;->n(IF)V

    return-void
.end method


# virtual methods
.method public b(J)Lsi1;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lti1;->d:Z

    iput-wide p1, p0, Lti1;->c:J

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

    iput-object p1, p0, Lti1;->i:Lhi1$a;

    return-object p0
.end method

.method public d(F)Lsi1;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lti1;->k(IF)V

    return-object p0
.end method

.method public final k(IF)V
    .locals 1

    invoke-virtual {p0, p1}, Lti1;->m(I)F

    move-result v0

    sub-float/2addr p2, v0

    invoke-virtual {p0, p1, v0, p2}, Lti1;->l(IFF)V

    return-void
.end method

.method public final l(IFF)V
    .locals 5

    iget-object v0, p0, Lti1;->m:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    iget-object v1, p0, Lti1;->m:Ljava/util/HashMap;

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

    iget-object v3, p0, Lti1;->m:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lti1$d;

    invoke-virtual {v3, p1}, Lti1$d;->a(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v3, v3, Lti1$d;->a:I

    if-nez v3, :cond_0

    move-object v0, v2

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lhi1;->c()V

    :cond_2
    new-instance v0, Lti1$c;

    invoke-direct {v0, p1, p2, p3}, Lti1$c;-><init>(IFF)V

    iget-object p1, p0, Lti1;->k:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lti1;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lti1;->l:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p2, p0, Lti1;->l:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method public final m(I)F
    .locals 2

    iget-object v0, p0, Lti1;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    if-eq p1, v1, :cond_9

    const/4 v1, 0x2

    if-eq p1, v1, :cond_8

    const/4 v1, 0x4

    if-eq p1, v1, :cond_7

    const/16 v1, 0x8

    if-eq p1, v1, :cond_6

    const/16 v1, 0x10

    if-eq p1, v1, :cond_5

    const/16 v1, 0x20

    if-eq p1, v1, :cond_4

    const/16 v1, 0x40

    if-eq p1, v1, :cond_3

    const/16 v1, 0x80

    if-eq p1, v1, :cond_2

    const/16 v1, 0x100

    if-eq p1, v1, :cond_1

    const/16 v1, 0x200

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result p1

    return p1

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result p1

    return p1

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result p1

    return p1

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getRotationY()F

    move-result p1

    return p1

    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getRotationX()F

    move-result p1

    return p1

    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getRotation()F

    move-result p1

    return p1

    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result p1

    return p1

    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result p1

    return p1

    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result p1

    return p1

    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result p1

    return p1

    :cond_a
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final n(IF)V
    .locals 2

    iget-object v0, p0, Lti1;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    if-eq p1, v1, :cond_9

    const/4 v1, 0x2

    if-eq p1, v1, :cond_8

    const/4 v1, 0x4

    if-eq p1, v1, :cond_7

    const/16 v1, 0x8

    if-eq p1, v1, :cond_6

    const/16 v1, 0x10

    if-eq p1, v1, :cond_5

    const/16 v1, 0x20

    if-eq p1, v1, :cond_4

    const/16 v1, 0x40

    if-eq p1, v1, :cond_3

    const/16 v1, 0x80

    if-eq p1, v1, :cond_2

    const/16 v1, 0x100

    if-eq p1, v1, :cond_1

    const/16 v1, 0x200

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p2}, Landroid/view/View;->setY(F)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p2}, Landroid/view/View;->setX(F)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p2}, Landroid/view/View;->setRotationY(F)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0, p2}, Landroid/view/View;->setRotationX(F)V

    goto :goto_0

    :cond_5
    invoke-virtual {v0, p2}, Landroid/view/View;->setRotation(F)V

    goto :goto_0

    :cond_6
    invoke-virtual {v0, p2}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    :cond_7
    invoke-virtual {v0, p2}, Landroid/view/View;->setScaleX(F)V

    goto :goto_0

    :cond_8
    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_9
    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationX(F)V

    :cond_a
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

    iget-object v1, p0, Lti1;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lti1;->k:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lti1$c;

    iget v5, v5, Lti1$c;->a:I

    or-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lti1;->m:Ljava/util/HashMap;

    new-instance v3, Lti1$d;

    invoke-direct {v3, v4, v1}, Lti1$d;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lti1;->j:Lti1$b;

    invoke-virtual {v0, v1}, Lqi1;->q(Lqi1$g;)V

    iget-object v1, p0, Lti1;->j:Lti1$b;

    invoke-virtual {v0, v1}, Lhi1;->b(Lhi1$a;)V

    iget-boolean v1, p0, Lti1;->f:Z

    if-eqz v1, :cond_1

    iget-wide v1, p0, Lti1;->e:J

    invoke-virtual {v0, v1, v2}, Lqi1;->F(J)V

    :cond_1
    iget-boolean v1, p0, Lti1;->d:Z

    if-eqz v1, :cond_2

    iget-wide v1, p0, Lti1;->c:J

    invoke-virtual {v0, v1, v2}, Lqi1;->C(J)Lqi1;

    :cond_2
    iget-boolean v1, p0, Lti1;->h:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lti1;->g:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Lqi1;->E(Landroid/view/animation/Interpolator;)V

    :cond_3
    invoke-virtual {v0}, Lqi1;->H()V

    return-void
.end method
