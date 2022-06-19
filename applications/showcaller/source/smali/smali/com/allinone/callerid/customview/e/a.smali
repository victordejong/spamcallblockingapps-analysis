.class public Lcom/allinone/callerid/customview/e/a;
.super Ljava/lang/Object;
.source "AnimationBuilder.java"


# instance fields
.field private final a:Lcom/allinone/callerid/customview/e/d;

.field private final b:[Landroid/view/View;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Z

.field private f:Landroid/view/animation/Interpolator;


# direct methods
.method public varargs constructor <init>(Lcom/allinone/callerid/customview/e/d;[Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/customview/e/a;->c:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/allinone/callerid/customview/e/a;->e:Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/allinone/callerid/customview/e/a;->f:Landroid/view/animation/Interpolator;

    .line 5
    iput-object p1, p0, Lcom/allinone/callerid/customview/e/a;->a:Lcom/allinone/callerid/customview/e/d;

    .line 6
    iput-object p2, p0, Lcom/allinone/callerid/customview/e/a;->b:[Landroid/view/View;

    return-void
.end method


# virtual methods
.method public varargs a([Landroid/view/View;)Lcom/allinone/callerid/customview/e/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/customview/e/a;->a:Lcom/allinone/callerid/customview/e/d;

    invoke-virtual {v0, p1}, Lcom/allinone/callerid/customview/e/d;->g([Landroid/view/View;)Lcom/allinone/callerid/customview/e/a;

    move-result-object p1

    return-object p1
.end method

.method protected b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/customview/e/a;->c:Ljava/util/List;

    return-object v0
.end method

.method public c()Lcom/allinone/callerid/customview/e/d;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/customview/e/a;->a:Lcom/allinone/callerid/customview/e/d;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/customview/e/d;->k(Landroid/view/animation/Interpolator;)Lcom/allinone/callerid/customview/e/d;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/allinone/callerid/customview/e/a;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/allinone/callerid/customview/e/a;->e:Z

    return-object p0
.end method

.method public e()Landroid/view/animation/Interpolator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/customview/e/a;->f:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method protected varargs f([F)[F
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/allinone/callerid/customview/e/a;->e:Z

    if-nez v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    array-length v0, p1

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 4
    aget v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/allinone/callerid/customview/e/a;->j(F)F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public g()Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/customview/e/a;->b:[Landroid/view/View;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/allinone/callerid/customview/e/a;->d:Z

    return v0
.end method

.method public varargs i(Ljava/lang/String;[F)Lcom/allinone/callerid/customview/e/a;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/customview/e/a;->b:[Landroid/view/View;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    iget-object v4, p0, Lcom/allinone/callerid/customview/e/a;->c:Ljava/util/List;

    invoke-virtual {p0, p2}, Lcom/allinone/callerid/customview/e/a;->f([F)[F

    move-result-object v5

    invoke-static {v3, p1, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method protected j(F)F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/customview/e/a;->b:[Landroid/view/View;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    return p1
.end method

.method public varargs k([F)Lcom/allinone/callerid/customview/e/a;
    .locals 1

    const-string v0, "translationX"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/allinone/callerid/customview/e/a;->i(Ljava/lang/String;[F)Lcom/allinone/callerid/customview/e/a;

    move-result-object p1

    return-object p1
.end method

.method public varargs l([F)Lcom/allinone/callerid/customview/e/a;
    .locals 1

    const-string v0, "translationY"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/allinone/callerid/customview/e/a;->i(Ljava/lang/String;[F)Lcom/allinone/callerid/customview/e/a;

    move-result-object p1

    return-object p1
.end method
