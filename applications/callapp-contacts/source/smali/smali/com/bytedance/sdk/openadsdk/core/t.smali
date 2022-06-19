.class public Lcom/bytedance/sdk/openadsdk/core/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/bytedance/sdk/openadsdk/core/t;


# instance fields
.field private b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

.field private c:Z

.field private d:Lcom/bytedance/sdk/openadsdk/core/e/i;

.field private e:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

.field private f:Lcom/a/a/a/a/a/c;

.field private g:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

.field private h:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/t;->c:Z

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/t;->h:Z

    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/core/t;
    .locals 1

    .line 33
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/t;->a:Lcom/bytedance/sdk/openadsdk/core/t;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/t;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/t;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/t;->a:Lcom/bytedance/sdk/openadsdk/core/t;

    .line 36
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/t;->a:Lcom/bytedance/sdk/openadsdk/core/t;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/a/a/a/a/a/c;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/t;->f:Lcom/a/a/a/a/a/c;

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/t;->g:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/t;->e:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/e/i;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/t;->d:Lcom/bytedance/sdk/openadsdk/core/e/i;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/t;->c:Z

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 101
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/t;->h:Z

    return-void
.end method

.method public b()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/t;->c:Z

    return v0
.end method

.method public c()Lcom/bytedance/sdk/openadsdk/core/e/i;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/t;->d:Lcom/bytedance/sdk/openadsdk/core/e/i;

    return-object v0
.end method

.method public d()Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/t;->e:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    return-object v0
.end method

.method public e()Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/t;->g:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    return-object v0
.end method

.method public f()Lcom/a/a/a/a/a/c;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/t;->f:Lcom/a/a/a/a/a/c;

    return-object v0
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/t;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    .line 106
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/t;->d:Lcom/bytedance/sdk/openadsdk/core/e/i;

    .line 107
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/t;->e:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    .line 108
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/t;->g:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    .line 109
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/t;->f:Lcom/a/a/a/a/a/c;

    const/4 v0, 0x0

    .line 110
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/t;->h:Z

    const/4 v0, 0x1

    .line 111
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/t;->c:Z

    return-void
.end method
