.class public final Lcom/mopub/network/Networking$getImageLoader$$inlined$synchronized$lambda$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/volley/toolbox/ImageLoader$ImageCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/network/Networking$a;->invoke()Lcom/mopub/network/MaxWidthImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0003H\u0016\u00a8\u0006\t\u00b8\u0006\u0000"
    }
    d2 = {
        "com/mopub/network/Networking$getImageLoader$1$1$1",
        "Lcom/mopub/volley/toolbox/ImageLoader$ImageCache;",
        "getBitmap",
        "Landroid/graphics/Bitmap;",
        "key",
        "",
        "putBitmap",
        "",
        "bitmap",
        "mopub-sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/network/Networking$getImageLoader$$inlined$synchronized$lambda$1$1;


# direct methods
.method constructor <init>(Lcom/mopub/network/Networking$getImageLoader$$inlined$synchronized$lambda$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/network/Networking$getImageLoader$$inlined$synchronized$lambda$1$2;->a:Lcom/mopub/network/Networking$getImageLoader$$inlined$synchronized$lambda$1$1;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/mopub/network/Networking$getImageLoader$$inlined$synchronized$lambda$1$2;->a:Lcom/mopub/network/Networking$getImageLoader$$inlined$synchronized$lambda$1$1;

    invoke-virtual {v0, p1}, Lcom/mopub/network/Networking$getImageLoader$$inlined$synchronized$lambda$1$1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public final putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/mopub/network/Networking$getImageLoader$$inlined$synchronized$lambda$1$2;->a:Lcom/mopub/network/Networking$getImageLoader$$inlined$synchronized$lambda$1$1;

    invoke-virtual {v0, p1, p2}, Lcom/mopub/network/Networking$getImageLoader$$inlined$synchronized$lambda$1$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
