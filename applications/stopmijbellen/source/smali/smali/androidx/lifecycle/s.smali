.class public Landroidx/lifecycle/s;
.super Landroidx/lifecycle/c;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Landroidx/lifecycle/r;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/lifecycle/s;->this$0:Landroidx/lifecycle/r;

    invoke-direct {p0}, Landroidx/lifecycle/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-ge p2, v0, :cond_0

    .line 2
    sget p2, Landroidx/lifecycle/t;->b:I

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-string p2, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"

    invoke-virtual {p1, p2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/t;

    .line 4
    iget-object p2, p0, Landroidx/lifecycle/s;->this$0:Landroidx/lifecycle/r;

    iget-object p2, p2, Landroidx/lifecycle/r;->h:Landroidx/lifecycle/t$a;

    .line 5
    iput-object p2, p1, Landroidx/lifecycle/t;->a:Landroidx/lifecycle/t$a;

    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    .line 1
    iget-object p1, p0, Landroidx/lifecycle/s;->this$0:Landroidx/lifecycle/r;

    .line 2
    iget v0, p1, Landroidx/lifecycle/r;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Landroidx/lifecycle/r;->b:I

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p1, Landroidx/lifecycle/r;->e:Landroid/os/Handler;

    iget-object p1, p1, Landroidx/lifecycle/r;->g:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    new-instance p2, Landroidx/lifecycle/s$a;

    invoke-direct {p2, p0}, Landroidx/lifecycle/s$a;-><init>(Landroidx/lifecycle/s;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 3

    .line 1
    iget-object p1, p0, Landroidx/lifecycle/s;->this$0:Landroidx/lifecycle/r;

    .line 2
    iget v0, p1, Landroidx/lifecycle/r;->a:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p1, Landroidx/lifecycle/r;->a:I

    if-nez v0, :cond_0

    .line 3
    iget-boolean v0, p1, Landroidx/lifecycle/r;->c:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p1, Landroidx/lifecycle/r;->f:Landroidx/lifecycle/k;

    sget-object v2, Landroidx/lifecycle/f$b;->ON_STOP:Landroidx/lifecycle/f$b;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/k;->e(Landroidx/lifecycle/f$b;)V

    .line 5
    iput-boolean v1, p1, Landroidx/lifecycle/r;->d:Z

    :cond_0
    return-void
.end method
