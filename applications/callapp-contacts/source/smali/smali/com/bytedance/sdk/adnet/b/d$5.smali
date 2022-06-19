.class Lcom/bytedance/sdk/adnet/b/d$5;
.super Lcom/bytedance/sdk/adnet/b/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/adnet/b/d;->a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/d$d;Lcom/bytedance/sdk/adnet/b/d$e;)Lcom/bytedance/sdk/adnet/core/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/bytedance/sdk/adnet/b/d$d;

.field final synthetic d:Lcom/bytedance/sdk/adnet/b/d;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/adnet/b/d;Ljava/lang/String;Lcom/bytedance/sdk/adnet/core/m$a;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;Lcom/bytedance/sdk/adnet/b/d$d;)V
    .locals 7

    .line 373
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/b/d$5;->d:Lcom/bytedance/sdk/adnet/b/d;

    iput-object p8, p0, Lcom/bytedance/sdk/adnet/b/d$5;->c:Lcom/bytedance/sdk/adnet/b/d$d;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/adnet/b/e;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/adnet/core/m$a;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;)V

    return-void
.end method


# virtual methods
.method protected a([B)Landroid/graphics/Bitmap;
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/d$5;->c:Lcom/bytedance/sdk/adnet/b/d$d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/adnet/b/d$d;->a([B)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/bytedance/sdk/adnet/b/e;->a([B)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
