.class Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoadResourcesMessage"
.end annotation


# instance fields
.field final a:Z

.field final b:I

.field final c:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesListener;

.field d:I

.field e:I

.field volatile f:Lcom/verizon/ads/ErrorInfo;


# direct methods
.method constructor <init>(ZILcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesListener;)V
    .locals 0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-boolean p1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;->a:Z

    .line 162
    iput p2, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;->b:I

    .line 163
    iput-object p3, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;->c:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesListener;

    const/4 p1, 0x0

    .line 164
    iput p1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;->d:I

    .line 165
    iput p1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;->e:I

    return-void
.end method
