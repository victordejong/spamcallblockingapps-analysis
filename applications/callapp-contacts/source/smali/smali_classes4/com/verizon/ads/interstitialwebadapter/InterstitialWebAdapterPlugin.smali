.class public Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapterPlugin;
.super Lcom/verizon/ads/Plugin;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapterPlugin$InterstitialWebContentFilter;
    }
.end annotation


# static fields
.field private static final i:Lcom/verizon/ads/Logger;

.field private static final j:Ljava/net/URI;

.field private static final k:Ljava/net/URL;

.field private static final l:Ljava/util/regex/Pattern;

.field private static final m:Ljava/util/regex/Pattern;

.field private static final n:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    const-class v0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapterPlugin;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapterPlugin;->i:Lcom/verizon/ads/Logger;

    const/4 v0, 0x0

    .line 36
    sput-object v0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapterPlugin;->j:Ljava/net/URI;

    .line 37
    sput-object v0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapterPlugin;->k:Ljava/net/URL;

    const-string v0, "<HTML"

    const/4 v1, 0x2

    .line 39
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapterPlugin;->l:Ljava/util/regex/Pattern;

    const-string v0, "<HEAD|<BODY"

    .line 40
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapterPlugin;->m:Ljava/util/regex/Pattern;

    const-string v0, "<(SCRIPT|IMG|IFRAME|A|DIV|SPAN|P|H[1-6])[ />]"

    .line 42
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapterPlugin;->n:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 47
    sget-object v6, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapterPlugin;->j:Ljava/net/URI;

    sget-object v7, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapterPlugin;->k:Ljava/net/URL;

    const-string v2, "com.verizon.ads.interstitialwebadapter"

    const-string v3, "Interstitial Web Adapter"

    const-string v4, "1.2.0-4dde96a"

    const-string v5, "Verizon"

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/verizon/ads/Plugin;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;Ljava/net/URL;I)V

    return-void
.end method

.method static synthetic a()Ljava/util/regex/Pattern;
    .locals 1

    .line 29
    sget-object v0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapterPlugin;->m:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic b()Ljava/util/regex/Pattern;
    .locals 1

    .line 29
    sget-object v0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapterPlugin;->l:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic c()Ljava/util/regex/Pattern;
    .locals 1

    .line 29
    sget-object v0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapterPlugin;->n:Ljava/util/regex/Pattern;

    return-object v0
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

    .line 56
    sget-object v0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapterPlugin;->i:Lcom/verizon/ads/Logger;

    const-string v1, "Preparing InterstitialWebAdapterPlugin"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 58
    const-class v0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;

    const-class v1, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;

    new-instance v2, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapterPlugin$InterstitialWebContentFilter;

    invoke-direct {v2}, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapterPlugin$InterstitialWebContentFilter;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapterPlugin;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/verizon/ads/ContentFilter;)V

    const/4 v0, 0x1

    return v0
.end method
