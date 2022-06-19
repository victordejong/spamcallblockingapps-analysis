.class final Landroidx/fragment/app/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/ad;
.implements Landroidx/savedstate/d;


# instance fields
.field a:Landroidx/lifecycle/LifecycleRegistry;

.field b:Landroidx/savedstate/c;

.field private final c:Landroidx/lifecycle/ac;


# direct methods
.method constructor <init>(Landroidx/lifecycle/ac;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Landroidx/fragment/app/w;->a:Landroidx/lifecycle/LifecycleRegistry;

    .line 35
    iput-object v0, p0, Landroidx/fragment/app/w;->b:Landroidx/savedstate/c;

    .line 38
    iput-object p1, p0, Landroidx/fragment/app/w;->c:Landroidx/lifecycle/ac;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    .line 52
    iget-object v0, p0, Landroidx/fragment/app/w;->a:Landroidx/lifecycle/LifecycleRegistry;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v0, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/p;)V

    iput-object v0, p0, Landroidx/fragment/app/w;->a:Landroidx/lifecycle/LifecycleRegistry;

    .line 54
    invoke-static {p0}, Landroidx/savedstate/c;->a(Landroidx/savedstate/d;)Landroidx/savedstate/c;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/w;->b:Landroidx/savedstate/c;

    :cond_0
    return-void
.end method

.method final a(Landroid/os/Bundle;)V
    .locals 1

    .line 92
    iget-object v0, p0, Landroidx/fragment/app/w;->b:Landroidx/savedstate/c;

    invoke-virtual {v0, p1}, Landroidx/savedstate/c;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method final a(Landroidx/lifecycle/j$a;)V
    .locals 1

    .line 77
    iget-object v0, p0, Landroidx/fragment/app/w;->a:Landroidx/lifecycle/LifecycleRegistry;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/j$a;)V

    return-void
.end method

.method public final getLifecycle()Landroidx/lifecycle/j;
    .locals 1

    .line 68
    invoke-virtual {p0}, Landroidx/fragment/app/w;->a()V

    .line 69
    iget-object v0, p0, Landroidx/fragment/app/w;->a:Landroidx/lifecycle/LifecycleRegistry;

    return-object v0
.end method

.method public final getSavedStateRegistry()Landroidx/savedstate/b;
    .locals 1

    .line 83
    invoke-virtual {p0}, Landroidx/fragment/app/w;->a()V

    .line 84
    iget-object v0, p0, Landroidx/fragment/app/w;->b:Landroidx/savedstate/c;

    .line 1046
    iget-object v0, v0, Landroidx/savedstate/c;->a:Landroidx/savedstate/b;

    return-object v0
.end method

.method public final getViewModelStore()Landroidx/lifecycle/ac;
    .locals 1

    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/w;->a()V

    .line 45
    iget-object v0, p0, Landroidx/fragment/app/w;->c:Landroidx/lifecycle/ac;

    return-object v0
.end method
