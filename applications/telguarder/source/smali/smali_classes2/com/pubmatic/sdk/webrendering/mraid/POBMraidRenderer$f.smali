.class Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->signalImpressionEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer$f;->a:Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer$f;->a:Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;

    invoke-static {v0}, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->h(Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;)Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer$f;->a:Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;

    invoke-static {v0}, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->h(Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;)Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider;

    move-result-object v0

    sget-object v1, Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider$POBHTMLAdEventType;->IMPRESSION:Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider$POBHTMLAdEventType;

    invoke-interface {v0, v1}, Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider;->signalAdEvent(Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider$POBHTMLAdEventType;)V

    :cond_0
    return-void
.end method
