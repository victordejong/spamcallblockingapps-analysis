.class Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$a;
.super Lcom/pubmatic/sdk/common/cache/POBCacheManager$POBPartnerConfigListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->c(Lcom/pubmatic/sdk/openwrap/core/POBRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$a;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-direct {p0}, Lcom/pubmatic/sdk/common/cache/POBCacheManager$POBPartnerConfigListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onPartnerConfigFailed(Lcom/pubmatic/sdk/common/POBError;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Client-side partner data loading is failed with error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/POBError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "POBBannerView"

    invoke-static {v1, p1, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$a;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-static {p1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->p(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)V

    return-void
.end method

.method protected onPartnerConfigFetched(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pubmatic/sdk/common/models/POBPartnerInfo;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pubmatic/sdk/common/models/POBPartnerInfo;

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$a;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-static {v1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->m(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/models/POBPartnerInfo;->getPubMaticPartnerId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$a;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-static {p1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->p(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)V

    return-void
.end method
