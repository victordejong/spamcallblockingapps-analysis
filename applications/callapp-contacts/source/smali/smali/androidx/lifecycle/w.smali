.class public final Landroidx/lifecycle/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/p;


# static fields
.field private static final i:Landroidx/lifecycle/w;


# instance fields
.field a:I

.field b:I

.field c:Z

.field d:Landroid/os/Handler;

.field final e:Landroidx/lifecycle/LifecycleRegistry;

.field f:Ljava/lang/Runnable;

.field g:Landroidx/lifecycle/ReportFragment$a;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 92
    new-instance v0, Landroidx/lifecycle/w;

    invoke-direct {v0}, Landroidx/lifecycle/w;-><init>()V

    sput-object v0, Landroidx/lifecycle/w;->i:Landroidx/lifecycle/w;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Landroidx/lifecycle/w;->a:I

    .line 59
    iput v0, p0, Landroidx/lifecycle/w;->b:I

    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Landroidx/lifecycle/w;->c:Z

    .line 62
    iput-boolean v0, p0, Landroidx/lifecycle/w;->h:Z

    .line 65
    new-instance v0, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v0, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/p;)V

    iput-object v0, p0, Landroidx/lifecycle/w;->e:Landroidx/lifecycle/LifecycleRegistry;

    .line 67
    new-instance v0, Landroidx/lifecycle/w$1;

    invoke-direct {v0, p0}, Landroidx/lifecycle/w$1;-><init>(Landroidx/lifecycle/w;)V

    iput-object v0, p0, Landroidx/lifecycle/w;->f:Ljava/lang/Runnable;

    .line 75
    new-instance v0, Landroidx/lifecycle/w$2;

    invoke-direct {v0, p0}, Landroidx/lifecycle/w$2;-><init>(Landroidx/lifecycle/w;)V

    iput-object v0, p0, Landroidx/lifecycle/w;->g:Landroidx/lifecycle/ReportFragment$a;

    return-void
.end method

.method public static a()Landroidx/lifecycle/p;
    .locals 1

    .line 102
    sget-object v0, Landroidx/lifecycle/w;->i:Landroidx/lifecycle/w;

    return-object v0
.end method

.method static a(Landroid/content/Context;)V
    .locals 3

    .line 106
    sget-object v0, Landroidx/lifecycle/w;->i:Landroidx/lifecycle/w;

    .line 1160
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, v0, Landroidx/lifecycle/w;->d:Landroid/os/Handler;

    .line 1161
    iget-object v1, v0, Landroidx/lifecycle/w;->e:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v2, Landroidx/lifecycle/j$a;->ON_CREATE:Landroidx/lifecycle/j$a;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/j$a;)V

    .line 1162
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    .line 1163
    new-instance v1, Landroidx/lifecycle/w$3;

    invoke-direct {v1, v0}, Landroidx/lifecycle/w$3;-><init>(Landroidx/lifecycle/w;)V

    invoke-virtual {p0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method


# virtual methods
.method final b()V
    .locals 2

    .line 110
    iget v0, p0, Landroidx/lifecycle/w;->a:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/lifecycle/w;->a:I

    if-ne v0, v1, :cond_0

    .line 111
    iget-boolean v0, p0, Landroidx/lifecycle/w;->h:Z

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Landroidx/lifecycle/w;->e:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/j$a;->ON_START:Landroidx/lifecycle/j$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/j$a;)V

    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Landroidx/lifecycle/w;->h:Z

    :cond_0
    return-void
.end method

.method final c()V
    .locals 2

    .line 118
    iget v0, p0, Landroidx/lifecycle/w;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/lifecycle/w;->b:I

    if-ne v0, v1, :cond_1

    .line 120
    iget-boolean v0, p0, Landroidx/lifecycle/w;->c:Z

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Landroidx/lifecycle/w;->e:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/j$a;->ON_RESUME:Landroidx/lifecycle/j$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/j$a;)V

    const/4 v0, 0x0

    .line 122
    iput-boolean v0, p0, Landroidx/lifecycle/w;->c:Z

    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Landroidx/lifecycle/w;->d:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/lifecycle/w;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method final d()V
    .locals 2

    .line 149
    iget v0, p0, Landroidx/lifecycle/w;->a:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/lifecycle/w;->c:Z

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Landroidx/lifecycle/w;->e:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/j$a;->ON_STOP:Landroidx/lifecycle/j$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/j$a;)V

    const/4 v0, 0x1

    .line 151
    iput-boolean v0, p0, Landroidx/lifecycle/w;->h:Z

    :cond_0
    return-void
.end method

.method public final getLifecycle()Landroidx/lifecycle/j;
    .locals 1

    .line 212
    iget-object v0, p0, Landroidx/lifecycle/w;->e:Landroidx/lifecycle/LifecycleRegistry;

    return-object v0
.end method
