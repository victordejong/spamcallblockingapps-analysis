.class public Lcom/verizon/ads/uriexperience/UriExperiencePlugin;
.super Lcom/verizon/ads/Plugin;
.source "SourceFile"


# static fields
.field private static final i:Lcom/verizon/ads/Logger;

.field private static final j:Ljava/net/URI;

.field private static final k:Ljava/net/URL;


# instance fields
.field private l:Lcom/verizon/ads/uriexperience/UriExperiencePEXFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/verizon/ads/uriexperience/UriExperiencePlugin;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/uriexperience/UriExperiencePlugin;->i:Lcom/verizon/ads/Logger;

    const/4 v0, 0x0

    .line 28
    sput-object v0, Lcom/verizon/ads/uriexperience/UriExperiencePlugin;->j:Ljava/net/URI;

    .line 29
    sput-object v0, Lcom/verizon/ads/uriexperience/UriExperiencePlugin;->k:Ljava/net/URL;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 38
    sget-object v6, Lcom/verizon/ads/uriexperience/UriExperiencePlugin;->j:Ljava/net/URI;

    sget-object v7, Lcom/verizon/ads/uriexperience/UriExperiencePlugin;->k:Ljava/net/URL;

    const-string v2, "com.verizon.ads.uriexperience"

    const-string v3, "Uri Experience"

    const-string v4, "2.4.0-aefdc75"

    const-string v5, "Verizon"

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/verizon/ads/Plugin;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;Ljava/net/URL;I)V

    .line 41
    new-instance v0, Lcom/verizon/ads/uriexperience/UriExperiencePEXFactory;

    invoke-direct {v0, p1}, Lcom/verizon/ads/uriexperience/UriExperiencePEXFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/verizon/ads/uriexperience/UriExperiencePlugin;->l:Lcom/verizon/ads/uriexperience/UriExperiencePEXFactory;

    return-void
.end method


# virtual methods
.method public final onPluginDisabled()V
    .locals 0

    return-void
.end method

.method public final onPluginEnabled()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/verizon/ads/uriexperience/UriExperiencePlugin;->l:Lcom/verizon/ads/uriexperience/UriExperiencePEXFactory;

    const-string v1, "experience/uri-v1"

    .line 1274
    invoke-static {v1, v0}, Lcom/verizon/ads/PEXRegistry;->registerPEX(Ljava/lang/String;Lcom/verizon/ads/PEXFactory;)Z

    return-void
.end method

.method public final prepare()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
