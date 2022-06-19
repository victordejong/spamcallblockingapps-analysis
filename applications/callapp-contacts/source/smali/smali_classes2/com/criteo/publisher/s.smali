.class public final Lcom/criteo/publisher/s;
.super Lcom/criteo/publisher/Criteo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/criteo/publisher/s$c;,
        Lcom/criteo/publisher/s$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/criteo/publisher/Criteo;-><init>()V

    return-void
.end method


# virtual methods
.method public final createBannerController(Lcom/criteo/publisher/CriteoBannerView;)Lcom/criteo/publisher/k;
    .locals 3

    .line 79
    new-instance v0, Lcom/criteo/publisher/k;

    .line 82
    invoke-static {}, Lcom/criteo/publisher/q;->a()Lcom/criteo/publisher/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/criteo/publisher/q;->y()Lcom/criteo/publisher/m/b;

    move-result-object v1

    .line 83
    invoke-static {}, Lcom/criteo/publisher/q;->a()Lcom/criteo/publisher/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/criteo/publisher/q;->i()Lcom/criteo/publisher/e/c;

    move-result-object v2

    invoke-direct {v0, p1, p0, v1, v2}, Lcom/criteo/publisher/k;-><init>(Lcom/criteo/publisher/CriteoBannerView;Lcom/criteo/publisher/Criteo;Lcom/criteo/publisher/m/b;Lcom/criteo/publisher/e/c;)V

    return-object v0
.end method

.method public final enrichAdObjectWithBid(Ljava/lang/Object;Lcom/criteo/publisher/Bid;)V
    .locals 0

    return-void
.end method

.method final getBidForAdUnit(Lcom/criteo/publisher/model/AdUnit;Lcom/criteo/publisher/context/ContextData;Lcom/criteo/publisher/d;)V
    .locals 0

    .line 46
    invoke-interface {p3}, Lcom/criteo/publisher/d;->a()V

    return-void
.end method

.method final getConfig()Lcom/criteo/publisher/model/t;
    .locals 1

    .line 67
    new-instance v0, Lcom/criteo/publisher/model/t;

    invoke-direct {v0}, Lcom/criteo/publisher/model/t;-><init>()V

    return-object v0
.end method

.method final getDeviceInfo()Lcom/criteo/publisher/model/u;
    .locals 2

    .line 61
    new-instance v0, Lcom/criteo/publisher/s$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/criteo/publisher/s$b;-><init>(Lcom/criteo/publisher/s$a;)V

    return-object v0
.end method

.method final getInterstitialActivityHelper()Lcom/criteo/publisher/j/a;
    .locals 1

    .line 73
    new-instance v0, Lcom/criteo/publisher/s$c;

    invoke-direct {v0}, Lcom/criteo/publisher/s$c;-><init>()V

    return-object v0
.end method

.method public final loadBid(Lcom/criteo/publisher/model/AdUnit;Lcom/criteo/publisher/context/ContextData;Lcom/criteo/publisher/BidResponseListener;)V
    .locals 0

    const/4 p1, 0x0

    .line 55
    invoke-interface {p3, p1}, Lcom/criteo/publisher/BidResponseListener;->onResponse(Lcom/criteo/publisher/Bid;)V

    return-void
.end method

.method public final setMopubConsent(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final setUsPrivacyOptOut(Z)V
    .locals 0

    return-void
.end method

.method public final setUserData(Lcom/criteo/publisher/context/UserData;)V
    .locals 0

    return-void
.end method
