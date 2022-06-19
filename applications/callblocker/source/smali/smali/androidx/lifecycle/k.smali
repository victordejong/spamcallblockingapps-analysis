.class public Landroidx/lifecycle/k;
.super Landroid/app/Service;
.source "LifecycleService.java"

# interfaces
.implements Landroidx/lifecycle/h;


# instance fields
.field private final a:Landroidx/lifecycle/r;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 32
    new-instance v0, Landroidx/lifecycle/r;

    invoke-direct {v0, p0}, Landroidx/lifecycle/r;-><init>(Landroidx/lifecycle/h;)V

    iput-object v0, p0, Landroidx/lifecycle/k;->a:Landroidx/lifecycle/r;

    return-void
.end method


# virtual methods
.method public b()Landroidx/lifecycle/e;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Landroidx/lifecycle/k;->a:Landroidx/lifecycle/r;

    invoke-virtual {v0}, Landroidx/lifecycle/r;->e()Landroidx/lifecycle/e;

    move-result-object v0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Landroidx/lifecycle/k;->a:Landroidx/lifecycle/r;

    invoke-virtual {v0}, Landroidx/lifecycle/r;->b()V

    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Landroidx/lifecycle/k;->a:Landroidx/lifecycle/r;

    invoke-virtual {v0}, Landroidx/lifecycle/r;->a()V

    .line 38
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 39
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Landroidx/lifecycle/k;->a:Landroidx/lifecycle/r;

    invoke-virtual {v0}, Landroidx/lifecycle/r;->d()V

    .line 71
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 72
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Landroidx/lifecycle/k;->a:Landroidx/lifecycle/r;

    invoke-virtual {v0}, Landroidx/lifecycle/r;->c()V

    .line 54
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 55
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .prologue
    .line 64
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
