.class public final Lcom/pubmatic/sdk/rewardedad/POBRewardedUtil;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRewardedRenderer(Landroid/content/Context;ILcom/pubmatic/sdk/rewardedad/renderer/POBSkipConfirmationInfo;)Lcom/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRendering;
    .locals 1

    new-instance v0, Lcom/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRenderer;

    invoke-direct {v0, p0, p1, p2}, Lcom/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRenderer;-><init>(Landroid/content/Context;ILcom/pubmatic/sdk/rewardedad/renderer/POBSkipConfirmationInfo;)V

    return-object v0
.end method
