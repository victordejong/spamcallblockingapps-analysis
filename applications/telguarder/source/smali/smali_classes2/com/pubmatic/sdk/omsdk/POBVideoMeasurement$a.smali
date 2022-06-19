.class Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBScriptListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement;->startAdSession(Landroid/view/View;Ljava/util/List;Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBOmidSessionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBOmidSessionListener;

.field final synthetic d:Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement;Ljava/util/List;Landroid/view/View;Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBOmidSessionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement$a;->d:Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement;

    iput-object p2, p0, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement$a;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement$a;->b:Landroid/view/View;

    iput-object p4, p0, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement$a;->c:Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBOmidSessionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMeasurementScriptReceived(Ljava/lang/String;)V
    .locals 4

    const-string v0, "Pubmatic"

    const-string v1, "1.8.2"

    invoke-static {v0, v1}, Lcom/iab/omid/library/pubmatic/adsession/Partner;->createPartner(Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/pubmatic/adsession/Partner;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement$a;->a:Ljava/util/List;

    const/4 v2, 0x0

    const-string v3, ""

    invoke-static {v0, p1, v1, v2, v3}, Lcom/iab/omid/library/pubmatic/adsession/AdSessionContext;->createNativeAdSessionContext(Lcom/iab/omid/library/pubmatic/adsession/Partner;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/pubmatic/adsession/AdSessionContext;

    move-result-object p1

    sget-object v0, Lcom/iab/omid/library/pubmatic/adsession/Owner;->NATIVE:Lcom/iab/omid/library/pubmatic/adsession/Owner;

    sget-object v1, Lcom/iab/omid/library/pubmatic/adsession/CreativeType;->VIDEO:Lcom/iab/omid/library/pubmatic/adsession/CreativeType;

    sget-object v2, Lcom/iab/omid/library/pubmatic/adsession/ImpressionType;->ONE_PIXEL:Lcom/iab/omid/library/pubmatic/adsession/ImpressionType;

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v0, v3}, Lcom/iab/omid/library/pubmatic/adsession/AdSessionConfiguration;->createAdSessionConfiguration(Lcom/iab/omid/library/pubmatic/adsession/CreativeType;Lcom/iab/omid/library/pubmatic/adsession/ImpressionType;Lcom/iab/omid/library/pubmatic/adsession/Owner;Lcom/iab/omid/library/pubmatic/adsession/Owner;Z)Lcom/iab/omid/library/pubmatic/adsession/AdSessionConfiguration;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement$a;->d:Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement;

    invoke-static {v0, p1}, Lcom/iab/omid/library/pubmatic/adsession/AdSession;->createAdSession(Lcom/iab/omid/library/pubmatic/adsession/AdSessionConfiguration;Lcom/iab/omid/library/pubmatic/adsession/AdSessionContext;)Lcom/iab/omid/library/pubmatic/adsession/AdSession;

    move-result-object p1

    iput-object p1, v1, Lcom/pubmatic/sdk/omsdk/POBMeasurement;->adSession:Lcom/iab/omid/library/pubmatic/adsession/AdSession;

    iget-object p1, p0, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement$a;->d:Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement;

    iget-object v0, p1, Lcom/pubmatic/sdk/omsdk/POBMeasurement;->adSession:Lcom/iab/omid/library/pubmatic/adsession/AdSession;

    invoke-static {v0}, Lcom/iab/omid/library/pubmatic/adsession/AdEvents;->createAdEvents(Lcom/iab/omid/library/pubmatic/adsession/AdSession;)Lcom/iab/omid/library/pubmatic/adsession/AdEvents;

    move-result-object v0

    iput-object v0, p1, Lcom/pubmatic/sdk/omsdk/POBMeasurement;->adEvents:Lcom/iab/omid/library/pubmatic/adsession/AdEvents;

    iget-object p1, p0, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement$a;->d:Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement;

    iget-object v0, p1, Lcom/pubmatic/sdk/omsdk/POBMeasurement;->adSession:Lcom/iab/omid/library/pubmatic/adsession/AdSession;

    invoke-static {v0}, Lcom/iab/omid/library/pubmatic/adsession/media/MediaEvents;->createMediaEvents(Lcom/iab/omid/library/pubmatic/adsession/AdSession;)Lcom/iab/omid/library/pubmatic/adsession/media/MediaEvents;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement;->a(Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement;Lcom/iab/omid/library/pubmatic/adsession/media/MediaEvents;)Lcom/iab/omid/library/pubmatic/adsession/media/MediaEvents;

    iget-object p1, p0, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement$a;->d:Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement;

    iget-object v0, p0, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement$a;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/omsdk/POBMeasurement;->setTrackView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement$a;->d:Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement;

    invoke-static {p1}, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement;->a(Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement$a$a;

    invoke-direct {v0, p0}, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement$a$a;-><init>(Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement$a;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
