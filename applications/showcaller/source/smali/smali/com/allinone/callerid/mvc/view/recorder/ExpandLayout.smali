.class public Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;
.super Landroid/widget/LinearLayout;
.source "ExpandLayout.java"


# instance fields
.field private d:Landroid/view/View;

.field private e:I

.field private f:Z

.field private g:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;->h()V

    return-void
.end method

.method static synthetic a(Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;->e:I

    return p0
.end method

.method static synthetic b(Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;->e:I

    return p1
.end method

.method static synthetic c(Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;->d:Landroid/view/View;

    return-object p0
.end method

.method private d(J)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;->f:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v0, :cond_0

    new-array v0, v4, [F

    aput v1, v0, v3

    .line 2
    iget v1, p0, Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;->e:I

    int-to-float v1, v1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-array v0, v4, [F

    iget v4, p0, Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;->e:I

    int-to-float v4, v4

    aput v4, v0, v3

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    :goto_0
    const-wide/16 v1, 0x2

    .line 3
    div-long/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 5
    new-instance p1, Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout$b;

    invoke-direct {p1, p0}, Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout$b;-><init>(Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 6
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private h()V
    .locals 2

    .line 1
    iput-object p0, p0, Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;->d:Landroid/view/View;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;->f:Z

    const-wide/16 v0, 0x12c

    .line 3
    iput-wide v0, p0, Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;->g:J

    .line 4
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;->j()V

    return-void
.end method

.method private j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;->d:Landroid/view/View;

    new-instance v1, Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout$a;-><init>(Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static setViewHeight(Landroid/view/View;I)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method


# virtual methods
.method public e()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;->f:Z

    .line 2
    iget-wide v0, p0, Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;->g:J

    invoke-direct {p0, v0, v1}, Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;->d(J)V

    return-void
.end method

.method public f()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;->f:Z

    .line 2
    iget-wide v0, p0, Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;->g:J

    invoke-direct {p0, v0, v1}, Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;->d(J)V

    return-void
.end method

.method public g(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;->f:Z

    if-nez p1, :cond_0

    const-wide/16 v0, 0xa

    .line 2
    invoke-direct {p0, v0, v1}, Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;->d(J)V

    :cond_0
    return-void
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;->f:Z

    return v0
.end method

.method public k(Landroid/view/View;)I
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 2
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 3
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    return p1
.end method

.method public setAnimationDuration(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;->g:J

    return-void
.end method

.method public setViewHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;->e:I

    return-void
.end method
