.class final Landroidx/fragment/app/c$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/c;->a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/c$d;Landroidx/fragment/app/q$g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Landroidx/fragment/app/Fragment;

.field final synthetic c:Landroidx/fragment/app/q$g;

.field final synthetic d:Ld/h/i/a;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/q$g;Ld/h/i/a;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/c$b;->a:Landroid/view/ViewGroup;

    iput-object p2, p0, Landroidx/fragment/app/c$b;->b:Landroidx/fragment/app/Fragment;

    iput-object p3, p0, Landroidx/fragment/app/c$b;->c:Landroidx/fragment/app/q$g;

    iput-object p4, p0, Landroidx/fragment/app/c$b;->d:Ld/h/i/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Landroidx/fragment/app/c$b;->a:Landroid/view/ViewGroup;

    new-instance v0, Landroidx/fragment/app/c$b$a;

    invoke-direct {v0, p0}, Landroidx/fragment/app/c$b$a;-><init>(Landroidx/fragment/app/c$b;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
