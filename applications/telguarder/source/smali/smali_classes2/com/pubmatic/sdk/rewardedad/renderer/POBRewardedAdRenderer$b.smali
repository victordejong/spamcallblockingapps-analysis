.class Lcom/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRenderer$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/common/ui/POBFullScreenActivityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRenderer;->a(Lcom/pubmatic/sdk/common/base/POBAdDescriptor;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRenderer;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRenderer;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRenderer$b;->a:Lcom/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRenderer$b;->a:Lcom/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRenderer;

    invoke-static {v0, p1}, Lcom/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRenderer;->a(Lcom/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRenderer;Landroid/app/Activity;)Landroid/app/Activity;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRenderer$b;->a:Lcom/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRenderer;

    invoke-static {v0}, Lcom/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRenderer;->b(Lcom/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRenderer;)V

    return-void
.end method
