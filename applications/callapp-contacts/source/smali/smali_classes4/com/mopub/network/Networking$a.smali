.class final Lcom/mopub/network/Networking$a;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/network/Networking;->getImageLoader(Landroid/content/Context;)Lcom/mopub/network/MaxWidthImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/mopub/network/MaxWidthImageLoader;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "Lcom/mopub/network/MaxWidthImageLoader;",
        "invoke",
        "com/mopub/network/Networking$getImageLoader$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/network/Networking$a;->a:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/mopub/network/MaxWidthImageLoader;
    .locals 5

    .line 110
    iget-object v0, p0, Lcom/mopub/network/Networking$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/network/Networking;->getRequestQueue(Landroid/content/Context;)Lcom/mopub/network/MoPubRequestQueue;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/mopub/network/Networking$a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mopub/common/util/DeviceUtils;->memoryCacheSizeBytes(Landroid/content/Context;)I

    move-result v1

    .line 112
    new-instance v2, Lcom/mopub/network/Networking$getImageLoader$$inlined$synchronized$lambda$1$1;

    invoke-direct {v2, v1, v1}, Lcom/mopub/network/Networking$getImageLoader$$inlined$synchronized$lambda$1$1;-><init>(II)V

    .line 118
    new-instance v1, Lcom/mopub/network/MaxWidthImageLoader;

    check-cast v0, Lcom/mopub/volley/RequestQueue;

    iget-object v3, p0, Lcom/mopub/network/Networking$a;->a:Landroid/content/Context;

    new-instance v4, Lcom/mopub/network/Networking$getImageLoader$$inlined$synchronized$lambda$1$2;

    invoke-direct {v4, v2}, Lcom/mopub/network/Networking$getImageLoader$$inlined$synchronized$lambda$1$2;-><init>(Lcom/mopub/network/Networking$getImageLoader$$inlined$synchronized$lambda$1$1;)V

    check-cast v4, Lcom/mopub/volley/toolbox/ImageLoader$ImageCache;

    invoke-direct {v1, v0, v3, v4}, Lcom/mopub/network/MaxWidthImageLoader;-><init>(Lcom/mopub/volley/RequestQueue;Landroid/content/Context;Lcom/mopub/volley/toolbox/ImageLoader$ImageCache;)V

    .line 124
    sget-object v0, Lcom/mopub/network/Networking;->INSTANCE:Lcom/mopub/network/Networking;

    invoke-static {v0, v1}, Lcom/mopub/network/Networking;->access$setMaxWidthImageLoader$p(Lcom/mopub/network/Networking;Lcom/mopub/network/MaxWidthImageLoader;)V

    return-object v1
.end method

.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/mopub/network/Networking$a;->invoke()Lcom/mopub/network/MaxWidthImageLoader;

    move-result-object v0

    return-object v0
.end method
