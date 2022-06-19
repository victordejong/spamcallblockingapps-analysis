.class Lcom/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRenderer$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRenderer;
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

    iput-object p1, p0, Lcom/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRenderer$a;->a:Lcom/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRenderer$a;->a:Lcom/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRenderer;

    invoke-static {v0}, Lcom/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRenderer;->a(Lcom/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRenderer;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRenderer$a;->a:Lcom/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRenderer;

    invoke-static {v0}, Lcom/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRenderer;->a(Lcom/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRenderer;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/pubmatic/sdk/rewardedad/R$id;->pob_skip_alert_resume_btn:I

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcom/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRenderer$a;->a:Lcom/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRenderer;

    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lcom/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRenderer;->a(Lcom/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRenderer;Z)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/pubmatic/sdk/rewardedad/R$id;->pob_skip_alert_close_btn:I

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRenderer$a;->a:Lcom/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRenderer;

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
