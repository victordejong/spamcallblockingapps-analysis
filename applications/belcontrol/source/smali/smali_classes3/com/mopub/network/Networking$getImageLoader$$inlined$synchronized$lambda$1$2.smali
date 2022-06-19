.class public final Lcom/mopub/network/Networking$getImageLoader$$inlined$synchronized$lambda$1$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/mopub/volley/toolbox/ImageLoader$ImageCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/network/Networking$getImageLoader$$inlined$synchronized$lambda$1;->invoke()Lcom/mopub/network/MaxWidthImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mopub/network/Networking$getImageLoader$$inlined$synchronized$lambda$1$1;


# direct methods
.method public constructor <init>(Lcom/mopub/network/Networking$getImageLoader$$inlined$synchronized$lambda$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/network/Networking$getImageLoader$$inlined$synchronized$lambda$1$2;->a:Lcom/mopub/network/Networking$getImageLoader$$inlined$synchronized$lambda$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lqk1;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mopub/network/Networking$getImageLoader$$inlined$synchronized$lambda$1$2;->a:Lcom/mopub/network/Networking$getImageLoader$$inlined$synchronized$lambda$1$1;

    invoke-virtual {v0, p1}, Lf4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lqk1;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmap"

    invoke-static {p2, v0}, Lqk1;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mopub/network/Networking$getImageLoader$$inlined$synchronized$lambda$1$2;->a:Lcom/mopub/network/Networking$getImageLoader$$inlined$synchronized$lambda$1$1;

    invoke-virtual {v0, p1, p2}, Lf4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
