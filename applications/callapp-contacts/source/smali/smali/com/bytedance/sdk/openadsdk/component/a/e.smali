.class public Lcom/bytedance/sdk/openadsdk/component/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTBannerAd;
.implements Lcom/bytedance/sdk/openadsdk/utils/ah$a;


# instance fields
.field private final a:Lcom/bytedance/sdk/openadsdk/component/a/d;

.field private final b:Lcom/bytedance/sdk/openadsdk/component/a/a;

.field private final c:Landroid/content/Context;

.field private d:Lcom/bytedance/sdk/openadsdk/utils/ah;

.field private e:I

.field private f:Lcom/bytedance/sdk/openadsdk/core/e/i;

.field private g:Lcom/bytedance/sdk/openadsdk/TTBannerAd$AdInteractionListener;

.field private h:Lcom/bytedance/sdk/openadsdk/dislike/b;

.field private final i:Lcom/bytedance/sdk/openadsdk/component/a/b;

.field private j:Lcom/a/a/a/a/a/c;

.field private k:Ljava/lang/String;

.field private l:Lcom/bytedance/sdk/openadsdk/AdSlot;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/component/a/a;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "banner_ad"

    .line 50
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/e;->k:Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/a/e;->c:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/a/e;->b:Lcom/bytedance/sdk/openadsdk/component/a/a;

    .line 57
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/a/e;->l:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 58
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/a/a;->b()Lcom/bytedance/sdk/openadsdk/core/e/i;

    move-result-object p3

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/a/e;->f:Lcom/bytedance/sdk/openadsdk/core/e/i;

    .line 59
    new-instance p3, Lcom/bytedance/sdk/openadsdk/component/a/d;

    invoke-direct {p3, p1}, Lcom/bytedance/sdk/openadsdk/component/a/d;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/a/e;->a:Lcom/bytedance/sdk/openadsdk/component/a/d;

    .line 60
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/a/b;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/a/b;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/a/e;->i:Lcom/bytedance/sdk/openadsdk/component/a/b;

    .line 61
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/component/a/d;->b()Lcom/bytedance/sdk/openadsdk/component/a/c;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/a/e;->a(Lcom/bytedance/sdk/openadsdk/component/a/c;Lcom/bytedance/sdk/openadsdk/component/a/a;)V

    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/e/i;)Lcom/a/a/a/a/a/c;
    .locals 2

    .line 231
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->D()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 232
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/e;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/a/e;->k:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/a/a/a/a/a/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;)Lcom/a/a/a/a/a/c;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Landroid/view/ViewGroup;)Lcom/bytedance/sdk/openadsdk/core/EmptyView;
    .locals 3

    const/4 v0, 0x0

    .line 314
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 315
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 316
    instance-of v2, v1, Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    if-eqz v2, :cond_0

    .line 317
    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private a()V
    .locals 3

    .line 193
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/e;->i:Lcom/bytedance/sdk/openadsdk/component/a/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/a/e;->l:Lcom/bytedance/sdk/openadsdk/AdSlot;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/a/e$1;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/component/a/e$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/a/e;)V

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/a/b;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/component/a/b$a;)V

    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V
    .locals 1

    .line 168
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/a/e;->b(Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V

    .line 169
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/a/e;->a:Lcom/bytedance/sdk/openadsdk/component/a/d;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/e;->h:Lcom/bytedance/sdk/openadsdk/dislike/b;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/a/d;->a(Lcom/bytedance/sdk/openadsdk/dislike/b;)V

    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/component/a/a;)V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/e;->a:Lcom/bytedance/sdk/openadsdk/component/a/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/a/d;->c()Lcom/bytedance/sdk/openadsdk/component/a/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/e;->a:Lcom/bytedance/sdk/openadsdk/component/a/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/a/d;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/e;->a:Lcom/bytedance/sdk/openadsdk/component/a/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/a/d;->c()Lcom/bytedance/sdk/openadsdk/component/a/c;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/component/a/e;->a(Lcom/bytedance/sdk/openadsdk/component/a/c;Lcom/bytedance/sdk/openadsdk/component/a/a;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/component/a/c;Lcom/bytedance/sdk/openadsdk/component/a/a;)V
    .locals 5

    .line 242
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/a/a;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/a/c;->a(Landroid/graphics/Bitmap;)V

    .line 243
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/a/a;->b()Lcom/bytedance/sdk/openadsdk/core/e/i;

    move-result-object p2

    .line 244
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/a/e;->f:Lcom/bytedance/sdk/openadsdk/core/e/i;

    .line 245
    new-instance v0, Lcom/bytedance/sdk/openadsdk/dislike/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/a/e;->c:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/bytedance/sdk/openadsdk/dislike/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/e;->h:Lcom/bytedance/sdk/openadsdk/dislike/b;

    .line 246
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/a/c;->a(Lcom/bytedance/sdk/openadsdk/core/e/i;)V

    .line 247
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/component/a/e;->a(Lcom/bytedance/sdk/openadsdk/core/e/i;)Lcom/a/a/a/a/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/e;->j:Lcom/a/a/a/a/a/c;

    .line 249
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/d/e;->a(Lcom/bytedance/sdk/openadsdk/core/e/i;)V

    .line 250
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/a/e;->a(Landroid/view/ViewGroup;)Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 252
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/a/e;->c:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 253
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/a/c;->addView(Landroid/view/View;)V

    .line 256
    :cond_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/a/e$2;

    invoke-direct {v1, p0, p2}, Lcom/bytedance/sdk/openadsdk/component/a/e$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/a/e;Lcom/bytedance/sdk/openadsdk/core/e/i;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setCallback(Lcom/bytedance/sdk/openadsdk/core/EmptyView$a;)V

    .line 294
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/b/a;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/a/e;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/a/e;->k:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-direct {v1, v2, p2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/b/a;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;I)V

    .line 295
    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/b/a;->a(Landroid/view/View;)V

    .line 296
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/a/e;->a:Lcom/bytedance/sdk/openadsdk/component/a/d;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/a/d;->d()Landroid/view/View;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/bytedance/sdk/openadsdk/core/b/a;->b(Landroid/view/View;)V

    .line 297
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/a/e;->j:Lcom/a/a/a/a/a/c;

    invoke-virtual {v1, p2}, Lcom/bytedance/sdk/openadsdk/core/b/a;->a(Lcom/a/a/a/a/a/c;)V

    .line 298
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/a/e$3;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/a/e$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/a/e;)V

    invoke-virtual {v1, p2}, Lcom/bytedance/sdk/openadsdk/core/b/a;->a(Lcom/bytedance/sdk/openadsdk/core/b/b$a;)V

    .line 307
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/component/a/c;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/component/a/c;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 p1, 0x1

    .line 309
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setNeedCheckingShow(Z)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/a/e;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/a/e;->b()V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/a/e;Lcom/bytedance/sdk/openadsdk/component/a/a;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/a/e;->a(Lcom/bytedance/sdk/openadsdk/component/a/a;)V

    return-void
.end method

.method private b()V
    .locals 4

    .line 209
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/e;->d:Lcom/bytedance/sdk/openadsdk/utils/ah;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 210
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ah;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 211
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/e;->d:Lcom/bytedance/sdk/openadsdk/utils/ah;

    const/4 v1, 0x1

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/component/a/e;->e:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ah;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private b(Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/e;->h:Lcom/bytedance/sdk/openadsdk/dislike/b;

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Lcom/bytedance/sdk/openadsdk/dislike/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/a/e;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/a/e;->f:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/dislike/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/e;->h:Lcom/bytedance/sdk/openadsdk/dislike/b;

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/e;->h:Lcom/bytedance/sdk/openadsdk/dislike/b;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/dislike/b;->setDislikeInteractionCallback(Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V

    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/component/a/e;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/a/e;->c()V

    return-void
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/component/a/e;)Lcom/bytedance/sdk/openadsdk/component/a/d;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/a/e;->a:Lcom/bytedance/sdk/openadsdk/component/a/d;

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/e;->d:Lcom/bytedance/sdk/openadsdk/utils/ah;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 217
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ah;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/component/a/e;)Landroid/content/Context;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/a/e;->c:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/component/a/e;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/a/e;->k:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/component/a/e;)Lcom/bytedance/sdk/openadsdk/TTBannerAd$AdInteractionListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/a/e;->g:Lcom/bytedance/sdk/openadsdk/TTBannerAd$AdInteractionListener;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .locals 1

    .line 184
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 185
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/a/e;->a()V

    :cond_0
    return-void
.end method

.method public getBannerView()Landroid/view/View;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/e;->a:Lcom/bytedance/sdk/openadsdk/component/a/d;

    return-object v0
.end method

.method public getDislikeDialog(Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)Lcom/bytedance/sdk/openadsdk/TTAdDislike;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 124
    :cond_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/a/e;->b(Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V

    .line 125
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/a/e;->h:Lcom/bytedance/sdk/openadsdk/dislike/b;

    return-object p1
.end method

.method public getInteractionType()I
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/e;->f:Lcom/bytedance/sdk/openadsdk/core/e/i;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 116
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

    .line 157
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/e;->f:Lcom/bytedance/sdk/openadsdk/core/e/i;

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->aa()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setBannerInteractionListener(Lcom/bytedance/sdk/openadsdk/TTBannerAd$AdInteractionListener;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/a/e;->g:Lcom/bytedance/sdk/openadsdk/TTBannerAd$AdInteractionListener;

    return-void
.end method

.method public setShowDislikeIcon(Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 133
    :cond_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/a/e;->a(Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V

    return-void
.end method

.method public setSlideIntervalTime(I)V
    .locals 2

    if-gtz p1, :cond_0

    return-void

    :cond_0
    const-string v0, "slide_banner_ad"

    .line 141
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/e;->k:Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/e;->a:Lcom/bytedance/sdk/openadsdk/component/a/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/a/d;->b()Lcom/bytedance/sdk/openadsdk/component/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/a/e;->b:Lcom/bytedance/sdk/openadsdk/component/a/a;

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/a/e;->a(Lcom/bytedance/sdk/openadsdk/component/a/c;Lcom/bytedance/sdk/openadsdk/component/a/a;)V

    .line 144
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/e;->a:Lcom/bytedance/sdk/openadsdk/component/a/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/a/d;->a()V

    .line 145
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/e;->a:Lcom/bytedance/sdk/openadsdk/component/a/d;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/a/d;->a(I)V

    const v0, 0x1d4c0

    const/16 v1, 0x7530

    if-ge p1, v1, :cond_1

    const/16 p1, 0x7530

    goto :goto_0

    :cond_1
    if-le p1, v0, :cond_2

    const p1, 0x1d4c0

    .line 151
    :cond_2
    :goto_0
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/a/e;->e:I

    .line 152
    new-instance p1, Lcom/bytedance/sdk/openadsdk/utils/ah;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/ah;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/openadsdk/utils/ah$a;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/a/e;->d:Lcom/bytedance/sdk/openadsdk/utils/ah;

    return-void
.end method
