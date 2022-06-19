.class public final Lcom/flurry/sdk/kk$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/kk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/flurry/sdk/kk;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/kk;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/kk$1;->a:Lcom/flurry/sdk/kk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/app/Activity;Lcom/flurry/sdk/kj$a;)V
    .locals 2

    new-instance v0, Lcom/flurry/sdk/kj;

    invoke-direct {v0}, Lcom/flurry/sdk/kj;-><init>()V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/flurry/sdk/kj;->a:Ljava/lang/ref/WeakReference;

    iput-object p1, v0, Lcom/flurry/sdk/kj;->b:Lcom/flurry/sdk/kj$a;

    invoke-virtual {v0}, Lcom/flurry/sdk/ko;->b()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    invoke-static {}, Lcom/flurry/sdk/kk;->c()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onActivityCreated for activity:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1, p2, v0}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/flurry/sdk/kj$a;->a:Lcom/flurry/sdk/kj$a;

    invoke-static {p1, p2}, Lcom/flurry/sdk/kk$1;->a(Landroid/app/Activity;Lcom/flurry/sdk/kj$a;)V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3

    invoke-static {}, Lcom/flurry/sdk/kk;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onActivityDestroyed for activity:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/flurry/sdk/kj$a;->b:Lcom/flurry/sdk/kj$a;

    invoke-static {p1, v0}, Lcom/flurry/sdk/kk$1;->a(Landroid/app/Activity;Lcom/flurry/sdk/kj$a;)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    invoke-static {}, Lcom/flurry/sdk/kk;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onActivityPaused for activity:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/flurry/sdk/kj$a;->c:Lcom/flurry/sdk/kj$a;

    invoke-static {p1, v0}, Lcom/flurry/sdk/kk$1;->a(Landroid/app/Activity;Lcom/flurry/sdk/kj$a;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 3

    invoke-static {}, Lcom/flurry/sdk/kk;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onActivityResumed for activity:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/flurry/sdk/kj$a;->d:Lcom/flurry/sdk/kj$a;

    invoke-static {p1, v0}, Lcom/flurry/sdk/kk$1;->a(Landroid/app/Activity;Lcom/flurry/sdk/kj$a;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    invoke-static {}, Lcom/flurry/sdk/kk;->c()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onActivitySaveInstanceState for activity:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1, p2, v0}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/flurry/sdk/kj$a;->g:Lcom/flurry/sdk/kj$a;

    invoke-static {p1, p2}, Lcom/flurry/sdk/kk$1;->a(Landroid/app/Activity;Lcom/flurry/sdk/kj$a;)V

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 3

    invoke-static {}, Lcom/flurry/sdk/kk;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onActivityStarted for activity:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/flurry/sdk/kj$a;->e:Lcom/flurry/sdk/kj$a;

    invoke-static {p1, v0}, Lcom/flurry/sdk/kk$1;->a(Landroid/app/Activity;Lcom/flurry/sdk/kj$a;)V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 3

    invoke-static {}, Lcom/flurry/sdk/kk;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onActivityStopped for activity:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/flurry/sdk/kj$a;->f:Lcom/flurry/sdk/kj$a;

    invoke-static {p1, v0}, Lcom/flurry/sdk/kk$1;->a(Landroid/app/Activity;Lcom/flurry/sdk/kj$a;)V

    return-void
.end method
