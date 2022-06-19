.class Lcom/verizon/ads/vastcontroller/ImageButton$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/vastcontroller/ImageButton$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/utils/HttpUtils$Response;

.field final synthetic b:Lcom/verizon/ads/vastcontroller/ImageButton$2;


# direct methods
.method constructor <init>(Lcom/verizon/ads/vastcontroller/ImageButton$2;Lcom/verizon/ads/utils/HttpUtils$Response;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/verizon/ads/vastcontroller/ImageButton$2$1;->b:Lcom/verizon/ads/vastcontroller/ImageButton$2;

    iput-object p2, p0, Lcom/verizon/ads/vastcontroller/ImageButton$2$1;->a:Lcom/verizon/ads/utils/HttpUtils$Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/ImageButton$2$1;->b:Lcom/verizon/ads/vastcontroller/ImageButton$2;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/ImageButton$2;->a:Lcom/verizon/ads/vastcontroller/ImageButton;

    iget-object v1, p0, Lcom/verizon/ads/vastcontroller/ImageButton$2$1;->a:Lcom/verizon/ads/utils/HttpUtils$Response;

    iget-object v1, v1, Lcom/verizon/ads/utils/HttpUtils$Response;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/verizon/ads/vastcontroller/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
