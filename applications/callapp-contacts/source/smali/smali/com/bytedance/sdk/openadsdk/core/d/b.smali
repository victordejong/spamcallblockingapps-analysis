.class public Lcom/bytedance/sdk/openadsdk/core/d/b;
.super Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l;
.source "SourceFile"


# instance fields
.field protected a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

.field protected final b:Landroid/content/Context;

.field protected c:Lcom/bytedance/sdk/openadsdk/core/e/i;

.field protected d:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

.field protected e:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$AdInteractionListener;

.field protected f:Lcom/bytedance/sdk/openadsdk/dislike/b;

.field protected g:Landroid/app/Dialog;

.field protected h:Landroid/widget/FrameLayout;

.field i:Lcom/bytedance/sdk/openadsdk/core/d/a;

.field private k:Lcom/a/a/a/a/a/c;

.field private l:J

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 2

    .line 63
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l;-><init>()V

    const-wide/16 v0, 0x0

    .line 58
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->l:J

    const-string v0, "interaction"

    .line 60
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->m:Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->b:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->c:Lcom/bytedance/sdk/openadsdk/core/e/i;

    .line 66
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)V

    .line 67
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->c:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/b;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/e/i;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/d/b;J)J
    .locals 0

    .line 44
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->l:J

    return-wide p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/d/b;)Lcom/a/a/a/a/a/c;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->k:Lcom/a/a/a/a/a/c;

    return-object p0
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/e/i;)Lcom/a/a/a/a/a/c;
    .locals 2

    .line 168
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->D()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 169
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->m:Ljava/lang/String;

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

    .line 262
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 263
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 264
    instance-of v2, v1, Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    if-eqz v2, :cond_0

    .line 265
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
    .locals 5

    .line 326
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->c:Lcom/bytedance/sdk/openadsdk/core/e/i;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->m:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;I)V

    .line 327
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a(Landroid/view/View;)V

    .line 328
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->k:Lcom/a/a/a/a/a/c;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a(Lcom/a/a/a/a/a/c;)V

    .line 330
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;)V

    .line 331
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setClickListener(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;)V

    .line 333
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->c:Lcom/bytedance/sdk/openadsdk/core/e/i;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->m:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;I)V

    .line 334
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->a(Landroid/view/View;)V

    .line 336
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->a(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;)V

    .line 337
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->k:Lcom/a/a/a/a/a/c;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->a(Lcom/a/a/a/a/a/c;)V

    .line 338
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/d/b$5;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/d/b$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/b;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->a(Lcom/bytedance/sdk/openadsdk/core/b/b$a;)V

    .line 348
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setClickCreativeListener(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;)V

    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .locals 2

    .line 284
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->g:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 285
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/l;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->g:Landroid/app/Dialog;

    .line 286
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/d/b$3;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/d/b$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/b;)V

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 296
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->g:Landroid/app/Dialog;

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/l;

    const/4 v0, 0x1

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/d/b$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/d/b$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/b;)V

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/l;->a(ZLcom/bytedance/sdk/openadsdk/core/l$a;)V

    .line 316
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->i:Lcom/bytedance/sdk/openadsdk/core/d/a;

    if-eqz p1, :cond_1

    .line 317
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->g:Landroid/app/Dialog;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/d/a;->a(Landroid/app/Dialog;)V

    .line 319
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->g:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g;->b()Lcom/bytedance/sdk/openadsdk/core/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/g;->a()Z

    move-result p1

    if-nez p1, :cond_2

    .line 320
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->g:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_2
    return-void
.end method

.method private a(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->f:Lcom/bytedance/sdk/openadsdk/dislike/b;

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Lcom/bytedance/sdk/openadsdk/dislike/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->c:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-direct {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/dislike/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->f:Lcom/bytedance/sdk/openadsdk/dislike/b;

    .line 160
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->f:Lcom/bytedance/sdk/openadsdk/dislike/b;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/dislike/b;->setDislikeInteractionCallback(Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V

    .line 161
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    if-eqz p1, :cond_1

    .line 162
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->f:Lcom/bytedance/sdk/openadsdk/dislike/b;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setDislike(Lcom/bytedance/sdk/openadsdk/dislike/b;)V

    :cond_1
    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/e/i;)V
    .locals 2

    .line 180
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->c:Lcom/bytedance/sdk/openadsdk/core/e/i;

    .line 183
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/d/b$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/d/b$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/b;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setBackupListener(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/c;)V

    .line 197
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/d/b;->a(Lcom/bytedance/sdk/openadsdk/core/e/i;)Lcom/a/a/a/a/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->k:Lcom/a/a/a/a/a/c;

    .line 198
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/d/e;->a(Lcom/bytedance/sdk/openadsdk/core/e/i;)V

    .line 199
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/b;->a(Landroid/view/ViewGroup;)Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 202
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->addView(Landroid/view/View;)V

    .line 205
    :cond_0
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/d/b$2;

    invoke-direct {p1, p0, p2}, Lcom/bytedance/sdk/openadsdk/core/d/b$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/b;Lcom/bytedance/sdk/openadsdk/core/e/i;)V

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setCallback(Lcom/bytedance/sdk/openadsdk/core/EmptyView$a;)V

    const/4 p1, 0x1

    .line 258
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setNeedCheckingShow(Z)V

    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/d/b;)J
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->l:J

    return-wide v0
.end method

.method private b()V
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->g:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/core/d/b;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->m:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/core/d/b;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->a()V

    return-void
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/core/d/b;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->b()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)V
    .locals 1

    .line 71
    new-instance p4, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->m:Ljava/lang/String;

    invoke-direct {p4, p1, p2, p3, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->l()V

    :cond_0
    return-void
.end method

.method public getExpressAdView()Landroid/view/View;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    return-object v0
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

    .line 89
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->c:Lcom/bytedance/sdk/openadsdk/core/e/i;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->U()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getImageMode()I
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->c:Lcom/bytedance/sdk/openadsdk/core/e/i;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 84
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->T()I

    move-result v0

    return v0
.end method

.method public getInteractionType()I
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->c:Lcom/bytedance/sdk/openadsdk/core/e/i;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 118
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

    .line 107
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->c:Lcom/bytedance/sdk/openadsdk/core/e/i;

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->aa()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public render()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->i()V

    return-void
.end method

.method public setDislikeCallback(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V
    .locals 0

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/b;->a(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setDislikeDialog(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "dialog is null, please check"

    .line 144
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;)V

    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->c:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->setMaterialMeta(Lcom/bytedance/sdk/openadsdk/core/e/i;)V

    .line 148
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    if-eqz v0, :cond_1

    .line 149
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setOuterDislike(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V

    :cond_1
    return-void
.end method

.method public setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$AdInteractionListener;)V
    .locals 1

    .line 100
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->e:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$AdInteractionListener;

    .line 101
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->d:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    .line 102
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;)V

    return-void
.end method

.method public setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;)V
    .locals 1

    .line 94
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->d:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    .line 95
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/b;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;)V

    return-void
.end method

.method public showInteractionExpressAd(Landroid/app/Activity;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 273
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 276
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    const-string p1, "can\'t invoke in child thread TTInteractionExpressAd.showInteractionAd"

    .line 277
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;)V

    return-void

    .line 280
    :cond_1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/b;->a(Landroid/app/Activity;)V

    :cond_2
    :goto_0
    return-void
.end method
