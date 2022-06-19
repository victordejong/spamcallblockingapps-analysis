.class Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$InteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;->prepare(Lcom/verizon/ads/AdSession;Lcom/verizon/ads/AdContent;)Lcom/verizon/ads/ErrorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;


# direct methods
.method constructor <init>(Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter$2;->a:Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLeftApplication(Lcom/verizon/ads/Component;)V
    .locals 0

    .line 283
    iget-object p1, p0, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter$2;->a:Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;

    invoke-static {p1}, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;->a(Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;)Lcom/verizon/ads/nativeplacement/NativeAdAdapter$NativeAdAdapterListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 284
    iget-object p1, p0, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter$2;->a:Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;

    invoke-static {p1}, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;->a(Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;)Lcom/verizon/ads/nativeplacement/NativeAdAdapter$NativeAdAdapterListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/verizon/ads/nativeplacement/NativeAdAdapter$NativeAdAdapterListener;->onAdLeftApplication()V

    :cond_0
    return-void
.end method

.method public onClicked(Lcom/verizon/ads/Component;)V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter$2;->a:Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;

    invoke-static {v0}, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;->a(Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;)Lcom/verizon/ads/nativeplacement/NativeAdAdapter$NativeAdAdapterListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter$2;->a:Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;

    invoke-static {v0}, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;->a(Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;)Lcom/verizon/ads/nativeplacement/NativeAdAdapter$NativeAdAdapterListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/verizon/ads/nativeplacement/NativeAdAdapter$NativeAdAdapterListener;->onClicked(Lcom/verizon/ads/Component;)V

    :cond_0
    return-void
.end method

.method public onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter$2;->a:Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;

    invoke-static {v0}, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;->a(Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;)Lcom/verizon/ads/nativeplacement/NativeAdAdapter$NativeAdAdapterListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter$2;->a:Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;

    invoke-static {v0}, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;->a(Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;)Lcom/verizon/ads/nativeplacement/NativeAdAdapter$NativeAdAdapterListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/verizon/ads/nativeplacement/NativeAdAdapter$NativeAdAdapterListener;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
