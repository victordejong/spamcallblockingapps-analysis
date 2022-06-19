.class Lcom/pubmatic/sdk/video/player/POBVastPlayer$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/video/player/POBVastPlayer;->b(Lcom/pubmatic/sdk/video/player/POBIconView;Lcom/pubmatic/sdk/video/vastmodels/POBIcon;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pubmatic/sdk/video/player/POBIconView;

.field final synthetic b:Lcom/pubmatic/sdk/video/vastmodels/POBIcon;

.field final synthetic c:Lcom/pubmatic/sdk/video/player/POBVastPlayer;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/video/player/POBVastPlayer;Lcom/pubmatic/sdk/video/player/POBIconView;Lcom/pubmatic/sdk/video/vastmodels/POBIcon;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer$e;->c:Lcom/pubmatic/sdk/video/player/POBVastPlayer;

    iput-object p2, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer$e;->a:Lcom/pubmatic/sdk/video/player/POBIconView;

    iput-object p3, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer$e;->b:Lcom/pubmatic/sdk/video/vastmodels/POBIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer$e;->c:Lcom/pubmatic/sdk/video/player/POBVastPlayer;

    invoke-static {v0}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->m(Lcom/pubmatic/sdk/video/player/POBVastPlayer;)Lcom/pubmatic/sdk/video/player/POBIconView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer$e;->c:Lcom/pubmatic/sdk/video/player/POBVastPlayer;

    iget-object v1, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer$e;->a:Lcom/pubmatic/sdk/video/player/POBIconView;

    iget-object v2, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer$e;->b:Lcom/pubmatic/sdk/video/vastmodels/POBIcon;

    invoke-static {v0, v1, v2}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->b(Lcom/pubmatic/sdk/video/player/POBVastPlayer;Lcom/pubmatic/sdk/video/player/POBIconView;Lcom/pubmatic/sdk/video/vastmodels/POBIcon;)V

    :cond_0
    return-void
.end method
