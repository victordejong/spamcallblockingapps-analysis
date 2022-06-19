.class Lcom/bytedance/sdk/openadsdk/core/d/a;
.super Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;
.source "SourceFile"


# static fields
.field private static k:[Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;


# instance fields
.field private l:Landroid/view/View;

.field private m:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

.field private n:Lcom/a/a/a/a/a/c;

.field private o:I

.field private p:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x3

    new-array v1, v0, [Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    .line 47
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0x12c

    invoke-direct {v2, v3, v4, v5, v5}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;-><init>(IFII)V

    const/4 v4, 0x0

    aput-object v2, v1, v4

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    const/4 v4, 0x2

    const v6, 0x3f2aaaab

    const/16 v7, 0x1c2

    invoke-direct {v2, v4, v6, v5, v7}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;-><init>(IFII)V

    aput-object v2, v1, v3

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    const/high16 v3, 0x3fc00000    # 1.5f

    const/16 v6, 0xc8

    invoke-direct {v2, v0, v3, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;-><init>(IFII)V

    aput-object v2, v1, v4

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/d/a;->k:[Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 61
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 57
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->o:I

    .line 62
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/d/a;)Landroid/content/Context;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    return-object p0
.end method

.method private a(II)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;
    .locals 8

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    const/4 p2, 0x0

    .line 551
    :try_start_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->k:[Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    aget-object v1, v0, p2

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 553
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    .line 554
    iget v6, v5, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->b:F

    sub-float/2addr v6, p1

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpg-float v7, v6, v2

    if-gtz v7, :cond_0

    move-object v1, v5

    move v2, v6

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    .line 563
    :catchall_0
    sget-object p1, Lcom/bytedance/sdk/openadsdk/core/d/a;->k:[Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    aget-object p1, p1, p2

    return-object p1
.end method

.method private a(Landroid/widget/ImageView;)V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->H()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/e/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/h;->a()Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->c()Lcom/bytedance/sdk/openadsdk/j/e;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/bytedance/sdk/openadsdk/j/e;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/d/a;)Lcom/bytedance/sdk/openadsdk/core/e/i;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    return-object p0
.end method

.method private b()V
    .locals 4

    .line 98
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->m:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getExpectExpressWidth()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->m:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    .line 99
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getExpectExpressHeight()I

    move-result v1

    .line 98
    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->a(II)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->m:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getExpectExpressWidth()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->m:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    .line 102
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getExpectExpressHeight()I

    move-result v1

    if-lez v1, :cond_1

    .line 103
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->m:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getExpectExpressWidth()I

    move-result v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->m:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getExpectExpressHeight()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 104
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->m:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getExpectExpressHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->b:F

    mul-float v2, v2, v3

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ag;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->f:I

    .line 105
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->m:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getExpectExpressHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ag;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->g:I

    goto :goto_0

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->m:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getExpectExpressWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ag;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->f:I

    .line 108
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->m:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getExpectExpressWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->b:F

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ag;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->g:I

    goto :goto_0

    .line 111
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->c:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ag;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->f:I

    .line 112
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->d:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ag;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->g:I

    .line 116
    :goto_0
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->f:I

    if-lez v1, :cond_2

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->f:I

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/ag;->c(Landroid/content/Context;)I

    move-result v2

    if-le v1, v2, :cond_2

    .line 117
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ag;->c(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->f:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 118
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/ag;->c(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->f:I

    .line 119
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->g:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->g:I

    .line 123
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/a;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_3

    .line 125
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->f:I

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->g:I

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 127
    :cond_3
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->f:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 128
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->g:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 129
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->a:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    .line 133
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->a:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 134
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/d/a;->d()V

    return-void

    .line 135
    :cond_4
    iget v0, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 136
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/d/a;->e()V

    return-void

    .line 138
    :cond_5
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()V

    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 199
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/d/a$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/d/a$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/a;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/core/d/a;)Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->e:Ljava/lang/String;

    return-object p0
.end method

.method private c()V
    .locals 11

    .line 149
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    const-string v2, "tt_backup_insert_layout1"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/x;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->l:Landroid/view/View;

    .line 152
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    const-string v3, "tt_bu_img"

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 153
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->l:Landroid/view/View;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    const-string v4, "tt_bu_close"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 154
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->l:Landroid/view/View;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    const-string v5, "tt_bu_icon"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 155
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->l:Landroid/view/View;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    const-string v6, "tt_bu_title"

    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 156
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->l:Landroid/view/View;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    const-string v7, "tt_bu_desc"

    invoke-static {v6, v7}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 157
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->l:Landroid/view/View;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    const-string v8, "tt_bu_download"

    invoke-static {v7, v8}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 158
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->l:Landroid/view/View;

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    const-string v9, "tt_bu_dislike"

    invoke-static {v8, v9}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 161
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->l:Landroid/view/View;

    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    const-string v10, "tt_backup_logoLayout"

    invoke-static {v9, v10}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 163
    new-instance v9, Lcom/bytedance/sdk/openadsdk/core/d/a$1;

    invoke-direct {v9, p0}, Lcom/bytedance/sdk/openadsdk/core/d/a$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/a;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    :cond_0
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    const/high16 v9, 0x41700000    # 15.0f

    invoke-static {v8, v9}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/content/Context;F)F

    move-result v8

    float-to-int v8, v8

    .line 173
    invoke-static {v1, v8, v8, v8, v8}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;IIII)V

    .line 174
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->b(Landroid/view/View;)V

    .line 175
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/d/a$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/d/a$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/a;)V

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->O()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 182
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->O()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    :cond_1
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/d/a;->a(Landroid/widget/ImageView;)V

    .line 186
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->c()Lcom/bytedance/sdk/openadsdk/j/e;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->E()Lcom/bytedance/sdk/openadsdk/core/e/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/j/e;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 187
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/a;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/a;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    invoke-virtual {p0, p0, v2}, Lcom/bytedance/sdk/openadsdk/core/d/a;->a(Landroid/view/View;Z)V

    .line 191
    invoke-virtual {p0, v6, v2}, Lcom/bytedance/sdk/openadsdk/core/d/a;->a(Landroid/view/View;Z)V

    .line 192
    invoke-virtual {p0, v7, v2}, Lcom/bytedance/sdk/openadsdk/core/d/a;->a(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/core/d/a;)Landroid/app/Dialog;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->p:Landroid/app/Dialog;

    return-object p0
.end method

.method private d()V
    .locals 16

    move-object/from16 v0, p0

    .line 212
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    if-eqz v1, :cond_a

    .line 213
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->T()I

    move-result v1

    .line 217
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    const-string v4, "tt_backup_insert_layout2_3"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/x;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->l:Landroid/view/View;

    .line 218
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    const-string v5, "tt_bu_score_bar"

    invoke-static {v3, v5}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;

    .line 219
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->l:Landroid/view/View;

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    const-string v6, "ratio_frame_layout"

    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/core/widget/RatioFrameLayout;

    .line 220
    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->l:Landroid/view/View;

    iget-object v6, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    const-string v7, "tt_bu_close"

    invoke-static {v6, v7}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 221
    iget-object v6, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->l:Landroid/view/View;

    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    const-string v8, "tt_bu_icon"

    invoke-static {v7, v8}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 222
    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->l:Landroid/view/View;

    iget-object v8, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    const-string v9, "tt_bu_title"

    invoke-static {v8, v9}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 223
    iget-object v8, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->l:Landroid/view/View;

    iget-object v9, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    const-string v10, "tt_bu_desc"

    invoke-static {v9, v10}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 224
    iget-object v9, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->l:Landroid/view/View;

    iget-object v10, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    const-string v11, "tt_bu_download"

    invoke-static {v10, v11}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 225
    iget-object v10, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->l:Landroid/view/View;

    iget-object v11, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    const-string v12, "tt_bu_dislike"

    invoke-static {v11, v12}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 231
    iget-object v11, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->l:Landroid/view/View;

    iget-object v12, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    const-string v13, "tt_backup_logoLayout"

    invoke-static {v12, v13}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 233
    new-instance v12, Lcom/bytedance/sdk/openadsdk/core/d/a$4;

    invoke-direct {v12, v0}, Lcom/bytedance/sdk/openadsdk/core/d/a$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/a;)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    :cond_0
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/widget/RatioFrameLayout;->removeAllViews()V

    .line 243
    iget-object v11, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/core/e/i;->B()Lcom/bytedance/sdk/openadsdk/core/e/o;

    move-result-object v11

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, -0x1

    const/16 v14, 0x8

    const/4 v15, 0x0

    if-nez v11, :cond_2

    const/4 v11, 0x3

    if-ne v1, v11, :cond_1

    const v11, 0x3ff47ae1    # 1.91f

    .line 247
    invoke-virtual {v3, v11}, Lcom/bytedance/sdk/openadsdk/core/widget/RatioFrameLayout;->setRatio(F)V

    .line 248
    invoke-virtual {v2, v15}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->setVisibility(I)V

    goto :goto_0

    .line 250
    :cond_1
    invoke-virtual {v3, v12}, Lcom/bytedance/sdk/openadsdk/core/widget/RatioFrameLayout;->setRatio(F)V

    .line 251
    invoke-virtual {v2, v14}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->setVisibility(I)V

    .line 252
    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 254
    :goto_0
    new-instance v11, Landroid/widget/ImageView;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/widget/RatioFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 255
    invoke-virtual {v11, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 256
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v12, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 257
    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    invoke-virtual {v3, v11}, Lcom/bytedance/sdk/openadsdk/core/widget/RatioFrameLayout;->addView(Landroid/view/View;)V

    .line 259
    invoke-direct {v0, v11}, Lcom/bytedance/sdk/openadsdk/core/d/a;->a(Landroid/widget/ImageView;)V

    goto :goto_2

    :cond_2
    const/4 v11, 0x5

    const v4, 0x3fe38e39

    if-ne v1, v11, :cond_3

    .line 263
    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/widget/RatioFrameLayout;->setRatio(F)V

    .line 264
    invoke-virtual {v2, v15}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->setVisibility(I)V

    goto :goto_1

    :cond_3
    const/16 v11, 0x32

    if-ne v1, v11, :cond_4

    .line 266
    invoke-virtual {v3, v12}, Lcom/bytedance/sdk/openadsdk/core/widget/RatioFrameLayout;->setRatio(F)V

    .line 267
    invoke-virtual {v2, v14}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->setVisibility(I)V

    .line 268
    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_4
    const/16 v11, 0xf

    if-ne v1, v11, :cond_5

    .line 270
    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/widget/RatioFrameLayout;->setRatio(F)V

    .line 271
    invoke-virtual {v2, v15}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->setVisibility(I)V

    .line 273
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/widget/RatioFrameLayout;

    iget-object v11, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->l:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v4, v11}, Lcom/bytedance/sdk/openadsdk/core/widget/RatioFrameLayout;-><init>(Landroid/content/Context;)V

    .line 274
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v12, -0x2

    invoke-direct {v11, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/high16 v12, 0x3f100000    # 0.5625f

    .line 275
    invoke-virtual {v4, v12}, Lcom/bytedance/sdk/openadsdk/core/widget/RatioFrameLayout;->setRatio(F)V

    .line 276
    invoke-virtual {v3, v4, v11}, Lcom/bytedance/sdk/openadsdk/core/widget/RatioFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v3, v4

    .line 281
    :cond_5
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/d/a;->getVideoView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 283
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v11, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 284
    invoke-virtual {v3, v4, v11}, Lcom/bytedance/sdk/openadsdk/core/widget/RatioFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    :cond_6
    :goto_2
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    const/high16 v11, 0x41700000    # 15.0f

    invoke-static {v4, v11}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/content/Context;F)F

    move-result v4

    float-to-int v4, v4

    .line 291
    invoke-static {v5, v4, v4, v4, v4}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;IIII)V

    .line 292
    invoke-direct {v0, v5}, Lcom/bytedance/sdk/openadsdk/core/d/a;->b(Landroid/view/View;)V

    .line 293
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/d/a$5;

    invoke-direct {v4, v0}, Lcom/bytedance/sdk/openadsdk/core/d/a$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/a;)V

    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/e/i;->O()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    const/16 v4, 0x21

    if-eq v1, v4, :cond_7

    .line 301
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->O()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 304
    :cond_7
    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 307
    :goto_3
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->Q()Lcom/bytedance/sdk/openadsdk/core/e/b;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 308
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/b;->d()I

    move-result v4

    if-gtz v4, :cond_8

    goto :goto_4

    .line 311
    :cond_8
    invoke-virtual {v2, v15}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->setVisibility(I)V

    .line 312
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/b;->d()I

    move-result v1

    const/4 v4, 0x1

    .line 313
    invoke-virtual {v2, v4}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->setStarEmptyNum(I)V

    .line 314
    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->setStarFillNum(I)V

    .line 315
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    invoke-static {v1, v11}, Lcom/bytedance/sdk/openadsdk/utils/ag;->c(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->setStarImageWidth(F)V

    .line 316
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {v1, v4}, Lcom/bytedance/sdk/openadsdk/utils/ag;->c(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->setStarImageHeight(F)V

    .line 317
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v1, v4}, Lcom/bytedance/sdk/openadsdk/utils/ag;->c(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->setStarImagePadding(F)V

    .line 318
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->a()V

    goto :goto_5

    .line 309
    :cond_9
    :goto_4
    invoke-virtual {v2, v14}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->setVisibility(I)V

    .line 320
    :goto_5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->c()Lcom/bytedance/sdk/openadsdk/j/e;

    move-result-object v1

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/e/i;->E()Lcom/bytedance/sdk/openadsdk/core/e/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/e/h;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v6}, Lcom/bytedance/sdk/openadsdk/j/e;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 321
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/d/a;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/d/a;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 324
    invoke-virtual {v0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->a(Landroid/view/View;Z)V

    .line 325
    invoke-virtual {v0, v9, v1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->a(Landroid/view/View;Z)V

    .line 326
    invoke-virtual {v0, v10, v1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->a(Landroid/view/View;Z)V

    .line 327
    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/d/a;->a(Landroid/view/View;)V

    :cond_a
    return-void
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/core/d/a;)Landroid/content/Context;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    return-object p0
.end method

.method private e()V
    .locals 18

    move-object/from16 v0, p0

    .line 334
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    if-eqz v1, :cond_17

    .line 335
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->T()I

    move-result v1

    .line 340
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/e/i;->B()Lcom/bytedance/sdk/openadsdk/core/e/o;

    move-result-object v2

    const-string v4, "tt_backup_logoLayout"

    const-string v5, "tt_score_val"

    const-string v6, "tt_bu_dislike"

    const-string v7, "tt_bu_download"

    const-string v8, "tt_bu_desc"

    const-string v9, "tt_bu_title"

    const-string v10, "tt_bu_icon"

    const-string v11, "tt_bu_close"

    const-string v12, "tt_bu_score_bar"

    const-string v14, "tt_backup_insert_layout3_2_image_1_1"

    const-string v15, "tt_backup_insert_layout3_2_image_191_1"

    const-string v3, "ratio_frame_layout"

    const/4 v13, 0x1

    if-nez v2, :cond_b

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 343
    iget-object v14, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    invoke-static {v14}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    invoke-static {v2, v15}, Lcom/bytedance/sdk/openadsdk/utils/x;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v14, v2, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->l:Landroid/view/View;

    goto :goto_0

    :cond_0
    const/16 v2, 0x21

    if-ne v1, v2, :cond_1

    .line 345
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v15, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    invoke-static {v15, v14}, Lcom/bytedance/sdk/openadsdk/utils/x;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v2, v14, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->l:Landroid/view/View;

    .line 348
    :cond_1
    :goto_0
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->l:Landroid/view/View;

    if-nez v2, :cond_2

    return-void

    .line 352
    :cond_2
    iget-object v14, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    invoke-static {v14, v12}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v2, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;

    .line 353
    iget-object v12, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->l:Landroid/view/View;

    iget-object v14, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    invoke-static {v14, v3}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v12, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/core/widget/RatioFrameLayout;

    const/4 v12, 0x3

    if-ne v1, v12, :cond_3

    const v1, 0x3ff47ae1    # 1.91f

    .line 356
    invoke-virtual {v3, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/RatioFrameLayout;->setRatio(F)V

    goto :goto_1

    :cond_3
    const/16 v12, 0x21

    if-ne v1, v12, :cond_4

    const/high16 v1, 0x3f800000    # 1.0f

    .line 358
    invoke-virtual {v3, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/RatioFrameLayout;->setRatio(F)V

    .line 360
    :cond_4
    :goto_1
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->l:Landroid/view/View;

    iget-object v12, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    invoke-static {v12, v11}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 361
    iget-object v11, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->l:Landroid/view/View;

    iget-object v12, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    invoke-static {v12, v10}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v11, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 362
    iget-object v11, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->l:Landroid/view/View;

    iget-object v12, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    invoke-static {v12, v9}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v11, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 363
    iget-object v11, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->l:Landroid/view/View;

    iget-object v12, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    invoke-static {v12, v8}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v11, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 364
    iget-object v11, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->l:Landroid/view/View;

    iget-object v12, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    invoke-static {v12, v7}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v11, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 365
    iget-object v11, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->l:Landroid/view/View;

    iget-object v12, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    invoke-static {v12, v6}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v11, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 368
    iget-object v11, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->l:Landroid/view/View;

    iget-object v12, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    invoke-static {v12, v5}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v11, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 371
    iget-object v11, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->l:Landroid/view/View;

    iget-object v12, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    invoke-static {v12, v4}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v11, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 373
    new-instance v11, Lcom/bytedance/sdk/openadsdk/core/d/a$6;

    invoke-direct {v11, v0}, Lcom/bytedance/sdk/openadsdk/core/d/a$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/a;)V

    invoke-virtual {v4, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    :cond_5
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    const/high16 v11, 0x41700000    # 15.0f

    invoke-static {v4, v11}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/content/Context;F)F

    move-result v4

    float-to-int v4, v4

    .line 383
    invoke-static {v1, v4, v4, v4, v4}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;IIII)V

    .line 384
    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->b(Landroid/view/View;)V

    .line 385
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/d/a$7;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/d/a$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/a;)V

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 392
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->O()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 393
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->O()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 394
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    const/16 v4, 0x8

    .line 396
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    if-eqz v2, :cond_9

    .line 400
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/e/i;->Q()Lcom/bytedance/sdk/openadsdk/core/e/b;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 401
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/e/b;->d()I

    move-result v11

    if-gtz v11, :cond_7

    goto :goto_3

    .line 404
    :cond_7
    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->setVisibility(I)V

    .line 405
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/e/b;->d()I

    move-result v1

    .line 406
    invoke-virtual {v2, v13}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->setStarEmptyNum(I)V

    .line 407
    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->setStarFillNum(I)V

    .line 408
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    const/high16 v11, 0x41700000    # 15.0f

    invoke-static {v4, v11}, Lcom/bytedance/sdk/openadsdk/utils/ag;->c(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->setStarImageWidth(F)V

    .line 409
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    const/high16 v11, 0x41600000    # 14.0f

    invoke-static {v4, v11}, Lcom/bytedance/sdk/openadsdk/utils/ag;->c(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->setStarImageHeight(F)V

    .line 410
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    const/high16 v11, 0x40800000    # 4.0f

    invoke-static {v4, v11}, Lcom/bytedance/sdk/openadsdk/utils/ag;->c(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->setStarImagePadding(F)V

    .line 411
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->a()V

    if-eqz v5, :cond_9

    .line 414
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    new-array v4, v13, [Ljava/lang/Object;

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v11, 0x0

    aput-object v1, v4, v11

    const-string v1, "%.1f"

    invoke-static {v2, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_8
    :goto_3
    const/16 v1, 0x8

    .line 402
    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->setVisibility(I)V

    .line 419
    :cond_9
    :goto_4
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->l:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 420
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 421
    invoke-virtual {v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/RatioFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 422
    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->a(Landroid/widget/ImageView;)V

    .line 423
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->c()Lcom/bytedance/sdk/openadsdk/j/e;

    move-result-object v1

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/e/i;->E()Lcom/bytedance/sdk/openadsdk/core/e/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/e/h;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v10}, Lcom/bytedance/sdk/openadsdk/j/e;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    if-eqz v9, :cond_a

    .line 425
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/d/a;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/d/a;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    invoke-virtual {v0, v0, v13}, Lcom/bytedance/sdk/openadsdk/core/d/a;->a(Landroid/view/View;Z)V

    .line 430
    invoke-virtual {v0, v7, v13}, Lcom/bytedance/sdk/openadsdk/core/d/a;->a(Landroid/view/View;Z)V

    .line 431
    invoke-virtual {v0, v6, v13}, Lcom/bytedance/sdk/openadsdk/core/d/a;->a(Landroid/view/View;Z)V

    return-void

    .line 434
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/d/a;->getVideoView()Landroid/view/View;

    move-result-object v2

    const/16 v16, 0x0

    const/4 v13, 0x5

    move-object/from16 v17, v4

    const v4, 0x3fe38e39

    if-ne v1, v13, :cond_c

    .line 438
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v13, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    invoke-static {v13, v15}, Lcom/bytedance/sdk/openadsdk/utils/x;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x1

    invoke-virtual {v1, v13, v0, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->l:Landroid/view/View;

    .line 439
    iget-object v13, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    invoke-static {v13, v3}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/widget/RatioFrameLayout;

    .line 440
    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/openadsdk/core/widget/RatioFrameLayout;->setRatio(F)V

    goto :goto_5

    :cond_c
    const/16 v13, 0x32

    if-ne v1, v13, :cond_d

    .line 443
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    invoke-static {v4, v14}, Lcom/bytedance/sdk/openadsdk/utils/x;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    const/4 v13, 0x1

    invoke-virtual {v1, v4, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->l:Landroid/view/View;

    .line 444
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/widget/RatioFrameLayout;

    const/high16 v3, 0x3f800000    # 1.0f

    .line 445
    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/RatioFrameLayout;->setRatio(F)V

    goto :goto_5

    :cond_d
    const/16 v13, 0xf

    if-ne v1, v13, :cond_e

    .line 447
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v13, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    invoke-static {v13, v15}, Lcom/bytedance/sdk/openadsdk/utils/x;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x1

    invoke-virtual {v1, v13, v0, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->l:Landroid/view/View;

    .line 448
    iget-object v13, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    invoke-static {v13, v3}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/widget/RatioFrameLayout;

    .line 449
    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/openadsdk/core/widget/RatioFrameLayout;->setRatio(F)V

    .line 452
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/widget/RatioFrameLayout;

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->l:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/widget/RatioFrameLayout;-><init>(Landroid/content/Context;)V

    .line 453
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v13, -0x2

    const/4 v14, -0x1

    invoke-direct {v4, v13, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v13, 0x11

    .line 454
    iput v13, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/high16 v13, 0x3f100000    # 0.5625f

    .line 455
    invoke-virtual {v3, v13}, Lcom/bytedance/sdk/openadsdk/core/widget/RatioFrameLayout;->setRatio(F)V

    .line 456
    invoke-virtual {v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/widget/RatioFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v1, v3

    goto :goto_5

    :cond_e
    move-object/from16 v1, v16

    .line 461
    :goto_5
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->l:Landroid/view/View;

    if-eqz v3, :cond_17

    if-nez v1, :cond_f

    goto/16 :goto_9

    :cond_f
    if-eqz v2, :cond_10

    .line 466
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 468
    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/RatioFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 471
    :cond_10
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->l:Landroid/view/View;

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    invoke-static {v3, v12}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;

    .line 473
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->l:Landroid/view/View;

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    invoke-static {v4, v11}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 474
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->l:Landroid/view/View;

    iget-object v11, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    invoke-static {v11, v10}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 475
    iget-object v10, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->l:Landroid/view/View;

    iget-object v11, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    invoke-static {v11, v9}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v10, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 476
    iget-object v10, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->l:Landroid/view/View;

    iget-object v11, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    invoke-static {v11, v8}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v10, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 477
    iget-object v10, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->l:Landroid/view/View;

    iget-object v11, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    invoke-static {v11, v7}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v10, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 478
    iget-object v10, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->l:Landroid/view/View;

    iget-object v11, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    invoke-static {v11, v6}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v10, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 479
    iget-object v10, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->l:Landroid/view/View;

    iget-object v11, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    invoke-static {v11, v5}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v10, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 482
    iget-object v10, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->l:Landroid/view/View;

    iget-object v11, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    move-object/from16 v12, v17

    invoke-static {v11, v12}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_11

    .line 484
    new-instance v11, Lcom/bytedance/sdk/openadsdk/core/d/a$8;

    invoke-direct {v11, v0}, Lcom/bytedance/sdk/openadsdk/core/d/a$8;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/a;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 493
    :cond_11
    iget-object v10, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    const/high16 v11, 0x41700000    # 15.0f

    invoke-static {v10, v11}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/content/Context;F)F

    move-result v10

    float-to-int v10, v10

    .line 494
    invoke-static {v3, v10, v10, v10, v10}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;IIII)V

    .line 495
    invoke-direct {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/d/a;->b(Landroid/view/View;)V

    .line 496
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/d/a$9;

    invoke-direct {v3, v0}, Lcom/bytedance/sdk/openadsdk/core/d/a$9;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/a;)V

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 503
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/e/i;->O()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 504
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/e/i;->O()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    .line 505
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    :cond_12
    const/4 v3, 0x0

    const/16 v10, 0x8

    .line 507
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_6
    if-eqz v2, :cond_15

    .line 511
    iget-object v10, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v10}, Lcom/bytedance/sdk/openadsdk/core/e/i;->Q()Lcom/bytedance/sdk/openadsdk/core/e/b;

    move-result-object v10

    if-eqz v10, :cond_14

    .line 512
    invoke-virtual {v10}, Lcom/bytedance/sdk/openadsdk/core/e/b;->d()I

    move-result v11

    if-gtz v11, :cond_13

    goto :goto_7

    .line 515
    :cond_13
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->setVisibility(I)V

    .line 516
    invoke-virtual {v10}, Lcom/bytedance/sdk/openadsdk/core/e/b;->d()I

    move-result v3

    const/4 v10, 0x1

    .line 517
    invoke-virtual {v2, v10}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->setStarEmptyNum(I)V

    .line 518
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->setStarFillNum(I)V

    .line 519
    iget-object v10, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    const/high16 v11, 0x41700000    # 15.0f

    invoke-static {v10, v11}, Lcom/bytedance/sdk/openadsdk/utils/ag;->c(Landroid/content/Context;F)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v2, v10}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->setStarImageWidth(F)V

    .line 520
    iget-object v10, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    const/high16 v11, 0x41600000    # 14.0f

    invoke-static {v10, v11}, Lcom/bytedance/sdk/openadsdk/utils/ag;->c(Landroid/content/Context;F)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v2, v10}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->setStarImageHeight(F)V

    .line 521
    iget-object v10, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    const/high16 v11, 0x40800000    # 4.0f

    invoke-static {v10, v11}, Lcom/bytedance/sdk/openadsdk/utils/ag;->c(Landroid/content/Context;F)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v2, v10}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->setStarImagePadding(F)V

    .line 522
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->a()V

    if-eqz v5, :cond_15

    .line 525
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v10, 0x0

    aput-object v3, v11, v10

    const-string v3, "%.1f"

    invoke-static {v2, v3, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_14
    :goto_7
    const/16 v3, 0x8

    .line 513
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->setVisibility(I)V

    .line 530
    :cond_15
    :goto_8
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->c()Lcom/bytedance/sdk/openadsdk/j/e;

    move-result-object v2

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/d/a;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/e/i;->E()Lcom/bytedance/sdk/openadsdk/core/e/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/e/h;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/j/e;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    if-eqz v9, :cond_16

    .line 532
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/d/a;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 534
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/d/a;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x1

    .line 536
    invoke-virtual {v0, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/d/a;->a(Landroid/view/View;Z)V

    .line 537
    invoke-virtual {v0, v7, v2}, Lcom/bytedance/sdk/openadsdk/core/d/a;->a(Landroid/view/View;Z)V

    .line 538
    invoke-virtual {v0, v6, v2}, Lcom/bytedance/sdk/openadsdk/core/d/a;->a(Landroid/view/View;Z)V

    .line 539
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->a(Landroid/view/View;)V

    :cond_17
    :goto_9
    return-void
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/core/d/a;)Lcom/bytedance/sdk/openadsdk/core/e/i;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    return-object p0
.end method

.method static synthetic g(Lcom/bytedance/sdk/openadsdk/core/d/a;)Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lcom/bytedance/sdk/openadsdk/core/d/a;)Landroid/content/Context;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic i(Lcom/bytedance/sdk/openadsdk/core/d/a;)Lcom/bytedance/sdk/openadsdk/core/e/i;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    return-object p0
.end method

.method static synthetic j(Lcom/bytedance/sdk/openadsdk/core/d/a;)Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic k(Lcom/bytedance/sdk/openadsdk/core/d/a;)Landroid/content/Context;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic l(Lcom/bytedance/sdk/openadsdk/core/d/a;)Lcom/bytedance/sdk/openadsdk/core/e/i;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    return-object p0
.end method

.method static synthetic m(Lcom/bytedance/sdk/openadsdk/core/d/a;)Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->e:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(ILcom/bytedance/sdk/openadsdk/core/e/g;)V
    .locals 1

    .line 568
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->m:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    if-eqz v0, :cond_0

    .line 569
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->a(ILcom/bytedance/sdk/openadsdk/core/e/g;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/app/Dialog;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->p:Landroid/app/Dialog;

    return-void
.end method

.method a(Lcom/bytedance/sdk/openadsdk/core/e/i;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/a/a/a/a/a/c;)V
    .locals 1

    const/4 v0, -0x1

    .line 84
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/d/a;->setBackgroundColor(I)V

    .line 85
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    .line 86
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->m:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    .line 87
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->n:Lcom/a/a/a/a/a/c;

    const-string p1, "interaction"

    .line 88
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->e:Ljava/lang/String;

    .line 89
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->h:I

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->a(I)V

    .line 90
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->m:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 p3, -0x2

    invoke-direct {p2, p3, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p0, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/d/a;->b()V

    return-void
.end method
