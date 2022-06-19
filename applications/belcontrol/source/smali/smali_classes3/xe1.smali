.class public Lxe1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lwe1;


# instance fields
.field public final a:Ljava/util/concurrent/ScheduledExecutorService;

.field public b:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field public c:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field public final d:Lmf1;

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Landroid/webkit/WebView;

.field public i:Lwe1$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmf1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lxe1;->e:I

    iput-boolean p1, p0, Lxe1;->f:Z

    iput-boolean p1, p0, Lxe1;->g:Z

    iput-object p2, p0, Lxe1;->d:Lmf1;

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lxe1;->a:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public static synthetic c(Lxe1;)V
    .locals 0

    invoke-virtual {p0}, Lxe1;->o()V

    return-void
.end method

.method public static synthetic d(Lxe1;)Lmf1;
    .locals 0

    iget-object p0, p0, Lxe1;->d:Lmf1;

    return-object p0
.end method

.method public static synthetic e(Lxe1;)I
    .locals 0

    iget p0, p0, Lxe1;->e:I

    return p0
.end method

.method public static synthetic f(Lxe1;I)I
    .locals 0

    iput p1, p0, Lxe1;->e:I

    return p1
.end method

.method public static synthetic g(Lxe1;)I
    .locals 2

    iget v0, p0, Lxe1;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lxe1;->e:I

    return v0
.end method

.method public static synthetic h(Lxe1;)V
    .locals 0

    invoke-virtual {p0}, Lxe1;->p()V

    return-void
.end method

.method public static synthetic i(Lxe1;)V
    .locals 0

    invoke-virtual {p0}, Lxe1;->k()V

    return-void
.end method

.method public static synthetic j(Lxe1;)V
    .locals 0

    invoke-virtual {p0}, Lxe1;->l()V

    return-void
.end method


# virtual methods
.method public a(Landroid/webkit/WebView;Lwe1$a;)Z
    .locals 3

    iget-object v0, p0, Lxe1;->d:Lmf1;

    invoke-interface {v0}, Lmf1;->b()Z

    move-result v0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    const-string p1, "MoatJavaScriptBridge"

    const-string p2, "JavaScript is not enabled in the given WebView. Can\'t track."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    iput-object p1, p0, Lxe1;->h:Landroid/webkit/WebView;

    iput-object p2, p0, Lxe1;->i:Lwe1$a;

    invoke-virtual {p0}, Lxe1;->m()V

    invoke-virtual {p0}, Lxe1;->n()V

    iget-object p1, p0, Lxe1;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p2, Lxe1$a;

    invoke-direct {p2, p0}, Lxe1$a;-><init>(Lxe1;)V

    const-wide/16 v0, 0xa

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, p2, v0, v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    const/4 p1, 0x1

    return p1
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lxe1;->d:Lmf1;

    invoke-interface {v0}, Lmf1;->getStatus()Lmf1$b;

    move-result-object v0

    sget-object v1, Lmf1$b;->a:Lmf1$b;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lxe1;->o()V

    invoke-virtual {p0}, Lxe1;->p()V

    return-void
.end method

.method public final k()V
    .locals 5

    const-string v0, "MoatJavaScriptBridge"

    :try_start_0
    iget-object v1, p0, Lxe1;->d:Lmf1;

    invoke-interface {v1}, Lmf1;->getStatus()Lmf1$b;

    move-result-object v1

    sget-object v2, Lmf1$b;->a:Lmf1$b;

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lxe1;->d:Lmf1;

    invoke-interface {v1}, Lmf1;->b()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lxe1;->g:Z

    if-nez v1, :cond_1

    const-string v1, "Ready for communication (setting environment variables)."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lxe1;->g:Z

    :cond_1
    const-string v1, "javascript:(function(b,f){function g(){function b(a,e){for(k in a)if(a.hasOwnProperty(k)){var c=a[k].fn;if(\'function\'===typeof c)try{e?c(e):c()}catch(d){}}}function d(a,b,c){\'function\'===typeof a&&(c[b]={ts:+new Date,fn:a})}bjmk={};uqaj={};yhgt={};ryup=dptk=!1;this.a=function(a){this.namespace=a.namespace;this.version=a.version;this.appName=a.appName;this.deviceOS=a.deviceOS;this.isNative=a.isNative;this.versionHash=a.versionHash};this.bpsy=function(a){dptk||ryup||d(a,+new Date,bjmk)};this.qmrv=function(a){ryup||d(a,+new Date,uqaj)};this.lgpr=function(a,b){d(a,b,yhgt)};this.xrnk=function(a){yhgt.hasOwnProperty(a)&&delete yhgt[a]};this.vgft=function(){return dptk};this.lkpu=function(){return ryup};this.mqjh=function(){dptk||ryup||(dptk=!0,b(bjmk))};this.egpw=function(){ryup||(ryup=!0,b(uqaj))};this.sglu=function(a){b(yhgt,a);return 0<Object.keys(yhgt).length}}\'undefined\'===typeof b.MoatMAK&&(b.MoatMAK=new g,b.MoatMAK.a(f),b.__zMoatInit__=!0)})(window,%s);"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lxe1;->i:Lwe1$a;

    invoke-interface {v4}, Lwe1$a;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lxe1;->h:Landroid/webkit/WebView;

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lxe1;->d:Lmf1;

    invoke-interface {v2}, Lmf1;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "Failed to initialize communication (did not set environment variables)."

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public final l()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    :try_start_0
    iget-object v0, p0, Lxe1;->d:Lmf1;

    invoke-interface {v0}, Lmf1;->getStatus()Lmf1$b;

    move-result-object v0

    sget-object v1, Lmf1$b;->a:Lmf1$b;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lxe1;->h:Landroid/webkit/WebView;

    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lxe1;->f:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lxe1;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lxe1;->f:Z

    :cond_2
    iget-object v0, p0, Lxe1;->i:Lwe1$a;

    invoke-interface {v0}, Lwe1$a;->d()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MoatMAK.sglu(%s)"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_3

    iget-object v1, p0, Lxe1;->h:Landroid/webkit/WebView;

    new-instance v2, Lxe1$b;

    invoke-direct {v2, p0}, Lxe1$b;-><init>(Lxe1;)V

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lxe1;->h:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    :goto_0
    iget-object v0, p0, Lxe1;->d:Lmf1;

    invoke-interface {v0}, Lmf1;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "MoatJavaScriptBridge"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebView became null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lxe1;->h:Landroid/webkit/WebView;

    if-nez v2, :cond_5

    const-string v2, ""

    goto :goto_1

    :cond_5
    const-string v2, "based on null url"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", stopping tracking loop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual {p0}, Lxe1;->p()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Luf1;->a(Ljava/lang/Exception;)V

    invoke-virtual {p0}, Lxe1;->o()V

    invoke-virtual {p0}, Lxe1;->p()V

    :goto_2
    return-void
.end method

.method public final m()V
    .locals 9

    iget-object v0, p0, Lxe1;->d:Lmf1;

    invoke-interface {v0}, Lmf1;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MoatJavaScriptBridge"

    const-string v1, "Starting metadata reporting loop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v3, Lxe1$c;

    invoke-direct {v3, p0}, Lxe1$c;-><init>(Lxe1;)V

    iget-object v2, p0, Lxe1;->a:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x32

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lxe1;->c:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public final n()V
    .locals 9

    iget-object v0, p0, Lxe1;->d:Lmf1;

    invoke-interface {v0}, Lmf1;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MoatJavaScriptBridge"

    const-string v1, "Starting view update loop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v3, Lxe1$d;

    invoke-direct {v3, p0}, Lxe1$d;-><init>(Lxe1;)V

    iget-object v2, p0, Lxe1;->a:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lxe1;->d:Lmf1;

    invoke-interface {v0}, Lmf1;->c()I

    move-result v0

    int-to-long v6, v0

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lxe1;->b:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public final o()V
    .locals 2

    iget-object v0, p0, Lxe1;->c:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lxe1;->d:Lmf1;

    invoke-interface {v0}, Lmf1;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MoatJavaScriptBridge"

    const-string v1, "Stopping metadata reporting loop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lxe1;->c:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_1
    return-void
.end method

.method public final p()V
    .locals 2

    iget-object v0, p0, Lxe1;->b:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lxe1;->d:Lmf1;

    invoke-interface {v0}, Lmf1;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MoatJavaScriptBridge"

    const-string v1, "Stopping view update loop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lxe1;->b:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_1
    return-void
.end method
