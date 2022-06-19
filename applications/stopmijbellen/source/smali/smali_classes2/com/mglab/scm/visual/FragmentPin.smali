.class public Lcom/mglab/scm/visual/FragmentPin;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NonConstantResourceId"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mglab/scm/visual/FragmentPin$b;
    }
.end annotation


# instance fields
.field public a:Lbutterknife/Unbinder;

.field public pinEdit:Lcom/rengwuxian/materialedittext/MaterialEditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public versionTV:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lcom/mglab/scm/visual/FragmentPin;->pinEdit:Lcom/rengwuxian/materialedittext/MaterialEditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 2
    iget-object p1, p0, Lcom/mglab/scm/visual/FragmentPin;->pinEdit:Lcom/rengwuxian/materialedittext/MaterialEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/k;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/text/Editable;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-lez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/mglab/scm/visual/FragmentPin;->pinEdit:Lcom/rengwuxian/materialedittext/MaterialEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/k;->getText()Landroid/text/Editable;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mglab/scm/visual/FragmentPin;->pinEdit:Lcom/rengwuxian/materialedittext/MaterialEditText;

    invoke-virtual {v2}, Landroidx/appcompat/widget/k;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPin;->pinEdit:Lcom/rengwuxian/materialedittext/MaterialEditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mglab/scm/visual/FragmentPin;->pinEdit:Lcom/rengwuxian/materialedittext/MaterialEditText;

    invoke-virtual {v2}, Landroidx/appcompat/widget/k;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c005d

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->a(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p2

    iput-object p2, p0, Lcom/mglab/scm/visual/FragmentPin;->a:Lbutterknife/Unbinder;

    const p2, 0x7f11020d

    .line 3
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-static {}, Lf8/g;->y()Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, " "

    .line 5
    invoke-static {p2, p3}, Landroidx/recyclerview/widget/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const p3, 0x7f110199

    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 6
    :cond_0
    iget-object p3, p0, Lcom/mglab/scm/visual/FragmentPin;->versionTV:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p2, p0, Lcom/mglab/scm/visual/FragmentPin;->pinEdit:Lcom/rengwuxian/materialedittext/MaterialEditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->requestFocus()Z

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 2
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPin;->a:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->a()V

    return-void
.end method

.method public onKey0Click()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/mglab/scm/visual/FragmentPin;->a(I)V

    return-void
.end method

.method public onKey1Click()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/mglab/scm/visual/FragmentPin;->a(I)V

    return-void
.end method

.method public onKey2Click()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0}, Lcom/mglab/scm/visual/FragmentPin;->a(I)V

    return-void
.end method

.method public onKey3Click()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const/4 v0, 0x3

    .line 1
    invoke-virtual {p0, v0}, Lcom/mglab/scm/visual/FragmentPin;->a(I)V

    return-void
.end method

.method public onKey4Click()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, v0}, Lcom/mglab/scm/visual/FragmentPin;->a(I)V

    return-void
.end method

.method public onKey5Click()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const/4 v0, 0x5

    .line 1
    invoke-virtual {p0, v0}, Lcom/mglab/scm/visual/FragmentPin;->a(I)V

    return-void
.end method

.method public onKey6Click()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const/4 v0, 0x6

    .line 1
    invoke-virtual {p0, v0}, Lcom/mglab/scm/visual/FragmentPin;->a(I)V

    return-void
.end method

.method public onKey7Click()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const/4 v0, 0x7

    .line 1
    invoke-virtual {p0, v0}, Lcom/mglab/scm/visual/FragmentPin;->a(I)V

    return-void
.end method

.method public onKey8Click()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Lcom/mglab/scm/visual/FragmentPin;->a(I)V

    return-void
.end method

.method public onKey9Click()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const/16 v0, 0x9

    .line 1
    invoke-virtual {p0, v0}, Lcom/mglab/scm/visual/FragmentPin;->a(I)V

    return-void
.end method

.method public onKeyCClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const/16 v0, 0xa

    .line 1
    invoke-virtual {p0, v0}, Lcom/mglab/scm/visual/FragmentPin;->a(I)V

    return-void
.end method

.method public onKeyLessClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/mglab/scm/visual/FragmentPin;->a(I)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    const v0, 0x7f09003e

    .line 1
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f090046

    .line 2
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPin;->pinEdit:Lcom/rengwuxian/materialedittext/MaterialEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/o;

    move-result-object p1

    const p2, 0x7f11002f

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setTitle(I)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/o;

    move-result-object p1

    check-cast p1, Lf/j;

    invoke-virtual {p1}, Lf/j;->s()Lf/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1, p2}, Lf/a;->p(I)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/mglab/scm/visual/FragmentPin;->pinEdit:Lcom/rengwuxian/materialedittext/MaterialEditText;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 6
    iget-object p1, p0, Lcom/mglab/scm/visual/FragmentPin;->pinEdit:Lcom/rengwuxian/materialedittext/MaterialEditText;

    new-instance p2, Lcom/mglab/scm/visual/FragmentPin$b;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/mglab/scm/visual/FragmentPin$b;-><init>(Lcom/mglab/scm/visual/FragmentPin;Lcom/mglab/scm/visual/FragmentPin$a;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
