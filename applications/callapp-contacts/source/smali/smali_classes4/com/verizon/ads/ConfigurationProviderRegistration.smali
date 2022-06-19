.class final Lcom/verizon/ads/ConfigurationProviderRegistration;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ERROR_PLUGIN_DISABLED:I = 0x1

.field private static final WHO:Ljava/lang/String; = "ConfigurationProviderRegistration"


# instance fields
.field private configurationProvider:Lcom/verizon/ads/ConfigurationProvider;

.field private pluginId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/verizon/ads/ConfigurationProvider;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/verizon/ads/ConfigurationProviderRegistration;->pluginId:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/verizon/ads/ConfigurationProviderRegistration;->configurationProvider:Lcom/verizon/ads/ConfigurationProvider;

    return-void
.end method


# virtual methods
.method final update(Lcom/verizon/ads/ConfigurationProvider$UpdateListener;)V
    .locals 5

    .line 25
    iget-object v0, p0, Lcom/verizon/ads/ConfigurationProviderRegistration;->pluginId:Ljava/lang/String;

    invoke-static {v0}, Lcom/verizon/ads/VASAds;->isPluginEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/verizon/ads/ConfigurationProviderRegistration;->configurationProvider:Lcom/verizon/ads/ConfigurationProvider;

    invoke-interface {v0, p1}, Lcom/verizon/ads/ConfigurationProvider;->update(Lcom/verizon/ads/ConfigurationProvider$UpdateListener;)V

    return-void

    :cond_0
    const/4 v0, 0x4

    .line 27
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 28
    iget-object v2, p0, Lcom/verizon/ads/ConfigurationProviderRegistration;->configurationProvider:Lcom/verizon/ads/ConfigurationProvider;

    .line 29
    invoke-interface {v2}, Lcom/verizon/ads/ConfigurationProvider;->getId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/verizon/ads/ConfigurationProviderRegistration;->pluginId:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Configuration Provider <%s> not updated because plugin with id <%s> is disabled."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 33
    iget-object v1, p0, Lcom/verizon/ads/ConfigurationProviderRegistration;->configurationProvider:Lcom/verizon/ads/ConfigurationProvider;

    new-instance v3, Lcom/verizon/ads/ErrorInfo;

    sget-object v4, Lcom/verizon/ads/ConfigurationProviderRegistration;->WHO:Ljava/lang/String;

    invoke-direct {v3, v4, v0, v2}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p1, v1, v3}, Lcom/verizon/ads/ConfigurationProvider$UpdateListener;->onComplete(Lcom/verizon/ads/ConfigurationProvider;Lcom/verizon/ads/ErrorInfo;)V

    :cond_1
    return-void
.end method
