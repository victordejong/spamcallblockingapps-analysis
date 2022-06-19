.class final Lcom/mopub/mobileads/MoPubRewardedAdManager$7;
.super Lcom/mopub/mobileads/MoPubRewardedAdManager$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/MoPubRewardedAdManager;->onRewardedAdLoadFailure(Lcom/mopub/mobileads/AdAdapter;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/MoPubErrorCode;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/AdAdapter;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 0

    .line 733
    iput-object p2, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager$7;->a:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-direct {p0, p1}, Lcom/mopub/mobileads/MoPubRewardedAdManager$a;-><init>(Lcom/mopub/mobileads/AdAdapter;)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)V
    .locals 2

    .line 736
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a()Lcom/mopub/mobileads/MoPubRewardedAdManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a(Lcom/mopub/mobileads/MoPubRewardedAdManager;Ljava/lang/String;)V

    .line 737
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a()Lcom/mopub/mobileads/MoPubRewardedAdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager$7;->a:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-static {v0, p1, v1}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a(Lcom/mopub/mobileads/MoPubRewardedAdManager;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 738
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a()Lcom/mopub/mobileads/MoPubRewardedAdManager;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->c(Lcom/mopub/mobileads/MoPubRewardedAdManager;)Lcom/mopub/mobileads/d;

    move-result-object v0

    .line 1290
    iget-object v0, v0, Lcom/mopub/mobileads/d;->f:Ljava/lang/String;

    .line 738
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 739
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a()Lcom/mopub/mobileads/MoPubRewardedAdManager;

    move-result-object p1

    invoke-static {p1}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->c(Lcom/mopub/mobileads/MoPubRewardedAdManager;)Lcom/mopub/mobileads/d;

    move-result-object p1

    const/4 v0, 0x0

    .line 2278
    iput-object v0, p1, Lcom/mopub/mobileads/d;->f:Ljava/lang/String;

    :cond_0
    return-void
.end method
