.class final Lio/bidmachine/banner/BannerRequest$a;
.super Lio/bidmachine/AdRequest$BaseUnifiedAdRequestParams;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/unified/UnifiedBannerAdRequestParams;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/banner/BannerRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/AdRequest<",
        "Lio/bidmachine/banner/BannerRequest;",
        "Lio/bidmachine/unified/UnifiedBannerAdRequestParams;",
        ">.BaseUnifiedAdRequestParams;",
        "Lio/bidmachine/unified/UnifiedBannerAdRequestParams;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/banner/BannerRequest;


# direct methods
.method constructor <init>(Lio/bidmachine/banner/BannerRequest;Lio/bidmachine/TargetingParams;Lio/bidmachine/models/DataRestrictions;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lio/bidmachine/banner/BannerRequest$a;->this$0:Lio/bidmachine/banner/BannerRequest;

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/AdRequest$BaseUnifiedAdRequestParams;-><init>(Lio/bidmachine/AdRequest;Lio/bidmachine/TargetingParams;Lio/bidmachine/models/DataRestrictions;)V

    return-void
.end method


# virtual methods
.method public final getBannerSize()Lio/bidmachine/banner/BannerSize;
    .locals 1

    .line 70
    iget-object v0, p0, Lio/bidmachine/banner/BannerRequest$a;->this$0:Lio/bidmachine/banner/BannerRequest;

    invoke-virtual {v0}, Lio/bidmachine/banner/BannerRequest;->getSize()Lio/bidmachine/banner/BannerSize;

    move-result-object v0

    return-object v0
.end method
