.class Lcom/applovin/impl/sdk/e/q$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/e/q;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/applovin/impl/sdk/e/q;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/e/q;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/e/q$1;->a:Lcom/applovin/impl/sdk/e/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/e/q$1;->a:Lcom/applovin/impl/sdk/e/q;

    new-instance v2, Lcom/applovin/impl/adview/d;

    new-instance v3, Lcom/applovin/impl/sdk/e/q$a;

    iget-object v4, p0, Lcom/applovin/impl/sdk/e/q$1;->a:Lcom/applovin/impl/sdk/e/q;

    iget-object v5, v4, Lcom/applovin/impl/sdk/e/a;->b:Lcom/applovin/impl/sdk/l;

    invoke-direct {v3, v4, v5, v0}, Lcom/applovin/impl/sdk/e/q$a;-><init>(Lcom/applovin/impl/sdk/e/q;Lcom/applovin/impl/sdk/l;Lcom/applovin/impl/sdk/e/q$1;)V

    iget-object v4, p0, Lcom/applovin/impl/sdk/e/q$1;->a:Lcom/applovin/impl/sdk/e/q;

    iget-object v5, v4, Lcom/applovin/impl/sdk/e/a;->b:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v4}, Lcom/applovin/impl/sdk/e/a;->f()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v3, v5, v4}, Lcom/applovin/impl/adview/d;-><init>(Lcom/applovin/impl/adview/e;Lcom/applovin/impl/sdk/l;Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/applovin/impl/sdk/e/q;->a(Lcom/applovin/impl/sdk/e/q;Lcom/applovin/impl/adview/d;)Lcom/applovin/impl/adview/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/q$1;->a:Lcom/applovin/impl/sdk/e/q;

    invoke-static {v0}, Lcom/applovin/impl/sdk/e/q;->c(Lcom/applovin/impl/sdk/e/q;)Lcom/applovin/impl/adview/d;

    move-result-object v1

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/q$1;->a:Lcom/applovin/impl/sdk/e/q;

    invoke-static {v0}, Lcom/applovin/impl/sdk/e/q;->b(Lcom/applovin/impl/sdk/e/q;)Lcom/applovin/impl/sdk/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/e;->as()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/q$1;->a:Lcom/applovin/impl/sdk/e/q;

    invoke-static {v0}, Lcom/applovin/impl/sdk/e/q;->b(Lcom/applovin/impl/sdk/e/q;)Lcom/applovin/impl/sdk/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/a;->b()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const-string v4, "text/html"

    const-string v6, ""

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/q$1;->a:Lcom/applovin/impl/sdk/e/q;

    iget-object v2, v2, Lcom/applovin/impl/sdk/e/a;->b:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/l;->G()Lcom/applovin/impl/mediation/h;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/q$1;->a:Lcom/applovin/impl/sdk/e/q;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/mediation/h;->b(Lcom/applovin/impl/mediation/h$a;)V

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/q$1;->a:Lcom/applovin/impl/sdk/e/q;

    const-string v3, "Failed to initialize WebView"

    invoke-virtual {v2, v3, v1}, Lcom/applovin/impl/sdk/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/q$1;->a:Lcom/applovin/impl/sdk/e/q;

    invoke-static {v1}, Lcom/applovin/impl/sdk/e/q;->a(Lcom/applovin/impl/sdk/e/q;)Lcom/applovin/sdk/AppLovinAdLoadListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/q$1;->a:Lcom/applovin/impl/sdk/e/q;

    invoke-static {v1}, Lcom/applovin/impl/sdk/e/q;->a(Lcom/applovin/impl/sdk/e/q;)Lcom/applovin/sdk/AppLovinAdLoadListener;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/applovin/sdk/AppLovinAdLoadListener;->failedToReceiveAd(I)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/q$1;->a:Lcom/applovin/impl/sdk/e/q;

    invoke-static {v1, v0}, Lcom/applovin/impl/sdk/e/q;->a(Lcom/applovin/impl/sdk/e/q;Lcom/applovin/sdk/AppLovinAdLoadListener;)Lcom/applovin/sdk/AppLovinAdLoadListener;

    :cond_0
    return-void
.end method
