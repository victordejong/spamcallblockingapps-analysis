.class public Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;
.implements Lcom/bytedance/sdk/openadsdk/core/video/renderview/a;
.implements Lcom/bytedance/sdk/openadsdk/core/widget/d$a;
.implements Lcom/bytedance/sdk/openadsdk/core/widget/e$b;
.implements Lcom/bytedance/sdk/openadsdk/utils/ah$a;


# instance fields
.field A:Lcom/bytedance/sdk/openadsdk/core/widget/e;

.field B:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

.field C:Z

.field D:Lcom/a/a/a/a/a/c;

.field E:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

.field F:Lcom/bytedance/sdk/openadsdk/core/b/a;

.field G:Lcom/bytedance/sdk/openadsdk/core/b/a;

.field H:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd$DrawVideoListener;

.field I:Z

.field private J:Landroid/view/View;

.field private K:Landroid/widget/TextView;

.field private L:Landroid/widget/TextView;

.field private M:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$b;

.field private final N:Ljava/lang/String;

.field a:Landroid/view/View;

.field b:Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

.field c:Landroid/widget/ImageView;

.field d:Landroid/view/View;

.field e:Landroid/view/View;

.field f:Landroid/widget/ImageView;

.field g:Landroid/view/ViewStub;

.field h:Landroid/view/View;

.field i:Landroid/widget/ImageView;

.field j:Landroid/view/View;

.field k:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

.field l:Landroid/widget/TextView;

.field m:Landroid/widget/TextView;

.field n:Landroid/widget/TextView;

.field o:Landroid/widget/ProgressBar;

.field p:Landroid/view/ViewStub;

.field q:I

.field r:I

.field s:I

.field t:I

.field u:Z

.field v:Z

.field w:I

.field x:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;",
            ">;"
        }
    .end annotation
.end field

.field y:Lcom/bytedance/sdk/openadsdk/core/e/i;

.field z:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;ZLjava/util/EnumSet;Lcom/bytedance/sdk/openadsdk/core/e/i;Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "Z",
            "Ljava/util/EnumSet<",
            "Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/core/e/i;",
            "Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;",
            ")V"
        }
    .end annotation

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 147
    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;-><init>(Landroid/content/Context;Landroid/view/View;ZLjava/util/EnumSet;Lcom/bytedance/sdk/openadsdk/core/e/i;Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;ZLjava/util/EnumSet;Lcom/bytedance/sdk/openadsdk/core/e/i;Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "Z",
            "Ljava/util/EnumSet<",
            "Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/core/e/i;",
            "Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;",
            "Z)V"
        }
    .end annotation

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->u:Z

    .line 114
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->C:Z

    .line 126
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->I:Z

    .line 290
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->N:Ljava/lang/String;

    .line 132
    instance-of v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;

    if-eqz v0, :cond_0

    return-void

    .line 133
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    .line 134
    invoke-virtual {p0, p7}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c(Z)V

    .line 135
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a:Landroid/view/View;

    .line 136
    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->u:Z

    if-nez p4, :cond_1

    .line 137
    const-class p2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    invoke-static {p2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p4

    :cond_1
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->x:Ljava/util/EnumSet;

    .line 138
    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->E:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    .line 139
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/e/i;

    const/16 p2, 0x8

    .line 140
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c(I)V

    .line 141
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a:Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 142
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a()V

    .line 143
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->n()V

    return-void
.end method

.method private A()Z
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->N:Ljava/lang/String;

    const-string v1, "C8817D"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->N:Ljava/lang/String;

    const-string v1, "M5"

    .line 295
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->N:Ljava/lang/String;

    const-string v1, "R7t"

    .line 296
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$b;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->M:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$b;

    return-object p0
.end method

.method private b(Landroid/view/View;Landroid/content/Context;)V
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 349
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->p:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    .line 350
    invoke-virtual {v0}, Landroid/view/ViewStub;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->J:Landroid/view/View;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->p:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const-string v0, "tt_video_ad_cover_center_layout_draw"

    .line 354
    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->J:Landroid/view/View;

    const-string v0, "tt_video_ad_button_draw"

    .line 355
    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->K:Landroid/widget/TextView;

    const-string v0, "tt_video_ad_replay"

    .line 356
    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->L:Landroid/widget/TextView;

    :cond_1
    :goto_0
    return-void
.end method

.method private e(I)I
    .locals 4

    .line 515
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->s:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->t:I

    if-gtz v0, :cond_0

    goto :goto_1

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    const-string v2, "tt_video_container_maxheight"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/x;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 519
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    const-string v3, "tt_video_container_minheight"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/x;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float p1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float p1, p1, v2

    .line 521
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->s:I

    int-to-float v2, v2

    div-float/2addr p1, v2

    .line 522
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->t:I

    int-to-float v2, v2

    mul-float v2, v2, p1

    float-to-int p1, v2

    if-le p1, v0, :cond_1

    goto :goto_0

    :cond_1
    if-ge p1, v1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, p1

    :goto_0
    return v0

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method private f(I)V
    .locals 1

    .line 645
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->j:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 646
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->J:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    return-void
.end method

.method private y()Z
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->d(Lcom/bytedance/sdk/openadsdk/core/e/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->z()Lcom/bytedance/sdk/openadsdk/core/e/i$a;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->h()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private z()V
    .locals 4

    .line 244
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    .line 247
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$3;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;Landroid/content/Context;)V

    .line 279
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a:Landroid/view/View;

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 280
    check-cast v1, Landroid/view/ViewGroup;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .line 408
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b:Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;->a(Lcom/bytedance/sdk/openadsdk/core/video/renderview/a;)V

    .line 409
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c:Landroid/widget/ImageView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a(I)V
    .locals 2

    .line 541
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setSeekProgress-percent="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Progress"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->o:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 543
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->o:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method public a(II)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 466
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/ag;->c(Landroid/content/Context;)I

    move-result p1

    :cond_0
    if-gtz p1, :cond_1

    return-void

    .line 472
    :cond_1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->q:I

    .line 473
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->i()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->h()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->x:Ljava/util/EnumSet;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 476
    :cond_2
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->e(I)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->r:I

    goto :goto_1

    .line 474
    :cond_3
    :goto_0
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->r:I

    .line 478
    :goto_1
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->q:I

    iget p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->r:I

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(II)V

    return-void
.end method

.method public a(J)V
    .locals 0

    return-void
.end method

.method public a(JJ)V
    .locals 0

    return-void
.end method

.method a(Landroid/content/Context;Landroid/view/View;)V
    .locals 6

    .line 300
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 302
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/af;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "0"

    .line 304
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 306
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x14

    const/4 v5, 0x0

    if-ne v3, v4, :cond_2

    const/high16 v3, 0x180000

    if-lt v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, 0x1

    .line 308
    :goto_2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->A()Z

    move-result v3

    const-string v4, "NewLiveViewLayout"

    if-nez v3, :cond_3

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g;->b()Lcom/bytedance/sdk/openadsdk/core/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/g;->p()Z

    move-result v2

    if-eqz v2, :cond_3

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_3

    .line 309
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderTextureView;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderTextureView;-><init>(Landroid/content/Context;)V

    const-string v3, "use TextureView......"

    .line 310
    invoke-static {v4, v3}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 312
    :cond_3
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderSurfaceView;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderSurfaceView;-><init>(Landroid/content/Context;)V

    const-string v3, "use SurfaceView......"

    .line 313
    invoke-static {v4, v3}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :goto_3
    instance-of v3, p2, Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_4

    .line 316
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xd

    .line 317
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 318
    move-object v4, p2

    check-cast v4, Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v2, v5, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    const/16 v3, 0x8

    .line 320
    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 321
    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b:Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    const-string v2, "tt_video_play"

    .line 323
    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c:Landroid/widget/ImageView;

    const-string v2, "tt_video_progress"

    .line 324
    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->o:Landroid/widget/ProgressBar;

    const-string v2, "tt_video_loading_retry_layout"

    .line 325
    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->d:Landroid/view/View;

    const-string v2, "tt_video_loading_progress"

    .line 326
    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->e:Landroid/view/View;

    const-string v2, "tt_video_loading_cover_image"

    .line 327
    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->f:Landroid/widget/ImageView;

    const-string v2, "tt_video_ad_cover"

    .line 329
    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->g:Landroid/view/ViewStub;

    const-string v2, "tt_video_draw_layout_viewStub"

    .line 330
    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->p:Landroid/view/ViewStub;

    .line 331
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "NativeVideoLayout**findViews use time :"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "useTime"

    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    const/4 p2, 0x1

    .line 859
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->v:Z

    .line 860
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->r()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 861
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->B:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-interface {p2, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/graphics/SurfaceTexture;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 827
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b:Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 830
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->v:Z

    .line 831
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 832
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->B:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-interface {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/SurfaceHolder;)V

    :cond_1
    return-void
.end method

.method public a(Landroid/view/SurfaceHolder;III)V
    .locals 7

    .line 838
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b:Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eq p1, v0, :cond_0

    return-void

    .line 841
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 842
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->B:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/SurfaceHolder;III)V

    :cond_1
    return-void
.end method

.method a(Landroid/view/View;Landroid/content/Context;)V
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 337
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->g:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewStub;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->h:Landroid/view/View;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->g:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->h:Landroid/view/View;

    const-string v0, "tt_video_ad_finish_cover_image"

    .line 340
    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->i:Landroid/widget/ImageView;

    const-string v0, "tt_video_ad_cover_center_layout"

    .line 341
    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->j:Landroid/view/View;

    const-string v0, "tt_video_ad_logo_image"

    .line 342
    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->k:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    const-string v0, "tt_video_btn_ad_image_tv"

    .line 343
    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->l:Landroid/widget/TextView;

    const-string v0, "tt_video_ad_name"

    .line 344
    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->m:Landroid/widget/TextView;

    const-string v0, "tt_video_ad_button"

    .line 345
    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->n:Landroid/widget/TextView;

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Landroid/view/View;Z)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd$DrawVideoListener;)V
    .locals 1

    .line 1004
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->H:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd$DrawVideoListener;

    .line 1005
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->F:Lcom/bytedance/sdk/openadsdk/core/b/a;

    if-eqz v0, :cond_0

    .line 1006
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/b/a;->a(Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd$DrawVideoListener;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/ref/WeakReference;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/e/i;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;Z)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 659
    :cond_0
    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->u:Z

    const/4 p3, 0x0

    invoke-virtual {p0, p3, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(ZZ)V

    .line 660
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a:Landroid/view/View;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(Landroid/view/View;Landroid/content/Context;)V

    .line 661
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->h:Landroid/view/View;

    if-eqz p2, :cond_1

    .line 662
    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 664
    :cond_1
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->i:Landroid/widget/ImageView;

    if-eqz p2, :cond_2

    .line 665
    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 669
    :cond_2
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/utils/af;->b(Lcom/bytedance/sdk/openadsdk/core/e/i;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 670
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a:Landroid/view/View;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(Landroid/view/View;Landroid/content/Context;)V

    .line 671
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->j:Landroid/view/View;

    const/16 v0, 0x8

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 672
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->i:Landroid/widget/ImageView;

    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 673
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->J:Landroid/view/View;

    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 674
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->K:Landroid/widget/TextView;

    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 675
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->L:Landroid/widget/TextView;

    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 676
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->L:Landroid/widget/TextView;

    if-eqz p2, :cond_3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Landroid/content/Context;)I

    move-result p2

    if-nez p2, :cond_3

    .line 677
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->L:Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 680
    :cond_3
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->h:Landroid/view/View;

    if-eqz p2, :cond_4

    .line 681
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$5;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 694
    :cond_4
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->i:Landroid/widget/ImageView;

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/e/i;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/e/i;->B()Lcom/bytedance/sdk/openadsdk/core/e/o;

    move-result-object p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/e/i;->B()Lcom/bytedance/sdk/openadsdk/core/e/o;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/e/o;->g()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 695
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/e/i;->B()Lcom/bytedance/sdk/openadsdk/core/e/o;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/e/o;->e()D

    move-result-wide v0

    double-to-long v0, v0

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/e/i;->B()Lcom/bytedance/sdk/openadsdk/core/e/o;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/e/o;->h()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$6;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;)V

    invoke-static {v0, v1, p2, v2}, Lcom/bytedance/sdk/openadsdk/core/video/e/b;->a(JLjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/video/e/b$b;)V

    goto :goto_0

    .line 718
    :cond_5
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->j:Landroid/view/View;

    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 719
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->i:Landroid/widget/ImageView;

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/e/i;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/e/i;->B()Lcom/bytedance/sdk/openadsdk/core/e/o;

    move-result-object p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/e/i;->B()Lcom/bytedance/sdk/openadsdk/core/e/o;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/e/o;->g()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 720
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->c()Lcom/bytedance/sdk/openadsdk/j/e;

    move-result-object p2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->B()Lcom/bytedance/sdk/openadsdk/core/e/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/o;->g()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->i:Landroid/widget/ImageView;

    invoke-virtual {p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/j/e;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 725
    :cond_6
    :goto_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->C()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 726
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->C()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 727
    :cond_7
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->M()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 728
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->M()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 729
    :cond_8
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->N()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 730
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->N()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_9
    const-string p2, ""

    .line 734
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->k:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    const/4 v1, 0x4

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/e/i;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->E()Lcom/bytedance/sdk/openadsdk/core/e/h;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->E()Lcom/bytedance/sdk/openadsdk/core/e/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/h;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 735
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->k:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    invoke-static {v0, p3}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 736
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->l:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 737
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->c()Lcom/bytedance/sdk/openadsdk/j/e;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/e/i;->E()Lcom/bytedance/sdk/openadsdk/core/e/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/e/h;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->k:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/j/e;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 739
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 740
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->k:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->G:Lcom/bytedance/sdk/openadsdk/core/b/a;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 741
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->k:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->G:Lcom/bytedance/sdk/openadsdk/core/b/a;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_2

    .line 743
    :cond_a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->k:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->F:Lcom/bytedance/sdk/openadsdk/core/b/a;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 744
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->k:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->F:Lcom/bytedance/sdk/openadsdk/core/b/a;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_2

    .line 748
    :cond_b
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 749
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->k:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 750
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->l:Landroid/widget/TextView;

    invoke-static {v0, p3}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 751
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    const/4 v2, 0x1

    .line 752
    invoke-virtual {p2, p3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 753
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 754
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->l:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->G:Lcom/bytedance/sdk/openadsdk/core/b/a;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 755
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->l:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->G:Lcom/bytedance/sdk/openadsdk/core/b/a;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_2

    .line 757
    :cond_c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->l:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->F:Lcom/bytedance/sdk/openadsdk/core/b/a;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 758
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->l:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->F:Lcom/bytedance/sdk/openadsdk/core/b/a;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 763
    :cond_d
    :goto_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_e

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 764
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 766
    :cond_e
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->m:Landroid/widget/TextView;

    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 767
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->n:Landroid/widget/TextView;

    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 769
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->O()Ljava/lang/String;

    move-result-object p2

    .line 770
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_12

    .line 771
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->D()I

    move-result p1

    const/4 p2, 0x2

    const-string p3, "tt_video_mobile_go_detail"

    if-eq p1, p2, :cond_11

    const/4 p2, 0x3

    if-eq p1, p2, :cond_11

    if-eq p1, v1, :cond_10

    const/4 p2, 0x5

    if-eq p1, p2, :cond_f

    .line 783
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    invoke-static {p1, p3}, Lcom/bytedance/sdk/openadsdk/utils/x;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    .line 776
    :cond_f
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    const-string p2, "tt_video_dial_phone"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/x;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    .line 773
    :cond_10
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    const-string p2, "tt_video_download_apk"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/x;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    .line 780
    :cond_11
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    invoke-static {p1, p3}, Lcom/bytedance/sdk/openadsdk/utils/x;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 787
    :cond_12
    :goto_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->n:Landroid/widget/TextView;

    if-eqz p1, :cond_13

    .line 788
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 789
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->n:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->F:Lcom/bytedance/sdk/openadsdk/core/b/a;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 790
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->n:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->F:Lcom/bytedance/sdk/openadsdk/core/b/a;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 793
    :cond_13
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->K:Landroid/widget/TextView;

    if-eqz p1, :cond_14

    .line 794
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 795
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->K:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->F:Lcom/bytedance/sdk/openadsdk/core/b/a;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 796
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->K:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->F:Lcom/bytedance/sdk/openadsdk/core/b/a;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 799
    :cond_14
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->I:Z

    if-nez p1, :cond_15

    .line 800
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->f(I)V

    :cond_15
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$b;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->M:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$b;

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/a;)V
    .locals 1

    .line 386
    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    if-eqz v0, :cond_0

    .line 387
    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->B:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    .line 388
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->p()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public a(ZZ)V
    .locals 1

    .line 947
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->o:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 948
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    return-void
.end method

.method public a(ZZZ)V
    .locals 0

    .line 933
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->o:Landroid/widget/ProgressBar;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 934
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->d:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p3, 0x8

    :goto_0
    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    return-void
.end method

.method public a(ILcom/bytedance/sdk/openadsdk/core/e/o;Z)Z
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->A:Lcom/bytedance/sdk/openadsdk/core/widget/e;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/widget/e;->a(ILcom/bytedance/sdk/openadsdk/core/e/o;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public a(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    const/4 v0, 0x0

    .line 872
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->v:Z

    .line 873
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 874
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->B:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-interface {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->b(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/graphics/SurfaceTexture;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(II)V
    .locals 3

    .line 504
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    if-eq p1, v1, :cond_0

    if-lez p1, :cond_1

    .line 506
    :cond_0
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_1
    if-eq p2, v2, :cond_2

    if-eq p2, v1, :cond_2

    if-lez p2, :cond_3

    .line 509
    :cond_2
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 511
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public b(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public b(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public b(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 848
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b:Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 851
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->v:Z

    .line 852
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 853
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->B:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-interface {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->b(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/SurfaceHolder;)V

    :cond_1
    return-void
.end method

.method public b(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method

.method public b(Z)V
    .locals 0

    return-void
.end method

.method public b(ZZ)V
    .locals 1

    .line 483
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c:Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 485
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    const-string v0, "tt_play_movebar_textpage"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/x;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 487
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    const-string v0, "tt_stop_movebar_textpage"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/x;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    return-void
.end method

.method public b(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public c(I)V
    .locals 1

    .line 972
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->w:I

    .line 973
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    return-void
.end method

.method public c(II)V
    .locals 0

    .line 535
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->s:I

    .line 536
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->t:I

    return-void
.end method

.method public c(Landroid/view/ViewGroup;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 563
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 564
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 566
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 567
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c(I)V

    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 432
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->C:Z

    if-eqz p1, :cond_1

    .line 434
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->F:Lcom/bytedance/sdk/openadsdk/core/b/a;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 435
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/b/a;->a(Z)V

    .line 437
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->G:Lcom/bytedance/sdk/openadsdk/core/b/a;

    if-eqz p1, :cond_3

    .line 438
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/b/a;->a(Z)V

    return-void

    .line 441
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->F:Lcom/bytedance/sdk/openadsdk/core/b/a;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 442
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/b/a;->a(Z)V

    .line 444
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->G:Lcom/bytedance/sdk/openadsdk/core/b/a;

    if-eqz p1, :cond_3

    .line 445
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/b/a;->a(Z)V

    :cond_3
    return-void
.end method

.method public d()V
    .locals 3

    .line 576
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->d:Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ag;->g(Landroid/view/View;)V

    .line 577
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->e:Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ag;->g(Landroid/view/View;)V

    .line 579
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/e/i;

    if-eqz v0, :cond_0

    .line 580
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->B()Lcom/bytedance/sdk/openadsdk/core/e/o;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->B()Lcom/bytedance/sdk/openadsdk/core/e/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/o;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->f:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ag;->g(Landroid/view/View;)V

    .line 582
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->c()Lcom/bytedance/sdk/openadsdk/j/e;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->B()Lcom/bytedance/sdk/openadsdk/core/e/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/o;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/j/e;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 587
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    :cond_1
    return-void
.end method

.method public d(I)V
    .locals 2

    .line 425
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 426
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b:Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    if-eqz v0, :cond_0

    .line 427
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 650
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->I:Z

    return-void
.end method

.method public e()V
    .locals 2

    .line 601
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->u:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(ZZ)V

    .line 602
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->v()V

    return-void
.end method

.method public f()V
    .locals 1

    .line 822
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->d:Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ag;->f(Landroid/view/View;)V

    return-void
.end method

.method public g()V
    .locals 3

    .line 886
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->o:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 887
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->o:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    const/16 v0, 0x8

    .line 889
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c(I)V

    .line 890
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->x()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 891
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b:Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;->setVisibility(I)V

    .line 893
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->f:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 894
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 896
    :cond_1
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c(I)V

    .line 897
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->h:Landroid/view/View;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 898
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->i:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 899
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->j:Landroid/view/View;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 900
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->k:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 901
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->l:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 902
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->m:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 903
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->A:Lcom/bytedance/sdk/openadsdk/core/widget/e;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 904
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/e;->a(Z)V

    :cond_2
    return-void
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i()Z
    .locals 1

    .line 915
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->u:Z

    return v0
.end method

.method public j()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 953
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(ZZ)V

    return-void
.end method

.method public k()Z
    .locals 1

    .line 967
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->v:Z

    return v0
.end method

.method public l()V
    .locals 0

    return-void
.end method

.method public m()Z
    .locals 1

    .line 991
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->A:Lcom/bytedance/sdk/openadsdk/core/widget/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method n()V
    .locals 9

    .line 152
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->C:Z

    if-eqz v0, :cond_0

    const-string v0, "embeded_ad"

    goto :goto_0

    :cond_0
    const-string v0, "embeded_ad_landingpage"

    .line 153
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/af;->b(Lcom/bytedance/sdk/openadsdk/core/e/i;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 154
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->C:Z

    if-eqz v0, :cond_1

    const-string v0, "draw_ad"

    goto :goto_1

    :cond_1
    const-string v0, "draw_ad_landingpage"

    :goto_1
    const/4 v1, 0x6

    move-object v7, v0

    const/4 v8, 0x6

    goto :goto_2

    .line 156
    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/af;->d(Lcom/bytedance/sdk/openadsdk/core/e/i;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x7

    const-string v0, "rewarded_video"

    move-object v7, v0

    const/4 v8, 0x7

    goto :goto_2

    .line 159
    :cond_3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/af;->e(Lcom/bytedance/sdk/openadsdk/core/e/i;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    const-string v0, "fullscreen_interstitial_ad"

    move-object v7, v0

    const/4 v8, 0x5

    goto :goto_2

    :cond_4
    move-object v7, v0

    const/4 v8, 0x1

    .line 163
    :goto_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->D()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 164
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-static {v0, v1, v7}, Lcom/a/a/a/a/a/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;)Lcom/a/a/a/a/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->D:Lcom/a/a/a/a/a/c;

    .line 168
    :cond_5
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z()V

    .line 170
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/b/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-direct {v0, v1, v3, v7, v8}, Lcom/bytedance/sdk/openadsdk/core/b/a;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->F:Lcom/bytedance/sdk/openadsdk/core/b/a;

    .line 171
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/b/a;->b(Z)V

    .line 172
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->C:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 173
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->F:Lcom/bytedance/sdk/openadsdk/core/b/a;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/b/a;->a(Z)V

    goto :goto_3

    .line 175
    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->F:Lcom/bytedance/sdk/openadsdk/core/b/a;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/b/a;->a(Z)V

    .line 176
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->F:Lcom/bytedance/sdk/openadsdk/core/b/a;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/b/a;->c(Z)V

    .line 178
    :goto_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->F:Lcom/bytedance/sdk/openadsdk/core/b/a;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->E:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/b/a;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;)V

    .line 179
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->F:Lcom/bytedance/sdk/openadsdk/core/b/a;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/b/a;->d(Z)V

    .line 180
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->D:Lcom/a/a/a/a/a/c;

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->F:Lcom/bytedance/sdk/openadsdk/core/b/a;

    if-eqz v3, :cond_7

    .line 181
    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/openadsdk/core/b/a;->a(Lcom/a/a/a/a/a/c;)V

    .line 185
    :cond_7
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 186
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$1;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->y:Lcom/bytedance/sdk/openadsdk/core/e/i;

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->G:Lcom/bytedance/sdk/openadsdk/core/b/a;

    .line 206
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$2;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;)V

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/b/a;->a(Lcom/bytedance/sdk/openadsdk/core/b/b$a;)V

    .line 215
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->G:Lcom/bytedance/sdk/openadsdk/core/b/a;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/b/a;->b(Z)V

    .line 216
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->C:Z

    if-eqz v0, :cond_8

    .line 217
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->G:Lcom/bytedance/sdk/openadsdk/core/b/a;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/b/a;->a(Z)V

    goto :goto_4

    .line 219
    :cond_8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->G:Lcom/bytedance/sdk/openadsdk/core/b/a;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/b/a;->a(Z)V

    .line 221
    :goto_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->G:Lcom/bytedance/sdk/openadsdk/core/b/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->E:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/b/a;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;)V

    .line 222
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->G:Lcom/bytedance/sdk/openadsdk/core/b/a;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/b/a;->d(Z)V

    .line 223
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->D:Lcom/a/a/a/a/a/c;

    if-eqz v0, :cond_9

    .line 224
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->G:Lcom/bytedance/sdk/openadsdk/core/b/a;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/b/a;->a(Lcom/a/a/a/a/a/c;)V

    .line 227
    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 228
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->G:Lcom/bytedance/sdk/openadsdk/core/b/a;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->G:Lcom/bytedance/sdk/openadsdk/core/b/a;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_a
    return-void
.end method

.method public o()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b:Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    return-object v0
.end method

.method p()V
    .locals 5

    .line 362
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->B:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->A:Lcom/bytedance/sdk/openadsdk/core/widget/e;

    if-nez v0, :cond_0

    .line 364
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 365
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/widget/e;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/core/widget/e;-><init>()V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->A:Lcom/bytedance/sdk/openadsdk/core/widget/e;

    .line 366
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a:Landroid/view/View;

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/widget/e;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 367
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->A:Lcom/bytedance/sdk/openadsdk/core/widget/e;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->B:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-virtual {v2, v3, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/e;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;Lcom/bytedance/sdk/openadsdk/core/widget/e$b;)V

    .line 368
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mVideoTrafficTipLayout use time :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "useTime"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public q()V
    .locals 2

    .line 379
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->A:Lcom/bytedance/sdk/openadsdk/core/widget/e;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 380
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/e;->a(Z)V

    :cond_0
    return-void
.end method

.method r()Z
    .locals 2

    .line 400
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->B:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    if-nez v0, :cond_0

    const-string v0, "NewLiveViewLayout"

    const-string v1, "callback is null"

    .line 401
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public s()Landroid/view/View;
    .locals 1

    .line 571
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a:Landroid/view/View;

    return-object v0
.end method

.method public t()V
    .locals 2

    .line 593
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->d:Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ag;->g(Landroid/view/View;)V

    .line 594
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->e:Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ag;->g(Landroid/view/View;)V

    .line 595
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public u()V
    .locals 4

    .line 617
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 618
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b:Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    if-eqz v0, :cond_1

    .line 619
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;->getView()Landroid/view/View;

    move-result-object v0

    .line 620
    instance-of v2, v0, Landroid/view/TextureView;

    if-eqz v2, :cond_0

    .line 621
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 622
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 623
    check-cast v2, Landroid/view/ViewGroup;

    .line 624
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 625
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 626
    invoke-virtual {v2, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_0
    const/16 v2, 0x8

    .line 629
    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 630
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    :cond_1
    return-void
.end method

.method v()V
    .locals 2

    .line 635
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->h:Landroid/view/View;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 636
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->i:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 637
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->j:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 638
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->k:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 639
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->l:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 640
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->m:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 641
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->n:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    return-void
.end method

.method public w()V
    .locals 1

    .line 807
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->d:Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ag;->f(Landroid/view/View;)V

    .line 808
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->e:Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ag;->f(Landroid/view/View;)V

    .line 809
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 810
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ag;->f(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method x()Z
    .locals 2

    .line 1000
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->x:Ljava/util/EnumSet;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->u:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
