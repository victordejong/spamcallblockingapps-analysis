.class public Lf/q;
.super Lj4/w0;
.source "SourceFile"


# instance fields
.field public final synthetic N:Lf/m;


# direct methods
.method public constructor <init>(Lf/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/q;->N:Lf/m;

    invoke-direct {p0}, Lj4/w0;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lf/q;->N:Lf/m;

    iget-object p1, p1, Lf/m;->o:Landroidx/appcompat/widget/ActionBarContextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 2
    iget-object p1, p0, Lf/q;->N:Lf/m;

    iget-object p1, p1, Lf/m;->r:Lm0/y;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lm0/y;->d(Lm0/z;)Lm0/y;

    .line 3
    iget-object p1, p0, Lf/q;->N:Lf/m;

    iput-object v0, p1, Lf/m;->r:Lm0/y;

    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lf/q;->N:Lf/m;

    iget-object p1, p1, Lf/m;->o:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lf/q;->N:Lf/m;

    iget-object p1, p1, Lf/m;->o:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lf/q;->N:Lf/m;

    iget-object p1, p1, Lf/m;->o:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    sget-object v0, Lm0/v;->a:Ljava/util/WeakHashMap;

    .line 4
    invoke-static {p1}, Lm0/v$h;->c(Landroid/view/View;)V

    :cond_0
    return-void
.end method
