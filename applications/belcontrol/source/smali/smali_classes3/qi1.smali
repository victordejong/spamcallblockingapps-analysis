.class public Lqi1;
.super Lhi1;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqi1$g;,
        Lqi1$f;
    }
.end annotation


# static fields
.field public static final A:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/ArrayList<",
            "Lqi1;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final B:Landroid/view/animation/Interpolator;

.field public static C:J

.field public static v:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lqi1$f;",
            ">;"
        }
    .end annotation
.end field

.field public static final w:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/ArrayList<",
            "Lqi1;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final x:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/ArrayList<",
            "Lqi1;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final y:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/ArrayList<",
            "Lqi1;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final z:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/ArrayList<",
            "Lqi1;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public b:J

.field public c:J

.field public d:Z

.field public f:I

.field public g:F

.field public h:Z

.field public j:J

.field public k:I

.field public l:Z

.field public m:Z

.field public n:J

.field public o:J

.field public p:I

.field public q:I

.field public r:Landroid/view/animation/Interpolator;

.field public s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lqi1$g;",
            ">;"
        }
    .end annotation
.end field

.field public t:[Loi1;

.field public u:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Loi1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lqi1;->v:Ljava/lang/ThreadLocal;

    new-instance v0, Lqi1$a;

    invoke-direct {v0}, Lqi1$a;-><init>()V

    sput-object v0, Lqi1;->w:Ljava/lang/ThreadLocal;

    new-instance v0, Lqi1$b;

    invoke-direct {v0}, Lqi1$b;-><init>()V

    sput-object v0, Lqi1;->x:Ljava/lang/ThreadLocal;

    new-instance v0, Lqi1$c;

    invoke-direct {v0}, Lqi1$c;-><init>()V

    sput-object v0, Lqi1;->y:Ljava/lang/ThreadLocal;

    new-instance v0, Lqi1$d;

    invoke-direct {v0}, Lqi1$d;-><init>()V

    sput-object v0, Lqi1;->z:Ljava/lang/ThreadLocal;

    new-instance v0, Lqi1$e;

    invoke-direct {v0}, Lqi1$e;-><init>()V

    sput-object v0, Lqi1;->A:Ljava/lang/ThreadLocal;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lqi1;->B:Landroid/view/animation/Interpolator;

    const-wide/16 v0, 0xa

    sput-wide v0, Lqi1;->C:J

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lhi1;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lqi1;->c:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lqi1;->d:Z

    iput v0, p0, Lqi1;->f:I

    const/4 v1, 0x0

    iput v1, p0, Lqi1;->g:F

    iput-boolean v0, p0, Lqi1;->h:Z

    iput v0, p0, Lqi1;->k:I

    iput-boolean v0, p0, Lqi1;->l:Z

    iput-boolean v0, p0, Lqi1;->m:Z

    const-wide/16 v1, 0x12c

    iput-wide v1, p0, Lqi1;->n:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lqi1;->o:J

    iput v0, p0, Lqi1;->p:I

    const/4 v0, 0x1

    iput v0, p0, Lqi1;->q:I

    sget-object v0, Lqi1;->B:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lqi1;->r:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    iput-object v0, p0, Lqi1;->s:Ljava/util/ArrayList;

    return-void
.end method

.method public static varargs A([F)Lqi1;
    .locals 1

    new-instance v0, Lqi1;

    invoke-direct {v0}, Lqi1;-><init>()V

    invoke-virtual {v0, p0}, Lqi1;->D([F)V

    return-object v0
.end method

.method public static synthetic f()Ljava/lang/ThreadLocal;
    .locals 1

    sget-object v0, Lqi1;->w:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method public static synthetic g()Ljava/lang/ThreadLocal;
    .locals 1

    sget-object v0, Lqi1;->y:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method public static synthetic h()J
    .locals 2

    sget-wide v0, Lqi1;->C:J

    return-wide v0
.end method

.method public static synthetic i()Ljava/lang/ThreadLocal;
    .locals 1

    sget-object v0, Lqi1;->x:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method public static synthetic j(Lqi1;)J
    .locals 2

    iget-wide v0, p0, Lqi1;->o:J

    return-wide v0
.end method

.method public static synthetic k(Lqi1;)V
    .locals 0

    invoke-virtual {p0}, Lqi1;->J()V

    return-void
.end method

.method public static synthetic l()Ljava/lang/ThreadLocal;
    .locals 1

    sget-object v0, Lqi1;->A:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method public static synthetic m()Ljava/lang/ThreadLocal;
    .locals 1

    sget-object v0, Lqi1;->z:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method public static synthetic n(Lqi1;J)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lqi1;->u(J)Z

    move-result p0

    return p0
.end method

.method public static synthetic o(Lqi1;Z)Z
    .locals 0

    iput-boolean p1, p0, Lqi1;->l:Z

    return p1
.end method

.method public static synthetic p(Lqi1;)V
    .locals 0

    invoke-virtual {p0}, Lqi1;->v()V

    return-void
.end method


# virtual methods
.method public B(J)V
    .locals 4

    invoke-virtual {p0}, Lqi1;->z()V

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lqi1;->k:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    iput-wide p1, p0, Lqi1;->c:J

    const/4 v2, 0x2

    iput v2, p0, Lqi1;->k:I

    :cond_0
    sub-long p1, v0, p1

    iput-wide p1, p0, Lqi1;->b:J

    invoke-virtual {p0, v0, v1}, Lqi1;->s(J)Z

    return-void
.end method

.method public C(J)Lqi1;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    iput-wide p1, p0, Lqi1;->n:J

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

.method public varargs D([F)V
    .locals 3

    if-eqz p1, :cond_3

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lqi1;->t:[Loi1;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    array-length v2, v0

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Loi1;->i([F)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [Loi1;

    const-string v2, ""

    invoke-static {v2, p1}, Loi1;->h(Ljava/lang/String;[F)Loi1;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lqi1;->G([Loi1;)V

    :goto_1
    iput-boolean v1, p0, Lqi1;->m:Z

    :cond_3
    :goto_2
    return-void
.end method

.method public E(Landroid/view/animation/Interpolator;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    :goto_0
    iput-object p1, p0, Lqi1;->r:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public F(J)V
    .locals 0

    iput-wide p1, p0, Lqi1;->o:J

    return-void
.end method

.method public varargs G([Loi1;)V
    .locals 6

    array-length v0, p1

    iput-object p1, p0, Lqi1;->t:[Loi1;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lqi1;->u:Ljava/util/HashMap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    iget-object v4, p0, Lqi1;->u:Ljava/util/HashMap;

    invoke-virtual {v3}, Loi1;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lqi1;->m:Z

    return-void
.end method

.method public H()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lqi1;->I(Z)V

    return-void
.end method

.method public final I(Z)V
    .locals 5

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_2

    iput-boolean p1, p0, Lqi1;->d:Z

    const/4 p1, 0x0

    iput p1, p0, Lqi1;->f:I

    iput p1, p0, Lqi1;->k:I

    iput-boolean p1, p0, Lqi1;->h:Z

    sget-object v0, Lqi1;->x:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v0, p0, Lqi1;->o:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lqi1;->y()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lqi1;->B(J)V

    iput p1, p0, Lqi1;->k:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lqi1;->l:Z

    iget-object v0, p0, Lhi1;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhi1$a;

    invoke-interface {v3, p0}, Lhi1$a;->c(Lhi1;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lqi1;->v:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqi1$f;

    if-nez v0, :cond_1

    new-instance v0, Lqi1$f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lqi1$f;-><init>(Lqi1$a;)V

    sget-object v1, Lqi1;->v:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_2
    new-instance p1, Landroid/util/AndroidRuntimeException;

    const-string v0, "Animators may only be run on Looper threads"

    invoke-direct {p1, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final J()V
    .locals 5

    invoke-virtual {p0}, Lqi1;->z()V

    sget-object v0, Lqi1;->w:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v0, p0, Lqi1;->o:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lhi1;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhi1$a;

    invoke-interface {v3, p0}, Lhi1$a;->c(Lhi1;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    iget v0, p0, Lqi1;->k:I

    if-nez v0, :cond_0

    sget-object v0, Lqi1;->x:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lqi1;->y:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lqi1;->l:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhi1;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhi1$a;

    invoke-interface {v1, p0}, Lhi1$a;->a(Lhi1;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lqi1;->v()V

    :cond_2
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lqi1;->t()Lqi1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Lhi1;
    .locals 1

    invoke-virtual {p0}, Lqi1;->t()Lqi1;

    move-result-object v0

    return-object v0
.end method

.method public q(Lqi1$g;)V
    .locals 1

    iget-object v0, p0, Lqi1;->s:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lqi1;->s:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lqi1;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public r(F)V
    .locals 4

    iget-object v0, p0, Lqi1;->r:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    iput p1, p0, Lqi1;->g:F

    iget-object v0, p0, Lqi1;->t:[Loi1;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lqi1;->t:[Loi1;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Loi1;->b(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lqi1;->s:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_1
    if-ge v1, p1, :cond_1

    iget-object v0, p0, Lqi1;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqi1$g;

    invoke-interface {v0, p0}, Lqi1$g;->e(Lqi1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public s(J)Z
    .locals 9

    iget v0, p0, Lqi1;->k:I

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    iput v3, p0, Lqi1;->k:I

    iget-wide v4, p0, Lqi1;->c:J

    cmp-long v0, v4, v1

    if-gez v0, :cond_0

    iput-wide p1, p0, Lqi1;->b:J

    goto :goto_0

    :cond_0
    sub-long v4, p1, v4

    iput-wide v4, p0, Lqi1;->b:J

    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lqi1;->c:J

    :cond_1
    :goto_0
    iget v0, p0, Lqi1;->k:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v0, v3, :cond_2

    if-eq v0, v4, :cond_2

    goto :goto_5

    :cond_2
    iget-wide v6, p0, Lqi1;->n:J

    const/high16 v0, 0x3f800000    # 1.0f

    cmp-long v8, v6, v1

    if-lez v8, :cond_3

    iget-wide v1, p0, Lqi1;->b:J

    sub-long/2addr p1, v1

    long-to-float p1, p1

    long-to-float p2, v6

    div-float/2addr p1, p2

    goto :goto_1

    :cond_3
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_1
    cmpl-float p2, p1, v0

    if-ltz p2, :cond_8

    iget p2, p0, Lqi1;->f:I

    iget v1, p0, Lqi1;->p:I

    if-lt p2, v1, :cond_5

    const/4 p2, -0x1

    if-ne v1, p2, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    goto :goto_4

    :cond_5
    :goto_2
    iget-object p2, p0, Lhi1;->a:Ljava/util/ArrayList;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p2, :cond_6

    iget-object v2, p0, Lhi1;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhi1$a;

    invoke-interface {v2, p0}, Lhi1$a;->b(Lhi1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    iget p2, p0, Lqi1;->q:I

    if-ne p2, v4, :cond_7

    iget-boolean p2, p0, Lqi1;->d:Z

    xor-int/2addr p2, v3

    iput-boolean p2, p0, Lqi1;->d:Z

    :cond_7
    iget p2, p0, Lqi1;->f:I

    float-to-int v1, p1

    add-int/2addr p2, v1

    iput p2, p0, Lqi1;->f:I

    rem-float/2addr p1, v0

    iget-wide v1, p0, Lqi1;->b:J

    iget-wide v3, p0, Lqi1;->n:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lqi1;->b:J

    :cond_8
    const/4 v3, 0x0

    :goto_4
    iget-boolean p2, p0, Lqi1;->d:Z

    if-eqz p2, :cond_9

    sub-float p1, v0, p1

    :cond_9
    invoke-virtual {p0, p1}, Lqi1;->r(F)V

    move v5, v3

    :goto_5
    return v5
.end method

.method public t()Lqi1;
    .locals 7

    invoke-super {p0}, Lhi1;->d()Lhi1;

    move-result-object v0

    check-cast v0, Lqi1;

    iget-object v1, p0, Lqi1;->s:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lqi1;->s:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    iget-object v5, v0, Lqi1;->s:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v3, -0x1

    iput-wide v3, v0, Lqi1;->c:J

    iput-boolean v2, v0, Lqi1;->d:Z

    iput v2, v0, Lqi1;->f:I

    iput-boolean v2, v0, Lqi1;->m:Z

    iput v2, v0, Lqi1;->k:I

    iput-boolean v2, v0, Lqi1;->h:Z

    iget-object v1, p0, Lqi1;->t:[Loi1;

    if-eqz v1, :cond_1

    array-length v3, v1

    new-array v4, v3, [Loi1;

    iput-object v4, v0, Lqi1;->t:[Loi1;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v4, v0, Lqi1;->u:Ljava/util/HashMap;

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    invoke-virtual {v4}, Loi1;->c()Loi1;

    move-result-object v4

    iget-object v5, v0, Lqi1;->t:[Loi1;

    aput-object v4, v5, v2

    iget-object v5, v0, Lqi1;->u:Ljava/util/HashMap;

    invoke-virtual {v4}, Loi1;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ValueAnimator@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lqi1;->t:[Loi1;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lqi1;->t:[Loi1;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n    "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lqi1;->t:[Loi1;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Loi1;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final u(J)Z
    .locals 6

    iget-boolean v0, p0, Lqi1;->h:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lqi1;->h:Z

    iput-wide p1, p0, Lqi1;->j:J

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lqi1;->j:J

    sub-long v2, p1, v2

    iget-wide v4, p0, Lqi1;->o:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    sub-long/2addr v2, v4

    sub-long/2addr p1, v2

    iput-wide p1, p0, Lqi1;->b:J

    iput v1, p0, Lqi1;->k:I

    return v1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final v()V
    .locals 5

    sget-object v0, Lqi1;->w:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lqi1;->x:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lqi1;->y:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput v0, p0, Lqi1;->k:I

    iget-boolean v1, p0, Lqi1;->l:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lhi1;->a:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lhi1$a;

    invoke-interface {v4, p0}, Lhi1$a;->d(Lhi1;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lqi1;->l:Z

    return-void
.end method

.method public w()F
    .locals 1

    iget v0, p0, Lqi1;->g:F

    return v0
.end method

.method public x()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lqi1;->t:[Loi1;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Loi1;->d()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public y()J
    .locals 4

    iget-boolean v0, p0, Lqi1;->m:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lqi1;->k:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lqi1;->b:J

    sub-long/2addr v0, v2

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public z()V
    .locals 3

    iget-boolean v0, p0, Lqi1;->m:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lqi1;->t:[Loi1;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lqi1;->t:[Loi1;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Loi1;->g()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lqi1;->m:Z

    :cond_1
    return-void
.end method
