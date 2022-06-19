.class final Lcom/mopub/mobileads/MoPubRewardedAdManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/MoPubRewardedAdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 878
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager$4;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager$4;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 882
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a()Lcom/mopub/mobileads/MoPubRewardedAdManager;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->c(Lcom/mopub/mobileads/MoPubRewardedAdManager;)Lcom/mopub/mobileads/d;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager$4;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/d;->b(Ljava/lang/String;)Lcom/mopub/common/MoPubReward;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, ""

    goto :goto_0

    .line 886
    :cond_0
    invoke-virtual {v0}, Lcom/mopub/common/MoPubReward;->getLabel()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v5, v1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 889
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 890
    :cond_1
    invoke-virtual {v0}, Lcom/mopub/common/MoPubReward;->getAmount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v6, v0

    .line 893
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a()Lcom/mopub/mobileads/MoPubRewardedAdManager;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->c(Lcom/mopub/mobileads/MoPubRewardedAdManager;)Lcom/mopub/mobileads/d;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager$4;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/d;->a(Ljava/lang/String;)Lcom/mopub/mobileads/AdAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    .line 897
    :cond_2
    invoke-virtual {v0}, Lcom/mopub/mobileads/AdAdapter;->getBaseAdClassName()Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v7, v0

    .line 899
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a()Lcom/mopub/mobileads/MoPubRewardedAdManager;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->c(Lcom/mopub/mobileads/MoPubRewardedAdManager;)Lcom/mopub/mobileads/d;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager$4;->a:Ljava/lang/String;

    .line 1075
    iget-object v0, v0, Lcom/mopub/mobileads/d;->d:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    .line 903
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a()Lcom/mopub/mobileads/MoPubRewardedAdManager;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->d(Lcom/mopub/mobileads/MoPubRewardedAdManager;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager$4;->b:Ljava/lang/String;

    .line 905
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a()Lcom/mopub/mobileads/MoPubRewardedAdManager;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->c(Lcom/mopub/mobileads/MoPubRewardedAdManager;)Lcom/mopub/mobileads/d;

    move-result-object v0

    .line 1299
    iget-object v4, v0, Lcom/mopub/mobileads/d;->g:Ljava/lang/String;

    .line 902
    invoke-static/range {v2 .. v8}, Lcom/mopub/mobileads/RewardedAdCompletionRequestHandler;->makeRewardedAdCompletionRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
