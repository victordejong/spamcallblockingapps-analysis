.class Lcom/applovin/impl/adview/activity/b/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/adview/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/adview/activity/b/e;-><init>(Lcom/applovin/impl/sdk/ad/e;Landroid/app/Activity;Lcom/applovin/impl/sdk/l;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/applovin/impl/adview/activity/b/e;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/adview/activity/b/e;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/activity/b/e$1;->a:Lcom/applovin/impl/adview/activity/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e$1;->a:Lcom/applovin/impl/adview/activity/b/e;

    iget-boolean v1, v0, Lcom/applovin/impl/adview/activity/b/e;->E:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/applovin/impl/adview/activity/b/e;->z:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/applovin/impl/adview/activity/b/e;->u:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    long-to-float v0, v0

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/e$1;->a:Lcom/applovin/impl/adview/activity/b/e;

    iget-wide v2, v1, Lcom/applovin/impl/adview/activity/b/e;->C:J

    long-to-float v2, v2

    div-float/2addr v0, v2

    const v2, 0x461c4000    # 10000.0f

    mul-float v0, v0, v2

    float-to-int v0, v0

    iget-object v1, v1, Lcom/applovin/impl/adview/activity/b/e;->z:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    :goto_0
    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e$1;->a:Lcom/applovin/impl/adview/activity/b/e;

    iget-boolean v0, v0, Lcom/applovin/impl/adview/activity/b/e;->E:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
