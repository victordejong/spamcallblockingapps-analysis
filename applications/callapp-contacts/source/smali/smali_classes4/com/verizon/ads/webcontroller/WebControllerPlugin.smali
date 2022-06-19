.class public Lcom/verizon/ads/webcontroller/WebControllerPlugin;
.super Lcom/verizon/ads/Plugin;
.source "SourceFile"


# static fields
.field private static final i:Lcom/verizon/ads/Logger;

.field private static final j:Ljava/net/URI;

.field private static final k:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/verizon/ads/webcontroller/WebControllerPlugin;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/webcontroller/WebControllerPlugin;->i:Lcom/verizon/ads/Logger;

    const/4 v0, 0x0

    .line 26
    sput-object v0, Lcom/verizon/ads/webcontroller/WebControllerPlugin;->j:Ljava/net/URI;

    .line 27
    sput-object v0, Lcom/verizon/ads/webcontroller/WebControllerPlugin;->k:Ljava/net/URL;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 33
    sget-object v6, Lcom/verizon/ads/webcontroller/WebControllerPlugin;->j:Ljava/net/URI;

    sget-object v7, Lcom/verizon/ads/webcontroller/WebControllerPlugin;->k:Ljava/net/URL;

    const-string v2, "com.verizon.ads.webcontroller"

    const-string v3, "Web Controller"

    const-string v4, "1.3.0-1b51ca3"

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
    .locals 2

    .line 42
    sget-object v0, Lcom/verizon/ads/webcontroller/WebControllerPlugin;->i:Lcom/verizon/ads/Logger;

    const-string v1, "Preparing WebControllerPlugin"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
