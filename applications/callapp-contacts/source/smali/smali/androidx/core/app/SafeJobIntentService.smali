.class public abstract Landroidx/core/app/SafeJobIntentService;
.super Landroidx/core/app/JobIntentService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroidx/core/app/JobIntentService;-><init>()V

    return-void
.end method


# virtual methods
.method final c()Landroidx/core/app/JobIntentService$e;
    .locals 1

    .line 15
    :try_start_0
    invoke-super {p0}, Landroidx/core/app/JobIntentService;->c()Landroidx/core/app/JobIntentService$e;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 24
    invoke-super {p0}, Landroidx/core/app/JobIntentService;->onCreate()V

    .line 26
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 27
    new-instance v0, Landroidx/core/app/m;

    invoke-direct {v0, p0}, Landroidx/core/app/m;-><init>(Landroidx/core/app/JobIntentService;)V

    iput-object v0, p0, Landroidx/core/app/SafeJobIntentService;->a:Landroidx/core/app/JobIntentService$b;

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Landroidx/core/app/SafeJobIntentService;->a:Landroidx/core/app/JobIntentService$b;

    return-void
.end method
