.class Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity;->a(Ljava/lang/String;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity$b;->a:Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity$b;->a:Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity;->a(Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity;Z)Z

    return-void
.end method
