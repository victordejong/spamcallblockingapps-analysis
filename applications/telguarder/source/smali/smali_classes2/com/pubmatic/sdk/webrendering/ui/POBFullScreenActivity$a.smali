.class Lcom/pubmatic/sdk/webrendering/ui/POBFullScreenActivity$a;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/webrendering/ui/POBFullScreenActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pubmatic/sdk/webrendering/ui/POBFullScreenActivity;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/webrendering/ui/POBFullScreenActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/webrendering/ui/POBFullScreenActivity$a;->a:Lcom/pubmatic/sdk/webrendering/ui/POBFullScreenActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "RendererIdentifier"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/ui/POBFullScreenActivity$a;->a:Lcom/pubmatic/sdk/webrendering/ui/POBFullScreenActivity;

    invoke-static {v0}, Lcom/pubmatic/sdk/webrendering/ui/POBFullScreenActivity;->a(Lcom/pubmatic/sdk/webrendering/ui/POBFullScreenActivity;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/pubmatic/sdk/webrendering/ui/POBFullScreenActivity$a;->a:Lcom/pubmatic/sdk/webrendering/ui/POBFullScreenActivity;

    invoke-virtual {p1, p2}, Lcom/pubmatic/sdk/webrendering/ui/POBFullScreenActivity;->onBroadcastReceived(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
