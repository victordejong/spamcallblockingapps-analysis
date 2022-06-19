.class Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapterPlugin$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/ContentFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapterPlugin;->prepare()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapterPlugin;


# direct methods
.method constructor <init>(Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapterPlugin;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapterPlugin$1;->a:Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapterPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accepts(Lcom/verizon/ads/AdContent;)Z
    .locals 0

    .line 55
    invoke-static {p1}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeController;->accepts(Lcom/verizon/ads/AdContent;)Z

    move-result p1

    return p1
.end method
