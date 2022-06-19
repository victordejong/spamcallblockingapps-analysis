.class Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement$a;->onMeasurementScriptReceived(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement$a;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement$a;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement$a$a;->a:Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement$a$a;->a:Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement$a;

    iget-object v0, v0, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement$a;->d:Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement;

    iget-object v0, v0, Lcom/pubmatic/sdk/omsdk/POBMeasurement;->adSession:Lcom/iab/omid/library/pubmatic/adsession/AdSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iab/omid/library/pubmatic/adsession/AdSession;->start()V

    iget-object v0, p0, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement$a$a;->a:Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement$a;

    iget-object v0, v0, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement$a;->c:Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBOmidSessionListener;

    invoke-interface {v0}, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBOmidSessionListener;->onOmidSessionInitialized()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement$a$a;->a:Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement$a;

    iget-object v1, v1, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement$a;->d:Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement;

    iget-object v1, v1, Lcom/pubmatic/sdk/omsdk/POBMeasurement;->adSession:Lcom/iab/omid/library/pubmatic/adsession/AdSession;

    invoke-virtual {v1}, Lcom/iab/omid/library/pubmatic/adsession/AdSession;->getAdSessionId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "OMSDK"

    const-string v2, "Ad session started : %s"

    invoke-static {v1, v2, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
