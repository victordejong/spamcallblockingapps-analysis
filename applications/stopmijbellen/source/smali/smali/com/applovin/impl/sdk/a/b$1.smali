.class Lcom/applovin/impl/sdk/a/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/a/b;->b(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/webkit/WebView;

.field public final synthetic b:Lcom/applovin/impl/sdk/a/b;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/a/b;Landroid/webkit/WebView;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/a/b$1;->b:Lcom/applovin/impl/sdk/a/b;

    iput-object p2, p0, Lcom/applovin/impl/sdk/a/b$1;->a:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/a/b$1;->b:Lcom/applovin/impl/sdk/a/b;

    iget-object v0, v0, Lcom/applovin/impl/sdk/a/b;->a:Lcom/applovin/impl/sdk/AppLovinAdBase;

    invoke-interface {v0}, Lcom/applovin/impl/sdk/a/a;->isOpenMeasurementEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/a/b$1;->b:Lcom/applovin/impl/sdk/a/b;

    iget-object v1, v0, Lcom/applovin/impl/sdk/a/b;->c:Lcom/applovin/impl/sdk/t;

    iget-object v0, v0, Lcom/applovin/impl/sdk/a/b;->d:Ljava/lang/String;

    const-string v2, "Skip starting session - Open Measurement disabled"

    invoke-virtual {v1, v0, v2}, Lcom/applovin/impl/sdk/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/a/b$1;->b:Lcom/applovin/impl/sdk/a/b;

    iget-object v1, v0, Lcom/applovin/impl/sdk/a/b;->f:Lcom/iab/omid/library/applovin/adsession/AdSession;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/applovin/impl/sdk/a/b;->c:Lcom/applovin/impl/sdk/t;

    iget-object v0, v0, Lcom/applovin/impl/sdk/a/b;->d:Ljava/lang/String;

    const-string v2, "Attempting to start session again for ad: "

    invoke-static {v2}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/a/b$1;->b:Lcom/applovin/impl/sdk/a/b;

    iget-object v3, v3, Lcom/applovin/impl/sdk/a/b;->a:Lcom/applovin/impl/sdk/AppLovinAdBase;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/applovin/impl/sdk/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, v0, Lcom/applovin/impl/sdk/a/b;->c:Lcom/applovin/impl/sdk/t;

    iget-object v0, v0, Lcom/applovin/impl/sdk/a/b;->d:Ljava/lang/String;

    const-string v2, "Starting session"

    invoke-virtual {v1, v0, v2}, Lcom/applovin/impl/sdk/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/a/b$1;->b:Lcom/applovin/impl/sdk/a/b;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/a/b;->a()Lcom/iab/omid/library/applovin/adsession/AdSessionConfiguration;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/applovin/impl/sdk/a/b$1;->b:Lcom/applovin/impl/sdk/a/b;

    iget-object v2, p0, Lcom/applovin/impl/sdk/a/b$1;->a:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/a/b;->a(Landroid/webkit/WebView;)Lcom/iab/omid/library/applovin/adsession/AdSessionContext;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/applovin/impl/sdk/a/b$1;->b:Lcom/applovin/impl/sdk/a/b;

    invoke-static {v0, v1}, Lcom/iab/omid/library/applovin/adsession/AdSession;->createAdSession(Lcom/iab/omid/library/applovin/adsession/AdSessionConfiguration;Lcom/iab/omid/library/applovin/adsession/AdSessionContext;)Lcom/iab/omid/library/applovin/adsession/AdSession;

    move-result-object v0

    iput-object v0, v2, Lcom/applovin/impl/sdk/a/b;->f:Lcom/iab/omid/library/applovin/adsession/AdSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/a/b$1;->b:Lcom/applovin/impl/sdk/a/b;

    iget-object v1, v0, Lcom/applovin/impl/sdk/a/b;->f:Lcom/iab/omid/library/applovin/adsession/AdSession;

    invoke-static {v1}, Lcom/iab/omid/library/applovin/adsession/AdEvents;->createAdEvents(Lcom/iab/omid/library/applovin/adsession/AdSession;)Lcom/iab/omid/library/applovin/adsession/AdEvents;

    move-result-object v1

    iput-object v1, v0, Lcom/applovin/impl/sdk/a/b;->g:Lcom/iab/omid/library/applovin/adsession/AdEvents;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/a/b$1;->b:Lcom/applovin/impl/sdk/a/b;

    iget-object v1, v0, Lcom/applovin/impl/sdk/a/b;->f:Lcom/iab/omid/library/applovin/adsession/AdSession;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/a/b;->a(Lcom/iab/omid/library/applovin/adsession/AdSession;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/a/b$1;->b:Lcom/applovin/impl/sdk/a/b;

    iget-object v0, v0, Lcom/applovin/impl/sdk/a/b;->f:Lcom/iab/omid/library/applovin/adsession/AdSession;

    invoke-virtual {v0}, Lcom/iab/omid/library/applovin/adsession/AdSession;->start()V

    iget-object v0, p0, Lcom/applovin/impl/sdk/a/b$1;->b:Lcom/applovin/impl/sdk/a/b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/applovin/impl/sdk/a/b;->e:Z

    iget-object v1, v0, Lcom/applovin/impl/sdk/a/b;->c:Lcom/applovin/impl/sdk/t;

    iget-object v0, v0, Lcom/applovin/impl/sdk/a/b;->d:Ljava/lang/String;

    const-string v2, "Session started"

    invoke-virtual {v1, v0, v2}, Lcom/applovin/impl/sdk/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/a/b$1;->b:Lcom/applovin/impl/sdk/a/b;

    iget-object v2, v1, Lcom/applovin/impl/sdk/a/b;->c:Lcom/applovin/impl/sdk/t;

    iget-object v1, v1, Lcom/applovin/impl/sdk/a/b;->d:Ljava/lang/String;

    const-string v3, "Failed to create ad events"

    invoke-virtual {v2, v1, v3, v0}, Lcom/applovin/impl/sdk/t;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/a/b$1;->b:Lcom/applovin/impl/sdk/a/b;

    iget-object v2, v1, Lcom/applovin/impl/sdk/a/b;->c:Lcom/applovin/impl/sdk/t;

    iget-object v1, v1, Lcom/applovin/impl/sdk/a/b;->d:Ljava/lang/String;

    const-string v3, "Failed to create session"

    invoke-virtual {v2, v1, v3, v0}, Lcom/applovin/impl/sdk/t;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
