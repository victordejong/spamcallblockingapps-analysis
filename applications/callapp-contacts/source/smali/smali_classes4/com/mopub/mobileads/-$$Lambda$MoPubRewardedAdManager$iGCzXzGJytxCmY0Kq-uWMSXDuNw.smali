.class public final synthetic Lcom/mopub/mobileads/-$$Lambda$MoPubRewardedAdManager$iGCzXzGJytxCmY0Kq-uWMSXDuNw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/mopub/mobileads/AdAdapter;

.field public final synthetic f$1:Lcom/mopub/common/MoPubReward;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/mopub/mobileads/AdAdapter;Lcom/mopub/common/MoPubReward;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mopub/mobileads/-$$Lambda$MoPubRewardedAdManager$iGCzXzGJytxCmY0Kq-uWMSXDuNw;->f$0:Lcom/mopub/mobileads/AdAdapter;

    iput-object p2, p0, Lcom/mopub/mobileads/-$$Lambda$MoPubRewardedAdManager$iGCzXzGJytxCmY0Kq-uWMSXDuNw;->f$1:Lcom/mopub/common/MoPubReward;

    iput-object p3, p0, Lcom/mopub/mobileads/-$$Lambda$MoPubRewardedAdManager$iGCzXzGJytxCmY0Kq-uWMSXDuNw;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/mopub/mobileads/-$$Lambda$MoPubRewardedAdManager$iGCzXzGJytxCmY0Kq-uWMSXDuNw;->f$0:Lcom/mopub/mobileads/AdAdapter;

    iget-object v1, p0, Lcom/mopub/mobileads/-$$Lambda$MoPubRewardedAdManager$iGCzXzGJytxCmY0Kq-uWMSXDuNw;->f$1:Lcom/mopub/common/MoPubReward;

    iget-object v2, p0, Lcom/mopub/mobileads/-$$Lambda$MoPubRewardedAdManager$iGCzXzGJytxCmY0Kq-uWMSXDuNw;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->lambda$iGCzXzGJytxCmY0Kq-uWMSXDuNw(Lcom/mopub/mobileads/AdAdapter;Lcom/mopub/common/MoPubReward;Ljava/lang/String;)V

    return-void
.end method
