.class public Lcom/verizon/ads/nativeplacement/NativePlacementPlugin;
.super Lcom/verizon/ads/Plugin;
.source "SourceFile"


# static fields
.field private static final i:Lcom/verizon/ads/Logger;

.field private static final j:Ljava/net/URI;

.field private static final k:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/verizon/ads/nativeplacement/NativePlacementPlugin;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/nativeplacement/NativePlacementPlugin;->i:Lcom/verizon/ads/Logger;

    const/4 v0, 0x0

    .line 28
    sput-object v0, Lcom/verizon/ads/nativeplacement/NativePlacementPlugin;->j:Ljava/net/URI;

    .line 29
    sput-object v0, Lcom/verizon/ads/nativeplacement/NativePlacementPlugin;->k:Ljava/net/URL;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 35
    sget-object v6, Lcom/verizon/ads/nativeplacement/NativePlacementPlugin;->j:Ljava/net/URI;

    sget-object v7, Lcom/verizon/ads/nativeplacement/NativePlacementPlugin;->k:Ljava/net/URL;

    const-string v2, "com.verizon.ads.nativeplacement"

    const-string v3, "Native Placement"

    const-string v4, "1.10.0-c07ed54"

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
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
