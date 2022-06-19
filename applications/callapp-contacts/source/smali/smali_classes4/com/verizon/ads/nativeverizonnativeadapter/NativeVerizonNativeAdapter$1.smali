.class Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;->loadComponents(ZILcom/verizon/ads/nativeplacement/NativeAdAdapter$LoadComponentsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/nativeplacement/NativeAdAdapter$LoadComponentsListener;

.field final synthetic b:Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;


# direct methods
.method constructor <init>(Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;Lcom/verizon/ads/nativeplacement/NativeAdAdapter$LoadComponentsListener;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter$1;->b:Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;

    iput-object p2, p0, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter$1;->a:Lcom/verizon/ads/nativeplacement/NativeAdAdapter$LoadComponentsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/verizon/ads/ErrorInfo;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter$1;->a:Lcom/verizon/ads/nativeplacement/NativeAdAdapter$LoadComponentsListener;

    invoke-interface {v0, p1}, Lcom/verizon/ads/nativeplacement/NativeAdAdapter$LoadComponentsListener;->onComplete(Lcom/verizon/ads/ErrorInfo;)V

    return-void
.end method
