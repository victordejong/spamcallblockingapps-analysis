.class Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBScriptListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->renderAd(Lcom/pubmatic/sdk/common/base/POBAdDescriptor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer$b;->b:Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;

    iput-object p2, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer$b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMeasurementScriptReceived(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<script>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</script>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer$b;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer$b;->b:Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;

    invoke-static {v0}, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->c(Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;)Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer$b;->b:Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;

    invoke-static {v1}, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->b(Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;->loadHTML(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
