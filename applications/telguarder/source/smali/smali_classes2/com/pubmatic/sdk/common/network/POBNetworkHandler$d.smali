.class Lcom/pubmatic/sdk/common/network/POBNetworkHandler$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/common/network/POBNetworkHandler;->sendImageRequest(Lcom/pubmatic/sdk/common/network/POBImageRequest;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBImageNetworkListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBImageNetworkListener;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/common/network/POBNetworkHandler;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBImageNetworkListener;)V
    .locals 0

    iput-object p2, p0, Lcom/pubmatic/sdk/common/network/POBNetworkHandler$d;->a:Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBImageNetworkListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/network/POBNetworkHandler$d;->a:Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBImageNetworkListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBImageNetworkListener;->onSuccess(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/pubmatic/sdk/common/network/POBNetworkHandler$d;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
