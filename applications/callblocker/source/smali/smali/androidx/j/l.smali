.class public Landroidx/j/l;
.super Ljava/lang/Object;
.source "Scene.java"


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private b:Ljava/lang/Runnable;


# direct methods
.method public static a(Landroid/view/ViewGroup;)Landroidx/j/l;
    .locals 1

    .prologue
    .line 209
    sget v0, Landroidx/j/j$a;->transition_current_scene:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/j/l;

    return-object v0
.end method

.method static a(Landroid/view/ViewGroup;Landroidx/j/l;)V
    .locals 1

    .prologue
    .line 196
    sget v0, Landroidx/j/j$a;->transition_current_scene:I

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 197
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Landroidx/j/l;->a:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroidx/j/l;->a(Landroid/view/ViewGroup;)Landroidx/j/l;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 150
    iget-object v0, p0, Landroidx/j/l;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Landroidx/j/l;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 154
    :cond_0
    return-void
.end method
