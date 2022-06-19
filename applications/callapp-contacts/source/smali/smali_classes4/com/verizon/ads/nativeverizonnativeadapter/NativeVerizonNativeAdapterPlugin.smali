.class public Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapterPlugin;
.super Lcom/verizon/ads/Plugin;
.source "SourceFile"


# static fields
.field private static final i:Lcom/verizon/ads/Logger;

.field private static final j:Ljava/net/URI;

.field private static final k:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapterPlugin;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapterPlugin;->i:Lcom/verizon/ads/Logger;

    const/4 v0, 0x0

    .line 34
    sput-object v0, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapterPlugin;->j:Ljava/net/URI;

    .line 35
    sput-object v0, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapterPlugin;->k:Ljava/net/URL;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 41
    sget-object v6, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapterPlugin;->j:Ljava/net/URI;

    sget-object v7, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapterPlugin;->k:Ljava/net/URL;

    const-string v2, "com.verizon.ads.nativeverizonnativeadapter"

    const-string v3, "Native Verizon Native Adapter"

    const-string v4, "2.5.0-8afd00c"

    const-string v5, "Verizon"

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/verizon/ads/Plugin;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;Ljava/net/URL;I)V

    return-void
.end method


# virtual methods
.method public final onPluginDisabled()V
    .locals 0

    return-void
.end method

.method public final onPluginEnabled()V
    .locals 0

    return-void
.end method

.method public final prepare()Z
    .locals 3

    .line 49
    sget-object v0, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapterPlugin;->i:Lcom/verizon/ads/Logger;

    const-string v1, "Preparing Native Verizon Native Adapter Plugin"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 51
    const-class v0, Lcom/verizon/ads/nativeplacement/NativeAd;

    const-class v1, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;

    new-instance v2, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapterPlugin$1;

    invoke-direct {v2, p0}, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapterPlugin$1;-><init>(Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapterPlugin;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapterPlugin;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/verizon/ads/ContentFilter;)V

    const/4 v0, 0x1

    return v0
.end method
