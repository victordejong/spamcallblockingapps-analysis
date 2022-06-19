.class public Landroidx/lifecycle/p;
.super Ljava/lang/Object;
.source "ProcessLifecycleOwner.java"

# interfaces
.implements Landroidx/lifecycle/h;


# static fields
.field private static final d:Landroidx/lifecycle/p;


# instance fields
.field private e:I

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Landroid/os/Handler;

.field private final j:Landroidx/lifecycle/i;

.field private k:Ljava/lang/Runnable;

.field l:Landroidx/lifecycle/ReportFragment$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/p;

    invoke-direct {v0}, Landroidx/lifecycle/p;-><init>()V

    sput-object v0, Landroidx/lifecycle/p;->d:Landroidx/lifecycle/p;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/lifecycle/p;->e:I

    .line 3
    iput v0, p0, Landroidx/lifecycle/p;->f:I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroidx/lifecycle/p;->g:Z

    .line 5
    iput-boolean v0, p0, Landroidx/lifecycle/p;->h:Z

    .line 6
    new-instance v0, Landroidx/lifecycle/i;

    invoke-direct {v0, p0}, Landroidx/lifecycle/i;-><init>(Landroidx/lifecycle/h;)V

    iput-object v0, p0, Landroidx/lifecycle/p;->j:Landroidx/lifecycle/i;

    .line 7
    new-instance v0, Landroidx/lifecycle/p$a;

    invoke-direct {v0, p0}, Landroidx/lifecycle/p$a;-><init>(Landroidx/lifecycle/p;)V

    iput-object v0, p0, Landroidx/lifecycle/p;->k:Ljava/lang/Runnable;

    .line 8
    new-instance v0, Landroidx/lifecycle/p$b;

    invoke-direct {v0, p0}, Landroidx/lifecycle/p$b;-><init>(Landroidx/lifecycle/p;)V

    iput-object v0, p0, Landroidx/lifecycle/p;->l:Landroidx/lifecycle/ReportFragment$a;

    return-void
.end method

.method public static j()Landroidx/lifecycle/h;
    .locals 1

    .line 1
    sget-object v0, Landroidx/lifecycle/p;->d:Landroidx/lifecycle/p;

    return-object v0
.end method

.method static k(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget-object v0, Landroidx/lifecycle/p;->d:Landroidx/lifecycle/p;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/p;->g(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a()Landroidx/lifecycle/Lifecycle;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/p;->j:Landroidx/lifecycle/i;

    return-object v0
.end method

.method b()V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/lifecycle/p;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/lifecycle/p;->f:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/lifecycle/p;->i:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/lifecycle/p;->k:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method d()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/lifecycle/p;->f:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/lifecycle/p;->f:I

    if-ne v0, v1, :cond_1

    .line 2
    iget-boolean v0, p0, Landroidx/lifecycle/p;->g:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/lifecycle/p;->j:Landroidx/lifecycle/i;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i;->h(Landroidx/lifecycle/Lifecycle$Event;)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroidx/lifecycle/p;->g:Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Landroidx/lifecycle/p;->i:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/lifecycle/p;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method e()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/lifecycle/p;->e:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/lifecycle/p;->e:I

    if-ne v0, v1, :cond_0

    .line 2
    iget-boolean v0, p0, Landroidx/lifecycle/p;->h:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/lifecycle/p;->j:Landroidx/lifecycle/i;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i;->h(Landroidx/lifecycle/Lifecycle$Event;)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroidx/lifecycle/p;->h:Z

    :cond_0
    return-void
.end method

.method f()V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/lifecycle/p;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/lifecycle/p;->e:I

    .line 2
    invoke-virtual {p0}, Landroidx/lifecycle/p;->i()V

    return-void
.end method

.method g(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/p;->i:Landroid/os/Handler;

    .line 2
    iget-object v0, p0, Landroidx/lifecycle/p;->j:Landroidx/lifecycle/i;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i;->h(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    .line 4
    new-instance v0, Landroidx/lifecycle/p$c;

    invoke-direct {v0, p0}, Landroidx/lifecycle/p$c;-><init>(Landroidx/lifecycle/p;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method h()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/lifecycle/p;->f:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/lifecycle/p;->g:Z

    .line 3
    iget-object v0, p0, Landroidx/lifecycle/p;->j:Landroidx/lifecycle/i;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i;->h(Landroidx/lifecycle/Lifecycle$Event;)V

    :cond_0
    return-void
.end method

.method i()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/lifecycle/p;->e:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/lifecycle/p;->g:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/lifecycle/p;->j:Landroidx/lifecycle/i;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i;->h(Landroidx/lifecycle/Lifecycle$Event;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroidx/lifecycle/p;->h:Z

    :cond_0
    return-void
.end method
