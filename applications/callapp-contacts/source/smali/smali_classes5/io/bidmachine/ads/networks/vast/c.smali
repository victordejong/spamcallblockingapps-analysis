.class final Lio/bidmachine/ads/networks/vast/c;
.super Lio/bidmachine/unified/UnifiedParams;
.source "SourceFile"


# instance fields
.field final companionSkipOffset:I

.field final creativeAdm:Ljava/lang/String;

.field final loadSkipOffset:I

.field final skipOffset:I

.field final useNativeClose:Z


# direct methods
.method constructor <init>(Lio/bidmachine/unified/UnifiedMediationParams;)V
    .locals 1

    .line 22
    invoke-direct {p0, p1}, Lio/bidmachine/unified/UnifiedParams;-><init>(Lio/bidmachine/unified/UnifiedMediationParams;)V

    const-string v0, "creativeAdm"

    .line 23
    invoke-virtual {p1, v0}, Lio/bidmachine/unified/UnifiedMediationParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/ads/networks/vast/c;->creativeAdm:Ljava/lang/String;

    const-string v0, "loadSkipOffset"

    .line 24
    invoke-virtual {p1, v0}, Lio/bidmachine/unified/UnifiedMediationParams;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/bidmachine/ads/networks/vast/c;->loadSkipOffset:I

    const-string v0, "skipOffset"

    .line 25
    invoke-virtual {p1, v0}, Lio/bidmachine/unified/UnifiedMediationParams;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/bidmachine/ads/networks/vast/c;->skipOffset:I

    const-string v0, "companionSkipOffset"

    .line 26
    invoke-virtual {p1, v0}, Lio/bidmachine/unified/UnifiedMediationParams;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/bidmachine/ads/networks/vast/c;->companionSkipOffset:I

    const-string v0, "useNativeClose"

    .line 27
    invoke-virtual {p1, v0}, Lio/bidmachine/unified/UnifiedMediationParams;->getBool(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lio/bidmachine/ads/networks/vast/c;->useNativeClose:Z

    return-void
.end method


# virtual methods
.method public final isValid(Lio/bidmachine/unified/UnifiedAdCallback;)Z
    .locals 1

    .line 32
    iget-object v0, p0, Lio/bidmachine/ads/networks/vast/c;->creativeAdm:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    sget-object v0, Lio/bidmachine/utils/BMError;->IncorrectAdUnit:Lio/bidmachine/utils/BMError;

    invoke-interface {p1, v0}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdLoadFailed(Lio/bidmachine/utils/BMError;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
