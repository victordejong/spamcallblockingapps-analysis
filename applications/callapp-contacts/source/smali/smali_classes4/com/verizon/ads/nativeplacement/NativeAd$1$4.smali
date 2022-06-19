.class Lcom/verizon/ads/nativeplacement/NativeAd$1$4;
.super Lcom/verizon/ads/support/SafeRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/nativeplacement/NativeAd$1;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lcom/verizon/ads/nativeplacement/NativeAd$1;


# direct methods
.method constructor <init>(Lcom/verizon/ads/nativeplacement/NativeAd$1;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/verizon/ads/nativeplacement/NativeAd$1$4;->d:Lcom/verizon/ads/nativeplacement/NativeAd$1;

    iput-object p2, p0, Lcom/verizon/ads/nativeplacement/NativeAd$1$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/verizon/ads/nativeplacement/NativeAd$1$4;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/verizon/ads/nativeplacement/NativeAd$1$4;->c:Ljava/util/Map;

    invoke-direct {p0}, Lcom/verizon/ads/support/SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 5

    .line 133
    iget-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeAd$1$4;->d:Lcom/verizon/ads/nativeplacement/NativeAd$1;

    iget-object v0, v0, Lcom/verizon/ads/nativeplacement/NativeAd$1;->a:Lcom/verizon/ads/nativeplacement/NativeAd;

    iget-object v0, v0, Lcom/verizon/ads/nativeplacement/NativeAd;->b:Lcom/verizon/ads/nativeplacement/NativeAd$NativeAdListener;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeAd$1$4;->d:Lcom/verizon/ads/nativeplacement/NativeAd$1;

    iget-object v0, v0, Lcom/verizon/ads/nativeplacement/NativeAd$1;->a:Lcom/verizon/ads/nativeplacement/NativeAd;

    iget-object v0, v0, Lcom/verizon/ads/nativeplacement/NativeAd;->b:Lcom/verizon/ads/nativeplacement/NativeAd$NativeAdListener;

    iget-object v1, p0, Lcom/verizon/ads/nativeplacement/NativeAd$1$4;->d:Lcom/verizon/ads/nativeplacement/NativeAd$1;

    iget-object v1, v1, Lcom/verizon/ads/nativeplacement/NativeAd$1;->a:Lcom/verizon/ads/nativeplacement/NativeAd;

    iget-object v2, p0, Lcom/verizon/ads/nativeplacement/NativeAd$1$4;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/verizon/ads/nativeplacement/NativeAd$1$4;->b:Ljava/lang/String;

    const-string v4, "impression"

    .line 137
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "adImpression"

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/verizon/ads/nativeplacement/NativeAd$1$4;->b:Ljava/lang/String;

    :goto_0
    iget-object v4, p0, Lcom/verizon/ads/nativeplacement/NativeAd$1$4;->c:Ljava/util/Map;

    .line 136
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/verizon/ads/nativeplacement/NativeAd$NativeAdListener;->onEvent(Lcom/verizon/ads/nativeplacement/NativeAd;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method
