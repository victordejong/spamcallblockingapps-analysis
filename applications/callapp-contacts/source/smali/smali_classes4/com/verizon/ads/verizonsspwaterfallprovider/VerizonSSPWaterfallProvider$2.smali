.class Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;


# direct methods
.method constructor <init>(Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;Ljava/lang/String;)V
    .locals 0

    .line 1723
    iput-object p1, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$2;->b:Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;

    iput-object p2, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x3

    .line 1727
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1728
    invoke-static {}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->c()Lcom/verizon/ads/Logger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$2;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "Firing super auction win url = %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 1730
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$2;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/verizon/ads/utils/HttpUtils;->getContentFromGetRequest(Ljava/lang/String;)Lcom/verizon/ads/utils/HttpUtils$Response;

    return-void
.end method
