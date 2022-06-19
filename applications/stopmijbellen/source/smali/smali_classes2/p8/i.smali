.class public Lp8/i;
.super Lp8/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp8/i$g;,
        Lp8/i$f;
    }
.end annotation


# static fields
.field public static p:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lp8/i$f;",
            ">;"
        }
    .end annotation
.end field

.field public static final q:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/ArrayList<",
            "Lp8/i;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final r:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/ArrayList<",
            "Lp8/i;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final s:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/ArrayList<",
            "Lp8/i;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final t:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/ArrayList<",
            "Lp8/i;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final u:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/ArrayList<",
            "Lp8/i;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final v:Landroid/view/animation/Interpolator;

.field public static w:J


# instance fields
.field public b:J

.field public c:J

.field public d:Z

.field public e:I

.field public f:Z

.field public g:J

.field public h:I

.field public i:Z

.field public j:Z

.field public k:J

.field public l:Landroid/view/animation/Interpolator;

.field public m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lp8/i$g;",
            ">;"
        }
    .end annotation
.end field

.field public n:[Lp8/g;

.field public o:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lp8/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lp8/i;->p:Ljava/lang/ThreadLocal;

    .line 2
    new-instance v0, Lp8/i$a;

    invoke-direct {v0}, Lp8/i$a;-><init>()V

    sput-object v0, Lp8/i;->q:Ljava/lang/ThreadLocal;

    .line 3
    new-instance v0, Lp8/i$b;

    invoke-direct {v0}, Lp8/i$b;-><init>()V

    sput-object v0, Lp8/i;->r:Ljava/lang/ThreadLocal;

    .line 4
    new-instance v0, Lp8/i$c;

    invoke-direct {v0}, Lp8/i$c;-><init>()V

    sput-object v0, Lp8/i;->s:Ljava/lang/ThreadLocal;

    .line 5
    new-instance v0, Lp8/i$d;

    invoke-direct {v0}, Lp8/i$d;-><init>()V

    sput-object v0, Lp8/i;->t:Ljava/lang/ThreadLocal;

    .line 6
    new-instance v0, Lp8/i$e;

    invoke-direct {v0}, Lp8/i$e;-><init>()V

    sput-object v0, Lp8/i;->u:Ljava/lang/ThreadLocal;

    .line 7
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lp8/i;->v:Landroid/view/animation/Interpolator;

    const-wide/16 v0, 0xa

    .line 8
    sput-wide v0, Lp8/i;->w:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lp8/a;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lp8/i;->c:J

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lp8/i;->d:Z

    .line 4
    iput v0, p0, Lp8/i;->e:I

    .line 5
    iput-boolean v0, p0, Lp8/i;->f:Z

    .line 6
    iput v0, p0, Lp8/i;->h:I

    .line 7
    iput-boolean v0, p0, Lp8/i;->i:Z

    .line 8
    iput-boolean v0, p0, Lp8/i;->j:Z

    const-wide/16 v0, 0x12c

    .line 9
    iput-wide v0, p0, Lp8/i;->k:J

    .line 10
    sget-object v0, Lp8/i;->v:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lp8/i;->l:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lp8/i;->m:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lp8/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lp8/i;->e()Lp8/i;

    move-result-object v0

    return-object v0
.end method

.method public b(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lp8/i;->l:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 2
    iget-object v0, p0, Lp8/i;->n:[Lp8/g;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 3
    iget-object v3, p0, Lp8/i;->n:[Lp8/g;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Lp8/g;->a(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lp8/i;->m:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_1
    if-ge v1, p1, :cond_1

    .line 6
    iget-object v0, p0, Lp8/i;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp8/i$g;

    invoke-interface {v0, p0}, Lp8/i$g;->a(Lp8/i;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public c(J)Z
    .locals 8

    .line 1
    iget v0, p0, Lp8/i;->h:I

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 2
    iput v3, p0, Lp8/i;->h:I

    .line 3
    iget-wide v4, p0, Lp8/i;->c:J

    cmp-long v0, v4, v1

    if-gez v0, :cond_0

    .line 4
    iput-wide p1, p0, Lp8/i;->b:J

    goto :goto_0

    :cond_0
    sub-long v4, p1, v4

    .line 5
    iput-wide v4, p0, Lp8/i;->b:J

    const-wide/16 v4, -0x1

    .line 6
    iput-wide v4, p0, Lp8/i;->c:J

    .line 7
    :cond_1
    :goto_0
    iget v0, p0, Lp8/i;->h:I

    const/4 v4, 0x0

    if-eq v0, v3, :cond_2

    const/4 v5, 0x2

    if-eq v0, v5, :cond_2

    goto :goto_4

    .line 8
    :cond_2
    iget-wide v5, p0, Lp8/i;->k:J

    const/high16 v0, 0x3f800000    # 1.0f

    cmp-long v7, v5, v1

    if-lez v7, :cond_3

    iget-wide v1, p0, Lp8/i;->b:J

    sub-long/2addr p1, v1

    long-to-float p1, p1

    long-to-float p2, v5

    div-float/2addr p1, p2

    goto :goto_1

    :cond_3
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_1
    cmpl-float p2, p1, v0

    if-ltz p2, :cond_6

    .line 9
    iget p2, p0, Lp8/i;->e:I

    if-ltz p2, :cond_4

    .line 10
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    goto :goto_3

    .line 11
    :cond_4
    iget-object p2, p0, Lp8/a;->a:Ljava/util/ArrayList;

    if-eqz p2, :cond_5

    .line 12
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v1, 0x0

    :goto_2
    if-ge v1, p2, :cond_5

    .line 13
    iget-object v2, p0, Lp8/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp8/a$a;

    invoke-interface {v2, p0}, Lp8/a$a;->d(Lp8/a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 14
    :cond_5
    iget p2, p0, Lp8/i;->e:I

    float-to-int v1, p1

    add-int/2addr p2, v1

    iput p2, p0, Lp8/i;->e:I

    rem-float/2addr p1, v0

    .line 15
    iget-wide v1, p0, Lp8/i;->b:J

    iget-wide v5, p0, Lp8/i;->k:J

    add-long/2addr v1, v5

    iput-wide v1, p0, Lp8/i;->b:J

    :cond_6
    const/4 v3, 0x0

    .line 16
    :goto_3
    iget-boolean p2, p0, Lp8/i;->d:Z

    if-eqz p2, :cond_7

    sub-float p1, v0, p1

    .line 17
    :cond_7
    invoke-virtual {p0, p1}, Lp8/i;->b(F)V

    move v4, v3

    :goto_4
    return v4
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lp8/i;->e()Lp8/i;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 2

    .line 1
    iget v0, p0, Lp8/i;->h:I

    if-nez v0, :cond_0

    sget-object v0, Lp8/i;->r:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lp8/i;->s:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    :cond_0
    iget-boolean v0, p0, Lp8/i;->i:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lp8/a;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp8/a$a;

    .line 5
    invoke-interface {v1, p0}, Lp8/a$a;->b(Lp8/a;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lp8/i;->f()V

    :cond_2
    return-void
.end method

.method public e()Lp8/i;
    .locals 7

    .line 1
    invoke-super {p0}, Lp8/a;->a()Lp8/a;

    move-result-object v0

    check-cast v0, Lp8/i;

    .line 2
    iget-object v1, p0, Lp8/i;->m:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lp8/i;->m:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    .line 5
    iget-object v5, v0, Lp8/i;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v3, -0x1

    .line 6
    iput-wide v3, v0, Lp8/i;->c:J

    .line 7
    iput-boolean v2, v0, Lp8/i;->d:Z

    .line 8
    iput v2, v0, Lp8/i;->e:I

    .line 9
    iput-boolean v2, v0, Lp8/i;->j:Z

    .line 10
    iput v2, v0, Lp8/i;->h:I

    .line 11
    iput-boolean v2, v0, Lp8/i;->f:Z

    .line 12
    iget-object v1, p0, Lp8/i;->n:[Lp8/g;

    if-eqz v1, :cond_1

    .line 13
    array-length v3, v1

    .line 14
    new-array v4, v3, [Lp8/g;

    iput-object v4, v0, Lp8/i;->n:[Lp8/g;

    .line 15
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v4, v0, Lp8/i;->o:Ljava/util/HashMap;

    :goto_1
    if-ge v2, v3, :cond_1

    .line 16
    aget-object v4, v1, v2

    invoke-virtual {v4}, Lp8/g;->b()Lp8/g;

    move-result-object v4

    .line 17
    iget-object v5, v0, Lp8/i;->n:[Lp8/g;

    aput-object v4, v5, v2

    .line 18
    iget-object v5, v0, Lp8/i;->o:Ljava/util/HashMap;

    .line 19
    iget-object v6, v4, Lp8/g;->a:Ljava/lang/String;

    .line 20
    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public final f()V
    .locals 5

    .line 1
    sget-object v0, Lp8/i;->q:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2
    sget-object v0, Lp8/i;->r:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3
    sget-object v0, Lp8/i;->s:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lp8/i;->h:I

    .line 5
    iget-boolean v1, p0, Lp8/i;->i:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lp8/a;->a:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 8
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lp8/a$a;

    invoke-interface {v4, p0}, Lp8/a$a;->a(Lp8/a;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_0
    iput-boolean v0, p0, Lp8/i;->i:Z

    return-void
.end method

.method public g()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lp8/i;->j:Z

    if-nez v0, :cond_5

    .line 2
    iget-object v0, p0, Lp8/i;->n:[Lp8/g;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 3
    iget-object v2, p0, Lp8/i;->n:[Lp8/g;

    aget-object v2, v2, v1

    .line 4
    iget-object v3, v2, Lp8/g;->i:Lp8/h;

    if-nez v3, :cond_2

    .line 5
    iget-object v3, v2, Lp8/g;->e:Ljava/lang/Class;

    const-class v4, Ljava/lang/Integer;

    if-ne v3, v4, :cond_0

    sget-object v3, Lp8/g;->k:Lp8/h;

    goto :goto_1

    :cond_0
    const-class v4, Ljava/lang/Float;

    if-ne v3, v4, :cond_1

    sget-object v3, Lp8/g;->l:Lp8/h;

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    iput-object v3, v2, Lp8/g;->i:Lp8/h;

    .line 6
    :cond_2
    iget-object v3, v2, Lp8/g;->i:Lp8/h;

    if-eqz v3, :cond_3

    .line 7
    iget-object v2, v2, Lp8/g;->f:Lp8/d;

    .line 8
    iput-object v3, v2, Lp8/d;->d:Lp8/h;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lp8/i;->j:Z

    :cond_5
    return-void
.end method

.method public h()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lp8/i;->d:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lp8/i;->d:Z

    .line 2
    iget v0, p0, Lp8/i;->h:I

    if-ne v0, v1, :cond_0

    .line 3
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 4
    iget-wide v2, p0, Lp8/i;->b:J

    sub-long v2, v0, v2

    .line 5
    iget-wide v4, p0, Lp8/i;->k:J

    sub-long/2addr v4, v2

    sub-long/2addr v0, v4

    .line 6
    iput-wide v0, p0, Lp8/i;->b:J

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0, v1}, Lp8/i;->j(Z)V

    :goto_0
    return-void
.end method

.method public varargs i([Lp8/g;)V
    .locals 6

    .line 1
    array-length v0, p1

    .line 2
    iput-object p1, p0, Lp8/i;->n:[Lp8/g;

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lp8/i;->o:Ljava/util/HashMap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 4
    aget-object v3, p1, v2

    .line 5
    iget-object v4, p0, Lp8/i;->o:Ljava/util/HashMap;

    .line 6
    iget-object v5, v3, Lp8/g;->a:Ljava/lang/String;

    .line 7
    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_0
    iput-boolean v1, p0, Lp8/i;->j:Z

    return-void
.end method

.method public final j(Z)V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2
    iput-boolean p1, p0, Lp8/i;->d:Z

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lp8/i;->e:I

    .line 4
    iput p1, p0, Lp8/i;->h:I

    .line 5
    iput-boolean p1, p0, Lp8/i;->f:Z

    .line 6
    sget-object v0, Lp8/i;->r:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-boolean v0, p0, Lp8/i;->j:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lp8/i;->h:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lp8/i;->b:J

    sub-long/2addr v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    .line 9
    :goto_1
    invoke-virtual {p0}, Lp8/i;->g()V

    .line 10
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 11
    iget v4, p0, Lp8/i;->h:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    .line 12
    iput-wide v0, p0, Lp8/i;->c:J

    const/4 v4, 0x2

    .line 13
    iput v4, p0, Lp8/i;->h:I

    :cond_2
    sub-long v0, v2, v0

    .line 14
    iput-wide v0, p0, Lp8/i;->b:J

    .line 15
    invoke-virtual {p0, v2, v3}, Lp8/i;->c(J)Z

    .line 16
    iput p1, p0, Lp8/i;->h:I

    .line 17
    iput-boolean v5, p0, Lp8/i;->i:Z

    .line 18
    iget-object v0, p0, Lp8/a;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_3

    .line 21
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lp8/a$a;

    invoke-interface {v3, p0}, Lp8/a$a;->c(Lp8/a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 22
    :cond_3
    sget-object v0, Lp8/i;->p:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp8/i$f;

    if-nez v0, :cond_4

    .line 23
    new-instance v0, Lp8/i$f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lp8/i$f;-><init>(Lp8/i$a;)V

    .line 24
    sget-object v1, Lp8/i;->p:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 25
    :cond_4
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 26
    :cond_5
    new-instance p1, Landroid/util/AndroidRuntimeException;

    const-string v0, "Animators may only be run on Looper threads"

    invoke-direct {p1, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "ValueAnimator@"

    .line 1
    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lp8/i;->n:[Lp8/g;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lp8/i;->n:[Lp8/g;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    const-string v2, "\n    "

    .line 4
    invoke-static {v0, v2}, Landroidx/recyclerview/widget/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lp8/i;->n:[Lp8/g;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lp8/g;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
