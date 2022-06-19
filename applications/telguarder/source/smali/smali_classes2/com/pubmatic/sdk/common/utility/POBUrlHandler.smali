.class public Lcom/pubmatic/sdk/common/utility/POBUrlHandler;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/common/utility/POBUrlHandler$UrlHandlerListener;
    }
.end annotation


# static fields
.field private static d:Ljava/lang/String; = "POBUrlHandler"


# instance fields
.field private a:Lcom/pubmatic/sdk/common/utility/POBUrlHandler$UrlHandlerListener;

.field private b:Landroid/content/Context;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/pubmatic/sdk/common/utility/POBUrlHandler$UrlHandlerListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pubmatic/sdk/common/utility/POBUrlHandler;->c:Z

    iput-object p1, p0, Lcom/pubmatic/sdk/common/utility/POBUrlHandler;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/pubmatic/sdk/common/utility/POBUrlHandler;->a:Lcom/pubmatic/sdk/common/utility/POBUrlHandler$UrlHandlerListener;

    return-void
.end method

.method static synthetic a(Lcom/pubmatic/sdk/common/utility/POBUrlHandler;)Lcom/pubmatic/sdk/common/utility/POBUrlHandler$UrlHandlerListener;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/common/utility/POBUrlHandler;->a:Lcom/pubmatic/sdk/common/utility/POBUrlHandler$UrlHandlerListener;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/pubmatic/sdk/common/utility/POBUrlHandler;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/pubmatic/sdk/common/utility/POBUrlHandler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/pubmatic/sdk/common/utility/POBUrlHandler;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/pubmatic/sdk/common/utility/POBUrlHandler;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/common/utility/POBUrlHandler;->b:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public open(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/pubmatic/sdk/common/utility/POBUrlHandler;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/pubmatic/sdk/common/utility/POBDeepLinkUtil;->validateAndRedirect(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/pubmatic/sdk/common/utility/POBUrlHandler;->d:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Deep link success"

    invoke-static {v0, v2, v1}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/pubmatic/sdk/common/utility/POBUrlHandler;->a:Lcom/pubmatic/sdk/common/utility/POBUrlHandler$UrlHandlerListener;

    invoke-interface {v0, p1}, Lcom/pubmatic/sdk/common/utility/POBUrlHandler$UrlHandlerListener;->onLeaveApp(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getSdkConfig()Lcom/pubmatic/sdk/common/POBSDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/POBSDKConfig;->isUseInternalBrowser()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/pubmatic/sdk/common/utility/POBUrlHandler;->c:Z

    if-nez v0, :cond_1

    iput-boolean v2, p0, Lcom/pubmatic/sdk/common/utility/POBUrlHandler;->c:Z

    iget-object v0, p0, Lcom/pubmatic/sdk/common/utility/POBUrlHandler;->b:Landroid/content/Context;

    new-instance v1, Lcom/pubmatic/sdk/common/utility/POBUrlHandler$a;

    invoke-direct {v1, p0, p1}, Lcom/pubmatic/sdk/common/utility/POBUrlHandler$a;-><init>(Lcom/pubmatic/sdk/common/utility/POBUrlHandler;Ljava/lang/String;)V

    invoke-static {v0, p1, v1}, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->startNewActivity(Landroid/content/Context;Ljava/lang/String;Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity$InternalBrowserListener;)V

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/pubmatic/sdk/common/utility/POBUrlHandler;->d:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Internal browser already displayed"

    invoke-static {p1, v1, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/pubmatic/sdk/common/utility/POBUrlHandler;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/pubmatic/sdk/common/utility/POBUtils;->openExternalBrowser(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/pubmatic/sdk/common/utility/POBUrlHandler;->d:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string v1, "Unable to open url in external browser %s"

    invoke-static {v0, v1, v2}, Lcom/pubmatic/sdk/common/log/PMLog;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/common/utility/POBUrlHandler;->a:Lcom/pubmatic/sdk/common/utility/POBUrlHandler$UrlHandlerListener;

    invoke-interface {v0, p1}, Lcom/pubmatic/sdk/common/utility/POBUrlHandler$UrlHandlerListener;->onErrorOpenUrl(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
