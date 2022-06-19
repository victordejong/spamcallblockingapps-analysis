.class public abstract Lr;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:I = -0x64

.field public static final b:Lc4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc4<",
            "Ljava/lang/ref/WeakReference<",
            "Lr;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final c:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc4;

    invoke-direct {v0}, Lc4;-><init>()V

    sput-object v0, Lr;->b:Lc4;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lr;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lr;)V
    .locals 3

    sget-object v0, Lr;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lr;->w(Lr;)V

    sget-object v1, Lr;->b:Lc4;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lc4;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static e(Landroid/app/Activity;Lq;)Lr;
    .locals 1

    new-instance v0, Ls;

    invoke-direct {v0, p0, p1}, Ls;-><init>(Landroid/app/Activity;Lq;)V

    return-object v0
.end method

.method public static f(Landroid/app/Dialog;Lq;)Lr;
    .locals 1

    new-instance v0, Ls;

    invoke-direct {v0, p0, p1}, Ls;-><init>(Landroid/app/Dialog;Lq;)V

    return-object v0
.end method

.method public static h()I
    .locals 1

    sget v0, Lr;->a:I

    return v0
.end method

.method public static v(Lr;)V
    .locals 1

    sget-object v0, Lr;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lr;->w(Lr;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static w(Lr;)V
    .locals 3

    sget-object v0, Lr;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lr;->b:Lc4;

    invoke-virtual {v1}, Lc4;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr;

    if-eq v2, p0, :cond_1

    if-nez v2, :cond_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public abstract A(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public B(I)V
    .locals 0

    return-void
.end method

.method public abstract C(Ljava/lang/CharSequence;)V
.end method

.method public abstract b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public c(Landroid/content/Context;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public d(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    invoke-virtual {p0, p1}, Lr;->c(Landroid/content/Context;)V

    return-object p1
.end method

.method public abstract g(I)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation
.end method

.method public i()I
    .locals 1

    const/16 v0, -0x64

    return v0
.end method

.method public abstract j()Landroid/view/MenuInflater;
.end method

.method public abstract k()Landroidx/appcompat/app/ActionBar;
.end method

.method public abstract l()V
.end method

.method public abstract m()V
.end method

.method public abstract n(Landroid/content/res/Configuration;)V
.end method

.method public abstract o(Landroid/os/Bundle;)V
.end method

.method public abstract p()V
.end method

.method public abstract q(Landroid/os/Bundle;)V
.end method

.method public abstract r()V
.end method

.method public abstract s(Landroid/os/Bundle;)V
.end method

.method public abstract t()V
.end method

.method public abstract u()V
.end method

.method public abstract x(I)Z
.end method

.method public abstract y(I)V
.end method

.method public abstract z(Landroid/view/View;)V
.end method
