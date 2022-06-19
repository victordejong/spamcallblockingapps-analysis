.class Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/PEXHandler;

.field final synthetic b:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;

.field final synthetic c:Lcom/verizon/ads/PostEventExperience;

.field final synthetic d:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;


# direct methods
.method constructor <init>(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;Lcom/verizon/ads/PEXHandler;Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;Lcom/verizon/ads/PostEventExperience;)V
    .locals 0

    .line 756
    iput-object p1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$3;->d:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;

    iput-object p2, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$3;->a:Lcom/verizon/ads/PEXHandler;

    iput-object p3, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$3;->b:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;

    iput-object p4, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$3;->c:Lcom/verizon/ads/PostEventExperience;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 760
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$3;->a:Lcom/verizon/ads/PEXHandler;

    iget-object v1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$3;->d:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;

    invoke-virtual {v1}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->getAdSession()Lcom/verizon/ads/AdSession;

    move-result-object v1

    new-instance v2, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$3$1;

    invoke-direct {v2, p0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$3$1;-><init>(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$3;)V

    iget-object v3, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$3;->c:Lcom/verizon/ads/PostEventExperience;

    iget-boolean v3, v3, Lcom/verizon/ads/PostEventExperience;->cacheable:Z

    iget-object v4, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$3;->c:Lcom/verizon/ads/PostEventExperience;

    iget-object v4, v4, Lcom/verizon/ads/PostEventExperience;->data:Lorg/json/JSONObject;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/verizon/ads/PEXHandler;->prepare(Lcom/verizon/ads/AdSession;Lcom/verizon/ads/PEXHandler$PEXPrepareListener;ZLorg/json/JSONObject;)V

    return-void
.end method
