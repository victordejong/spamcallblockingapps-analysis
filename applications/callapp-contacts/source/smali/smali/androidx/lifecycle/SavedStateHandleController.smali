.class final Landroidx/lifecycle/SavedStateHandleController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/SavedStateHandleController$a;
    }
.end annotation


# instance fields
.field final a:Landroidx/lifecycle/x;

.field private final b:Ljava/lang/String;

.field private c:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Landroidx/lifecycle/x;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Landroidx/lifecycle/SavedStateHandleController;->c:Z

    .line 36
    iput-object p1, p0, Landroidx/lifecycle/SavedStateHandleController;->b:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Landroidx/lifecycle/SavedStateHandleController;->a:Landroidx/lifecycle/x;

    return-void
.end method

.method static a(Landroidx/savedstate/b;Landroidx/lifecycle/j;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/lifecycle/SavedStateHandleController;
    .locals 1

    .line 67
    invoke-virtual {p0, p2}, Landroidx/savedstate/b;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 68
    invoke-static {v0, p3}, Landroidx/lifecycle/x;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroidx/lifecycle/x;

    move-result-object p3

    .line 69
    new-instance v0, Landroidx/lifecycle/SavedStateHandleController;

    invoke-direct {v0, p2, p3}, Landroidx/lifecycle/SavedStateHandleController;-><init>(Ljava/lang/String;Landroidx/lifecycle/x;)V

    .line 70
    invoke-direct {v0, p0, p1}, Landroidx/lifecycle/SavedStateHandleController;->a(Landroidx/savedstate/b;Landroidx/lifecycle/j;)V

    .line 71
    invoke-static {p0, p1}, Landroidx/lifecycle/SavedStateHandleController;->b(Landroidx/savedstate/b;Landroidx/lifecycle/j;)V

    return-object v0
.end method

.method static a(Landroidx/lifecycle/aa;Landroidx/savedstate/b;Landroidx/lifecycle/j;)V
    .locals 1

    const-string v0, "androidx.lifecycle.savedstate.vm.tag"

    .line 98
    invoke-virtual {p0, v0}, Landroidx/lifecycle/aa;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/SavedStateHandleController;

    if-eqz p0, :cond_0

    .line 2041
    iget-boolean v0, p0, Landroidx/lifecycle/SavedStateHandleController;->c:Z

    if-nez v0, :cond_0

    .line 101
    invoke-direct {p0, p1, p2}, Landroidx/lifecycle/SavedStateHandleController;->a(Landroidx/savedstate/b;Landroidx/lifecycle/j;)V

    .line 102
    invoke-static {p1, p2}, Landroidx/lifecycle/SavedStateHandleController;->b(Landroidx/savedstate/b;Landroidx/lifecycle/j;)V

    :cond_0
    return-void
.end method

.method private a(Landroidx/savedstate/b;Landroidx/lifecycle/j;)V
    .locals 1

    .line 45
    iget-boolean v0, p0, Landroidx/lifecycle/SavedStateHandleController;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Landroidx/lifecycle/SavedStateHandleController;->c:Z

    .line 49
    invoke-virtual {p2, p0}, Landroidx/lifecycle/j;->addObserver(Landroidx/lifecycle/o;)V

    .line 50
    iget-object p2, p0, Landroidx/lifecycle/SavedStateHandleController;->b:Ljava/lang/String;

    iget-object v0, p0, Landroidx/lifecycle/SavedStateHandleController;->a:Landroidx/lifecycle/x;

    .line 1138
    iget-object v0, v0, Landroidx/lifecycle/x;->c:Landroidx/savedstate/b$b;

    .line 50
    invoke-virtual {p1, p2, v0}, Landroidx/savedstate/b;->a(Ljava/lang/String;Landroidx/savedstate/b$b;)V

    return-void

    .line 46
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already attached to lifecycleOwner"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static b(Landroidx/savedstate/b;Landroidx/lifecycle/j;)V
    .locals 2

    .line 107
    invoke-virtual {p1}, Landroidx/lifecycle/j;->getCurrentState()Landroidx/lifecycle/j$b;

    move-result-object v0

    .line 108
    sget-object v1, Landroidx/lifecycle/j$b;->INITIALIZED:Landroidx/lifecycle/j$b;

    if-eq v0, v1, :cond_1

    sget-object v1, Landroidx/lifecycle/j$b;->STARTED:Landroidx/lifecycle/j$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/j$b;->isAtLeast(Landroidx/lifecycle/j$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    new-instance v0, Landroidx/lifecycle/SavedStateHandleController$1;

    invoke-direct {v0, p1, p0}, Landroidx/lifecycle/SavedStateHandleController$1;-><init>(Landroidx/lifecycle/j;Landroidx/savedstate/b;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/j;->addObserver(Landroidx/lifecycle/o;)V

    return-void

    .line 109
    :cond_1
    :goto_0
    const-class p1, Landroidx/lifecycle/SavedStateHandleController$a;

    invoke-virtual {p0, p1}, Landroidx/savedstate/b;->a(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/p;Landroidx/lifecycle/j$a;)V
    .locals 1

    .line 55
    sget-object v0, Landroidx/lifecycle/j$a;->ON_DESTROY:Landroidx/lifecycle/j$a;

    if-ne p2, v0, :cond_0

    const/4 p2, 0x0

    .line 56
    iput-boolean p2, p0, Landroidx/lifecycle/SavedStateHandleController;->c:Z

    .line 57
    invoke-interface {p1}, Landroidx/lifecycle/p;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/j;->removeObserver(Landroidx/lifecycle/o;)V

    :cond_0
    return-void
.end method
