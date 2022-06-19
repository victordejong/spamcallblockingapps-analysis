.class Landroidx/fragment/app/p;
.super Ljava/lang/Object;
.source "FragmentViewLifecycleOwner.java"

# interfaces
.implements Landroidx/lifecycle/k;


# instance fields
.field private a:Landroidx/lifecycle/l;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/lifecycle/l;

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .line 31
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/lifecycle/l;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Landroidx/lifecycle/l;

    invoke-direct {v0, p0}, Landroidx/lifecycle/l;-><init>(Landroidx/lifecycle/k;)V

    iput-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/lifecycle/l;

    :cond_0
    return-void
.end method

.method a(Landroidx/lifecycle/g$a;)V
    .locals 1

    .line 51
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/lifecycle/l;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/l;->a(Landroidx/lifecycle/g$a;)V

    return-void
.end method

.method b()Z
    .locals 1

    .line 40
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/lifecycle/l;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getLifecycle()Landroidx/lifecycle/g;
    .locals 1

    .line 46
    invoke-virtual {p0}, Landroidx/fragment/app/p;->a()V

    .line 47
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Landroidx/lifecycle/l;

    return-object v0
.end method
