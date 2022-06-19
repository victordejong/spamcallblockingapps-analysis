.class public Lye;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lqe;


# static fields
.field public static final k:Lye;


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field public d:Z

.field public f:Landroid/os/Handler;

.field public final g:Lre;

.field public h:Ljava/lang/Runnable;

.field public j:Lze$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lye;

    invoke-direct {v0}, Lye;-><init>()V

    sput-object v0, Lye;->k:Lye;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lye;->a:I

    iput v0, p0, Lye;->b:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lye;->c:Z

    iput-boolean v0, p0, Lye;->d:Z

    new-instance v0, Lre;

    invoke-direct {v0, p0}, Lre;-><init>(Lqe;)V

    iput-object v0, p0, Lye;->g:Lre;

    new-instance v0, Lye$a;

    invoke-direct {v0, p0}, Lye$a;-><init>(Lye;)V

    iput-object v0, p0, Lye;->h:Ljava/lang/Runnable;

    new-instance v0, Lye$b;

    invoke-direct {v0, p0}, Lye$b;-><init>(Lye;)V

    iput-object v0, p0, Lye;->j:Lze$a;

    return-void
.end method

.method public static h(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lye;->k:Lye;

    invoke-virtual {v0, p0}, Lye;->e(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget v0, p0, Lye;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lye;->b:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lye;->f:Landroid/os/Handler;

    iget-object v1, p0, Lye;->h:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    iget v0, p0, Lye;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lye;->b:I

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lye;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lye;->g:Lre;

    sget-object v1, Lme$a;->ON_RESUME:Lme$a;

    invoke-virtual {v0, v1}, Lre;->i(Lme$a;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lye;->c:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lye;->f:Landroid/os/Handler;

    iget-object v1, p0, Lye;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c()V
    .locals 2

    iget v0, p0, Lye;->a:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lye;->a:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lye;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lye;->g:Lre;

    sget-object v1, Lme$a;->ON_START:Lme$a;

    invoke-virtual {v0, v1}, Lre;->i(Lme$a;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lye;->d:Z

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    iget v0, p0, Lye;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lye;->a:I

    invoke-virtual {p0}, Lye;->g()V

    return-void
.end method

.method public e(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lye;->f:Landroid/os/Handler;

    iget-object v0, p0, Lye;->g:Lre;

    sget-object v1, Lme$a;->ON_CREATE:Lme$a;

    invoke-virtual {v0, v1}, Lre;->i(Lme$a;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    new-instance v0, Lye$c;

    invoke-direct {v0, p0}, Lye$c;-><init>(Lye;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public f()V
    .locals 2

    iget v0, p0, Lye;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lye;->c:Z

    iget-object v0, p0, Lye;->g:Lre;

    sget-object v1, Lme$a;->ON_PAUSE:Lme$a;

    invoke-virtual {v0, v1}, Lre;->i(Lme$a;)V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 2

    iget v0, p0, Lye;->a:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lye;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lye;->g:Lre;

    sget-object v1, Lme$a;->ON_STOP:Lme$a;

    invoke-virtual {v0, v1}, Lre;->i(Lme$a;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lye;->d:Z

    :cond_0
    return-void
.end method

.method public getLifecycle()Lme;
    .locals 1

    iget-object v0, p0, Lye;->g:Lre;

    return-object v0
.end method
