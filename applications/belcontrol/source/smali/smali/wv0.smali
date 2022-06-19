.class public Lwv0;
.super Landroid/view/animation/Animation;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwv0$c;,
        Lwv0$b;,
        Lwv0$a;
    }
.end annotation


# instance fields
.field public a:Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lka<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzv0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lwv0;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lwv0;->c:Ljava/util/List;

    iput-object p1, p0, Lwv0;->a:Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;

    return-void
.end method

.method public static synthetic d(Ljava/lang/Iterable;Ljava/util/ArrayList;Lwv0$c;)Ljava/util/ArrayList;
    .locals 3

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzv0;

    add-int/lit8 v2, v0, 0x1

    invoke-interface {p2, v0, v1}, Lwv0$c;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v2

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static synthetic f(Lwv0$b;Ljava/lang/Iterable;Lwv0$c;)Ljava/util/List;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, p1, v0, p2}, Lwv0$b;->a(Ljava/lang/Iterable;Ljava/util/ArrayList;Lwv0$c;)Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic g(Lwv0;ILzv0;)Lzv0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lwv0;->h(ILzv0;)Lzv0;

    return-object p2
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    iget-object p1, p0, Lwv0;->a:Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;

    invoke-virtual {p0}, Lwv0;->c()Lwv0$a;

    move-result-object p2

    iget-object v0, p0, Lwv0;->c:Ljava/util/List;

    new-instance v1, Lvv0;

    invoke-direct {v1, p0}, Lvv0;-><init>(Lwv0;)V

    invoke-interface {p2, v0, v1}, Lwv0$a;->a(Ljava/lang/Iterable;Lwv0$c;)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    iput-object p2, p1, Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;->a:Ljava/util/ArrayList;

    iget-object p1, p0, Lwv0;->a:Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzv0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lwv0;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzv0;

    iget-object v0, p0, Lwv0;->b:Ljava/util/List;

    new-instance v1, Lka;

    const/high16 v2, -0x3d4c0000    # -90.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lka;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c()Lwv0$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lwv0$a<",
            "Lzv0;",
            "Lzv0;",
            ">;"
        }
    .end annotation

    sget-object v0, Ltv0;->a:Ltv0;

    new-instance v1, Luv0;

    invoke-direct {v1, v0}, Luv0;-><init>(Lwv0$b;)V

    return-object v1
.end method

.method public final h(ILzv0;)Lzv0;
    .locals 2

    invoke-virtual {p2}, Lzv0;->b()F

    move-result v0

    iget-object v1, p0, Lwv0;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lka;

    iget-object v1, v1, Lka;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, -0x3d4c0000    # -90.0f

    add-float/2addr v0, v1

    invoke-virtual {p2, v0}, Lzv0;->d(F)V

    invoke-virtual {p2}, Lzv0;->c()F

    move-result v0

    iget-object v1, p0, Lwv0;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lka;

    iget-object p1, p1, Lka;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    sub-float/2addr v0, p1

    const/4 p1, 0x0

    add-float/2addr v0, p1

    invoke-virtual {p2, v0}, Lzv0;->e(F)V

    return-object p2
.end method
