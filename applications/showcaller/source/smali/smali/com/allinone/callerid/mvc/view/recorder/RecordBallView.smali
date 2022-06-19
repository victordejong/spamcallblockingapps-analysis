.class public Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;
.super Landroid/widget/RelativeLayout;
.source "RecordBallView.java"


# instance fields
.field private d:Landroid/content/Context;

.field public e:Landroid/view/WindowManager$LayoutParams;

.field private f:Landroid/view/WindowManager;

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/FrameLayout;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/FrameLayout;

.field private p:I

.field private q:I

.field private r:I

.field private s:Z

.field private t:I

.field private u:I

.field private v:Ljava/lang/String;

.field private w:J

.field private x:Landroid/os/Handler;

.field private y:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    const/high16 v1, 0x42780000    # 62.0f

    invoke-static {v0, v1}, Lcom/allinone/callerid/util/j;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->p:I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->s:Z

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->w:J

    .line 5
    iput-object p1, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->d:Landroid/content/Context;

    .line 6
    iput p2, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->q:I

    .line 7
    iput p3, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->r:I

    .line 8
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->h()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 9
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object p2

    const/high16 v0, 0x42780000    # 62.0f

    invoke-static {p2, v0}, Lcom/allinone/callerid/util/j;->a(Landroid/content/Context;F)I

    move-result p2

    iput p2, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->p:I

    const/4 p2, 0x1

    .line 11
    iput-boolean p2, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->s:Z

    const-wide/16 v0, 0x0

    .line 12
    iput-wide v0, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->w:J

    .line 13
    iput-object p1, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->d:Landroid/content/Context;

    .line 14
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->h()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object p2

    const/high16 p3, 0x42780000    # 62.0f

    invoke-static {p2, p3}, Lcom/allinone/callerid/util/j;->a(Landroid/content/Context;F)I

    move-result p2

    iput p2, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->p:I

    const/4 p2, 0x1

    .line 17
    iput-boolean p2, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->s:Z

    const-wide/16 p2, 0x0

    .line 18
    iput-wide p2, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->w:J

    .line 19
    iput-object p1, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->d:Landroid/content/Context;

    .line 20
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->h()V

    return-void
.end method

.method static synthetic a(Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->w:J

    return-wide v0
.end method

.method static synthetic b(Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;)J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->w:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->w:J

    return-wide v0
.end method

.method static synthetic c(Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;J)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->k(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->m:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic e(Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->x:Landroid/os/Handler;

    return-object p0
.end method

.method private g()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->x:Landroid/os/Handler;

    .line 2
    new-instance v0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView$a;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView$a;-><init>(Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;)V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->y:Ljava/lang/Runnable;

    .line 3
    iget-object v1, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->x:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private h()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->d:Landroid/content/Context;

    const v1, 0x7f0c0127

    invoke-static {v0, v1, p0}, Landroid/widget/RelativeLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->f:Landroid/view/WindowManager;

    .line 3
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->e:Landroid/view/WindowManager$LayoutParams;

    .line 4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    const/16 v2, 0x7f6

    .line 5
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    :cond_0
    const/16 v2, 0x7da

    .line 6
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    :goto_0
    const/4 v2, -0x2

    .line 7
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 8
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v2, 0x33

    .line 9
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v2, 0x1

    .line 10
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 11
    iget v2, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->r:I

    iget v3, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->p:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 12
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v2

    const/high16 v3, 0x43930000    # 294.0f

    invoke-static {v2, v3}, Lcom/allinone/callerid/util/j;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 13
    iget-object v1, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->e:Landroid/view/WindowManager$LayoutParams;

    const v2, 0x80028

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, 0x7f090497

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->k:Landroid/widget/ImageView;

    const v1, 0x7f090484

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->l:Landroid/widget/FrameLayout;

    const v1, 0x7f090486

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->m:Landroid/widget/TextView;

    const v1, 0x7f090485

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->n:Landroid/widget/ImageView;

    const v1, 0x7f090492

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->o:Landroid/widget/FrameLayout;

    .line 19
    invoke-static {}, Lcom/allinone/callerid/util/recorder/b;->e()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x8

    .line 20
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 21
    :cond_1
    iget v0, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->t:I

    const/16 v1, 0x2712

    if-ne v0, v1, :cond_2

    .line 22
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->g()V

    :cond_2
    :goto_1
    return-void
.end method

.method private k(J)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2
    new-instance v1, Ljava/util/Date;

    const-wide/16 v2, 0x3e8

    mul-long p1, p1, v2

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private l(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    const v1, 0x7f010022

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView$b;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView$b;-><init>(Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->f:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->e:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public getCall_status()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->u:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->t:I

    return v0
.end method

.method public getTel_phone()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->v:Ljava/lang/String;

    return-object v0
.end method

.method public i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->o:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->l:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->m:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->l(Landroid/view/View;)V

    return-void
.end method

.method public j()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->x:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->y:Ljava/lang/Runnable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    iput-object v2, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->y:Ljava/lang/Runnable;

    .line 5
    :cond_0
    iput-object v2, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->x:Landroid/os/Handler;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->f:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public m(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->e:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->f:Landroid/view/WindowManager;

    invoke-interface {p1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->s:Z

    if-eqz v0, :cond_d

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_c

    const/4 v3, 0x1

    const/high16 v4, 0x41200000    # 10.0f

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->e:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v5

    div-int/2addr v5, v2

    sub-int/2addr v3, v5

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->e:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v3

    div-int/2addr v3, v2

    sub-int/2addr p1, v3

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->e:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float p1, p1

    iget v0, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->h:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v4

    if-gtz p1, :cond_1

    iget-object p1, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->e:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float p1, p1

    iget v0, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->g:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v4

    if-lez p1, :cond_2

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->f:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->e:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return v1

    .line 7
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v5

    div-int/2addr v5, v2

    sub-int/2addr v0, v5

    int-to-float v0, v0

    iput v0, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->j:F

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v0

    div-int/2addr v0, v2

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->i:F

    .line 9
    iget p1, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->j:F

    iget v0, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->h:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v4

    if-gtz p1, :cond_a

    iget p1, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->i:F

    iget v0, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->g:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v4

    if-lez p1, :cond_4

    goto/16 :goto_2

    .line 10
    :cond_4
    iget p1, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->t:I

    const/16 v0, 0x2711

    const/16 v2, 0x6e

    const/16 v4, 0x6f

    const v5, 0x7f0802b6

    const/16 v6, 0x2712

    if-ne p1, v0, :cond_6

    .line 11
    iget-object p1, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->n:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 12
    iput v6, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->t:I

    .line 13
    new-instance p1, Lcom/allinone/callerid/bean/recorder/RecordCall;

    invoke-direct {p1}, Lcom/allinone/callerid/bean/recorder/RecordCall;-><init>()V

    .line 14
    iget-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->v:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/recorder/RecordCall;->setNumber(Ljava/lang/String;)V

    .line 15
    iget v0, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->u:I

    if-ne v0, v3, :cond_5

    .line 16
    invoke-virtual {p1, v2}, Lcom/allinone/callerid/bean/recorder/RecordCall;->setPhonestatus(I)V

    goto :goto_0

    .line 17
    :cond_5
    invoke-virtual {p1, v4}, Lcom/allinone/callerid/bean/recorder/RecordCall;->setPhonestatus(I)V

    .line 18
    :goto_0
    invoke-static {}, Lcom/allinone/callerid/service/b;->f()Lcom/allinone/callerid/service/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/allinone/callerid/service/b;->k(Lcom/allinone/callerid/bean/recorder/RecordCall;)V

    .line 19
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->g()V

    .line 20
    invoke-virtual {p0}, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->i()V

    .line 21
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "recorder_floatingball_click"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    const/16 v0, 0x2713

    if-ne p1, v6, :cond_8

    .line 22
    iput v0, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->t:I

    .line 23
    invoke-static {}, Lcom/allinone/callerid/service/b;->f()Lcom/allinone/callerid/service/b;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/allinone/callerid/service/b;->m(Z)V

    .line 24
    iget-object p1, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->n:Landroid/widget/ImageView;

    const v0, 0x7f0802b5

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 25
    iget-object p1, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->m:Landroid/widget/TextView;

    const-string v0, "00:00"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-wide/16 v2, 0x0

    .line 26
    iput-wide v2, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->w:J

    .line 27
    iget-object p1, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->x:Landroid/os/Handler;

    if-eqz p1, :cond_7

    .line 28
    iget-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->y:Ljava/lang/Runnable;

    if-eqz v0, :cond_7

    .line 29
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_7
    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->x:Landroid/os/Handler;

    .line 31
    iput-object p1, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->y:Ljava/lang/Runnable;

    goto :goto_3

    :cond_8
    if-ne p1, v0, :cond_b

    .line 32
    iput v6, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->t:I

    .line 33
    iget-object p1, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->n:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 34
    new-instance p1, Lcom/allinone/callerid/bean/recorder/RecordCall;

    invoke-direct {p1}, Lcom/allinone/callerid/bean/recorder/RecordCall;-><init>()V

    .line 35
    iget-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->v:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/recorder/RecordCall;->setNumber(Ljava/lang/String;)V

    .line 36
    iget v0, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->u:I

    if-ne v0, v3, :cond_9

    .line 37
    invoke-virtual {p1, v2}, Lcom/allinone/callerid/bean/recorder/RecordCall;->setPhonestatus(I)V

    goto :goto_1

    .line 38
    :cond_9
    invoke-virtual {p1, v4}, Lcom/allinone/callerid/bean/recorder/RecordCall;->setPhonestatus(I)V

    .line 39
    :goto_1
    invoke-static {}, Lcom/allinone/callerid/service/b;->f()Lcom/allinone/callerid/service/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/allinone/callerid/service/b;->k(Lcom/allinone/callerid/bean/recorder/RecordCall;)V

    .line 40
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->g()V

    goto :goto_3

    .line 41
    :cond_a
    :goto_2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->f:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->e:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_b
    :goto_3
    return v1

    .line 42
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v3

    div-int/2addr v3, v2

    sub-int/2addr v0, v3

    int-to-float v0, v0

    iput v0, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->g:F

    .line 43
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v0

    div-int/2addr v0, v2

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->h:F

    return v1

    .line 44
    :cond_d
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setCall_status(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->u:I

    return-void
.end method

.method public setInitTime()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->g()V

    return-void
.end method

.method public setIsonTouch(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->s:Z

    return-void
.end method

.method public setLayoutParams(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->o:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2
    iget-object v1, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->d:Landroid/content/Context;

    int-to-float p1, p1

    invoke-static {v1, p1}, Lcom/allinone/callerid/util/j;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->d:Landroid/content/Context;

    int-to-float p2, p2

    invoke-static {p1, p2}, Lcom/allinone/callerid/util/j;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->o:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->t:I

    return-void
.end method

.method public setTel_phone(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->v:Ljava/lang/String;

    return-void
.end method
