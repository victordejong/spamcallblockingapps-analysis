.class final Lcom/facebook/appevents/f/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/f/a;->a(Landroid/app/Application;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 99
    sget-object p1, Lcom/facebook/m;->APP_EVENTS:Lcom/facebook/m;

    invoke-static {}, Lcom/facebook/appevents/f/a;->e()Ljava/lang/String;

    move-result-object p2

    const-string v0, "onActivityCreated"

    invoke-static {p1, p2, v0}, Lcom/facebook/internal/x;->a(Lcom/facebook/m;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-static {}, Lcom/facebook/appevents/f/b;->b()V

    .line 101
    invoke-static {}, Lcom/facebook/appevents/f/a;->c()V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3

    .line 138
    sget-object v0, Lcom/facebook/m;->APP_EVENTS:Lcom/facebook/m;

    invoke-static {}, Lcom/facebook/appevents/f/a;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onActivityDestroyed"

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/x;->a(Lcom/facebook/m;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-static {p1}, Lcom/facebook/appevents/f/a;->c(Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    .line 119
    sget-object v0, Lcom/facebook/m;->APP_EVENTS:Lcom/facebook/m;

    invoke-static {}, Lcom/facebook/appevents/f/a;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onActivityPaused"

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/x;->a(Lcom/facebook/m;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-static {}, Lcom/facebook/appevents/f/b;->b()V

    .line 121
    invoke-static {p1}, Lcom/facebook/appevents/f/a;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 3

    .line 112
    sget-object v0, Lcom/facebook/m;->APP_EVENTS:Lcom/facebook/m;

    invoke-static {}, Lcom/facebook/appevents/f/a;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onActivityResumed"

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/x;->a(Lcom/facebook/m;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lcom/facebook/appevents/f/b;->b()V

    .line 114
    invoke-static {p1}, Lcom/facebook/appevents/f/a;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 133
    sget-object p1, Lcom/facebook/m;->APP_EVENTS:Lcom/facebook/m;

    invoke-static {}, Lcom/facebook/appevents/f/a;->e()Ljava/lang/String;

    move-result-object p2

    const-string v0, "onActivitySaveInstanceState"

    invoke-static {p1, p2, v0}, Lcom/facebook/internal/x;->a(Lcom/facebook/m;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    .line 106
    invoke-static {}, Lcom/facebook/appevents/f/a;->f()I

    .line 107
    sget-object p1, Lcom/facebook/m;->APP_EVENTS:Lcom/facebook/m;

    invoke-static {}, Lcom/facebook/appevents/f/a;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onActivityStarted"

    invoke-static {p1, v0, v1}, Lcom/facebook/internal/x;->a(Lcom/facebook/m;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    .line 126
    sget-object p1, Lcom/facebook/m;->APP_EVENTS:Lcom/facebook/m;

    invoke-static {}, Lcom/facebook/appevents/f/a;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onActivityStopped"

    invoke-static {p1, v0, v1}, Lcom/facebook/internal/x;->a(Lcom/facebook/m;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-static {}, Lcom/facebook/appevents/g;->b()V

    .line 128
    invoke-static {}, Lcom/facebook/appevents/f/a;->g()I

    return-void
.end method
