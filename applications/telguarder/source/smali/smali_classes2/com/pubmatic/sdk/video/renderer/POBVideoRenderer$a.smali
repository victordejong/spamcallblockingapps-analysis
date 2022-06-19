.class Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer$a;
.super Ljava/util/TimerTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->d()V
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

    iput-object p1, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer$a;->a:Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer$a;->a:Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;

    invoke-static {v0}, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->a(Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;)V

    return-void
.end method
