.class Lcom/verizon/ads/EnvironmentInfo$DeviceInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;


# direct methods
.method constructor <init>(Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;Landroid/content/Context;)V
    .locals 0

    .line 423
    iput-object p1, p0, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo$1;->b:Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;

    iput-object p2, p0, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 427
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo$1;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 428
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->a(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
