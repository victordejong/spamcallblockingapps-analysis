.class Lcom/verizon/ads/vastcontroller/AdChoicesButton$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/vastcontroller/AdChoicesButton$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/utils/HttpUtils$Response;

.field final synthetic b:Landroid/widget/RelativeLayout$LayoutParams;

.field final synthetic c:Lcom/verizon/ads/vastcontroller/AdChoicesButton$3;


# direct methods
.method constructor <init>(Lcom/verizon/ads/vastcontroller/AdChoicesButton$3;Lcom/verizon/ads/utils/HttpUtils$Response;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/verizon/ads/vastcontroller/AdChoicesButton$3$1;->c:Lcom/verizon/ads/vastcontroller/AdChoicesButton$3;

    iput-object p2, p0, Lcom/verizon/ads/vastcontroller/AdChoicesButton$3$1;->a:Lcom/verizon/ads/utils/HttpUtils$Response;

    iput-object p3, p0, Lcom/verizon/ads/vastcontroller/AdChoicesButton$3$1;->b:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/AdChoicesButton$3$1;->c:Lcom/verizon/ads/vastcontroller/AdChoicesButton$3;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/AdChoicesButton$3;->a:Lcom/verizon/ads/vastcontroller/AdChoicesButton;

    iget-object v1, p0, Lcom/verizon/ads/vastcontroller/AdChoicesButton$3$1;->a:Lcom/verizon/ads/utils/HttpUtils$Response;

    iget-object v1, v1, Lcom/verizon/ads/utils/HttpUtils$Response;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/verizon/ads/vastcontroller/AdChoicesButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 175
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/AdChoicesButton$3$1;->c:Lcom/verizon/ads/vastcontroller/AdChoicesButton$3;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/AdChoicesButton$3;->a:Lcom/verizon/ads/vastcontroller/AdChoicesButton;

    iget-object v1, p0, Lcom/verizon/ads/vastcontroller/AdChoicesButton$3$1;->b:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/verizon/ads/vastcontroller/AdChoicesButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/AdChoicesButton$3$1;->c:Lcom/verizon/ads/vastcontroller/AdChoicesButton$3;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/AdChoicesButton$3;->a:Lcom/verizon/ads/vastcontroller/AdChoicesButton;

    invoke-static {v0}, Lcom/verizon/ads/vastcontroller/AdChoicesButton;->a(Lcom/verizon/ads/vastcontroller/AdChoicesButton;)V

    return-void
.end method
