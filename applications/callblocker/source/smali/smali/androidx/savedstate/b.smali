.class public final Landroidx/savedstate/b;
.super Ljava/lang/Object;
.source "SavedStateRegistryController.java"


# instance fields
.field private final a:Landroidx/savedstate/c;

.field private final b:Landroidx/savedstate/a;


# direct methods
.method private constructor <init>(Landroidx/savedstate/c;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Landroidx/savedstate/b;->a:Landroidx/savedstate/c;

    .line 38
    new-instance v0, Landroidx/savedstate/a;

    invoke-direct {v0}, Landroidx/savedstate/a;-><init>()V

    iput-object v0, p0, Landroidx/savedstate/b;->b:Landroidx/savedstate/a;

    .line 39
    return-void
.end method

.method public static a(Landroidx/savedstate/c;)Landroidx/savedstate/b;
    .locals 1

    .prologue
    .line 84
    new-instance v0, Landroidx/savedstate/b;

    invoke-direct {v0, p0}, Landroidx/savedstate/b;-><init>(Landroidx/savedstate/c;)V

    return-object v0
.end method


# virtual methods
.method public a()Landroidx/savedstate/a;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Landroidx/savedstate/b;->b:Landroidx/savedstate/a;

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Landroidx/savedstate/b;->a:Landroidx/savedstate/c;

    invoke-interface {v0}, Landroidx/savedstate/c;->b()Landroidx/lifecycle/e;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroidx/lifecycle/e;->a()Landroidx/lifecycle/e$b;

    move-result-object v1

    sget-object v2, Landroidx/lifecycle/e$b;->b:Landroidx/lifecycle/e$b;

    if-eq v1, v2, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Restarter must be created only during owner\'s initialization stage"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    new-instance v1, Landroidx/savedstate/Recreator;

    iget-object v2, p0, Landroidx/savedstate/b;->a:Landroidx/savedstate/c;

    invoke-direct {v1, v2}, Landroidx/savedstate/Recreator;-><init>(Landroidx/savedstate/c;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/e;->a(Landroidx/lifecycle/g;)V

    .line 62
    iget-object v1, p0, Landroidx/savedstate/b;->b:Landroidx/savedstate/a;

    invoke-virtual {v1, v0, p1}, Landroidx/savedstate/a;->a(Landroidx/lifecycle/e;Landroid/os/Bundle;)V

    .line 63
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Landroidx/savedstate/b;->b:Landroidx/savedstate/a;

    invoke-virtual {v0, p1}, Landroidx/savedstate/a;->a(Landroid/os/Bundle;)V

    .line 75
    return-void
.end method
