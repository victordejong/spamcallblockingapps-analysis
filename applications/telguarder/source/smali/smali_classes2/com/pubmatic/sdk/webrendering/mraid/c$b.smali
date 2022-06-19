.class Lcom/pubmatic/sdk/webrendering/mraid/c$b;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/webrendering/mraid/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/media/AudioManager;

.field private b:I

.field final synthetic c:Lcom/pubmatic/sdk/webrendering/mraid/c;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/webrendering/mraid/c;Landroid/os/Handler;Landroid/media/AudioManager;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/c$b;->c:Lcom/pubmatic/sdk/webrendering/mraid/c;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/pubmatic/sdk/webrendering/mraid/c$b;->a:Landroid/media/AudioManager;

    const/4 p1, 0x3

    invoke-virtual {p3, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    iput p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/c$b;->b:I

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    iget-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/c$b;->a:Landroid/media/AudioManager;

    if-eqz p1, :cond_0

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p1

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/c$b;->a:Landroid/media/AudioManager;

    invoke-virtual {v0, p2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p2

    iget v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/c$b;->b:I

    if-eq p2, v0, :cond_0

    iput p2, p0, Lcom/pubmatic/sdk/webrendering/mraid/c$b;->b:I

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/c$b;->c:Lcom/pubmatic/sdk/webrendering/mraid/c;

    invoke-static {v0, p2, p1}, Lcom/pubmatic/sdk/webrendering/mraid/c;->a(Lcom/pubmatic/sdk/webrendering/mraid/c;II)V

    :cond_0
    return-void
.end method
