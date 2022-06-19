.class Lcom/pubmatic/sdk/video/player/POBVastPlayer$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/video/player/POBVastPlayer;->c(Lcom/pubmatic/sdk/video/player/POBIconView;Lcom/pubmatic/sdk/video/vastmodels/POBIcon;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pubmatic/sdk/video/player/POBIconView;

.field final synthetic b:Lcom/pubmatic/sdk/video/player/POBVastPlayer;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/video/player/POBVastPlayer;Lcom/pubmatic/sdk/video/player/POBIconView;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer$f;->b:Lcom/pubmatic/sdk/video/player/POBVastPlayer;

    iput-object p2, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer$f;->a:Lcom/pubmatic/sdk/video/player/POBIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "POBVastPlayer"

    const-string v2, "Removing Icon from UI."

    invoke-static {v1, v2, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer$f;->b:Lcom/pubmatic/sdk/video/player/POBVastPlayer;

    iget-object v1, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer$f;->a:Lcom/pubmatic/sdk/video/player/POBIconView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    return-void
.end method
