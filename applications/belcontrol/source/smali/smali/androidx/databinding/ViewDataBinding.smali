.class public abstract Landroidx/databinding/ViewDataBinding;
.super Lsc;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/databinding/ViewDataBinding$OnStartListener;
    }
.end annotation


# static fields
.field public static l:I

.field public static final m:Z


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public b:Z

.field public c:Z

.field public final d:Landroid/view/View;

.field public e:Ltc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltc<",
            "Ljava/lang/Object;",
            "Landroidx/databinding/ViewDataBinding;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public f:Z

.field public g:Landroid/view/Choreographer;

.field public final h:Landroid/view/Choreographer$FrameCallback;

.field public i:Landroid/os/Handler;

.field public j:Landroidx/databinding/ViewDataBinding;

.field public k:Lqe;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Landroidx/databinding/ViewDataBinding;->l:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Landroidx/databinding/ViewDataBinding;->m:Z

    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    const/16 v1, 0x13

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final b()V
    .locals 4

    iget-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->f()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->e()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->f:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/databinding/ViewDataBinding;->c:Z

    iget-object v2, p0, Landroidx/databinding/ViewDataBinding;->e:Ltc;

    const/4 v3, 0x0

    if-nez v2, :cond_3

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->a()V

    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->e:Ltc;

    if-nez v0, :cond_2

    iput-boolean v1, p0, Landroidx/databinding/ViewDataBinding;->f:Z

    return-void

    :cond_2
    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1, v3}, Ltc;->b(Ljava/lang/Object;ILjava/lang/Object;)V

    throw v3

    :cond_3
    invoke-virtual {v2, p0, v0, v3}, Ltc;->b(Ljava/lang/Object;ILjava/lang/Object;)V

    throw v3
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->j:Landroidx/databinding/ViewDataBinding;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->b()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->c()V

    :goto_0
    return-void
.end method

.method public d()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->d:Landroid/view/View;

    return-object v0
.end method

.method public abstract e()Z
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->j:Landroidx/databinding/ViewDataBinding;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->f()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->k:Lqe;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lqe;->getLifecycle()Lme;

    move-result-object v0

    invoke-virtual {v0}, Lme;->b()Lme$b;

    move-result-object v0

    sget-object v1, Lme$b;->d:Lme$b;

    invoke-virtual {v0, v1}, Lme$b;->a(Lme$b;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->b:Z

    if-eqz v0, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->b:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v0, Landroidx/databinding/ViewDataBinding;->m:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->g:Landroid/view/Choreographer;

    iget-object v1, p0, Landroidx/databinding/ViewDataBinding;->h:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->i:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/databinding/ViewDataBinding;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public abstract g(ILjava/lang/Object;)Z
.end method
