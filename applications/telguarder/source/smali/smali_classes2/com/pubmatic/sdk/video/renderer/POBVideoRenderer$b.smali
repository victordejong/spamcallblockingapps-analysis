.class Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer$b;->a:Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer$b;->a:Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;

    invoke-static {v0}, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->b(Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;)Lcom/pubmatic/sdk/common/base/POBAdRendererListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer$b;->a:Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;

    invoke-static {v0}, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->b(Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;)Lcom/pubmatic/sdk/common/base/POBAdRendererListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/pubmatic/sdk/common/base/POBAdRendererListener;->onAdExpired()V

    :cond_0
    return-void
.end method
