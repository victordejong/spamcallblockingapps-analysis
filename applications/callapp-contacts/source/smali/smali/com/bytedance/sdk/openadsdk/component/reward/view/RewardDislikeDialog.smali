.class public Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

.field private c:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

.field private d:Landroid/widget/RelativeLayout;

.field private e:Landroid/view/View;

.field private f:Lcom/bytedance/sdk/openadsdk/dislike/c$b;

.field private g:Lcom/bytedance/sdk/openadsdk/dislike/c$b;

.field private h:Lcom/bytedance/sdk/openadsdk/core/e/i;

.field private i:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$a;

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 41
    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->j:Z

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;-><init>(Landroid/content/Context;)V

    .line 45
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->h:Lcom/bytedance/sdk/openadsdk/core/e/i;

    .line 46
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->c()V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 p2, 0x1

    .line 63
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->setClickable(Z)V

    .line 64
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "#80000000"

    .line 70
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->setBackgroundColor(I)V

    const-string v0, "tt_dislike_dialog_layout"

    .line 71
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/x;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 72
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->a:Landroid/view/View;

    .line 73
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x11

    .line 75
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 76
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ag;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 77
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ag;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 78
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->a:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    .line 81
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->d()V

    .line 82
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->c()V

    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/FilterWord;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->g:Lcom/bytedance/sdk/openadsdk/dislike/c$b;

    if-eqz v0, :cond_1

    .line 218
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/FilterWord;->getOptions()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/dislike/c$b;->a(Ljava/util/List;)V

    .line 221
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->d:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 222
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 224
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->e:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 225
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 227
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->b:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    if-eqz p1, :cond_4

    const/16 v1, 0x8

    .line 228
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->setVisibility(I)V

    .line 230
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->c:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    if-eqz p1, :cond_5

    .line 231
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->e()V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;Lcom/bytedance/sdk/openadsdk/FilterWord;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->a(Lcom/bytedance/sdk/openadsdk/FilterWord;)V

    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;)Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$a;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->i:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$a;

    return-object p0
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;)Lcom/bytedance/sdk/openadsdk/core/e/i;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->h:Lcom/bytedance/sdk/openadsdk/core/e/i;

    return-object p0
.end method

.method private c()V
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->h:Lcom/bytedance/sdk/openadsdk/core/e/i;

    if-nez v0, :cond_0

    return-void

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 90
    new-instance v1, Lcom/bytedance/sdk/openadsdk/dislike/c$b;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->h:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/e/i;->U()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/dislike/c$b;-><init>(Landroid/view/LayoutInflater;Ljava/util/List;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->f:Lcom/bytedance/sdk/openadsdk/dislike/c$b;

    .line 91
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->b:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 93
    new-instance v1, Lcom/bytedance/sdk/openadsdk/dislike/c$b;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/dislike/c$b;-><init>(Landroid/view/LayoutInflater;Ljava/util/List;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->g:Lcom/bytedance/sdk/openadsdk/dislike/c$b;

    const/4 v0, 0x0

    .line 94
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/dislike/c$b;->a(Z)V

    .line 95
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->c:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->g:Lcom/bytedance/sdk/openadsdk/dislike/c$b;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 97
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->b:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->h:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->setMaterialMeta(Lcom/bytedance/sdk/openadsdk/core/e/i;)V

    .line 98
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->c:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->h:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->setMaterialMeta(Lcom/bytedance/sdk/openadsdk/core/e/i;)V

    return-void
.end method

.method private d()V
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tt_dislike_title_content"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->d:Landroid/widget/RelativeLayout;

    .line 103
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tt_dislike_line1"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->e:Landroid/view/View;

    .line 104
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tt_dislike_header_back"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tt_filer_words_lv"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->b:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    .line 116
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 146
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tt_filer_words_lv_second"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->c:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    .line 147
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$4;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private e()V
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->d:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->e:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 198
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->b:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    .line 201
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->setVisibility(I)V

    .line 204
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->g:Lcom/bytedance/sdk/openadsdk/dislike/c$b;

    if-eqz v0, :cond_3

    .line 205
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/dislike/c$b;->a()V

    .line 207
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->c:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    if-eqz v0, :cond_4

    .line 208
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->setVisibility(I)V

    :cond_4
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->addView(Landroid/view/View;)V

    .line 167
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->e()V

    const/4 v0, 0x0

    .line 168
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->setVisibility(I)V

    const/4 v0, 0x1

    .line 169
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->j:Z

    .line 171
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->i:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$a;

    if-eqz v0, :cond_1

    .line 172
    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$a;->a(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 1

    const/16 v0, 0x8

    .line 177
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->setVisibility(I)V

    const/4 v0, 0x0

    .line 178
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->j:Z

    .line 180
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->i:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$a;

    if-eqz v0, :cond_0

    .line 181
    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$a;->b(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setCallback(Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$a;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog;->i:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialog$a;

    return-void
.end method
