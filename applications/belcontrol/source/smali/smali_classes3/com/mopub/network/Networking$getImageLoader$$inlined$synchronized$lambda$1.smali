.class public final Lcom/mopub/network/Networking$getImageLoader$$inlined$synchronized$lambda$1;
.super Lrk1;
.source ""

# interfaces
.implements Lik1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/network/Networking;->getImageLoader(Landroid/content/Context;)Lcom/mopub/network/MaxWidthImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrk1;",
        "Lik1<",
        "Lcom/mopub/network/MaxWidthImageLoader;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/network/Networking$getImageLoader$$inlined$synchronized$lambda$1;->b:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrk1;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/mopub/network/MaxWidthImageLoader;
    .locals 5

    iget-object v0, p0, Lcom/mopub/network/Networking$getImageLoader$$inlined$synchronized$lambda$1;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/network/Networking;->getRequestQueue(Landroid/content/Context;)Lcom/mopub/network/MoPubRequestQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/Networking$getImageLoader$$inlined$synchronized$lambda$1;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/mopub/common/util/DeviceUtils;->memoryCacheSizeBytes(Landroid/content/Context;)I

    move-result v1

    new-instance v2, Lcom/mopub/network/Networking$getImageLoader$$inlined$synchronized$lambda$1$1;

    invoke-direct {v2, v1, v1}, Lcom/mopub/network/Networking$getImageLoader$$inlined$synchronized$lambda$1$1;-><init>(II)V

    new-instance v1, Lcom/mopub/network/MaxWidthImageLoader;

    iget-object v3, p0, Lcom/mopub/network/Networking$getImageLoader$$inlined$synchronized$lambda$1;->b:Landroid/content/Context;

    new-instance v4, Lcom/mopub/network/Networking$getImageLoader$$inlined$synchronized$lambda$1$2;

    invoke-direct {v4, v2}, Lcom/mopub/network/Networking$getImageLoader$$inlined$synchronized$lambda$1$2;-><init>(Lcom/mopub/network/Networking$getImageLoader$$inlined$synchronized$lambda$1$1;)V

    invoke-direct {v1, v0, v3, v4}, Lcom/mopub/network/MaxWidthImageLoader;-><init>(Lcom/mopub/volley/RequestQueue;Landroid/content/Context;Lcom/mopub/volley/toolbox/ImageLoader$ImageCache;)V

    sget-object v0, Lcom/mopub/network/Networking;->INSTANCE:Lcom/mopub/network/Networking;

    invoke-static {v0, v1}, Lcom/mopub/network/Networking;->access$setMaxWidthImageLoader$p(Lcom/mopub/network/Networking;Lcom/mopub/network/MaxWidthImageLoader;)V

    return-object v1
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/mopub/network/Networking$getImageLoader$$inlined$synchronized$lambda$1;->invoke()Lcom/mopub/network/MaxWidthImageLoader;

    move-result-object v0

    return-object v0
.end method
