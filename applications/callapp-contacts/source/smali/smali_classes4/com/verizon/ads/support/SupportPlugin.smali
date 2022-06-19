.class public Lcom/verizon/ads/support/SupportPlugin;
.super Lcom/verizon/ads/Plugin;
.source "SourceFile"


# static fields
.field private static final i:Lcom/verizon/ads/Logger;

.field private static final j:Ljava/net/URI;

.field private static final k:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/verizon/ads/support/SupportPlugin;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/support/SupportPlugin;->i:Lcom/verizon/ads/Logger;

    const/4 v0, 0x0

    .line 30
    sput-object v0, Lcom/verizon/ads/support/SupportPlugin;->j:Ljava/net/URI;

    .line 31
    sput-object v0, Lcom/verizon/ads/support/SupportPlugin;->k:Ljava/net/URL;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 37
    sget-object v6, Lcom/verizon/ads/support/SupportPlugin;->j:Ljava/net/URI;

    sget-object v7, Lcom/verizon/ads/support/SupportPlugin;->k:Ljava/net/URL;

    const-string v2, "com.verizon.ads.support"

    const-string v3, "Support"

    const-string v4, "1.9.0-694bb45"

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
    .locals 2

    .line 52
    new-instance v0, Lcom/verizon/ads/support/StaticViewabilityRuleComponent$Factory;

    invoke-direct {v0}, Lcom/verizon/ads/support/StaticViewabilityRuleComponent$Factory;-><init>()V

    const-string v1, "rule/static-viewability-v1"

    invoke-static {v1, v0}, Lcom/verizon/ads/ComponentRegistry;->registerComponent(Ljava/lang/String;Lcom/verizon/ads/ComponentFactory;)V

    .line 53
    new-instance v0, Lcom/verizon/ads/support/VideoViewabilityRuleComponent$Factory;

    invoke-direct {v0}, Lcom/verizon/ads/support/VideoViewabilityRuleComponent$Factory;-><init>()V

    const-string v1, "rule/video-viewability-v1"

    invoke-static {v1, v0}, Lcom/verizon/ads/ComponentRegistry;->registerComponent(Ljava/lang/String;Lcom/verizon/ads/ComponentFactory;)V

    return-void
.end method

.method public final prepare()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
