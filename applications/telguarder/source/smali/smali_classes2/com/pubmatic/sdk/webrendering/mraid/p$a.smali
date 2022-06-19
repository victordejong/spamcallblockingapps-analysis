.class Lcom/pubmatic/sdk/webrendering/mraid/p$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBImageNetworkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/webrendering/mraid/p;->l()Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBImageNetworkListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBImageNetworkListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/pubmatic/sdk/webrendering/mraid/p;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/webrendering/mraid/p;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p$a;->a:Lcom/pubmatic/sdk/webrendering/mraid/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/pubmatic/sdk/common/POBError;)V
    .locals 2

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "POBMraidController"

    const-string v1, "Network error connecting to url."

    invoke-static {v0, v1, p1}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p$a;->a:Lcom/pubmatic/sdk/webrendering/mraid/p;

    invoke-static {p1}, Lcom/pubmatic/sdk/webrendering/mraid/p;->c(Lcom/pubmatic/sdk/webrendering/mraid/p;)V

    return-void
.end method

.method public onSuccess(Landroid/graphics/Bitmap;)V
    .locals 1

    new-instance v0, Lcom/pubmatic/sdk/webrendering/mraid/p$a$a;

    invoke-direct {v0, p0, p1}, Lcom/pubmatic/sdk/webrendering/mraid/p$a$a;-><init>(Lcom/pubmatic/sdk/webrendering/mraid/p$a;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lcom/pubmatic/sdk/common/utility/POBUtils;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p$a;->a:Lcom/pubmatic/sdk/webrendering/mraid/p;

    invoke-static {p1}, Lcom/pubmatic/sdk/webrendering/mraid/p;->c(Lcom/pubmatic/sdk/webrendering/mraid/p;)V

    return-void
.end method
