.class public Landroidx/lifecycle/r;
.super Ljava/lang/Object;
.source "ServiceLifecycleDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/r$a;
    }
.end annotation


# instance fields
.field private final a:Landroidx/lifecycle/i;

.field private final b:Landroid/os/Handler;

.field private c:Landroidx/lifecycle/r$a;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/h;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroidx/lifecycle/i;

    invoke-direct {v0, p1}, Landroidx/lifecycle/i;-><init>(Landroidx/lifecycle/h;)V

    iput-object v0, p0, Landroidx/lifecycle/r;->a:Landroidx/lifecycle/i;

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/r;->b:Landroid/os/Handler;

    .line 41
    return-void
.end method

.method private a(Landroidx/lifecycle/e$a;)V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Landroidx/lifecycle/r;->c:Landroidx/lifecycle/r$a;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Landroidx/lifecycle/r;->c:Landroidx/lifecycle/r$a;

    invoke-virtual {v0}, Landroidx/lifecycle/r$a;->run()V

    .line 47
    :cond_0
    new-instance v0, Landroidx/lifecycle/r$a;

    iget-object v1, p0, Landroidx/lifecycle/r;->a:Landroidx/lifecycle/i;

    invoke-direct {v0, v1, p1}, Landroidx/lifecycle/r$a;-><init>(Landroidx/lifecycle/i;Landroidx/lifecycle/e$a;)V

    iput-object v0, p0, Landroidx/lifecycle/r;->c:Landroidx/lifecycle/r$a;

    .line 48
    iget-object v0, p0, Landroidx/lifecycle/r;->b:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/lifecycle/r;->c:Landroidx/lifecycle/r$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 49
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 55
    sget-object v0, Landroidx/lifecycle/e$a;->ON_CREATE:Landroidx/lifecycle/e$a;

    invoke-direct {p0, v0}, Landroidx/lifecycle/r;->a(Landroidx/lifecycle/e$a;)V

    .line 56
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 63
    sget-object v0, Landroidx/lifecycle/e$a;->ON_START:Landroidx/lifecycle/e$a;

    invoke-direct {p0, v0}, Landroidx/lifecycle/r;->a(Landroidx/lifecycle/e$a;)V

    .line 64
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 72
    sget-object v0, Landroidx/lifecycle/e$a;->ON_START:Landroidx/lifecycle/e$a;

    invoke-direct {p0, v0}, Landroidx/lifecycle/r;->a(Landroidx/lifecycle/e$a;)V

    .line 73
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 80
    sget-object v0, Landroidx/lifecycle/e$a;->ON_STOP:Landroidx/lifecycle/e$a;

    invoke-direct {p0, v0}, Landroidx/lifecycle/r;->a(Landroidx/lifecycle/e$a;)V

    .line 81
    sget-object v0, Landroidx/lifecycle/e$a;->ON_DESTROY:Landroidx/lifecycle/e$a;

    invoke-direct {p0, v0}, Landroidx/lifecycle/r;->a(Landroidx/lifecycle/e$a;)V

    .line 82
    return-void
.end method

.method public e()Landroidx/lifecycle/e;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Landroidx/lifecycle/r;->a:Landroidx/lifecycle/i;

    return-object v0
.end method
