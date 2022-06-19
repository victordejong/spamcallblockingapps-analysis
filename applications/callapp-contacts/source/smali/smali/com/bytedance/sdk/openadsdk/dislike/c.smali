.class public Lcom/bytedance/sdk/openadsdk/dislike/c;
.super Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/dislike/c$a;,
        Lcom/bytedance/sdk/openadsdk/dislike/c$b;
    }
.end annotation


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

.field private b:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

.field private c:Landroid/widget/RelativeLayout;

.field private d:Landroid/view/View;

.field private e:Lcom/bytedance/sdk/openadsdk/dislike/c$b;

.field private f:Lcom/bytedance/sdk/openadsdk/dislike/c$b;

.field private g:Lcom/bytedance/sdk/openadsdk/core/e/i;

.field private h:Lcom/bytedance/sdk/openadsdk/dislike/c$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;)V
    .locals 1

    const-string v0, "tt_dislikeDialog"

    .line 43
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/x;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;-><init>(Landroid/content/Context;I)V

    .line 44
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->g:Lcom/bytedance/sdk/openadsdk/core/e/i;

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/dislike/c;)Lcom/bytedance/sdk/openadsdk/dislike/c$a;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->h:Lcom/bytedance/sdk/openadsdk/dislike/c$a;

    return-object p0
.end method

.method private a()V
    .locals 3

    .line 101
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x50

    .line 103
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 104
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x32

    .line 105
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 106
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .line 138
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "tt_dislike_title_content"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/dislike/c;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->c:Landroid/widget/RelativeLayout;

    .line 139
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "tt_dislike_line1"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/dislike/c;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->d:Landroid/view/View;

    .line 140
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "tt_dislike_header_back"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/dislike/c;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/dislike/c$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/dislike/c$3;-><init>(Lcom/bytedance/sdk/openadsdk/dislike/c;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "tt_filer_words_lv"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/dislike/c;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->a:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    .line 152
    new-instance v0, Lcom/bytedance/sdk/openadsdk/dislike/c$4;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/dislike/c$4;-><init>(Lcom/bytedance/sdk/openadsdk/dislike/c;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 182
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "tt_filer_words_lv_second"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/dislike/c;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->b:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    .line 183
    new-instance v0, Lcom/bytedance/sdk/openadsdk/dislike/c$5;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/dislike/c$5;-><init>(Lcom/bytedance/sdk/openadsdk/dislike/c;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/FilterWord;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->f:Lcom/bytedance/sdk/openadsdk/dislike/c$b;

    if-eqz v0, :cond_1

    .line 224
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/FilterWord;->getOptions()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/dislike/c$b;->a(Ljava/util/List;)V

    .line 227
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->c:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 228
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 230
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->d:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 231
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 233
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->a:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    if-eqz p1, :cond_4

    const/16 v1, 0x8

    .line 234
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->setVisibility(I)V

    .line 236
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->b:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    if-eqz p1, :cond_5

    .line 237
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/dislike/c;Lcom/bytedance/sdk/openadsdk/FilterWord;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/dislike/c;->a(Lcom/bytedance/sdk/openadsdk/FilterWord;)V

    return-void
.end method

.method private b()V
    .locals 3

    .line 111
    new-instance v0, Lcom/bytedance/sdk/openadsdk/dislike/c$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/dislike/c$1;-><init>(Lcom/bytedance/sdk/openadsdk/dislike/c;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 119
    new-instance v0, Lcom/bytedance/sdk/openadsdk/dislike/c$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/dislike/c$2;-><init>(Lcom/bytedance/sdk/openadsdk/dislike/c;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 128
    new-instance v0, Lcom/bytedance/sdk/openadsdk/dislike/c$b;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->g:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/e/i;->U()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/dislike/c$b;-><init>(Landroid/view/LayoutInflater;Ljava/util/List;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->e:Lcom/bytedance/sdk/openadsdk/dislike/c$b;

    .line 129
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->a:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 131
    new-instance v0, Lcom/bytedance/sdk/openadsdk/dislike/c$b;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/dislike/c$b;-><init>(Landroid/view/LayoutInflater;Ljava/util/List;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->f:Lcom/bytedance/sdk/openadsdk/dislike/c$b;

    const/4 v1, 0x0

    .line 132
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dislike/c$b;->a(Z)V

    .line 133
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->b:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->f:Lcom/bytedance/sdk/openadsdk/dislike/c$b;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/dislike/c;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->c()V

    return-void
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/dislike/c;)Lcom/bytedance/sdk/openadsdk/core/e/i;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->g:Lcom/bytedance/sdk/openadsdk/core/e/i;

    return-object p0
.end method

.method private c()V
    .locals 3

    .line 200
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->c:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->d:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 204
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->a:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    .line 207
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->setVisibility(I)V

    .line 210
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->f:Lcom/bytedance/sdk/openadsdk/dislike/c$b;

    if-eqz v0, :cond_3

    .line 211
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/dislike/c$b;->a()V

    .line 213
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->b:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    if-eqz v0, :cond_4

    .line 214
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->setVisibility(I)V

    :cond_4
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/core/e/i;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->e:Lcom/bytedance/sdk/openadsdk/dislike/c$b;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->g:Lcom/bytedance/sdk/openadsdk/core/e/i;

    .line 53
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->U()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/dislike/c$b;->a(Ljava/util/List;)V

    .line 55
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->g:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/dislike/c;->setMaterialMeta(Lcom/bytedance/sdk/openadsdk/core/e/i;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/dislike/c$a;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->h:Lcom/bytedance/sdk/openadsdk/dislike/c$a;

    return-void
.end method

.method public getLayoutId()I
    .locals 2

    .line 77
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_dislike_dialog_layout"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/x;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .line 90
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ag;->c(Landroid/content/Context;)I

    move-result v0

    add-int/lit8 v0, v0, -0x78

    .line 91
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v1
.end method

.method public getTTDislikeListViewIds()[I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 83
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tt_filer_words_lv"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 84
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tt_filer_words_lv_second"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 64
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 66
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/dislike/c;->setCanceledOnTouchOutside(Z)V

    .line 67
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/dislike/c;->setCancelable(Z)V

    .line 69
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->a()V

    .line 70
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/dislike/c;->a(Landroid/content/Context;)V

    .line 71
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->b()V

    .line 72
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c;->g:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/dislike/c;->setMaterialMeta(Lcom/bytedance/sdk/openadsdk/core/e/i;)V

    return-void
.end method

.method public show()V
    .locals 0

    .line 96
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->show()V

    .line 97
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->c()V

    return-void
.end method
