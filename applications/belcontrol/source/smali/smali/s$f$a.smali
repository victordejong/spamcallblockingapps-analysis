.class public Ls$f$a;
.super Lpb;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls$f;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ls$f;


# direct methods
.method public constructor <init>(Ls$f;)V
    .locals 0

    iput-object p1, p0, Ls$f$a;->a:Ls$f;

    invoke-direct {p0}, Lpb;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Ls$f$a;->a:Ls$f;

    iget-object p1, p1, Ls$f;->a:Ls;

    iget-object p1, p1, Ls;->r:Landroidx/appcompat/widget/ActionBarContextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object p1, p0, Ls$f$a;->a:Ls$f;

    iget-object p1, p1, Ls$f;->a:Ls;

    iget-object p1, p1, Ls;->u:Lnb;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lnb;->f(Lob;)Lnb;

    iget-object p1, p0, Ls$f$a;->a:Ls$f;

    iget-object p1, p1, Ls$f;->a:Ls;

    iput-object v0, p1, Ls;->u:Lnb;

    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Ls$f$a;->a:Ls$f;

    iget-object p1, p1, Ls$f;->a:Ls;

    iget-object p1, p1, Ls;->r:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    return-void
.end method
