.class final Landroidx/lifecycle/w$3;
.super Landroidx/lifecycle/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/lifecycle/w;


# direct methods
.method constructor <init>(Landroidx/lifecycle/w;)V
    .locals 0

    .line 163
    iput-object p1, p0, Landroidx/lifecycle/w$3;->this$0:Landroidx/lifecycle/w;

    invoke-direct {p0}, Landroidx/lifecycle/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 192
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-ge p2, v0, :cond_0

    .line 193
    invoke-static {p1}, Landroidx/lifecycle/ReportFragment;->b(Landroid/app/Activity;)Landroidx/lifecycle/ReportFragment;

    move-result-object p1

    iget-object p2, p0, Landroidx/lifecycle/w$3;->this$0:Landroidx/lifecycle/w;

    iget-object p2, p2, Landroidx/lifecycle/w;->g:Landroidx/lifecycle/ReportFragment$a;

    .line 1149
    iput-object p2, p1, Landroidx/lifecycle/ReportFragment;->a:Landroidx/lifecycle/ReportFragment$a;

    :cond_0
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    .line 199
    iget-object p1, p0, Landroidx/lifecycle/w$3;->this$0:Landroidx/lifecycle/w;

    .line 2130
    iget v0, p1, Landroidx/lifecycle/w;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Landroidx/lifecycle/w;->b:I

    .line 2131
    iget v0, p1, Landroidx/lifecycle/w;->b:I

    if-nez v0, :cond_0

    .line 2132
    iget-object v0, p1, Landroidx/lifecycle/w;->d:Landroid/os/Handler;

    iget-object p1, p1, Landroidx/lifecycle/w;->f:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 174
    new-instance p2, Landroidx/lifecycle/w$3$1;

    invoke-direct {p2, p0}, Landroidx/lifecycle/w$3$1;-><init>(Landroidx/lifecycle/w$3;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .line 204
    iget-object p1, p0, Landroidx/lifecycle/w$3;->this$0:Landroidx/lifecycle/w;

    .line 2137
    iget v0, p1, Landroidx/lifecycle/w;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Landroidx/lifecycle/w;->a:I

    .line 2138
    invoke-virtual {p1}, Landroidx/lifecycle/w;->d()V

    return-void
.end method
