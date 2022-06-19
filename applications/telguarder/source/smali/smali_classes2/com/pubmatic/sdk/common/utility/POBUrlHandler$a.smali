.class Lcom/pubmatic/sdk/common/utility/POBUrlHandler$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity$InternalBrowserListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/common/utility/POBUrlHandler;->open(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/pubmatic/sdk/common/utility/POBUrlHandler;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/common/utility/POBUrlHandler;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/common/utility/POBUrlHandler$a;->b:Lcom/pubmatic/sdk/common/utility/POBUrlHandler;

    iput-object p2, p0, Lcom/pubmatic/sdk/common/utility/POBUrlHandler$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBrowserDismiss()V
    .locals 4

    invoke-static {}, Lcom/pubmatic/sdk/common/utility/POBUrlHandler;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/pubmatic/sdk/common/utility/POBUrlHandler$a;->a:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Dismissed device default browser. url :%s"

    invoke-static {v0, v2, v1}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/common/utility/POBUrlHandler$a;->b:Lcom/pubmatic/sdk/common/utility/POBUrlHandler;

    invoke-static {v0}, Lcom/pubmatic/sdk/common/utility/POBUrlHandler;->a(Lcom/pubmatic/sdk/common/utility/POBUrlHandler;)Lcom/pubmatic/sdk/common/utility/POBUrlHandler$UrlHandlerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/common/utility/POBUrlHandler$a;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/pubmatic/sdk/common/utility/POBUrlHandler$UrlHandlerListener;->onInternalBrowserClose(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/common/utility/POBUrlHandler$a;->b:Lcom/pubmatic/sdk/common/utility/POBUrlHandler;

    invoke-static {v0, v3}, Lcom/pubmatic/sdk/common/utility/POBUrlHandler;->a(Lcom/pubmatic/sdk/common/utility/POBUrlHandler;Z)Z

    return-void
.end method

.method public onBrowserStart()V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/common/utility/POBUrlHandler$a;->b:Lcom/pubmatic/sdk/common/utility/POBUrlHandler;

    invoke-static {v0}, Lcom/pubmatic/sdk/common/utility/POBUrlHandler;->a(Lcom/pubmatic/sdk/common/utility/POBUrlHandler;)Lcom/pubmatic/sdk/common/utility/POBUrlHandler$UrlHandlerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/common/utility/POBUrlHandler$a;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/pubmatic/sdk/common/utility/POBUrlHandler$UrlHandlerListener;->onInternalBrowserOpen(Ljava/lang/String;)V

    return-void
.end method

.method public onExternalBrowserClick(Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/pubmatic/sdk/common/utility/POBUrlHandler;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "Opening current page in device\'s default browser. url :%s"

    invoke-static {v0, v4, v2}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/common/utility/POBUrlHandler$a;->b:Lcom/pubmatic/sdk/common/utility/POBUrlHandler;

    invoke-static {v0}, Lcom/pubmatic/sdk/common/utility/POBUrlHandler;->b(Lcom/pubmatic/sdk/common/utility/POBUrlHandler;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/pubmatic/sdk/common/utility/POBUtils;->openExternalBrowser(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/common/utility/POBUrlHandler$a;->b:Lcom/pubmatic/sdk/common/utility/POBUrlHandler;

    invoke-static {v0}, Lcom/pubmatic/sdk/common/utility/POBUrlHandler;->a(Lcom/pubmatic/sdk/common/utility/POBUrlHandler;)Lcom/pubmatic/sdk/common/utility/POBUrlHandler$UrlHandlerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/pubmatic/sdk/common/utility/POBUrlHandler$UrlHandlerListener;->onLeaveApp(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/common/utility/POBUrlHandler$a;->b:Lcom/pubmatic/sdk/common/utility/POBUrlHandler;

    invoke-static {v0}, Lcom/pubmatic/sdk/common/utility/POBUrlHandler;->a(Lcom/pubmatic/sdk/common/utility/POBUrlHandler;)Lcom/pubmatic/sdk/common/utility/POBUrlHandler$UrlHandlerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/pubmatic/sdk/common/utility/POBUrlHandler$UrlHandlerListener;->onErrorOpenUrl(Ljava/lang/String;)V

    invoke-static {}, Lcom/pubmatic/sdk/common/utility/POBUrlHandler;->a()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const-string p1, "Unable to open url in external browser from internal browser %s"

    invoke-static {v0, p1, v1}, Lcom/pubmatic/sdk/common/log/PMLog;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
