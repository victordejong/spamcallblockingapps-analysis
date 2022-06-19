.class Lcom/verizon/ads/webview/VASAdsMRAIDWebView$UpdateLocationTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/webview/VASAdsMRAIDWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpdateLocationTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/location/Location;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/verizon/ads/Logger;


# instance fields
.field private b:Lcom/verizon/ads/EnvironmentInfo;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 136
    const-class v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$UpdateLocationTask;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$UpdateLocationTask;->a:Lcom/verizon/ads/Logger;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;)V
    .locals 1

    .line 141
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 143
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$UpdateLocationTask;->c:Ljava/lang/ref/WeakReference;

    .line 144
    new-instance p2, Lcom/verizon/ads/EnvironmentInfo;

    invoke-direct {p2, p1}, Lcom/verizon/ads/EnvironmentInfo;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$UpdateLocationTask;->b:Lcom/verizon/ads/EnvironmentInfo;

    return-void
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3151
    iget-object p1, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$UpdateLocationTask;->b:Lcom/verizon/ads/EnvironmentInfo;

    invoke-virtual {p1}, Lcom/verizon/ads/EnvironmentInfo;->getLocation()Landroid/location/Location;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .line 134
    check-cast p1, Landroid/location/Location;

    .line 2158
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$UpdateLocationTask;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    if-nez v0, :cond_0

    .line 2161
    sget-object p1, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$UpdateLocationTask;->a:Lcom/verizon/ads/Logger;

    const-string v0, "MRAID JS Bridge is gone."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    return-void

    .line 2166
    :cond_0
    invoke-virtual {v0}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->f()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    .line 2167
    invoke-virtual {v0, p1}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->a(Landroid/location/Location;)V

    return-void

    :cond_1
    if-eqz p1, :cond_3

    .line 2174
    iget-object v1, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->b:Landroid/location/Location;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->b:Landroid/location/Location;

    .line 2175
    invoke-virtual {v1, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 2177
    :cond_2
    invoke-virtual {v0, p1}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->a(Landroid/location/Location;)V

    .line 2180
    :cond_3
    invoke-virtual {p0}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$UpdateLocationTask;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_4

    .line 2301
    iget-object p1, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    new-instance v1, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$10;

    invoke-direct {v1, v0}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$10;-><init>(Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {p1, v1, v2, v3}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 2183
    :cond_4
    sget-object p1, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$UpdateLocationTask;->a:Lcom/verizon/ads/Logger;

    const-string v0, "Shutting down update location task."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    return-void
.end method
