.class public final Lsk0$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsk0;->x(Landroid/app/Application;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    sget-object p2, Ldj0;->f:Ldj0;

    invoke-static {}, Lsk0;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onActivityCreated"

    invoke-static {p2, v0, v1}, Lxm0;->g(Ldj0;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ltk0;->a()V

    invoke-static {p1}, Lsk0;->t(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3

    sget-object v0, Ldj0;->f:Ldj0;

    invoke-static {}, Lsk0;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onActivityDestroyed"

    invoke-static {v0, v1, v2}, Lxm0;->g(Ldj0;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lsk0;->g(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    sget-object v0, Ldj0;->f:Ldj0;

    invoke-static {}, Lsk0;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onActivityPaused"

    invoke-static {v0, v1, v2}, Lxm0;->g(Ldj0;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ltk0;->a()V

    invoke-static {p1}, Lsk0;->f(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 3

    sget-object v0, Ldj0;->f:Ldj0;

    invoke-static {}, Lsk0;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onActivityResumed"

    invoke-static {v0, v1, v2}, Lxm0;->g(Ldj0;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ltk0;->a()V

    invoke-static {p1}, Lsk0;->w(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    sget-object p1, Ldj0;->f:Ldj0;

    invoke-static {}, Lsk0;->a()Ljava/lang/String;

    move-result-object p2

    const-string v0, "onActivitySaveInstanceState"

    invoke-static {p1, p2, v0}, Lxm0;->g(Ldj0;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    invoke-static {}, Lsk0;->c()I

    sget-object p1, Ldj0;->f:Ldj0;

    invoke-static {}, Lsk0;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onActivityStarted"

    invoke-static {p1, v0, v1}, Lxm0;->g(Ldj0;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    sget-object p1, Ldj0;->f:Ldj0;

    invoke-static {}, Lsk0;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onActivityStopped"

    invoke-static {p1, v0, v1}, Lxm0;->g(Ldj0;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lrj0;->i()V

    invoke-static {}, Lsk0;->d()I

    return-void
.end method
