.class public Landroidx/lifecycle/s;
.super Ljava/lang/Object;
.source "ProcessLifecycleOwner.java"

# interfaces
.implements Landroidx/lifecycle/k;


# static fields
.field private static final i:Landroidx/lifecycle/s;


# instance fields
.field a:Landroidx/lifecycle/t$a;

.field private b:I

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Landroid/os/Handler;

.field private final g:Landroidx/lifecycle/l;

.field private h:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 89
    new-instance v0, Landroidx/lifecycle/s;

    invoke-direct {v0}, Landroidx/lifecycle/s;-><init>()V

    sput-object v0, Landroidx/lifecycle/s;->i:Landroidx/lifecycle/s;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Landroidx/lifecycle/s;->b:I

    .line 56
    iput v0, p0, Landroidx/lifecycle/s;->c:I

    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Landroidx/lifecycle/s;->d:Z

    .line 59
    iput-boolean v0, p0, Landroidx/lifecycle/s;->e:Z

    .line 62
    new-instance v0, Landroidx/lifecycle/l;

    invoke-direct {v0, p0}, Landroidx/lifecycle/l;-><init>(Landroidx/lifecycle/k;)V

    iput-object v0, p0, Landroidx/lifecycle/s;->g:Landroidx/lifecycle/l;

    .line 64
    new-instance v0, Landroidx/lifecycle/s$1;

    invoke-direct {v0, p0}, Landroidx/lifecycle/s$1;-><init>(Landroidx/lifecycle/s;)V

    iput-object v0, p0, Landroidx/lifecycle/s;->h:Ljava/lang/Runnable;

    .line 72
    new-instance v0, Landroidx/lifecycle/s$2;

    invoke-direct {v0, p0}, Landroidx/lifecycle/s$2;-><init>(Landroidx/lifecycle/s;)V

    iput-object v0, p0, Landroidx/lifecycle/s;->a:Landroidx/lifecycle/t$a;

    return-void
.end method

.method static a(Landroid/content/Context;)V
    .locals 1

    .line 103
    sget-object v0, Landroidx/lifecycle/s;->i:Landroidx/lifecycle/s;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/s;->b(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .line 107
    iget v0, p0, Landroidx/lifecycle/s;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/lifecycle/s;->b:I

    .line 108
    iget v0, p0, Landroidx/lifecycle/s;->b:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroidx/lifecycle/s;->e:Z

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Landroidx/lifecycle/s;->g:Landroidx/lifecycle/l;

    sget-object v1, Landroidx/lifecycle/g$a;->ON_START:Landroidx/lifecycle/g$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/l;->a(Landroidx/lifecycle/g$a;)V

    const/4 v0, 0x0

    .line 110
    iput-boolean v0, p0, Landroidx/lifecycle/s;->e:Z

    :cond_0
    return-void
.end method

.method b()V
    .locals 2

    .line 115
    iget v0, p0, Landroidx/lifecycle/s;->c:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/lifecycle/s;->c:I

    .line 116
    iget v0, p0, Landroidx/lifecycle/s;->c:I

    if-ne v0, v1, :cond_1

    .line 117
    iget-boolean v0, p0, Landroidx/lifecycle/s;->d:Z

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Landroidx/lifecycle/s;->g:Landroidx/lifecycle/l;

    sget-object v1, Landroidx/lifecycle/g$a;->ON_RESUME:Landroidx/lifecycle/g$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/l;->a(Landroidx/lifecycle/g$a;)V

    const/4 v0, 0x0

    .line 119
    iput-boolean v0, p0, Landroidx/lifecycle/s;->d:Z

    goto :goto_0

    .line 121
    :cond_0
    iget-object v0, p0, Landroidx/lifecycle/s;->f:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/lifecycle/s;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method b(Landroid/content/Context;)V
    .locals 2

    .line 156
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/s;->f:Landroid/os/Handler;

    .line 157
    iget-object v0, p0, Landroidx/lifecycle/s;->g:Landroidx/lifecycle/l;

    sget-object v1, Landroidx/lifecycle/g$a;->ON_CREATE:Landroidx/lifecycle/g$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/l;->a(Landroidx/lifecycle/g$a;)V

    .line 158
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    .line 159
    new-instance v0, Landroidx/lifecycle/s$3;

    invoke-direct {v0, p0}, Landroidx/lifecycle/s$3;-><init>(Landroidx/lifecycle/s;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method c()V
    .locals 4

    .line 127
    iget v0, p0, Landroidx/lifecycle/s;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/lifecycle/s;->c:I

    .line 128
    iget v0, p0, Landroidx/lifecycle/s;->c:I

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Landroidx/lifecycle/s;->f:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/lifecycle/s;->h:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method d()V
    .locals 1

    .line 134
    iget v0, p0, Landroidx/lifecycle/s;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/lifecycle/s;->b:I

    .line 135
    invoke-virtual {p0}, Landroidx/lifecycle/s;->f()V

    return-void
.end method

.method e()V
    .locals 2

    .line 139
    iget v0, p0, Landroidx/lifecycle/s;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 140
    iput-boolean v0, p0, Landroidx/lifecycle/s;->d:Z

    .line 141
    iget-object v0, p0, Landroidx/lifecycle/s;->g:Landroidx/lifecycle/l;

    sget-object v1, Landroidx/lifecycle/g$a;->ON_PAUSE:Landroidx/lifecycle/g$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/l;->a(Landroidx/lifecycle/g$a;)V

    :cond_0
    return-void
.end method

.method f()V
    .locals 2

    .line 146
    iget v0, p0, Landroidx/lifecycle/s;->b:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/lifecycle/s;->d:Z

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Landroidx/lifecycle/s;->g:Landroidx/lifecycle/l;

    sget-object v1, Landroidx/lifecycle/g$a;->ON_STOP:Landroidx/lifecycle/g$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/l;->a(Landroidx/lifecycle/g$a;)V

    const/4 v0, 0x1

    .line 148
    iput-boolean v0, p0, Landroidx/lifecycle/s;->e:Z

    :cond_0
    return-void
.end method

.method public getLifecycle()Landroidx/lifecycle/g;
    .locals 1

    .line 180
    iget-object v0, p0, Landroidx/lifecycle/s;->g:Landroidx/lifecycle/l;

    return-object v0
.end method
