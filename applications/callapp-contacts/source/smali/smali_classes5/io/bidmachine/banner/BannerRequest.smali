.class public final Lio/bidmachine/banner/BannerRequest;
.super Lio/bidmachine/AdRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/banner/BannerRequest$a;,
        Lio/bidmachine/banner/BannerRequest$AdRequestListener;,
        Lio/bidmachine/banner/BannerRequest$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/AdRequest<",
        "Lio/bidmachine/banner/BannerRequest;",
        "Lio/bidmachine/unified/UnifiedBannerAdRequestParams;",
        ">;"
    }
.end annotation


# instance fields
.field private bannerSize:Lio/bidmachine/banner/BannerSize;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 18
    sget-object v0, Lio/bidmachine/AdsType;->Banner:Lio/bidmachine/AdsType;

    invoke-direct {p0, v0}, Lio/bidmachine/AdRequest;-><init>(Lio/bidmachine/AdsType;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/banner/BannerRequest$1;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lio/bidmachine/banner/BannerRequest;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lio/bidmachine/banner/BannerRequest;Lio/bidmachine/banner/BannerSize;)Lio/bidmachine/banner/BannerSize;
    .locals 0

    .line 13
    iput-object p1, p0, Lio/bidmachine/banner/BannerRequest;->bannerSize:Lio/bidmachine/banner/BannerSize;

    return-object p1
.end method


# virtual methods
.method public final bridge synthetic createUnifiedAdRequestParams(Lio/bidmachine/TargetingParams;Lio/bidmachine/models/DataRestrictions;)Lio/bidmachine/unified/UnifiedAdRequestParams;
    .locals 0

    .line 13
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/banner/BannerRequest;->createUnifiedAdRequestParams(Lio/bidmachine/TargetingParams;Lio/bidmachine/models/DataRestrictions;)Lio/bidmachine/unified/UnifiedBannerAdRequestParams;

    move-result-object p1

    return-object p1
.end method

.method protected final createUnifiedAdRequestParams(Lio/bidmachine/TargetingParams;Lio/bidmachine/models/DataRestrictions;)Lio/bidmachine/unified/UnifiedBannerAdRequestParams;
    .locals 1

    .line 37
    new-instance v0, Lio/bidmachine/banner/BannerRequest$a;

    invoke-direct {v0, p0, p1, p2}, Lio/bidmachine/banner/BannerRequest$a;-><init>(Lio/bidmachine/banner/BannerRequest;Lio/bidmachine/TargetingParams;Lio/bidmachine/models/DataRestrictions;)V

    return-object v0
.end method

.method public final getSize()Lio/bidmachine/banner/BannerSize;
    .locals 1

    .line 22
    iget-object v0, p0, Lio/bidmachine/banner/BannerRequest;->bannerSize:Lio/bidmachine/banner/BannerSize;

    return-object v0
.end method

.method public final verifyRequest()Lio/bidmachine/utils/BMError;
    .locals 1

    .line 27
    iget-object v0, p0, Lio/bidmachine/banner/BannerRequest;->bannerSize:Lio/bidmachine/banner/BannerSize;

    if-nez v0, :cond_0

    const-string v0, "BannerSize not provided"

    .line 28
    invoke-static {v0}, Lio/bidmachine/utils/BMError;->paramError(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object v0

    return-object v0

    .line 30
    :cond_0
    invoke-super {p0}, Lio/bidmachine/AdRequest;->verifyRequest()Lio/bidmachine/utils/BMError;

    move-result-object v0

    return-object v0
.end method
