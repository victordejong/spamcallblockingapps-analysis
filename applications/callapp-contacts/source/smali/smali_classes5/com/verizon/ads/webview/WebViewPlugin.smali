.class public Lcom/verizon/ads/webview/WebViewPlugin;
.super Lcom/verizon/ads/Plugin;
.source "SourceFile"


# static fields
.field private static final i:Ljava/net/URI;

.field private static final j:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 34
    sget-object v6, Lcom/verizon/ads/webview/WebViewPlugin;->i:Ljava/net/URI;

    sget-object v7, Lcom/verizon/ads/webview/WebViewPlugin;->j:Ljava/net/URL;

    const-string v2, "com.verizon.ads.webview"

    const-string v3, "WebView"

    const-string v4, "1.8.0-7aa8620"

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
