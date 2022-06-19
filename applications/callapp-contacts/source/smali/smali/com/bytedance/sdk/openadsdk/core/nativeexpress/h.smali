.class Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;
.super Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;
.source "SourceFile"


# static fields
.field private static k:[Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;


# instance fields
.field private l:Landroid/view/View;

.field private m:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

.field private n:Lcom/a/a/a/a/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    .line 53
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    const/4 v2, 0x2

    const v3, 0x40418c63

    const/16 v4, 0x177

    const/16 v5, 0x7c

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;-><init>(IFII)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    const/4 v3, 0x3

    const/high16 v5, 0x3fa00000    # 1.25f

    const/16 v6, 0x12c

    invoke-direct {v1, v3, v5, v4, v6}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;-><init>(IFII)V

    const/4 v7, 0x1

    aput-object v1, v0, v7

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    const/4 v7, 0x4

    const v8, 0x3fb3c679

    const/16 v9, 0x10b

    invoke-direct {v1, v7, v8, v4, v9}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;-><init>(IFII)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    const/16 v2, 0x10

    invoke-direct {v1, v2, v5, v4, v6}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;-><init>(IFII)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    const/4 v2, 0x5

    invoke-direct {v1, v2, v5, v4, v6}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;-><init>(IFII)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    const/16 v3, 0xf

    invoke-direct {v1, v3, v5, v4, v6}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;-><init>(IFII)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    const/16 v2, 0x32

    invoke-direct {v1, v2, v5, v4, v6}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;-><init>(IFII)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->k:[Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;-><init>(Landroid/content/Context;)V

    .line 69
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/widget/ImageView;)V
    .locals 9

    .line 219
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->H()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/e/h;

    if-eqz v0, :cond_3

    .line 221
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/h;->a()Ljava/lang/String;

    move-result-object v2

    .line 222
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/h;->b()I

    move-result v3

    .line 223
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/h;->c()I

    move-result v0

    int-to-float v4, v3

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float v4, v4, v5

    int-to-float v6, v0

    div-float/2addr v4, v6

    const/4 v6, 0x1

    const/high16 v7, 0x41800000    # 16.0f

    cmpg-float v8, v4, v5

    if-gtz v8, :cond_0

    .line 228
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->g:I

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    invoke-static {v1, v7}, Lcom/bytedance/sdk/openadsdk/utils/ag;->c(Landroid/content/Context;F)I

    move-result v1

    sub-int/2addr v0, v1

    .line 229
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->g:I

    :goto_0
    int-to-float v1, v1

    mul-float v1, v1, v5

    float-to-int v3, v1

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const v5, 0x3fe3d70a    # 1.78f

    cmpl-float v5, v4, v5

    if-lez v5, :cond_1

    const v5, 0x3ff47ae1    # 1.91f

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_1

    .line 232
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->g:I

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    invoke-static {v1, v7}, Lcom/bytedance/sdk/openadsdk/utils/ag;->c(Landroid/content/Context;F)I

    move-result v1

    sub-int/2addr v0, v1

    .line 233
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->g:I

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 238
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 239
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 240
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const v0, 0x800033

    .line 241
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 242
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->c()Lcom/bytedance/sdk/openadsdk/j/e;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Lcom/bytedance/sdk/openadsdk/j/e;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_3
    return-void
.end method

.method private b(I)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;
    .locals 6

    .line 205
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->k:[Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    .line 207
    :try_start_0
    array-length v3, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v0, v1

    .line 208
    iget v5, v4, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v5, p1, :cond_0

    move-object v2, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    :cond_1
    :goto_1
    return-object v2
.end method

.method private b()V
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->T()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b(I)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->m:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getExpectExpressWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ag;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->f:I

    .line 102
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->m:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getExpectExpressHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ag;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->g:I

    .line 105
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->f:I

    if-gtz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ag;->c(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->f:I

    .line 110
    :cond_0
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->g:I

    if-gtz v1, :cond_1

    .line 111
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->f:I

    int-to-float v1, v1

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->b:F

    div-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->g:I

    .line 115
    :cond_1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->f:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->f:I

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ag;->c(Landroid/content/Context;)I

    move-result v1

    if-le v0, v1, :cond_2

    .line 116
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ag;->c(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->f:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 117
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ag;->c(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->f:I

    .line 118
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->g:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->g:I

    .line 121
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_3

    .line 123
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->f:I

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->g:I

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 125
    :cond_3
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->f:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 126
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->g:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 127
    instance-of v1, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_4

    .line 128
    move-object v1, v0

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 130
    :cond_4
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->S()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/af;->c(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_5

    const-string v0, "draw_ad"

    .line 133
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->e:Ljava/lang/String;

    .line 134
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->g()V

    return-void

    :cond_5
    const-string v0, "embeded_ad"

    .line 137
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->e:Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->T()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_a

    const/4 v1, 0x5

    if-eq v0, v1, :cond_9

    const/16 v1, 0x32

    if-eq v0, v1, :cond_8

    const/16 v1, 0xf

    if-eq v0, v1, :cond_7

    const/16 v1, 0x10

    if-eq v0, v1, :cond_6

    goto :goto_0

    .line 155
    :cond_6
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->i()V

    return-void

    .line 152
    :cond_7
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->f()V

    return-void

    .line 158
    :cond_8
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->c()V

    :goto_0
    return-void

    .line 149
    :cond_9
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->h()V

    return-void

    .line 143
    :cond_a
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->e()V

    return-void

    .line 140
    :cond_b
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->d()V

    return-void
.end method

.method private b(Landroid/widget/ImageView;)V
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->H()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/e/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/h;->a()Ljava/lang/String;

    move-result-object v0

    .line 251
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->c()Lcom/bytedance/sdk/openadsdk/j/e;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/bytedance/sdk/openadsdk/j/e;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method

.method private c()V
    .locals 9

    .line 166
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v2, "tt_backup_feed_horizontal"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/x;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    .line 169
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v3, "tt_bu_video_container"

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    .line 170
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 171
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v5, "tt_bu_img_container"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    .line 172
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 174
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v5, "tt_bu_close"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 175
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v6, "tt_bu_desc"

    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 176
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v7, "tt_bu_title"

    invoke-static {v6, v7}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 177
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v8, "tt_bu_download"

    invoke-static {v7, v8}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 179
    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h$1;

    invoke-direct {v7, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;)V

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/e/i;->O()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 190
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/e/i;->O()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->getVideoView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 196
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 197
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->f:I

    iget v7, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->f:I

    mul-int/lit8 v7, v7, 0x9

    div-int/lit8 v7, v7, 0x10

    invoke-direct {v4, v5, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    :cond_1
    invoke-virtual {p0, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a(Landroid/view/View;Z)V

    .line 201
    invoke-virtual {p0, v6, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a(Landroid/view/View;Z)V

    return-void
.end method

.method private d()V
    .locals 7

    .line 256
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v2, "tt_backup_feed_img_small"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/x;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    .line 258
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v3, "tt_bu_img"

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 259
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v4, "tt_bu_close"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 260
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v5, "tt_bu_desc"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 261
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v6, "tt_bu_title"

    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 263
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a(Landroid/widget/ImageView;)V

    .line 264
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    invoke-virtual {p0, p0, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a(Landroid/view/View;Z)V

    return-void
.end method

.method private e()V
    .locals 9

    .line 319
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v2, "tt_backup_feed_horizontal"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/x;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    .line 322
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v3, "tt_bu_video_container"

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    .line 323
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 324
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v3, "tt_bu_img_container"

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 325
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 327
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v4, "tt_bu_img"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 328
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v5, "tt_bu_close"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 329
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v6, "tt_bu_desc"

    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 330
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v7, "tt_bu_title"

    invoke-static {v6, v7}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 331
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v8, "tt_bu_download"

    invoke-static {v7, v8}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 334
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 335
    iget v7, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->g:I

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 337
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a(Landroid/widget/ImageView;)V

    .line 338
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->O()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->O()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    :cond_0
    invoke-virtual {p0, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a(Landroid/view/View;Z)V

    .line 353
    invoke-virtual {p0, v6, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a(Landroid/view/View;Z)V

    return-void
.end method

.method private f()V
    .locals 14

    .line 357
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v2, "tt_backup_feed_vertical"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/x;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    .line 360
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v3, "tt_bu_video_container"

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 361
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 362
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v4, "tt_bu_img_container"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v3, 0x8

    .line 363
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v4, "tt_bu_video_container_inner"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 366
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v5, "tt_bu_video_icon"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 367
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v6, "tt_bu_close"

    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 368
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v7, "tt_bu_desc"

    invoke-static {v6, v7}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 369
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v8, "tt_bu_title"

    invoke-static {v7, v8}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 370
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v9, "tt_bu_video_name1"

    invoke-static {v8, v9}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 371
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v10, "tt_bu_video_name2"

    invoke-static {v9, v10}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 372
    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v10, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v11, "tt_bu_download"

    invoke-static {v10, v11}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 373
    iget-object v10, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v11, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v12, "tt_bu_video_score"

    invoke-static {v11, v12}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 374
    iget-object v11, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v12, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v13, "tt_bu_video_score_bar"

    invoke-static {v12, v13}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;

    .line 376
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->c()Lcom/bytedance/sdk/openadsdk/j/e;

    move-result-object v12

    iget-object v13, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v13}, Lcom/bytedance/sdk/openadsdk/core/e/i;->E()Lcom/bytedance/sdk/openadsdk/core/e/h;

    move-result-object v13

    invoke-virtual {v13}, Lcom/bytedance/sdk/openadsdk/core/e/h;->a()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v3}, Lcom/bytedance/sdk/openadsdk/j/e;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 378
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h$4;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;)V

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/e/i;->Q()Lcom/bytedance/sdk/openadsdk/core/e/b;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/e/i;->Q()Lcom/bytedance/sdk/openadsdk/core/e/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/e/b;->d()I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    .line 386
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    new-array v12, v2, [Ljava/lang/Object;

    int-to-float v13, v3

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v12, v1

    const-string v13, "%.1f"

    invoke-static {v4, v13, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    invoke-virtual {v11, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->setStarEmptyNum(I)V

    .line 388
    invoke-virtual {v11, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->setStarFillNum(I)V

    .line 389
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const/high16 v4, 0x41700000    # 15.0f

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/ag;->c(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v11, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->setStarImageWidth(F)V

    .line 390
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/ag;->c(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v11, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->setStarImageHeight(F)V

    .line 391
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/ag;->c(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v11, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->setStarImagePadding(F)V

    .line 392
    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->a()V

    .line 394
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->getNameOrSource()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/e/i;->O()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 400
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/e/i;->O()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 404
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->getVideoView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 406
    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->f:I

    mul-int/lit8 v4, v4, 0x7b

    div-int/lit16 v4, v4, 0x177

    mul-int/lit8 v5, v4, 0x10

    .line 407
    div-int/lit8 v5, v5, 0x9

    .line 408
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 409
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 412
    :cond_2
    invoke-virtual {p0, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a(Landroid/view/View;Z)V

    .line 413
    invoke-virtual {p0, v9, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a(Landroid/view/View;Z)V

    return-void
.end method

.method private g()V
    .locals 8

    .line 417
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v2, "tt_backup_draw"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/x;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    .line 419
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v3, "tt_bu_video_container"

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 420
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v4, "tt_bu_desc"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 421
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v5, "tt_bu_title"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 422
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v6, "tt_bu_download"

    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 424
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/e/i;->O()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 428
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/e/i;->O()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->getVideoView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 434
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 435
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v6, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    const/4 v0, 0x0

    .line 438
    invoke-virtual {p0, v3, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a(Landroid/view/View;Z)V

    .line 439
    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a(Landroid/view/View;Z)V

    .line 440
    invoke-virtual {p0, v4, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a(Landroid/view/View;Z)V

    return-void
.end method

.method private h()V
    .locals 9

    .line 445
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v2, "tt_backup_feed_horizontal"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/x;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    .line 448
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v3, "tt_bu_video_container"

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    .line 449
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 450
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v5, "tt_bu_img_container"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    .line 451
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 453
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v5, "tt_bu_close"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 454
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v6, "tt_bu_desc"

    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 455
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v7, "tt_bu_title"

    invoke-static {v6, v7}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 456
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v8, "tt_bu_download"

    invoke-static {v7, v8}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 458
    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h$5;

    invoke-direct {v7, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;)V

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 465
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/e/i;->O()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 469
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/e/i;->O()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->getVideoView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 475
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 476
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->f:I

    iget v7, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->f:I

    mul-int/lit8 v7, v7, 0x9

    div-int/lit8 v7, v7, 0x10

    invoke-direct {v4, v5, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 479
    :cond_1
    invoke-virtual {p0, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a(Landroid/view/View;Z)V

    .line 480
    invoke-virtual {p0, v6, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a(Landroid/view/View;Z)V

    return-void
.end method

.method private i()V
    .locals 9

    .line 485
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v2, "tt_backup_feed_vertical"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/x;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    .line 488
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v3, "tt_bu_video_container"

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    .line 489
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 490
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v3, "tt_bu_img_container"

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 491
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 493
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v4, "tt_bu_img"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 494
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v5, "tt_bu_close"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 495
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v6, "tt_bu_desc"

    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 496
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v7, "tt_bu_title"

    invoke-static {v6, v7}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 497
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v8, "tt_bu_download"

    invoke-static {v7, v8}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 499
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b(Landroid/widget/ImageView;)V

    .line 500
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h$6;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 507
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 508
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 510
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->O()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->O()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 514
    :cond_0
    invoke-virtual {p0, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a(Landroid/view/View;Z)V

    .line 515
    invoke-virtual {p0, v6, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method protected a(ILcom/bytedance/sdk/openadsdk/core/e/g;)V
    .locals 1

    .line 521
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->m:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    if-eqz v0, :cond_0

    .line 522
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->a(ILcom/bytedance/sdk/openadsdk/core/e/g;)V

    :cond_0
    return-void
.end method

.method a(Lcom/bytedance/sdk/openadsdk/core/e/i;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/a/a/a/a/a/c;)V
    .locals 2

    const-string v0, "FeedExpressBackupView"

    const-string v1, "show backup view"

    .line 83
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 84
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->setBackgroundColor(I)V

    .line 85
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    .line 86
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->m:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    .line 87
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->n:Lcom/a/a/a/a/a/c;

    .line 89
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->S()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/af;->d(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->h:I

    .line 90
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->h:I

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a(I)V

    .line 92
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b()V

    .line 93
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->m:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 p3, -0x2

    invoke-direct {p2, p3, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p0, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
