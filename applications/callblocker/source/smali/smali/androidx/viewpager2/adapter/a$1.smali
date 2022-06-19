.class Landroidx/viewpager2/adapter/a$1;
.super Landroidx/fragment/app/i$a;
.source "FragmentStateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/viewpager2/adapter/a;->a(Landroidx/fragment/app/Fragment;Landroid/widget/FrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/Fragment;

.field final synthetic b:Landroid/widget/FrameLayout;

.field final synthetic c:Landroidx/viewpager2/adapter/a;


# direct methods
.method constructor <init>(Landroidx/viewpager2/adapter/a;Landroidx/fragment/app/Fragment;Landroid/widget/FrameLayout;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Landroidx/viewpager2/adapter/a$1;->c:Landroidx/viewpager2/adapter/a;

    iput-object p2, p0, Landroidx/viewpager2/adapter/a$1;->a:Landroidx/fragment/app/Fragment;

    iput-object p3, p0, Landroidx/viewpager2/adapter/a$1;->b:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Landroidx/fragment/app/i$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/fragment/app/i;Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Landroidx/viewpager2/adapter/a$1;->a:Landroidx/fragment/app/Fragment;

    if-ne p2, v0, :cond_0

    .line 377
    invoke-virtual {p1, p0}, Landroidx/fragment/app/i;->a(Landroidx/fragment/app/i$a;)V

    .line 378
    iget-object v0, p0, Landroidx/viewpager2/adapter/a$1;->c:Landroidx/viewpager2/adapter/a;

    iget-object v1, p0, Landroidx/viewpager2/adapter/a$1;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p3, v1}, Landroidx/viewpager2/adapter/a;->a(Landroid/view/View;Landroid/widget/FrameLayout;)V

    .line 380
    :cond_0
    return-void
.end method
