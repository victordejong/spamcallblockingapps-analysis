.class Lcom/verizon/ads/vastcontroller/AdChoicesButton$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/vastcontroller/AdChoicesButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/vastcontroller/AdChoicesButton;


# direct methods
.method constructor <init>(Lcom/verizon/ads/vastcontroller/AdChoicesButton;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/verizon/ads/vastcontroller/AdChoicesButton$3;->a:Lcom/verizon/ads/vastcontroller/AdChoicesButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 152
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/AdChoicesButton$3;->a:Lcom/verizon/ads/vastcontroller/AdChoicesButton;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/AdChoicesButton;->h:Lcom/verizon/ads/vastcontroller/VASTParser$Icon;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/VASTParser$Icon;->staticResource:Lcom/verizon/ads/vastcontroller/VASTParser$StaticResource;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/VASTParser$StaticResource;->uri:Ljava/lang/String;

    invoke-static {v0}, Lcom/verizon/ads/utils/HttpUtils;->getBitmapFromGetRequest(Ljava/lang/String;)Lcom/verizon/ads/utils/HttpUtils$Response;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 154
    iget v1, v0, Lcom/verizon/ads/utils/HttpUtils$Response;->code:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    iget-object v1, v0, Lcom/verizon/ads/utils/HttpUtils$Response;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 155
    iget-object v1, p0, Lcom/verizon/ads/vastcontroller/AdChoicesButton$3;->a:Lcom/verizon/ads/vastcontroller/AdChoicesButton;

    invoke-virtual {v1}, Lcom/verizon/ads/vastcontroller/AdChoicesButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/verizon/ads/vastcontroller/R$dimen;->vas_adchoices_icon_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 156
    iget-object v2, v0, Lcom/verizon/ads/utils/HttpUtils$Response;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-gtz v2, :cond_0

    .line 158
    invoke-static {}, Lcom/verizon/ads/vastcontroller/AdChoicesButton;->c()Lcom/verizon/ads/Logger;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid icon height: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 162
    :cond_0
    iget-object v3, v0, Lcom/verizon/ads/utils/HttpUtils$Response;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    mul-int v3, v3, v1

    div-int/2addr v3, v2

    .line 164
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    .line 165
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 166
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/high16 v1, -0x80000000

    .line 169
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 171
    new-instance v1, Lcom/verizon/ads/vastcontroller/AdChoicesButton$3$1;

    invoke-direct {v1, p0, v0, v2}, Lcom/verizon/ads/vastcontroller/AdChoicesButton$3$1;-><init>(Lcom/verizon/ads/vastcontroller/AdChoicesButton$3;Lcom/verizon/ads/utils/HttpUtils$Response;Landroid/widget/RelativeLayout$LayoutParams;)V

    invoke-static {v1}, Lcom/verizon/ads/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
