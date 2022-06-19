.class public Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;
.super Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;
.implements Lcom/google/android/exoplayer2/ac$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity$ButtonSetAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity<",
        "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;",
        ">;",
        "Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents<",
        "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;",
        ">;",
        "Lcom/google/android/exoplayer2/ac$a;"
    }
.end annotation


# instance fields
.field protected e:Lcom/google/android/exoplayer2/m;

.field protected f:Lcom/google/android/exoplayer2/ui/PlayerView;

.field protected g:Lcom/callapp/contacts/activity/marketplace/ButtonSet;

.field protected h:Landroidx/recyclerview/widget/RecyclerView;

.field protected j:Landroid/widget/ImageView;

.field protected final k:I

.field protected final l:I

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/widget/ImageView;

.field private q:Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;

.field private r:Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;

.field private s:Landroid/view/View;

.field private t:Landroid/view/animation/Animation;

.field private u:Landroid/widget/ProgressBar;

.field private v:Landroid/view/View;

.field private w:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;-><init>()V

    const/4 v0, -0x2

    .line 75
    iput v0, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->k:I

    const/4 v0, -0x3

    .line 76
    iput v0, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->l:I

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 139
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "EXTRA_ITEM_ID"

    .line 140
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;)Landroid/view/View;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->s:Landroid/view/View;

    return-object p0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2

    .line 129
    invoke-static {p0, p1}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->a(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 130
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACTIVITY_SOURCE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    const-string v0, "RETURN_TO_PREVIOUS_CLASS"

    .line 132
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_0
    const-string p2, "source"

    .line 134
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->m:Landroid/widget/ImageView;

    return-object p0
.end method

.method private k()V
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->o:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->o:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 290
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->q:Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->r:Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->q:Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->stopAnimation()V

    .line 293
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->r:Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->stopAnimation()V

    return-void
.end method


# virtual methods
.method protected synthetic a(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->b(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;

    move-result-object p1

    return-object p1
.end method

.method public a(I)V
    .locals 2

    .line 319
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->a(I)V

    .line 320
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    if-eqz p1, :cond_2

    .line 322
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    check-cast p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->isCustomizable()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    check-cast p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->getThemeLargePreviewUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 323
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->e:Lcom/google/android/exoplayer2/m;

    invoke-static {}, Lcom/callapp/contacts/util/video/VideoCacheManager;->get()Lcom/callapp/contacts/util/video/VideoCacheManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    check-cast v1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->getThemeDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/util/video/VideoCacheManager;->a(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/r;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/m;->a(Lcom/google/android/exoplayer2/source/r;)V

    .line 324
    new-instance p1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->j:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    check-cast v1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->getThemeLargePreviewUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1, p0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 6376
    iput-boolean v0, p1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->q:Z

    .line 324
    invoke-virtual {p1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    .line 326
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    check-cast p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->isPurchased()Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f12011e

    goto :goto_0

    :cond_1
    const p1, 0x7f12011f

    .line 331
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->s:Landroid/view/View;

    const v1, 0x7f0a0945

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method protected a(Lcom/callapp/contacts/activity/marketplace/ButtonSet;)V
    .locals 1

    .line 241
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->w:Z

    invoke-virtual {p0, p1, v0}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->a(Lcom/callapp/contacts/activity/marketplace/ButtonSet;Z)V

    return-void
.end method

.method protected final a(Lcom/callapp/contacts/activity/marketplace/ButtonSet;Z)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    return-void

    .line 250
    :cond_0
    iput-object v1, v0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->g:Lcom/callapp/contacts/activity/marketplace/ButtonSet;

    if-eqz p2, :cond_4

    .line 253
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->isSingleButtonSetResource()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 254
    iget-object v2, v0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->o:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 255
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->isGif()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 256
    iget-object v2, v0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->o:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 257
    new-instance v5, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;

    iget-object v2, v0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->o:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, v0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->o:Landroid/widget/ImageView;

    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->getAnswerResourceUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->getAnswerCallDrawableRes()I

    move-result v9

    const/4 v10, -0x1

    const/4 v11, 0x1

    invoke-direct/range {v5 .. v11}, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IIZ)V

    goto :goto_0

    .line 259
    :cond_1
    new-instance v2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    iget-object v5, v0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->o:Landroid/widget/ImageView;

    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->getAnswerCallDrawableRes()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v2, v5, v6, v7}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 3376
    iput-boolean v3, v2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->q:Z

    .line 259
    invoke-virtual {v2}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    .line 260
    iget-object v2, v0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->o:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->t:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 262
    :goto_0
    iget-object v2, v0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->n:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 263
    iget-object v2, v0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->n:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 264
    iget-object v2, v0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->p:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 265
    iget-object v2, v0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->q:Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;

    invoke-virtual {v2, v4}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->setVisibility(I)V

    .line 266
    iget-object v2, v0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->q:Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->startAnimation()V

    .line 267
    iget-object v2, v0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->r:Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;

    invoke-virtual {v2, v4}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->setVisibility(I)V

    .line 268
    iget-object v2, v0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->r:Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->startAnimation()V

    goto :goto_2

    .line 270
    :cond_2
    iget-object v2, v0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->n:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 271
    iget-object v2, v0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->p:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 272
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->isGif()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 273
    iget-object v2, v0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->n:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 274
    new-instance v3, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;

    iget-object v2, v0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->n:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->n:Landroid/widget/ImageView;

    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->getAnswerResourceUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->getAnswerCallDrawableRes()I

    move-result v7

    const/4 v8, -0x1

    const/4 v9, 0x1

    invoke-direct/range {v3 .. v9}, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IIZ)V

    .line 275
    new-instance v10, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;

    iget-object v2, v0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->p:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v11

    iget-object v12, v0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->p:Landroid/widget/ImageView;

    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->getDeclineResourceUrl()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->getDeclineCallDrawableRes()I

    move-result v14

    const/4 v15, -0x1

    const/16 v16, 0x1

    invoke-direct/range {v10 .. v16}, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IIZ)V

    goto :goto_1

    .line 277
    :cond_3
    new-instance v2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    iget-object v4, v0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->n:Landroid/widget/ImageView;

    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->getAnswerCallDrawableRes()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v4, v5, v6}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 4376
    iput-boolean v3, v2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->q:Z

    .line 277
    invoke-virtual {v2}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    .line 278
    new-instance v2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    iget-object v4, v0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->p:Landroid/widget/ImageView;

    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->getDeclineCallDrawableRes()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v4, v5, v6}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 5376
    iput-boolean v3, v2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->q:Z

    .line 278
    invoke-virtual {v2}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    .line 279
    iget-object v2, v0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->n:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->t:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 281
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->k()V

    .line 283
    :goto_2
    invoke-virtual/range {p0 .. p1}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->setRightIconState(Lcom/callapp/contacts/activity/marketplace/ButtonSet;)V

    :cond_4
    return-void
.end method

.method public a(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;)V
    .locals 8

    .line 431
    sget-object v0, Lcom/callapp/contacts/loader/PersonalStoreItemDataManager;->a:Lcom/callapp/contacts/loader/PersonalStoreItemDataManager$Companion;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->getThemeDownloadUrl()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;->VIDEO_RINGTONE:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    const-string v2, "666666"

    const v3, 0x7fffffff

    invoke-virtual {v0, v2, p1, v3, v1}, Lcom/callapp/contacts/loader/PersonalStoreItemDataManager$Companion;->a(Ljava/lang/String;Ljava/lang/String;ILcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;)Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;

    .line 433
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->g:Lcom/callapp/contacts/activity/marketplace/ButtonSet;

    if-eqz p1, :cond_0

    .line 434
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->dy:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->g:Lcom/callapp/contacts/activity/marketplace/ButtonSet;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    .line 436
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v1

    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->g:Lcom/callapp/contacts/activity/marketplace/ButtonSet;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->isSingleButtonSetResource()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Single"

    goto :goto_0

    :cond_1
    const-string p1, "Double"

    :goto_0
    move-object v4, p1

    const-wide/16 v5, 0x0

    const/4 p1, 0x2

    new-array v7, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    const-string v0, "source"

    aput-object v0, v7, p1

    const/4 p1, 0x1

    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->d:Ljava/lang/String;

    aput-object v0, v7, p1

    const-string v2, "Store"

    const-string v3, "Picked Buttons"

    invoke-virtual/range {v1 .. v7}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 437
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->o_()V

    return-void
.end method

.method public synthetic a(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;Lcom/callapp/contacts/widget/ProgressCardView;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents$-CC;->$default$a(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;Lcom/callapp/contacts/widget/ProgressCardView;)V

    return-void
.end method

.method public synthetic a(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ac$a$-CC;->$default$a(Lcom/google/android/exoplayer2/ac$a;Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    return-void
.end method

.method public synthetic a(Lcom/google/android/exoplayer2/MediaItem;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/ac$a$-CC;->$default$a(Lcom/google/android/exoplayer2/ac$a;Lcom/google/android/exoplayer2/MediaItem;I)V

    return-void
.end method

.method public synthetic a(Lcom/google/android/exoplayer2/aa;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ac$a$-CC;->$default$a(Lcom/google/android/exoplayer2/ac$a;Lcom/google/android/exoplayer2/aa;)V

    return-void
.end method

.method public synthetic a(Lcom/google/android/exoplayer2/ac$b;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ac$a$-CC;->$default$a(Lcom/google/android/exoplayer2/ac$a;Lcom/google/android/exoplayer2/ac$b;)V

    return-void
.end method

.method public synthetic a(Lcom/google/android/exoplayer2/al;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/ac$a$-CC;->$default$a(Lcom/google/android/exoplayer2/ac$a;Lcom/google/android/exoplayer2/al;I)V

    return-void
.end method

.method public synthetic a(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/g;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/ac$a$-CC;->$default$a(Lcom/google/android/exoplayer2/ac$a;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/g;)V

    return-void
.end method

.method public synthetic a(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ac$a$-CC;->$default$a(Lcom/google/android/exoplayer2/ac$a;Z)V

    return-void
.end method

.method public a(ZI)V
    .locals 10

    const/4 v0, -0x2

    const/4 v1, 0x3

    if-eq p2, v1, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    invoke-direct {p0}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->k()V

    goto/16 :goto_4

    .line 88
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->g:Lcom/callapp/contacts/activity/marketplace/ButtonSet;

    iput-boolean p1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->w:Z

    invoke-virtual {p0, v2, p1}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->a(Lcom/callapp/contacts/activity/marketplace/ButtonSet;Z)V

    .line 89
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->m:Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    .line 91
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->g:Lcom/callapp/contacts/activity/marketplace/ButtonSet;

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->isSingleButtonSetResource()Z

    move-result p1

    if-eqz p1, :cond_2

    new-array p1, v2, [Landroid/view/View;

    .line 92
    iget-object v6, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->f:Lcom/google/android/exoplayer2/ui/PlayerView;

    aput-object v6, p1, v5

    iget-object v6, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->q:Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;

    aput-object v6, p1, v4

    iget-object v4, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->r:Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;

    aput-object v4, p1, v3

    iget-object v3, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->o:Landroid/widget/ImageView;

    aput-object v3, p1, v1

    goto :goto_1

    :cond_2
    new-array p1, v1, [Landroid/view/View;

    .line 96
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->f:Lcom/google/android/exoplayer2/ui/PlayerView;

    aput-object v1, p1, v5

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->n:Landroid/widget/ImageView;

    aput-object v1, p1, v4

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->p:Landroid/widget/ImageView;

    aput-object v1, p1, v3

    .line 101
    :goto_1
    array-length v1, p1

    const/4 v3, 0x0

    :goto_2
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const-wide/16 v7, 0xc8

    if-ge v3, v1, :cond_3

    aget-object v9, p1, v3

    .line 102
    invoke-virtual {v9, v5}, Landroid/view/View;->setVisibility(I)V

    .line 103
    invoke-virtual {v9, v6}, Landroid/view/View;->setAlpha(F)V

    .line 104
    invoke-virtual {v9}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    if-ne p2, v0, :cond_4

    .line 107
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->f:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/ui/PlayerView;->setVisibility(I)V

    .line 108
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->j:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_3

    .line 110
    :cond_4
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->f:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer2/ui/PlayerView;->setVisibility(I)V

    .line 112
    :goto_3
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->u:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_5
    :goto_4
    return-void
.end method

.method public final synthetic a(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;)Z
    .locals 1

    .line 59
    check-cast p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;

    .line 11482
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->cP:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->cO:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_4

    :cond_0
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->cT:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->isCustomizable()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->cU:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->isCustomizable()Z

    move-result p1

    if-nez p1, :cond_4

    :cond_2
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->cK:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->cM:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-gtz p1, :cond_4

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->getPromotionType()Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/manager/PromotionManager;->b(Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return p1

    :cond_4
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected b(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;
    .locals 0

    .line 151
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->getCallScreenTheme()Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;

    move-result-object p1

    return-object p1
.end method

.method public final b(I)V
    .locals 1

    const/4 v0, 0x1

    .line 82
    invoke-virtual {p0, v0, p1}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->a(ZI)V

    return-void
.end method

.method public b(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;)V
    .locals 1

    .line 477
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->dF:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic b(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;)V
    .locals 0

    .line 59
    check-cast p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->b(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;)V

    return-void
.end method

.method public synthetic b(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ac$a$-CC;->$default$b(Lcom/google/android/exoplayer2/ac$a;Z)V

    return-void
.end method

.method public synthetic b(ZI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/ac$a$-CC;->$default$b(Lcom/google/android/exoplayer2/ac$a;ZI)V

    return-void
.end method

.method public synthetic c(Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ac$a$-CC;->$default$c(Lcom/google/android/exoplayer2/ac$a;Ljava/util/List;)V

    return-void
.end method

.method public synthetic c(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ac$a$-CC;->$default$c(Lcom/google/android/exoplayer2/ac$a;Z)V

    return-void
.end method

.method public synthetic c(ZI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/ac$a$-CC;->$default$c(Lcom/google/android/exoplayer2/ac$a;ZI)V

    return-void
.end method

.method public synthetic c()Z
    .locals 1

    invoke-static {p0}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents$-CC;->$default$c(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;)Z

    move-result v0

    return v0
.end method

.method public final synthetic c(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;)[Ljava/lang/String;
    .locals 2

    .line 59
    check-cast p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 12471
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->getThemeDownloadUrl()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-object v0
.end method

.method protected d()V
    .locals 5

    const v0, 0x7f0a0743

    .line 215
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xb3

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const v0, 0x7f0a0187

    .line 216
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 217
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 218
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->h:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity$ButtonSetAdapter;

    new-instance v3, Lcom/callapp/contacts/activity/marketplace/-$$Lambda$Vcn7IpstPHGctXJjBp-IOYuSuCs;

    invoke-direct {v3, p0}, Lcom/callapp/contacts/activity/marketplace/-$$Lambda$Vcn7IpstPHGctXJjBp-IOYuSuCs;-><init>(Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;)V

    invoke-direct {v1, v3}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity$ButtonSetAdapter;-><init>(Lcom/callapp/contacts/activity/marketplace/ButtonSetPickedListener;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 219
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->h:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/callapp/contacts/activity/marketplace/list/HorizontalSpaceItemDecoration;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070170

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-direct {v1, v3}, Lcom/callapp/contacts/activity/marketplace/list/HorizontalSpaceItemDecoration;-><init>(I)V

    const/4 v3, -0x1

    .line 2665
    invoke-virtual {v0, v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView$h;I)V

    .line 222
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->s:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->s:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 224
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 225
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    .line 226
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 227
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity$1;-><init>(Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;)V

    .line 228
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 237
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public synthetic d(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ac$a$-CC;->$default$d(Lcom/google/android/exoplayer2/ac$a;I)V

    return-void
.end method

.method public synthetic d(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;)V
    .locals 0

    .line 59
    check-cast p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->a(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;)V

    return-void
.end method

.method public e()V
    .locals 3

    .line 417
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    const-string v1, "Download button clicked"

    const/16 v2, 0x50

    .line 8206
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic e(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ac$a$-CC;->$default$e(Lcom/google/android/exoplayer2/ac$a;I)V

    return-void
.end method

.method public f()V
    .locals 5

    .line 422
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    const-string v1, "Download finished"

    const/16 v2, 0x50

    .line 9206
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;I)V

    .line 423
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 424
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/marketplace/DefaultDialerDialogPopup;

    const v2, 0x7f120177

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080101

    const-string v4, ""

    invoke-direct {v1, v2, v4, v3}, Lcom/callapp/contacts/activity/marketplace/DefaultDialerDialogPopup;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, p0, v1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    :cond_0
    return-void
.end method

.method public synthetic f(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ac$a$-CC;->$default$f(Lcom/google/android/exoplayer2/ac$a;I)V

    return-void
.end method

.method public g()V
    .locals 5

    .line 442
    sget-object v0, Lcom/callapp/contacts/loader/PersonalStoreItemDataManager;->a:Lcom/callapp/contacts/loader/PersonalStoreItemDataManager$Companion;

    sget-object v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;->VIDEO_RINGTONE:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    const-string v1, "personalStoreItemType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "666666"

    .line 10115
    invoke-static {v1, v0}, Lcom/callapp/contacts/loader/PersonalStoreItemDataManager$Companion;->c(Ljava/lang/String;Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;)Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 10117
    sget-object v2, Lcom/callapp/contacts/loader/PersonalStoreItemDataManager;->a:Lcom/callapp/contacts/loader/PersonalStoreItemDataManager$Companion;

    invoke-static {v1, v0}, Lcom/callapp/contacts/loader/PersonalStoreItemDataManager$Companion;->a(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;)V

    .line 443
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    const v1, 0x7f120615

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v4, 0x7f12017b

    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 11111
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 444
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->o_()V

    return-void
.end method

.method public getArrowAnswer()Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->q:Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;

    return-object v0
.end method

.method public getArrowHang()Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->r:Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;

    return-object v0
.end method

.method public getButtonSetContainer()Landroid/view/View;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->v:Landroid/view/View;

    return-object v0
.end method

.method public getCallerIdHeaderImage()Landroid/widget/ImageView;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->m:Landroid/widget/ImageView;

    return-object v0
.end method

.method getDownloaderListenerEvents()Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;
    .locals 0

    return-object p0
.end method

.method public getItemType()I
    .locals 1

    .line 487
    sget-object v0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$StoreItemType;->CALL_SCREEN:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$StoreItemType;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$StoreItemType;->ordinal()I

    move-result v0

    return v0
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d0025

    return v0
.end method

.method public synthetic getLeftButtonPrefixText()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents$-CC;->$default$getLeftButtonPrefixText(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPromotionType()Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;
    .locals 1

    .line 492
    sget-object v0, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->CALL_SCREEN:Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    return-object v0
.end method

.method public getPurchasePref()Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;
    .locals 1

    .line 378
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->du:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    return-object v0
.end method

.method public final h()Z
    .locals 1

    .line 455
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->du:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final i()V
    .locals 0

    .line 465
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->o_()V

    return-void
.end method

.method public isLightTheme()Z
    .locals 1

    .line 449
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->di:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/contact/header/ThemeState;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/header/ThemeState;->isLightTheme()Z

    move-result v0

    return v0
.end method

.method public isSkuInUse()Z
    .locals 2

    .line 460
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->du:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    check-cast v1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic j()V
    .locals 0

    invoke-static {p0}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents$-CC;->$default$j(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 343
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->f:Lcom/google/android/exoplayer2/ui/PlayerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->f:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity$2;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity$2;-><init>(Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 351
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 353
    :cond_0
    invoke-super {p0}, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 156
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->onCreate(Landroid/os/Bundle;)V

    .line 157
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "source"

    if-eqz p1, :cond_0

    .line 158
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 159
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->d:Ljava/lang/String;

    .line 162
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v1, "Call Screen Theme Downloader Activity"

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->b(Ljava/lang/String;)V

    .line 163
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v2

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 p1, 0x2

    new-array v8, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    aput-object v0, v8, p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->d:Ljava/lang/String;

    const/4 v1, 0x1

    aput-object v0, v8, v1

    const-string v3, "Store"

    const-string v4, "Enter to call screens page"

    invoke-virtual/range {v2 .. v8}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 165
    invoke-static {}, Lcom/callapp/contacts/util/video/CallAppExoPlayerFactory;->a()Lcom/google/android/exoplayer2/m;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->e:Lcom/google/android/exoplayer2/m;

    .line 166
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f010025

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->t:Landroid/view/animation/Animation;

    const v0, 0x7f0a06c4

    .line 167
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/PlayerView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->f:Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 168
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setShutterBackgroundColor(I)V

    const v0, 0x7f0a06b0

    .line 169
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a0aa5

    .line 170
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->j:Landroid/widget/ImageView;

    const v2, 0x7f0a018b

    .line 171
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->v:Landroid/view/View;

    const v2, 0x7f0a06f6

    .line 172
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->u:Landroid/widget/ProgressBar;

    .line 173
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 174
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const v4, 0x7f060088

    invoke-static {v4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 175
    iget-object v3, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->u:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 176
    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->u:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    const v1, 0x7f0a00e9

    .line 177
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;

    const v2, 0x7f0a00ea

    .line 178
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;

    const v3, 0x7f0a00e7

    .line 179
    invoke-virtual {p0, v3}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;

    const v4, 0x7f0a00e8

    .line 180
    invoke-virtual {p0, v4}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;

    .line 181
    sget-object v5, Lcom/callapp/contacts/manager/preferences/Prefs;->fE:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v5}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/16 v6, 0x8

    if-eqz v5, :cond_1

    .line 182
    invoke-virtual {v3, v6}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->setVisibility(I)V

    .line 183
    invoke-virtual {v1, v6}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->setVisibility(I)V

    .line 184
    iput-object v4, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->q:Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;

    .line 185
    iput-object v2, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->r:Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;

    goto :goto_0

    .line 187
    :cond_1
    invoke-virtual {v4, v6}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->setVisibility(I)V

    .line 188
    invoke-virtual {v2, v6}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->setVisibility(I)V

    .line 189
    iput-object v3, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->q:Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;

    .line 190
    iput-object v1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->r:Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;

    .line 193
    :goto_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->f:Lcom/google/android/exoplayer2/ui/PlayerView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ui/PlayerView;->setResizeMode(I)V

    const v1, 0x7f0a0486

    .line 194
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->m:Landroid/widget/ImageView;

    .line 195
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->e:Lcom/google/android/exoplayer2/m;

    invoke-interface {v1, p0}, Lcom/google/android/exoplayer2/m;->a(Lcom/google/android/exoplayer2/ac$a;)V

    .line 196
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->f:Lcom/google/android/exoplayer2/ui/PlayerView;

    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->e:Lcom/google/android/exoplayer2/m;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ui/PlayerView;->setPlayer(Lcom/google/android/exoplayer2/ac;)V

    const v1, 0x7f0a018c

    .line 197
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->s:Landroid/view/View;

    .line 198
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0a0168

    .line 199
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->n:Landroid/widget/ImageView;

    const v1, 0x7f0a016f

    .line 200
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->p:Landroid/widget/ImageView;

    const v1, 0x7f0a0178

    .line 201
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->o:Landroid/widget/ImageView;

    .line 203
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 204
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->f:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {p1, v6}, Lcom/google/android/exoplayer2/ui/PlayerView;->setVisibility(I)V

    .line 205
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->q:Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;

    invoke-virtual {p1, v6}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->setVisibility(I)V

    .line 206
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->r:Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;

    invoke-virtual {p1, v6}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->setVisibility(I)V

    .line 207
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->n:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 208
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->p:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 209
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->o:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 211
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->d()V

    return-void
.end method

.method public onDestroy()V
    .locals 7

    .line 383
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const/4 v1, 0x2

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "source"

    aput-object v2, v6, v1

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->d:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v6, v2

    const-string v1, "Screen"

    const-string v2, "ScreenClose"

    const-string v3, "Call Screen Theme Downloader Activity"

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->e:Lcom/google/android/exoplayer2/m;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 386
    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/m;->b(Lcom/google/android/exoplayer2/ac$a;)V

    .line 387
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->e:Lcom/google/android/exoplayer2/m;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/m;->w()V

    .line 388
    iput-object v1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->e:Lcom/google/android/exoplayer2/m;

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->s:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 392
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 393
    iput-object v1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->s:Landroid/view/View;

    .line 396
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->o:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 397
    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 400
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->n:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 401
    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 404
    :cond_3
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->f:Lcom/google/android/exoplayer2/ui/PlayerView;

    if-eqz v0, :cond_4

    .line 7130
    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlayerView;->a:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_4

    .line 405
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->f:Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 8130
    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlayerView;->a:Landroid/widget/FrameLayout;

    .line 405
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 408
    :cond_4
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->h:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_5

    .line 409
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 411
    :cond_5
    invoke-super {p0}, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 370
    invoke-super {p0}, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->onPause()V

    .line 371
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->e:Lcom/google/android/exoplayer2/m;

    if-eqz v0, :cond_0

    .line 372
    invoke-interface {v0}, Lcom/google/android/exoplayer2/m;->e()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 358
    invoke-super {p0}, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->onResume()V

    .line 359
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->e:Lcom/google/android/exoplayer2/m;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/m;->u()Z

    move-result v0

    if-nez v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->f:Lcom/google/android/exoplayer2/ui/PlayerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setVisibility(I)V

    .line 361
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 362
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->e:Lcom/google/android/exoplayer2/m;

    if-eqz v0, :cond_0

    .line 363
    invoke-interface {v0}, Lcom/google/android/exoplayer2/m;->j()V

    :cond_0
    return-void
.end method

.method public synthetic p_()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/ac$a$-CC;->$default$p_(Lcom/google/android/exoplayer2/ac$a;)V

    return-void
.end method

.method public synthetic q_()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/ac$a$-CC;->$default$q_(Lcom/google/android/exoplayer2/ac$a;)V

    return-void
.end method

.method protected setRightIconState(Lcom/callapp/contacts/activity/marketplace/ButtonSet;)V
    .locals 2

    .line 305
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    check-cast v0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->isPurchased()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dy:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/loader/PersonalStoreItemDataManager;->a:Lcom/callapp/contacts/loader/PersonalStoreItemDataManager$Companion;

    sget-object v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;->VIDEO_RINGTONE:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    invoke-static {v0}, Lcom/callapp/contacts/loader/PersonalStoreItemDataManager$Companion;->c(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->getProgressCardView()Lcom/callapp/contacts/widget/ProgressCardView;

    move-result-object v0

    const v1, 0x7f1203b3

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/ProgressCardView;->setRightButtonText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 309
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->getProgressCardView()Lcom/callapp/contacts/widget/ProgressCardView;

    move-result-object v0

    const v1, 0x7f1207fc

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/ProgressCardView;->setRightButtonText(Ljava/lang/CharSequence;)V

    .line 310
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->getProgressCardView()Lcom/callapp/contacts/widget/ProgressCardView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/ProgressCardView;->a(Z)V

    .line 313
    :cond_1
    :goto_0
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dy:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    return-void
.end method
