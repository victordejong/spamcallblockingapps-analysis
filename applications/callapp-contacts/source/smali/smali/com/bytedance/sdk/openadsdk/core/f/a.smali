.class public Lcom/bytedance/sdk/openadsdk/core/f/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTNativeAd;


# instance fields
.field private a:I

.field public final g:Lcom/bytedance/sdk/openadsdk/core/m;

.field protected final h:Lcom/bytedance/sdk/openadsdk/core/e/i;

.field protected final i:Landroid/content/Context;

.field protected j:Lcom/bytedance/sdk/openadsdk/TTAdDislike;

.field protected k:I

.field protected l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;I)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "materialMeta can\'t been null"

    .line 60
    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->h:Lcom/bytedance/sdk/openadsdk/core/e/i;

    .line 62
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->i:Landroid/content/Context;

    .line 63
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->k:I

    .line 64
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/m;

    invoke-direct {p0, p3}, Lcom/bytedance/sdk/openadsdk/core/f/a;->a(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p1, p0, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/m;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTNativeAd;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->g:Lcom/bytedance/sdk/openadsdk/core/m;

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    const-string v1, "embeded_ad"

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "draw_ad"

    goto :goto_0

    :cond_1
    const-string v1, "interaction"

    goto :goto_0

    :cond_2
    const-string v1, "banner_ad"

    :cond_3
    :goto_0
    return-object v1
.end method

.method private a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 118
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 119
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 120
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 122
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 126
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 127
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    :goto_1
    if-ge v1, p1, :cond_1

    .line 129
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method private a(Landroid/app/Activity;)V
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->i:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->i:Landroid/content/Context;

    .line 313
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/dislike/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->h:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-direct {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/dislike/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->j:Lcom/bytedance/sdk/openadsdk/TTAdDislike;

    return-void
.end method

.method private a(Z)V
    .locals 3

    .line 340
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->h:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->S()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/af;->d(Ljava/lang/String;)I

    move-result v0

    .line 341
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a/b;->b()Lcom/bytedance/sdk/openadsdk/i/a/b;

    move-result-object v1

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->k:I

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/i/a/b;->a(I)Lcom/bytedance/sdk/openadsdk/i/a/b;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/i/a/b;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/i/a/b;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 343
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a;->a()Lcom/bytedance/sdk/openadsdk/i/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/i/a;->c(Lcom/bytedance/sdk/openadsdk/i/a/b;)V

    return-void

    .line 345
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a;->a()Lcom/bytedance/sdk/openadsdk/i/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/i/a;->d(Lcom/bytedance/sdk/openadsdk/i/a/b;)V

    return-void
.end method

.method private a()Z
    .locals 3

    .line 351
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->h:Lcom/bytedance/sdk/openadsdk/core/e/i;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 354
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->D()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    return v1

    .line 358
    :cond_1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->a:I

    if-nez v0, :cond_2

    .line 359
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->h:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->S()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/af;->d(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->a:I

    .line 361
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v0

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->a:I

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/h/e;->d(I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    return v2

    :cond_3
    return v1
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .line 366
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->l:Ljava/lang/String;

    return-void
.end method

.method public getAdLogo()Landroid/graphics/Bitmap;
    .locals 3

    .line 149
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tt_ad_logo_small"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/x;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getAdLogoView()Landroid/view/View;
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->i:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "TTNativeAdImpl"

    const-string v1, "getAdLogoView mContext == null"

    .line 282
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 285
    :cond_0
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 286
    sget v1, Lcom/bytedance/sdk/openadsdk/R$drawable;->tt_ad_logo_small:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 287
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/f/a$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/f/a$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/f/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public getAdView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppCommentNum()I
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->h:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->Q()Lcom/bytedance/sdk/openadsdk/core/e/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->h:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->Q()Lcom/bytedance/sdk/openadsdk/core/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/b;->e()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAppScore()I
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->h:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->Q()Lcom/bytedance/sdk/openadsdk/core/e/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->h:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->Q()Lcom/bytedance/sdk/openadsdk/core/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/b;->d()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAppSize()I
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->h:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->Q()Lcom/bytedance/sdk/openadsdk/core/e/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->h:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->Q()Lcom/bytedance/sdk/openadsdk/core/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/b;->f()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getButtonText()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->h:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->O()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->h:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->M()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->h:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->M()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->h:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->N()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDislikeDialog(Landroid/app/Activity;)Lcom/bytedance/sdk/openadsdk/TTAdDislike;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->j:Lcom/bytedance/sdk/openadsdk/TTAdDislike;

    if-nez v0, :cond_0

    .line 246
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/f/a;->a(Landroid/app/Activity;)V

    .line 248
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->j:Lcom/bytedance/sdk/openadsdk/TTAdDislike;

    return-object p1
.end method

.method public getDislikeDialog(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)Lcom/bytedance/sdk/openadsdk/TTAdDislike;
    .locals 1

    if-eqz p1, :cond_0

    .line 256
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->h:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->setMaterialMeta(Lcom/bytedance/sdk/openadsdk/core/e/i;)V

    .line 258
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/f/a$1;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/f/a$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/f/a;Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V

    return-object v0

    .line 254
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "dialog is null, please check"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFilterWords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;"
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->h:Lcom/bytedance/sdk/openadsdk/core/e/i;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->U()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIcon()Lcom/bytedance/sdk/openadsdk/TTImage;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->h:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->E()Lcom/bytedance/sdk/openadsdk/core/e/h;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->h:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->E()Lcom/bytedance/sdk/openadsdk/core/e/h;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/e/h;->a(Lcom/bytedance/sdk/openadsdk/core/e/h;)Lcom/bytedance/sdk/openadsdk/TTImage;

    move-result-object v0

    return-object v0
.end method

.method public getImageList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/TTImage;",
            ">;"
        }
    .end annotation

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 214
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->h:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->H()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->h:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->H()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->h:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->H()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/e/h;

    .line 216
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/e/h;->a(Lcom/bytedance/sdk/openadsdk/core/e/h;)Lcom/bytedance/sdk/openadsdk/TTImage;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getImageMode()I
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->h:Lcom/bytedance/sdk/openadsdk/core/e/i;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 235
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->T()I

    move-result v0

    return v0
.end method

.method public getInteractionType()I
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->h:Lcom/bytedance/sdk/openadsdk/core/e/i;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 227
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->D()I

    move-result v0

    return v0
.end method

.method public getMediaExtraInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 298
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->h:Lcom/bytedance/sdk/openadsdk/core/e/i;

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->aa()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->h:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->C()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->h:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->Q()Lcom/bytedance/sdk/openadsdk/core/e/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->h:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->Q()Lcom/bytedance/sdk/openadsdk/core/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->h:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->Q()Lcom/bytedance/sdk/openadsdk/core/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/f/a;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 159
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/f/a;->getSource()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->h:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->M()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoCoverImage()Lcom/bytedance/sdk/openadsdk/TTImage;
    .locals 4

    .line 138
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->h:Lcom/bytedance/sdk/openadsdk/core/e/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->B()Lcom/bytedance/sdk/openadsdk/core/e/o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->h:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->B()Lcom/bytedance/sdk/openadsdk/core/e/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/o;->g()Ljava/lang/String;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->h:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->B()Lcom/bytedance/sdk/openadsdk/core/e/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/o;->b()I

    move-result v1

    .line 141
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->h:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/e/i;->B()Lcom/bytedance/sdk/openadsdk/core/e/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/e/o;->c()I

    move-result v2

    .line 142
    new-instance v3, Lcom/bytedance/sdk/openadsdk/TTImage;

    invoke-direct {v3, v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/TTImage;-><init>(IILjava/lang/String;)V

    return-object v3

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerViewForInteraction(Landroid/view/ViewGroup;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V
    .locals 2

    const-string v0, "container can\'t been null"

    .line 69
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickView can\'t been null"

    .line 70
    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 73
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x0

    .line 74
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/f/a;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V

    return-void
.end method

.method public registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;",
            ")V"
        }
    .end annotation

    const-string v0, "container can\'t been null"

    .line 88
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickView can\'t been null"

    .line 89
    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "clickViews size must been more than 1"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(ZLjava/lang/String;)V

    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    .line 91
    invoke-virtual/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/core/f/a;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V

    return-void
.end method

.method public registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;",
            ")V"
        }
    .end annotation

    const-string v0, "container can\'t been null"

    .line 79
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickView can\'t been null"

    .line 80
    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "clickViews size must been more than 1"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(ZLjava/lang/String;)V

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    .line 83
    invoke-virtual/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/core/f/a;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V

    return-void
.end method

.method public registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;",
            ")V"
        }
    .end annotation

    const-string v0, "container can\'t been null"

    .line 97
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickView can\'t been null"

    .line 98
    invoke-static {p3, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "clickViews size must been more than 1"

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(ZLjava/lang/String;)V

    if-eqz p4, :cond_1

    .line 102
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 103
    :goto_1
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/f/a;->a(Z)V

    .line 106
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    invoke-direct {p0, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/f/a;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p4

    :cond_2
    move-object v4, p4

    .line 110
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->g:Lcom/bytedance/sdk/openadsdk/core/m;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/m;->a(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V

    return-void
.end method

.method public showPrivacyActivity()V
    .locals 3

    .line 371
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->i:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 372
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->h:Lcom/bytedance/sdk/openadsdk/core/e/i;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->l:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
