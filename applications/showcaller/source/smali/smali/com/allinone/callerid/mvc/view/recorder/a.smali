.class public Lcom/allinone/callerid/mvc/view/recorder/a;
.super Ljava/lang/Object;
.source "CircularRevealAnim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/mvc/view/recorder/a$b;
    }
.end annotation


# instance fields
.field private a:Lcom/allinone/callerid/mvc/view/recorder/a$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/allinone/callerid/mvc/view/recorder/a;)Lcom/allinone/callerid/mvc/view/recorder/a$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/view/recorder/a;->a:Lcom/allinone/callerid/mvc/view/recorder/a$b;

    return-object p0
.end method

.method private b(ZLandroid/view/View;Landroid/view/View;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-ge v0, v2, :cond_2

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/view/recorder/a;->a:Lcom/allinone/callerid/mvc/view/recorder/a$b;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/allinone/callerid/mvc/view/recorder/a$b;->b()V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 4
    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/mvc/view/recorder/a;->a:Lcom/allinone/callerid/mvc/view/recorder/a$b;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/allinone/callerid/mvc/view/recorder/a$b;->a()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x2

    new-array v2, v0, [I

    .line 6
    invoke-virtual {p2, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 7
    aget v3, v2, v1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/2addr v4, v0

    add-int/2addr v3, v4

    const/4 v4, 0x1

    .line 8
    aget v2, v2, v4

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    div-int/2addr p2, v0

    add-int/2addr v2, p2

    new-array p2, v0, [I

    .line 9
    invoke-virtual {p3, p2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 10
    aget v5, p2, v1

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/2addr v6, v0

    add-int/2addr v5, v6

    .line 11
    aget v6, p2, v4

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v7

    div-int/2addr v7, v0

    add-int/2addr v6, v7

    if-ge v3, v5, :cond_3

    .line 12
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v0, v3

    goto :goto_1

    :cond_3
    aget v0, p2, v1

    sub-int v0, v3, v0

    :goto_1
    if-ge v2, v6, :cond_4

    .line 13
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p2

    sub-int/2addr p2, v2

    goto :goto_2

    :cond_4
    aget p2, p2, v4

    sub-int p2, v2, p2

    :goto_2
    mul-int v0, v0, v0

    mul-int p2, p2, p2

    add-int/2addr v0, p2

    int-to-double v4, v0

    .line 14
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float p2, v4

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    move v0, p2

    const/4 p2, 0x0

    .line 15
    :cond_5
    invoke-static {p3, v3, v2, p2, v0}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object p2

    .line 16
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    const-wide/16 v0, 0x12c

    .line 17
    invoke-virtual {p2, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 18
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 19
    new-instance v0, Lcom/allinone/callerid/mvc/view/recorder/a$a;

    invoke-direct {v0, p0, p1, p3}, Lcom/allinone/callerid/mvc/view/recorder/a$a;-><init>(Lcom/allinone/callerid/mvc/view/recorder/a;ZLandroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 20
    invoke-virtual {p2}, Landroid/animation/Animator;->start()V

    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1, p2}, Lcom/allinone/callerid/mvc/view/recorder/a;->b(ZLandroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public d(Lcom/allinone/callerid/mvc/view/recorder/a$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/view/recorder/a;->a:Lcom/allinone/callerid/mvc/view/recorder/a$b;

    return-void
.end method
