.class public Lcom/verizon/ads/verizonnativecontroller/VerizonNativeControllerPlugin;
.super Lcom/verizon/ads/Plugin;
.source "SourceFile"


# static fields
.field static i:Landroid/content/Context;

.field static j:Lcom/verizon/ads/support/StorageCache;

.field private static final k:Lcom/verizon/ads/Logger;

.field private static final l:Ljava/net/URI;

.field private static final m:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeControllerPlugin;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeControllerPlugin;->k:Lcom/verizon/ads/Logger;

    const/4 v0, 0x0

    .line 30
    sput-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeControllerPlugin;->l:Ljava/net/URI;

    .line 31
    sput-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeControllerPlugin;->m:Ljava/net/URL;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 42
    sget-object v6, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeControllerPlugin;->l:Ljava/net/URI;

    sget-object v7, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeControllerPlugin;->m:Ljava/net/URL;

    const-string v2, "com.verizon.ads.verizonnativecontroller"

    const-string v3, "Verizon Native Controller"

    const-string v4, "2.10.0-f25dbba"

    const-string v5, "Verizon"

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/verizon/ads/Plugin;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;Ljava/net/URL;I)V

    .line 45
    sput-object p1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeControllerPlugin;->i:Landroid/content/Context;

    .line 48
    new-instance v0, Lcom/verizon/ads/support/StorageCache;

    const-string v1, "/com.verizon.ads/VerizonNativeController/"

    invoke-static {p1, v1}, Lcom/verizon/ads/support/StorageCache;->getApplicationCache(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/verizon/ads/support/StorageCache;-><init>(Ljava/io/File;)V

    sput-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeControllerPlugin;->j:Lcom/verizon/ads/support/StorageCache;

    return-void
.end method


# virtual methods
.method public final onPluginDisabled()V
    .locals 0

    return-void
.end method

.method public final onPluginEnabled()V
    .locals 2

    .line 66
    new-instance v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$Factory;

    invoke-direct {v0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$Factory;-><init>()V

    const-string v1, "verizon/nativeAd-v1"

    invoke-static {v1, v0}, Lcom/verizon/ads/ComponentRegistry;->registerComponent(Ljava/lang/String;Lcom/verizon/ads/ComponentFactory;)V

    .line 67
    new-instance v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeTextComponent$Factory;

    invoke-direct {v0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeTextComponent$Factory;-><init>()V

    const-string v1, "text/plain-v1"

    invoke-static {v1, v0}, Lcom/verizon/ads/ComponentRegistry;->registerComponent(Ljava/lang/String;Lcom/verizon/ads/ComponentFactory;)V

    .line 68
    new-instance v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeTextComponent$Factory;

    invoke-direct {v0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeTextComponent$Factory;-><init>()V

    const-string v1, "text/unknown-v1"

    invoke-static {v1, v0}, Lcom/verizon/ads/ComponentRegistry;->registerComponent(Ljava/lang/String;Lcom/verizon/ads/ComponentFactory;)V

    .line 70
    new-instance v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImageComponent$Factory;

    invoke-direct {v0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImageComponent$Factory;-><init>()V

    const-string v1, "image/png-v1"

    .line 71
    invoke-static {v1, v0}, Lcom/verizon/ads/ComponentRegistry;->registerComponent(Ljava/lang/String;Lcom/verizon/ads/ComponentFactory;)V

    const-string v1, "image/jpg-v1"

    .line 72
    invoke-static {v1, v0}, Lcom/verizon/ads/ComponentRegistry;->registerComponent(Ljava/lang/String;Lcom/verizon/ads/ComponentFactory;)V

    const-string v1, "image/jpeg-v1"

    .line 73
    invoke-static {v1, v0}, Lcom/verizon/ads/ComponentRegistry;->registerComponent(Ljava/lang/String;Lcom/verizon/ads/ComponentFactory;)V

    const-string v1, "image/unknown-v1"

    .line 74
    invoke-static {v1, v0}, Lcom/verizon/ads/ComponentRegistry;->registerComponent(Ljava/lang/String;Lcom/verizon/ads/ComponentFactory;)V

    .line 76
    new-instance v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent$Factory;

    invoke-direct {v0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent$Factory;-><init>()V

    const-string v1, "video/mp4-v1"

    .line 77
    invoke-static {v1, v0}, Lcom/verizon/ads/ComponentRegistry;->registerComponent(Ljava/lang/String;Lcom/verizon/ads/ComponentFactory;)V

    const-string v1, "video/quicktime-v1"

    .line 78
    invoke-static {v1, v0}, Lcom/verizon/ads/ComponentRegistry;->registerComponent(Ljava/lang/String;Lcom/verizon/ads/ComponentFactory;)V

    const-string v1, "video/x-m4v-v1"

    .line 79
    invoke-static {v1, v0}, Lcom/verizon/ads/ComponentRegistry;->registerComponent(Ljava/lang/String;Lcom/verizon/ads/ComponentFactory;)V

    const-string v1, "video/unknown-v1"

    .line 80
    invoke-static {v1, v0}, Lcom/verizon/ads/ComponentRegistry;->registerComponent(Ljava/lang/String;Lcom/verizon/ads/ComponentFactory;)V

    .line 82
    new-instance v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle$Factory;

    invoke-direct {v0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle$Factory;-><init>()V

    const-string v1, "container/bundle-v1"

    invoke-static {v1, v0}, Lcom/verizon/ads/ComponentRegistry;->registerComponent(Ljava/lang/String;Lcom/verizon/ads/ComponentFactory;)V

    .line 84
    new-instance v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImpressionRuleComponent$Factory;

    invoke-direct {v0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImpressionRuleComponent$Factory;-><init>()V

    const-string v1, "rule/verizon-native-impression-v1"

    invoke-static {v1, v0}, Lcom/verizon/ads/ComponentRegistry;->registerComponent(Ljava/lang/String;Lcom/verizon/ads/ComponentFactory;)V

    return-void
.end method

.method public final prepare()Z
    .locals 1

    .line 57
    sget-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeControllerPlugin;->j:Lcom/verizon/ads/support/StorageCache;

    invoke-virtual {v0}, Lcom/verizon/ads/support/StorageCache;->deleteCacheDirectory()V

    const/4 v0, 0x1

    return v0
.end method
