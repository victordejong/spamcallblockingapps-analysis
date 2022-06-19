.class final Lcom/facebook/a/d/a$2;
.super Ljava/lang/Object;
.source "ActivityLifecycleTracker.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/a/d/a;->a(Landroid/app/Application;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 97
    sget-object v0, Lcom/facebook/q;->e:Lcom/facebook/q;

    invoke-static {}, Lcom/facebook/a/d/a;->d()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onActivityCreated"

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/r;->a(Lcom/facebook/q;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-static {}, Lcom/facebook/a/d/b;->b()V

    .line 99
    invoke-static {p1}, Lcom/facebook/a/d/a;->a(Landroid/app/Activity;)V

    .line 100
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 136
    sget-object v0, Lcom/facebook/q;->e:Lcom/facebook/q;

    invoke-static {}, Lcom/facebook/a/d/a;->d()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onActivityDestroyed"

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/r;->a(Lcom/facebook/q;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-static {p1}, Lcom/facebook/a/d/a;->d(Landroid/app/Activity;)V

    .line 138
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 117
    sget-object v0, Lcom/facebook/q;->e:Lcom/facebook/q;

    invoke-static {}, Lcom/facebook/a/d/a;->d()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onActivityPaused"

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/r;->a(Lcom/facebook/q;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lcom/facebook/a/d/b;->b()V

    .line 119
    invoke-static {p1}, Lcom/facebook/a/d/a;->c(Landroid/app/Activity;)V

    .line 120
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 110
    sget-object v0, Lcom/facebook/q;->e:Lcom/facebook/q;

    invoke-static {}, Lcom/facebook/a/d/a;->d()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onActivityResumed"

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/r;->a(Lcom/facebook/q;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-static {}, Lcom/facebook/a/d/b;->b()V

    .line 112
    invoke-static {p1}, Lcom/facebook/a/d/a;->b(Landroid/app/Activity;)V

    .line 113
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 131
    sget-object v0, Lcom/facebook/q;->e:Lcom/facebook/q;

    invoke-static {}, Lcom/facebook/a/d/a;->d()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onActivitySaveInstanceState"

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/r;->a(Lcom/facebook/q;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 104
    invoke-static {}, Lcom/facebook/a/d/a;->e()I

    .line 105
    sget-object v0, Lcom/facebook/q;->e:Lcom/facebook/q;

    invoke-static {}, Lcom/facebook/a/d/a;->d()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onActivityStarted"

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/r;->a(Lcom/facebook/q;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 124
    sget-object v0, Lcom/facebook/q;->e:Lcom/facebook/q;

    invoke-static {}, Lcom/facebook/a/d/a;->d()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onActivityStopped"

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/r;->a(Lcom/facebook/q;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-static {}, Lcom/facebook/a/g;->c()V

    .line 126
    invoke-static {}, Lcom/facebook/a/d/a;->f()I

    .line 127
    return-void
.end method
