.class Lcom/bytedance/sdk/openadsdk/component/b/c;
.super Lcom/bytedance/sdk/openadsdk/core/f/a;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTFeedAd;
.implements Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$b;
.implements Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$c;
.implements Lcom/bytedance/sdk/openadsdk/multipro/b/a$a;


# instance fields
.field a:Lcom/bytedance/sdk/openadsdk/multipro/b/a;

.field b:Z

.field c:Z

.field d:I

.field e:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field f:I

.field private m:Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/f/a;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;I)V

    const/4 p1, 0x0

    .line 33
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/b/c;->b:Z

    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/b/c;->c:Z

    .line 41
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/component/b/c;->f:I

    .line 42
    new-instance p1, Lcom/bytedance/sdk/openadsdk/multipro/b/a;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/multipro/b/a;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/b/c;->a:Lcom/bytedance/sdk/openadsdk/multipro/b/a;

    .line 43
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/b/c;->h:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->S()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/af;->d(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/b/c;->d:I

    .line 44
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/b/c;->a(I)V

    const-string p1, "embeded_ad"

    .line 45
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/b/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;ILcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/f/a;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;I)V

    const/4 p1, 0x0

    .line 33
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/b/c;->b:Z

    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/b/c;->c:Z

    .line 51
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/component/b/c;->f:I

    .line 52
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/b/c;->e:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 53
    new-instance p1, Lcom/bytedance/sdk/openadsdk/multipro/b/a;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/multipro/b/a;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/b/c;->a:Lcom/bytedance/sdk/openadsdk/multipro/b/a;

    .line 54
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/b/c;->h:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->S()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/af;->d(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/b/c;->d:I

    .line 55
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/b/c;->a(I)V

    const-string p1, "embeded_ad"

    .line 56
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/b/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/b/c;)Lcom/bytedance/sdk/openadsdk/core/m;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/b/c;->g:Lcom/bytedance/sdk/openadsdk/core/m;

    return-object p0
.end method

.method private a(I)V
    .locals 3

    .line 112
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/e;->c(I)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ne v1, p1, :cond_0

    .line 115
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/b/c;->b:Z

    .line 116
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/b/c;->c:Z

    return-void

    :cond_0
    const/4 v1, 0x1

    if-ne v1, p1, :cond_1

    .line 117
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/b/c;->i:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/t;->d(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/b/c;->b:Z

    .line 119
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/b/c;->c:Z

    return-void

    :cond_1
    const/4 v2, 0x2

    if-ne v2, p1, :cond_3

    .line 121
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/b/c;->i:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/b/c;->i:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/t;->d(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 122
    :cond_2
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/b/c;->b:Z

    .line 123
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/b/c;->c:Z

    return-void

    :cond_3
    const/4 v0, 0x4

    if-ne v0, p1, :cond_4

    .line 126
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/b/c;->b:Z

    :cond_4
    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/component/b/c;)Lcom/bytedance/sdk/openadsdk/core/m;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/b/c;->g:Lcom/bytedance/sdk/openadsdk/core/m;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/openadsdk/multipro/b/a;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/b/c;->a:Lcom/bytedance/sdk/openadsdk/multipro/b/a;

    return-object v0
.end method

.method public a(II)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/b/c;->m:Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;

    if-eqz v0, :cond_0

    .line 153
    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;->onVideoError(II)V

    :cond_0
    return-void
.end method

.method public a(JJ)V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/b/c;->m:Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;

    if-eqz v0, :cond_0

    .line 190
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;->onProgressUpdate(JJ)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 209
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/f/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/b/c;->m:Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;

    if-eqz v0, :cond_0

    .line 183
    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;->onVideoAdContinuePlay(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/b/c;->m:Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;

    if-eqz v0, :cond_0

    .line 173
    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;->onVideoAdPaused(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V

    :cond_0
    return-void
.end method

.method public d_()V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/b/c;->m:Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;

    if-eqz v0, :cond_0

    .line 197
    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;->onVideoAdComplete(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/b/c;->m:Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;

    if-eqz v0, :cond_0

    .line 163
    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;->onVideoAdStartPlay(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/b/c;->m:Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;

    if-eqz v0, :cond_0

    .line 146
    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;->onVideoLoad(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V

    :cond_0
    return-void
.end method

.method public getAdView()Landroid/view/View;
    .locals 6

    .line 61
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/b/c;->h:Lcom/bytedance/sdk/openadsdk/core/e/i;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/b/c;->i:Landroid/content/Context;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/b/c;->h:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->d(Lcom/bytedance/sdk/openadsdk/core/e/i;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 65
    :try_start_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/b/c;->i:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/b/c;->h:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-direct {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;)V

    .line 66
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/b/c;->h:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->a(Lcom/bytedance/sdk/openadsdk/core/e/i;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 67
    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/b/c$1;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/component/b/c$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/b/c;)V

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setVideoAdClickListener(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$b;)V

    .line 76
    :cond_1
    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/b/c$2;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/component/b/c$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/b/c;)V

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setControllerStatusCallBack(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$a;)V

    .line 86
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setVideoAdLoadListener(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$c;)V

    .line 87
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setVideoAdInteractionListener(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$b;)V

    const/4 v2, 0x5

    .line 88
    iget v3, p0, Lcom/bytedance/sdk/openadsdk/component/b/c;->f:I

    if-ne v2, v3, :cond_3

    .line 89
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/b/c;->b:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/b/c;->e:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot;->isAutoPlay()Z

    move-result v2

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/b/c;->c:Z

    :goto_0
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setIsAutoPlay(Z)V

    goto :goto_1

    .line 91
    :cond_3
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/b/c;->c:Z

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setIsAutoPlay(Z)V

    .line 93
    :goto_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v2

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/component/b/c;->d:I

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/h/e;->a(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setIsQuiet(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    :cond_4
    move-object v0, v1

    .line 98
    :goto_2
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/b/c;->h:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/e/i;->d(Lcom/bytedance/sdk/openadsdk/core/e/i;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->a(JZZ)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    return-object v0

    :cond_6
    :goto_3
    return-object v1
.end method

.method public getVideoDuration()D
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/b/c;->h:Lcom/bytedance/sdk/openadsdk/core/e/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/b/c;->h:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->B()Lcom/bytedance/sdk/openadsdk/core/e/o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/b/c;->h:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->B()Lcom/bytedance/sdk/openadsdk/core/e/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/o;->e()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public setVideoAdListener(Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/b/c;->m:Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;

    return-void
.end method
