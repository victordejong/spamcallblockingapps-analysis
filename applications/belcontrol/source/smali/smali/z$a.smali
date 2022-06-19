.class public Lz$a;
.super Lpb;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lz;


# direct methods
.method public constructor <init>(Lz;)V
    .locals 0

    iput-object p1, p0, Lz$a;->a:Lz;

    invoke-direct {p0}, Lpb;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lz$a;->a:Lz;

    iget-boolean v0, p1, Lz;->q:Z

    if-eqz v0, :cond_0

    iget-object p1, p1, Lz;->g:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lz$a;->a:Lz;

    iget-object p1, p1, Lz;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :cond_0
    iget-object p1, p0, Lz$a;->a:Lz;

    iget-object p1, p1, Lz;->d:Landroidx/appcompat/widget/ActionBarContainer;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    iget-object p1, p0, Lz$a;->a:Lz;

    iget-object p1, p1, Lz;->d:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    iget-object p1, p0, Lz$a;->a:Lz;

    const/4 v0, 0x0

    iput-object v0, p1, Lz;->v:Lp0;

    invoke-virtual {p1}, Lz;->w()V

    iget-object p1, p0, Lz$a;->a:Lz;

    iget-object p1, p1, Lz;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz p1, :cond_1

    invoke-static {p1}, Ljb;->k0(Landroid/view/View;)V

    :cond_1
    return-void
.end method
