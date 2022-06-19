.class public abstract Landroidx/appcompat/app/g;
.super Ljava/lang/Object;
.source "AppCompatDelegate.java"


# static fields
.field private static a:I = -0x64

.field private static final b:Landroidx/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/c/b<",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/appcompat/app/g;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 165
    new-instance v0, Landroidx/c/b;

    invoke-direct {v0}, Landroidx/c/b;-><init>()V

    sput-object v0, Landroidx/appcompat/app/g;->b:Landroidx/c/b;

    .line 167
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/appcompat/app/g;->c:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroidx/appcompat/app/f;)Landroidx/appcompat/app/g;
    .locals 1

    .line 221
    new-instance v0, Landroidx/appcompat/app/h;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/app/h;-><init>(Landroid/app/Activity;Landroidx/appcompat/app/f;)V

    return-object v0
.end method

.method public static a(Landroid/app/Dialog;Landroidx/appcompat/app/f;)Landroidx/appcompat/app/g;
    .locals 1

    .line 232
    new-instance v0, Landroidx/appcompat/app/h;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/app/h;-><init>(Landroid/app/Dialog;Landroidx/appcompat/app/f;)V

    return-object v0
.end method

.method static a(Landroidx/appcompat/app/g;)V
    .locals 3

    .line 622
    sget-object v0, Landroidx/appcompat/app/g;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 625
    :try_start_0
    invoke-static {p0}, Landroidx/appcompat/app/g;->c(Landroidx/appcompat/app/g;)V

    .line 627
    sget-object v1, Landroidx/appcompat/app/g;->b:Landroidx/c/b;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroidx/c/b;->add(Ljava/lang/Object;)Z

    .line 628
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static b(Landroidx/appcompat/app/g;)V
    .locals 1

    .line 632
    sget-object v0, Landroidx/appcompat/app/g;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 634
    :try_start_0
    invoke-static {p0}, Landroidx/appcompat/app/g;->c(Landroidx/appcompat/app/g;)V

    .line 635
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static c(Landroidx/appcompat/app/g;)V
    .locals 3

    .line 639
    sget-object v0, Landroidx/appcompat/app/g;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 640
    :try_start_0
    sget-object v1, Landroidx/appcompat/app/g;->b:Landroidx/c/b;

    invoke-virtual {v1}, Landroidx/c/b;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 641
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 642
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/app/g;

    if-eq v2, p0, :cond_1

    if-nez v2, :cond_0

    .line 646
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 649
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

.method public static e(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "AppCompatDelegate"

    const-string v0, "setDefaultNightMode() called with an unknown mode"

    .line 559
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 553
    :cond_0
    sget v0, Landroidx/appcompat/app/g;->a:I

    if-eq v0, p0, :cond_1

    .line 554
    sput p0, Landroidx/appcompat/app/g;->a:I

    .line 555
    invoke-static {}, Landroidx/appcompat/app/g;->m()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static l()I
    .locals 1

    .line 571
    sget v0, Landroidx/appcompat/app/g;->a:I

    return v0
.end method

.method private static m()V
    .locals 3

    .line 653
    sget-object v0, Landroidx/appcompat/app/g;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 654
    :try_start_0
    sget-object v1, Landroidx/appcompat/app/g;->b:Landroidx/c/b;

    invoke-virtual {v1}, Landroidx/c/b;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 655
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/app/g;

    if-eqz v2, :cond_0

    .line 657
    invoke-virtual {v2}, Landroidx/appcompat/app/g;->j()Z

    goto :goto_0

    .line 660
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public abstract a()Landroidx/appcompat/app/a;
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public abstract a(Landroid/content/res/Configuration;)V
.end method

.method public abstract a(Landroid/os/Bundle;)V
.end method

.method public abstract a(Landroid/view/View;)V
.end method

.method public abstract a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract a(Landroidx/appcompat/widget/Toolbar;)V
.end method

.method public abstract a(Ljava/lang/CharSequence;)V
.end method

.method public abstract b()Landroid/view/MenuInflater;
.end method

.method public abstract b(I)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation
.end method

.method public abstract b(Landroid/os/Bundle;)V
.end method

.method public abstract b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract c()V
.end method

.method public abstract c(I)V
.end method

.method public abstract c(Landroid/os/Bundle;)V
.end method

.method public abstract d()V
.end method

.method public abstract d(I)Z
.end method

.method public abstract e()V
.end method

.method public abstract f()V
.end method

.method public abstract g()V
.end method

.method public abstract h()Landroidx/appcompat/app/b$a;
.end method

.method public abstract i()V
.end method

.method public abstract j()Z
.end method

.method public k()I
    .locals 1

    const/16 v0, -0x64

    return v0
.end method
