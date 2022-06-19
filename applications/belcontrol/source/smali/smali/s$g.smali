.class public Ls$g;
.super Lpb;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls;->E0(Lj0$a;)Lj0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ls;


# direct methods
.method public constructor <init>(Ls;)V
    .locals 0

    iput-object p1, p0, Ls$g;->a:Ls;

    invoke-direct {p0}, Lpb;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Ls$g;->a:Ls;

    iget-object p1, p1, Ls;->r:Landroidx/appcompat/widget/ActionBarContextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object p1, p0, Ls$g;->a:Ls;

    iget-object p1, p1, Ls;->u:Lnb;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lnb;->f(Lob;)Lnb;

    iget-object p1, p0, Ls$g;->a:Ls;

    iput-object v0, p1, Ls;->u:Lnb;

    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Ls$g;->a:Ls;

    iget-object p1, p1, Ls;->r:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    iget-object p1, p0, Ls$g;->a:Ls;

    iget-object p1, p1, Ls;->r:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    iget-object p1, p0, Ls$g;->a:Ls;

    iget-object p1, p1, Ls;->r:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object p1, p0, Ls$g;->a:Ls;

    iget-object p1, p1, Ls;->r:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Ljb;->k0(Landroid/view/View;)V

    :cond_0
    return-void
.end method
