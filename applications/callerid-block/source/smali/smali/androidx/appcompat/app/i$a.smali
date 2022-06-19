.class Landroidx/appcompat/app/i$a;
.super Ld/h/m/z;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/i;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/i;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/app/i$a;->a:Landroidx/appcompat/app/i;

    invoke-direct {p0}, Ld/h/m/z;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Landroidx/appcompat/app/i$a;->a:Landroidx/appcompat/app/i;

    iget-boolean v0, p1, Landroidx/appcompat/app/i;->q:Z

    if-eqz v0, :cond_0

    iget-object p1, p1, Landroidx/appcompat/app/i;->g:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Landroidx/appcompat/app/i$a;->a:Landroidx/appcompat/app/i;

    iget-object p1, p1, Landroidx/appcompat/app/i;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/app/i$a;->a:Landroidx/appcompat/app/i;

    iget-object p1, p1, Landroidx/appcompat/app/i;->d:Landroidx/appcompat/widget/ActionBarContainer;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    iget-object p1, p0, Landroidx/appcompat/app/i$a;->a:Landroidx/appcompat/app/i;

    iget-object p1, p1, Landroidx/appcompat/app/i;->d:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    iget-object p1, p0, Landroidx/appcompat/app/i$a;->a:Landroidx/appcompat/app/i;

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/appcompat/app/i;->v:Ld/a/o/h;

    invoke-virtual {p1}, Landroidx/appcompat/app/i;->w()V

    iget-object p1, p0, Landroidx/appcompat/app/i$a;->a:Landroidx/appcompat/app/i;

    iget-object p1, p1, Landroidx/appcompat/app/i;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz p1, :cond_1

    invoke-static {p1}, Ld/h/m/t;->k0(Landroid/view/View;)V

    :cond_1
    return-void
.end method
