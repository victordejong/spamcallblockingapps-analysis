.class Landroidx/viewpager2/adapter/FragmentStateAdapter$2;
.super Ljava/lang/Object;
.source "FragmentStateAdapter.java"

# interfaces
.implements Landroidx/lifecycle/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/viewpager2/adapter/a;->a(Landroidx/viewpager2/adapter/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/viewpager2/adapter/b;

.field final synthetic b:Landroidx/viewpager2/adapter/a;


# direct methods
.method constructor <init>(Landroidx/viewpager2/adapter/a;Landroidx/viewpager2/adapter/b;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$2;->b:Landroidx/viewpager2/adapter/a;

    iput-object p2, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$2;->a:Landroidx/viewpager2/adapter/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/lifecycle/h;Landroidx/lifecycle/e$a;)V
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$2;->b:Landroidx/viewpager2/adapter/a;

    invoke-virtual {v0}, Landroidx/viewpager2/adapter/a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    invoke-interface {p1}, Landroidx/lifecycle/h;->b()Landroidx/lifecycle/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/e;->b(Landroidx/lifecycle/g;)V

    .line 355
    iget-object v0, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$2;->a:Landroidx/viewpager2/adapter/b;

    invoke-virtual {v0}, Landroidx/viewpager2/adapter/b;->B()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/h/u;->B(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$2;->b:Landroidx/viewpager2/adapter/a;

    iget-object v1, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$2;->a:Landroidx/viewpager2/adapter/b;

    invoke-virtual {v0, v1}, Landroidx/viewpager2/adapter/a;->a(Landroidx/viewpager2/adapter/b;)V

    goto :goto_0
.end method
