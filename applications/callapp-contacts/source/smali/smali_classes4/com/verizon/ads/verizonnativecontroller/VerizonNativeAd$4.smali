.class Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$4;
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
.field final synthetic a:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;


# direct methods
.method constructor <init>(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;)V
    .locals 0

    .line 926
    iput-object p1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$4;->a:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 930
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$4;->a:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;

    invoke-static {v0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->e(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;)Lcom/iab/omid/library/verizonmedia/adsession/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/verizonmedia/adsession/b;->b()V

    .line 931
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$4;->a:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;

    invoke-static {v0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->f(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;)Lcom/iab/omid/library/verizonmedia/adsession/b;

    .line 932
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$4;->a:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;

    invoke-static {v0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->g(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;)Lcom/iab/omid/library/verizonmedia/adsession/a;

    .line 934
    invoke-static {}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->a()Lcom/verizon/ads/Logger;

    move-result-object v0

    const-string v1, "Finished OMSDK Ad Session."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    return-void
.end method
