.class Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$ResourceLoadedMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ResourceLoadedMessage"
.end annotation


# instance fields
.field final a:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;

.field final b:Lcom/verizon/ads/ErrorInfo;


# direct methods
.method constructor <init>(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;Lcom/verizon/ads/ErrorInfo;)V
    .locals 0

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$ResourceLoadedMessage;->a:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;

    .line 179
    iput-object p2, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$ResourceLoadedMessage;->b:Lcom/verizon/ads/ErrorInfo;

    return-void
.end method
