.class public Lc4/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc4/l$c;,
        Lc4/l$d;,
        Lc4/l$e;,
        Lc4/l$a;,
        Lc4/l$b;,
        Lc4/l$f;
    }
.end annotation


# instance fields
.field public a:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public b:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public c:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public d:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public e:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public f:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc4/l$e;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc4/l$f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc4/l;->g:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc4/l;->h:Ljava/util/List;

    const/4 v0, 0x0

    const/high16 v1, 0x43870000    # 270.0f

    .line 4
    invoke-virtual {p0, v0, v0, v1, v0}, Lc4/l;->e(FFFF)V

    return-void
.end method


# virtual methods
.method public a(FFFFFF)V
    .locals 4

    .line 1
    new-instance v0, Lc4/l$c;

    invoke-direct {v0, p1, p2, p3, p4}, Lc4/l$c;-><init>(FFFF)V

    .line 2
    iput p5, v0, Lc4/l$c;->f:F

    .line 3
    iput p6, v0, Lc4/l$c;->g:F

    .line 4
    iget-object v1, p0, Lc4/l;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v1, Lc4/l$a;

    invoke-direct {v1, v0}, Lc4/l$a;-><init>(Lc4/l$c;)V

    add-float v0, p5, p6

    const/4 v2, 0x0

    cmpg-float p6, p6, v2

    if-gez p6, :cond_0

    const/4 p6, 0x1

    goto :goto_0

    :cond_0
    const/4 p6, 0x0

    :goto_0
    const/high16 v2, 0x43b40000    # 360.0f

    const/high16 v3, 0x43340000    # 180.0f

    if-eqz p6, :cond_1

    add-float/2addr p5, v3

    rem-float/2addr p5, v2

    :cond_1
    if-eqz p6, :cond_2

    add-float/2addr v3, v0

    rem-float/2addr v3, v2

    goto :goto_1

    :cond_2
    move v3, v0

    .line 6
    :goto_1
    invoke-virtual {p0, p5}, Lc4/l;->b(F)V

    .line 7
    iget-object p5, p0, Lc4/l;->h:Ljava/util/List;

    invoke-interface {p5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iput v3, p0, Lc4/l;->e:F

    add-float p5, p1, p3

    const/high16 p6, 0x3f000000    # 0.5f

    mul-float p5, p5, p6

    sub-float/2addr p3, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p3, p1

    float-to-double v0, v0

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float p3, p3, v2

    add-float/2addr p3, p5

    .line 10
    iput p3, p0, Lc4/l;->c:F

    add-float p3, p2, p4

    mul-float p3, p3, p6

    sub-float/2addr p4, p2

    div-float/2addr p4, p1

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    double-to-float p1, p1

    mul-float p4, p4, p1

    add-float/2addr p4, p3

    .line 12
    iput p4, p0, Lc4/l;->d:F

    return-void
.end method

.method public final b(F)V
    .locals 4

    .line 1
    iget v0, p0, Lc4/l;->e:F

    cmpl-float v1, v0, p1

    if-nez v1, :cond_0

    return-void

    :cond_0
    sub-float v0, p1, v0

    const/high16 v1, 0x43b40000    # 360.0f

    add-float/2addr v0, v1

    rem-float/2addr v0, v1

    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    return-void

    .line 2
    :cond_1
    new-instance v1, Lc4/l$c;

    .line 3
    iget v2, p0, Lc4/l;->c:F

    .line 4
    iget v3, p0, Lc4/l;->d:F

    .line 5
    invoke-direct {v1, v2, v3, v2, v3}, Lc4/l$c;-><init>(FFFF)V

    .line 6
    iget v2, p0, Lc4/l;->e:F

    .line 7
    iput v2, v1, Lc4/l$c;->f:F

    .line 8
    iput v0, v1, Lc4/l$c;->g:F

    .line 9
    iget-object v0, p0, Lc4/l;->h:Ljava/util/List;

    new-instance v2, Lc4/l$a;

    invoke-direct {v2, v1}, Lc4/l$a;-><init>(Lc4/l$c;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iput p1, p0, Lc4/l;->e:F

    return-void
.end method

.method public c(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lc4/l;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v2, p0, Lc4/l;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc4/l$e;

    .line 3
    invoke-virtual {v2, p1, p2}, Lc4/l$e;->a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d(FF)V
    .locals 4

    .line 1
    new-instance v0, Lc4/l$d;

    invoke-direct {v0}, Lc4/l$d;-><init>()V

    .line 2
    iput p1, v0, Lc4/l$d;->b:F

    .line 3
    iput p2, v0, Lc4/l$d;->c:F

    .line 4
    iget-object v1, p0, Lc4/l;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v1, Lc4/l$b;

    .line 6
    iget v2, p0, Lc4/l;->c:F

    .line 7
    iget v3, p0, Lc4/l;->d:F

    .line 8
    invoke-direct {v1, v0, v2, v3}, Lc4/l$b;-><init>(Lc4/l$d;FF)V

    .line 9
    invoke-virtual {v1}, Lc4/l$b;->b()F

    move-result v0

    const/high16 v2, 0x43870000    # 270.0f

    add-float/2addr v0, v2

    .line 10
    invoke-virtual {v1}, Lc4/l$b;->b()F

    move-result v3

    add-float/2addr v3, v2

    .line 11
    invoke-virtual {p0, v0}, Lc4/l;->b(F)V

    .line 12
    iget-object v0, p0, Lc4/l;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    iput v3, p0, Lc4/l;->e:F

    .line 14
    iput p1, p0, Lc4/l;->c:F

    .line 15
    iput p2, p0, Lc4/l;->d:F

    return-void
.end method

.method public e(FFFF)V
    .locals 0

    .line 1
    iput p1, p0, Lc4/l;->a:F

    .line 2
    iput p2, p0, Lc4/l;->b:F

    .line 3
    iput p1, p0, Lc4/l;->c:F

    .line 4
    iput p2, p0, Lc4/l;->d:F

    .line 5
    iput p3, p0, Lc4/l;->e:F

    add-float/2addr p3, p4

    const/high16 p1, 0x43b40000    # 360.0f

    rem-float/2addr p3, p1

    .line 6
    iput p3, p0, Lc4/l;->f:F

    .line 7
    iget-object p1, p0, Lc4/l;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 8
    iget-object p1, p0, Lc4/l;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method
