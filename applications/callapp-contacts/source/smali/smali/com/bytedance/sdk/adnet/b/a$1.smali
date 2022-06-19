.class Lcom/bytedance/sdk/adnet/b/a$1;
.super Landroid/util/LruCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/adnet/b/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/String;",
        "Landroid/util/Pair<",
        "Landroid/graphics/Bitmap;",
        "[B>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/adnet/b/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/adnet/b/a;I)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/b/a$1;->a:Lcom/bytedance/sdk/adnet/b/a;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Landroid/util/Pair;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Landroid/graphics/Bitmap;",
            "[B>;)I"
        }
    .end annotation

    .line 25
    iget-object p1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    .line 26
    iget-object v0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, [B

    array-length p2, p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 27
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    mul-int v0, v0, p1

    add-int/2addr v0, p2

    return v0

    :cond_1
    return p2
.end method

.method protected synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 22
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/adnet/b/a$1;->a(Ljava/lang/String;Landroid/util/Pair;)I

    move-result p1

    return p1
.end method
