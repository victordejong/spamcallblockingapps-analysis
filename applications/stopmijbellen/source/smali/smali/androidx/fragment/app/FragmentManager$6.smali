.class Landroidx/fragment/app/FragmentManager$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/h;


# virtual methods
.method public d(Landroidx/lifecycle/j;Landroidx/lifecycle/f$b;)V
    .locals 1

    .line 1
    sget-object p1, Landroidx/lifecycle/f$b;->ON_START:Landroidx/lifecycle/f$b;

    const/4 v0, 0x0

    if-eq p2, p1, :cond_1

    .line 2
    sget-object p1, Landroidx/lifecycle/f$b;->ON_DESTROY:Landroidx/lifecycle/f$b;

    if-eq p2, p1, :cond_0

    return-void

    .line 3
    :cond_0
    throw v0

    .line 4
    :cond_1
    throw v0
.end method
