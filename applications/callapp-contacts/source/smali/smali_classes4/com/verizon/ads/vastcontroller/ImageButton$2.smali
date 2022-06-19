.class Lcom/verizon/ads/vastcontroller/ImageButton$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/vastcontroller/ImageButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/vastcontroller/ImageButton;


# direct methods
.method constructor <init>(Lcom/verizon/ads/vastcontroller/ImageButton;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/verizon/ads/vastcontroller/ImageButton$2;->a:Lcom/verizon/ads/vastcontroller/ImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/ImageButton$2;->a:Lcom/verizon/ads/vastcontroller/ImageButton;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/ImageButton;->b:Lcom/verizon/ads/vastcontroller/VASTParser$Button;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/VASTParser$Button;->staticResource:Lcom/verizon/ads/vastcontroller/VASTParser$StaticResource;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/VASTParser$StaticResource;->uri:Ljava/lang/String;

    invoke-static {v0}, Lcom/verizon/ads/utils/HttpUtils;->getBitmapFromGetRequest(Ljava/lang/String;)Lcom/verizon/ads/utils/HttpUtils$Response;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    iget v1, v0, Lcom/verizon/ads/utils/HttpUtils$Response;->code:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 74
    new-instance v1, Lcom/verizon/ads/vastcontroller/ImageButton$2$1;

    invoke-direct {v1, p0, v0}, Lcom/verizon/ads/vastcontroller/ImageButton$2$1;-><init>(Lcom/verizon/ads/vastcontroller/ImageButton$2;Lcom/verizon/ads/utils/HttpUtils$Response;)V

    invoke-static {v1}, Lcom/verizon/ads/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
