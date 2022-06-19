.class public Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProviderPlugin;
.super Lcom/verizon/ads/Plugin;
.source "SourceFile"


# static fields
.field private static final i:Lcom/verizon/ads/Logger;

.field private static final j:Ljava/net/URI;

.field private static final k:Ljava/net/URL;

.field private static volatile l:Z

.field private static m:Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProviderPlugin;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProviderPlugin;->i:Lcom/verizon/ads/Logger;

    const/4 v0, 0x0

    .line 29
    sput-object v0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProviderPlugin;->j:Ljava/net/URI;

    .line 30
    sput-object v0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProviderPlugin;->k:Ljava/net/URL;

    const/4 v0, 0x0

    .line 33
    sput-boolean v0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProviderPlugin;->l:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 39
    sget-object v6, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProviderPlugin;->j:Ljava/net/URI;

    sget-object v7, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProviderPlugin;->k:Ljava/net/URL;

    const-string v2, "com.verizon.ads.verizonsspconfigprovider"

    const-string v3, "Verizon SSP Config Provider"

    const-string v4, "2.5.0"

    const-string v5, "Verizon"

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/verizon/ads/Plugin;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;Ljava/net/URL;I)V

    return-void
.end method

.method private static synthetic a(Lcom/verizon/ads/ConfigurationProvider;Lcom/verizon/ads/ErrorInfo;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 68
    sget-object p0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProviderPlugin;->i:Lcom/verizon/ads/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "An error occurred updating handshake: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/verizon/ads/ErrorInfo;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 70
    :cond_0
    sget-object p0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProviderPlugin;->i:Lcom/verizon/ads/Logger;

    const-string p1, "Handshake update completed successfully."

    invoke-virtual {p0, p1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$rnuP0Qhad3tfCQUPPLR4HjR4A9k(Lcom/verizon/ads/ConfigurationProvider;Lcom/verizon/ads/ErrorInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProviderPlugin;->a(Lcom/verizon/ads/ConfigurationProvider;Lcom/verizon/ads/ErrorInfo;)V

    return-void
.end method


# virtual methods
.method public final onPluginDisabled()V
    .locals 0

    return-void
.end method

.method public final onPluginEnabled()V
    .locals 2

    .line 57
    sget-object v0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProviderPlugin;->m:Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;

    invoke-virtual {v0}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->restoreHandshakeValues()V

    .line 60
    sget-boolean v0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProviderPlugin;->l:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 61
    sput-boolean v0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProviderPlugin;->l:Z

    .line 62
    sget-object v0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProviderPlugin;->m:Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;

    .line 1260
    iget-object v1, p0, Lcom/verizon/ads/Plugin;->id:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/verizon/ads/VASAds;->registerConfigurationProvider(Ljava/lang/String;Lcom/verizon/ads/ConfigurationProvider;)V

    return-void

    .line 65
    :cond_0
    sget-object v0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProviderPlugin;->m:Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;

    sget-object v1, Lcom/verizon/ads/verizonsspconfigprovider/-$$Lambda$VerizonSSPConfigProviderPlugin$rnuP0Qhad3tfCQUPPLR4HjR4A9k;->INSTANCE:Lcom/verizon/ads/verizonsspconfigprovider/-$$Lambda$VerizonSSPConfigProviderPlugin$rnuP0Qhad3tfCQUPPLR4HjR4A9k;

    invoke-virtual {v0, v1}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->update(Lcom/verizon/ads/ConfigurationProvider$UpdateListener;)V

    return-void
.end method

.method public final prepare()Z
    .locals 2

    .line 47
    new-instance v0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;

    invoke-virtual {p0}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProviderPlugin;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;-><init>(Landroid/content/Context;)V

    .line 49
    sput-object v0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProviderPlugin;->m:Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;

    invoke-virtual {v0}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->prepare()Z

    move-result v0

    return v0
.end method
